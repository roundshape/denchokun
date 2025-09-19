#tag Class
Protected Class APIClientClass
	#tag Method, Flags = &h0
		Function AddDealPartner(name As String) As Dictionary
		  // POST /v1/api/deal-partners
		  var partnerData as new Dictionary
		  partnerData.Value("name") = name
		  return me.SendRequest("POST", "/v1/api/deal-partners", partnerData)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub BeginTransaction()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function BuildMultipartBody(boundary As String, dealData As Dictionary, fileData As MemoryBlock, fileName As String) As String
		  var body as String = ""
		  var CRLF as String = Chr(13) + Chr(10)
		  
		  // 1. dealDataパート
		  body = body + "--" + boundary + CRLF
		  body = body + "Content-Disposition: form-data; name=""dealData""" + CRLF
		  body = body + "Content-Type: application/json" + CRLF + CRLF
		  body = body + GenerateJSON(dealData) + CRLF
		  
		  // 2. fileパート
		  body = body + "--" + boundary + CRLF
		  body = body + "Content-Disposition: form-data; name=""file""; filename=""" + fileName + """" + CRLF
		  body = body + "Content-Type: application/octet-stream" + CRLF + CRLF
		  
		  // 3. 終了boundary
		  var endBoundary as String = CRLF + "--" + boundary + "--" + CRLF
		  
		  // MemoryBlock作成
		  var bodyTextMB as MemoryBlock = body.ConvertEncoding(Encodings.UTF8)
		  var totalSize as Integer = bodyTextMB.Size + fileData.Size + endBoundary.LenB
		  var combinedMB as new MemoryBlock(totalSize)
		  
		  // テキスト部分をコピー
		  for i as Integer = 0 to bodyTextMB.Size - 1
		    combinedMB.Byte(i) = bodyTextMB.Byte(i)
		  next
		  
		  // ファイルデータをコピー
		  for i as Integer = 0 to fileData.Size - 1
		    combinedMB.Byte(bodyTextMB.Size + i) = fileData.Byte(i)
		  next
		  
		  // 終了boundaryをコピー
		  var endBoundaryMB as MemoryBlock = endBoundary.ConvertEncoding(Encodings.UTF8)
		  var endPos as Integer = bodyTextMB.Size + fileData.Size
		  for i as Integer = 0 to endBoundaryMB.Size - 1
		    combinedMB.Byte(endPos + i) = endBoundaryMB.Byte(i)
		  next
		  
		  return combinedMB.StringValue(0, combinedMB.Size)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Close()
		  // スタブ実装 - API接続の場合は特に何もしない
		  me.IsConnected = false
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub CommitTransaction()
		  // スタブ実装 - 後でAPI呼び出しに変更
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ConnectToPeriod(dealPeriod as String) As Dictionary
		  // POST /v1/api/periods/connect?period={period}
		  
		  // 期間名の検証
		  if dealPeriod = "" or dealPeriod.Trim = "" then
		    var result as new Dictionary
		    result.Value("success") = false
		    result.Value("message") = "期間名が空です"
		    return result
		  end if
		  
		  // URLエンコード処理
		  var encodedPeriod as String = EncodeURLComponent(dealPeriod)
		  var endpoint as String = "/v1/api/periods/connect?period=" + encodedPeriod
		  return me.SendRequest("POST", endpoint)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub CreateDatabase()
		  // スタブ実装 - 後でAPI呼び出しに変更
		  // API経由でデータベース作成を依頼
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CreateEmptyRowSet() As RowSet
		  // 空のRowSetを作成
		  var tempDB as new SQLiteDatabase
		  tempDB.Connect()  // メモリ内DB
		  
		  Try
		    // 最低限のカラムを持つ空テーブルを作成
		    tempDB.ExecuteSQL("CREATE TEMP TABLE empty_result (NO TEXT, DealDate TEXT, DealName TEXT, DealPartner TEXT, DealPrice TEXT, DealType TEXT, DealRemark TEXT, FilePath TEXT, RecStatus TEXT)")
		    return tempDB.SelectSQL("SELECT * FROM empty_result WHERE 1=0")
		  Catch error as DatabaseException
		    // 最悪の場合、nullを返す（呼び出し側でnilチェックが必要）
		    me.LastError = "Failed to create empty RowSet: " + error.Message
		    return nil
		  End Try
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CreatePeriod(periodName As String) As Dictionary
		  // POST /v1/api/periods
		  var periodData as new Dictionary
		  periodData.Value("name") = periodName
		  periodData.Value("fromDate") = "未設定"
		  periodData.Value("toDate") = "未設定"
		  
		  var endpoint as String = "/v1/api/periods"
		  return me.SendRequest("POST", endpoint, periodData)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CreateRowSetFromAPIResponse(data As Variant) As RowSet
		  // APIレスポンスからRowSetオブジェクトを作成
		  
		  if not data.IsArray then
		    return CreateEmptyRowSet()
		  end if
		  
		  var rows() as Variant = data
		  if rows.Count = 0 then
		    return CreateEmptyRowSet()
		  end if
		  
		  // 一時的なIn-Memory SQLiteデータベースを作成
		  var tempDB as new SQLiteDatabase
		  tempDB.Connect()  // DatabaseFileが未設定なのでメモリ内DBになる
		  
		  // 最初の行からカラム情報を取得してテーブルを作成
		  var firstRow as Dictionary = Dictionary(rows(0))
		  var createSQL as String = "CREATE TEMP TABLE api_result ("
		  var columnNames() as String
		  
		  for each key as Variant in firstRow.Keys
		    columnNames.Add(key.StringValue)
		    if createSQL <> "CREATE TEMP TABLE api_result (" then
		      createSQL = createSQL + ", "
		    end if
		    createSQL = createSQL + "`" + key.StringValue + "` TEXT"
		  next
		  createSQL = createSQL + ")"
		  
		  Try
		    tempDB.ExecuteSQL(createSQL)
		    
		    // データを挿入
		    for each row as Variant in rows
		      if row isa Dictionary then
		        var rowDict as Dictionary = Dictionary(row)
		        var insertSQL as String = "INSERT INTO api_result VALUES ("
		        var values() as String
		        
		        for each columnName as String in columnNames
		          if rowDict.HasKey(columnName) then
		            // 文字列値をエスケープ
		            var value as String = rowDict.Value(columnName).StringValue
		            value = value.ReplaceAll("'", "''")  // SQLエスケープ
		            values.Add("'" + value + "'")
		          else
		            values.Add("NULL")
		          end if
		        next
		        
		        insertSQL = insertSQL + String.FromArray(values, ", ") + ")"
		        tempDB.ExecuteSQL(insertSQL)
		      end if
		    next
		    
		    // RowSetを取得して返す
		    return tempDB.SelectSQL("SELECT * FROM api_result")
		    
		  Catch error as DatabaseException
		    me.LastError = "Failed to create RowSet: " + error.Message
		    return CreateEmptyRowSet()
		  End Try
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function DeleteDeal(period As String, dealNo As String, reason As String = "") As Dictionary
		  // DELETE /v1/api/deals/{dealNo}?period={period}
		  var encodedDealNo as String = EncodeURLComponent(dealNo)
		  var encodedPeriod as String = EncodeURLComponent(period)
		  var endpoint as String = "/v1/api/deals/" + encodedDealNo + "?period=" + encodedPeriod
		  
		  // 削除理由がある場合はリクエストボディに含める
		  var requestData as Dictionary = nil
		  if reason <> "" then
		    requestData = new Dictionary
		    requestData.Value("reason") = reason
		  end if
		  
		  return me.SendRequest("DELETE", endpoint, requestData)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function DeleteDealPartner(name as string) As Dictionary
		  // DELETE /v1/api/deal-partners/:name
		  return me.SendRequest("DELETE", "/v1/api/deal-partners/" + name)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function DownloadDealFile(period As String, dealNo As String) As MemoryBlock
		  // GET /v1/api/deals/{dealNo}/file?period={period}
		  var encodedDealNo as String = EncodeURLComponent(dealNo)
		  var encodedPeriod as String = EncodeURLComponent(period)
		  var endpoint as String = "/v1/api/deals/" + encodedDealNo + "/download?period=" + encodedPeriod
		  
		  try
		    var url as String = me.BaseURL + endpoint
		    var request as new URLConnection
		    request.RequestHeader("User-Agent") = "Denchokun-Client/1.0"
		    request.AllowCertificateValidation = false
		    
		    var response as String = request.SendSync("GET", url, me.TimeoutSeconds)
		    
		    // HTTPステータスコードをチェック
		    if request.HTTPStatusCode = 200 then
		      // レスポンスボディをMemoryBlockとして返す
		      var responseData as MemoryBlock = response
		      return responseData
		    else
		      me.LastError = "HTTP Error " + request.HTTPStatusCode.ToString
		      if request.HTTPStatusCode = 404 then
		        me.LastError = me.LastError + ": ファイルが見つかりません"
		      elseif request.HTTPStatusCode = 403 then
		        me.LastError = me.LastError + ": アクセス権限がありません"
		      end if
		      return nil
		    end if
		    
		  catch error as RuntimeException
		    me.LastError = "ダウンロードエラー: " + error.Message
		    return nil
		  end try
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ExecuteSQL(period As String, sql As String)
		  // API経由でSQL実行（INSERT/UPDATE/DELETE用）: POST /v1/api/execute
		  
		  var queryData as New Dictionary
		  queryData.Value("period") = period
		  queryData.Value("query") = sql
		  
		  Try
		    var result As Dictionary = me.SendRequest("POST", "/v1/api/execute", queryData)
		    
		    if result = nil or not result.HasKey("success") or not result.Value("success").BooleanValue then
		      var errorMsg as String = "SQL execution failed"
		      if result <> nil and result.HasKey("message") then
		        errorMsg = result.Value("message").StringValue
		      end if
		      me.LastError = errorMsg
		      Raise New DatabaseException(errorMsg)
		    end if
		    
		  Catch error As RuntimeException
		    me.LastError = error.Message
		    Raise New DatabaseException("API request failed: " + error.Message)
		  End Try
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetDealPartners() As Dictionary
		  // GET /v1/api/deal-partners
		  return me.SendRequest("GET", "/v1/api/deal-partners")
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetDealPreview(period As String, dealId As String, width As Variant = Nil, height As Variant = Nil) As Dictionary
		  // GET /v1/api/preview-link?period={period}&dealId={dealId}[&width={width}][&height={height}]
		  var endpoint as String = "/v1/api/preview-link?period=" + period + "&dealId=" + dealId
		  
		  if width <> Nil then
		    endpoint = endpoint + "&width=" + width.StringValue
		  end if
		  
		  if height <> Nil then
		    endpoint = endpoint + "&height=" + height.StringValue
		  end if
		  
		  return me.SendRequest("GET", endpoint)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetDealPreviewIcon(period As String, dealId As String, width As Integer, height As Integer) As Dictionary
		  // GET /v1/api/preview-link?period={period}&dealId={dealId}&width={width}&height={height}
		  var endpoint as String = "/v1/api/preview-link?period=" + period + "&dealId=" + dealId + "&width=" + width.ToString + "&height=" + height.ToString
		  return me.SendRequest("GET", endpoint)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetDealPreviewWithSize(period As String, dealId As String, width As Integer, height As Integer) As Dictionary
		  // GET /v1/api/preview-link?period={period}&dealId={dealId}&width={width}&height={height}
		  var endpoint as String = "/v1/api/preview-link?period=" + period + "&dealId=" + dealId + "&width=" + width.ToString + "&height=" + height.ToString
		  return me.SendRequest("GET", endpoint)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetDealsByPeriod(period As String) As Dictionary
		  // GET /v1/api/deals?period={period}
		  return me.SendRequest("GET", "/v1/api/deals?period=" + period)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetPeriodInfo(periodName As String) As Dictionary
		  // GET /v1/api/periodinfo?period={period}
		  var endpoint as String = "/v1/api/periodinfo?period=" + periodName 
		  return me.SendRequest("GET", endpoint)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetPeriods() As Dictionary
		  // GET /v1/api/periods
		  return me.SendRequest("GET", "/v1/api/periods")
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetPreviewDataFromURL(previewURL As String) As Dictionary
		  var result as new Dictionary
		  
		  try
		    var request as new URLConnection
		    request.RequestHeader("User-Agent") = "Denchokun-Client/1.0"
		    request.AllowCertificateValidation = false
		    
		    var response as String = request.SendSync("GET", previewURL, me.TimeoutSeconds)
		    var httpStatus as Integer = request.HTTPStatusCode
		    
		    // HTTPステータスコードを必ず返す
		    result.Value("httpStatusCode") = httpStatus
		    
		    if httpStatus = 200 then
		      result.Value("success") = true
		      result.Value("binaryData") = response
		    else
		      result.Value("success") = false
		      result.Value("message") = "HTTP Error " + httpStatus.ToString
		    end if
		    
		  catch error as RuntimeException
		    result.Value("success") = false
		    result.Value("httpStatusCode") = 0
		    result.Value("message") = "プレビューデータ取得エラー: " + error.Message
		  end try
		  
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function InsertDeal(dealData as Dictionary) As Dictionary
		  var endpoint as String = "/v1/api/deals"
		  var result as Dictionary = me.SendRequest("POST", endpoint, dealData)
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function InsertDealWithFile(period As String, dealData As Dictionary, fileData As MemoryBlock, fileName As String, force As Boolean = False) As Dictionary
		  // POST /v1/api/deals?period={period} (force対応版)
		  var endpoint as String = "/v1/api/deals?period=" + EncodeURLComponent(period)
		  
		  // force=trueの場合はクエリパラメータを追加
		  if force then
		    endpoint = endpoint + "&force=true"
		  end if
		  
		  // 既存のSendMultipartRequestを使用
		  return me.SendMultipartRequest("POST", endpoint, dealData, fileData, fileName)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function MoveDealToOtherPeriod(dealId As String, fromPeriod As String, toPeriod As String) As Dictionary
		  // PUT /v1/api/deals/{dealId}/to-otherperiod
		  var encodedDealId as String = EncodeURLComponent(dealId)
		  var endpoint as String = "/v1/api/deals/" + encodedDealId + "/to-otherperiod"
		  
		  var requestData as new Dictionary
		  requestData.Value("fromPeriod") = fromPeriod
		  requestData.Value("toPeriod") = toPeriod
		  
		  return me.SendRequest("PUT", endpoint, requestData)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RollbackTransaction()
		  // スタブ実装 - 後でAPI呼び出しに変更
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SearchAllDeals(searchKey As String, fromDate As String, toDate As String, partner As String = "", dealType As String = "", limit As Integer = 0, offset As Integer = 0, periods() As String = Nil, viewMode As String = "flat") As Dictionary
		  // POST /v1/api/all-deals - 全期間横断検索
		  // 戻り値: {"success": true, "view": "flat|history", "count": number, "deals": [array], "periods": [array]}
		  var requestData As New Dictionary
		  
		  // オプションパラメータを設定
		  if fromDate <> "" then
		    requestData.Value("from_date") = fromDate
		  end if
		  
		  if toDate <> "" then
		    requestData.Value("to_date") = toDate
		  end if
		  
		  if periods <> Nil and periods.Count > 0 then
		    requestData.Value("periods") = periods
		  end if
		  
		  if partner <> "" then
		    requestData.Value("partner") = partner
		  end if
		  
		  if dealType <> "" then
		    requestData.Value("type") = dealType
		  end if
		  
		  if searchKey <> "" then
		    requestData.Value("keyword") = searchKey
		  end if
		  
		  if limit > 0 then
		    requestData.Value("limit") = limit
		  end if
		  
		  if offset > 0 then
		    requestData.Value("offset") = offset
		  end if
		  
		  // viewパラメータを追加
		  if viewMode <> "" then
		    requestData.Value("view") = viewMode
		  end if
		  
		  return me.SendRequest("POST", "/v1/api/all-deals", requestData)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SearchDeals(period As String, searchKey As String, fromDate As String, toDate As String, viewMode As String = "flat") As Dictionary
		  // GET /v1/api/deals?period={period}&view={viewMode}&keyword={searchKey}&from_date={fromDate}&to_date={toDate}
		  // 戻り値: {"success": true, "view": "flat|history", "deals": [array], "count": number}
		  var params() As String
		  params.Add("period=" + period)
		  
		  if viewMode <> "" then
		    params.Add("view=" + viewMode)
		  end if
		  
		  if searchKey <> "" then
		    params.Add("keyword=" + searchKey)
		  end if
		  
		  if fromDate <> "" then
		    params.Add("from_date=" + fromDate)
		  end if
		  
		  if toDate <> "" then
		    params.Add("to_date=" + toDate)
		  end if
		  
		  var queryString As String = String.FromArray(params, "&")
		  return me.SendRequest("GET", "/v1/api/deals?" + queryString)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SelectSQL(period As String, sql As String) As RowSet
		  // API経由でSQL実行: POST /v1/api/query
		  
		  var queryData as New Dictionary
		  queryData.Value("period") = period
		  queryData.Value("query") = sql
		  queryData.Value("limit") = 1000  // デフォルト制限値
		  
		  Try
		    var result As Dictionary = me.SendRequest("POST", "/v1/api/query", queryData)
		    
		    if result = nil or not result.HasKey("success") or not result.Value("success").BooleanValue then
		      var errorMsg as String = "SQL query failed"
		      if result <> nil and result.HasKey("message") then
		        errorMsg = result.Value("message").StringValue
		      end if
		      me.LastError = errorMsg
		      Raise New DatabaseException(errorMsg)
		    end if
		    
		    // APIレスポンスからRowSetを作成して返す
		    if result.HasKey("rows") and result.Value("rows").IsArray then
		      return CreateRowSetFromAPIResponse(result.Value("rows"))
		    else
		      // 空のRowSetを返す
		      return CreateEmptyRowSet()
		    end if
		    
		  Catch error As RuntimeException
		    me.LastError = error.Message
		    Raise New DatabaseException("API request failed: " + error.Message)
		  End Try
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SendMultipartRequest(method As String, endpoint As String, dealData As Dictionary, fileData As MemoryBlock, fileName As String) As Dictionary
		  var result as new Dictionary
		  
		  try
		    var url as String = me.BaseURL + endpoint
		    var request as new URLConnection
		    
		    // boundary文字列生成
		    var boundary as String = "----DenchokuBoundary" + Str(Microseconds)
		    
		    // Content-Type設定は削除（SetRequestContentで自動設定される）
		    request.RequestHeader("User-Agent") = "Denchokun-Client/1.0"
		    request.AllowCertificateValidation = false
		    var body as String = BuildMultipartBody(boundary, dealData, fileData, fileName)
		    
		    // SetRequestContentでボディを設定
		    request.SetRequestContent(body, "multipart/form-data; boundary=" + boundary)
		    
		    
		    // リクエスト送信（ファイルなし、戻り値あり）
		    var response as String = request.SendSync(method, url, me.TimeoutSeconds)
		    
		    
		    // レスポンス処理
		    var httpStatus as Integer = request.HTTPStatusCode
		    if httpStatus >= 400 then
		      if httpStatus = 409 and response <> "" then
		        // 409 Conflictの場合はJSONレスポンスを解析
		        result = ParseJSON(response)
		        if result = nil then
		          result = new Dictionary
		          result.Value("success") = false
		          result.Value("message") = "HTTP Error " + httpStatus.ToString
		        end if
		      else
		        // その他のエラー
		        result.Value("success") = false
		        result.Value("message") = "HTTP Error " + httpStatus.ToString
		      end if
		      result.Value("httpStatusCode") = httpStatus
		      return result
		    end if
		    
		    // JSONパース
		    if response <> "" then
		      result = ParseJSON(response)
		    else
		      result.Value("success") = true
		    end if
		    
		  catch error as RuntimeException
		    result.Value("success") = false
		    result.Value("message") = "通信エラー: " + error.Message
		  end try
		  
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SendRequest(method As String, endpoint As String, data As Dictionary = Nil) As Dictionary
		  // HTTP通信の共通処理 - URLConnectionを使用
		  var result as new Dictionary
		  
		  try
		    var url as String = me.BaseURL + endpoint
		    var request as new URLConnection
		    request.RequestHeader("User-Agent") = "Denchokun-Client/1.0"
		    request.AllowCertificateValidation = false  // 開発時のみ
		    
		    var response as String
		    
		    Select Case method.Uppercase
		    Case "GET"
		      try
		        response = request.SendSync("GET", url, me.TimeoutSeconds)
		      catch err as IOException
		        result.Value("success") = false
		        result.Value("message") = "ネットワークエラー: " + err.Message
		        result.Value("httpStatusCode") = 0
		        return result
		      catch err as RuntimeException
		        result.Value("success") = false
		        result.Value("message") = "実行時エラー: " + err.Message
		        result.Value("httpStatusCode") = 0
		        return result
		      catch
		        result.Value("success") = false
		        result.Value("message") = "不明なエラーが発生しました"
		        result.Value("httpStatusCode") = 0
		        return result
		      end try
		      
		    Case "POST"
		      request.RequestHeader("Content-Type") = "application/json"
		      if data <> nil then
		        var jsonData as String = GenerateJSON(data)
		        request.SetRequestContent(jsonData, "application/json")
		      end if
		      try
		        response = request.SendSync("POST", url, me.TimeoutSeconds)
		      catch
		        result.Value("success") = false
		        result.Value("message") = "サーバーに接続できません"
		        result.Value("httpStatusCode") = 0
		        return result
		      end try
		      
		    Case "PUT"
		      request.RequestHeader("Content-Type") = "application/json"  // ← この行を追加
		      if data <> nil then
		        var jsonData as String = GenerateJSON(data)
		        request.SetRequestContent(jsonData, "application/json")
		      end if
		      try
		        response = request.SendSync("PUT", url, me.TimeoutSeconds)
		      catch
		        result.Value("success") = false
		        result.Value("message") = "サーバーに接続できません"
		        result.Value("httpStatusCode") = 0
		        return result
		      end try
		      
		    Case "DELETE"
		      try
		        response = request.SendSync("DELETE", url, me.TimeoutSeconds)
		      catch
		        result.Value("success") = false
		        result.Value("message") = "サーバーに接続できません"
		        result.Value("httpStatusCode") = 0
		        return result
		      end try
		      
		    Else
		      result.Value("success") = false
		      result.Value("message") = "Unsupported HTTP method: " + method
		      return result
		    End Select
		    
		    // HTTPステータスコードをチェック
		    var httpStatus as Integer = request.HTTPStatusCode
		    
		    if httpStatus = 0 then
		      // 接続エラー
		      result.Value("success") = false
		      result.Value("message") = "Connection failed - server may be unreachable"
		      result.Value("httpStatusCode") = 0
		      return result
		    elseif httpStatus >= 400 then
		      // HTTPエラー
		      result.Value("success") = false
		      result.Value("message") = "HTTP Error " + httpStatus.ToString
		      result.Value("httpStatusCode") = httpStatus
		      if response <> "" then
		        result.Value("data") = response
		      end if
		      return result
		    end if
		    
		    // 成功レスポンスの処理
		    if response <> "" then
		      try
		        var parsedJSON as Variant = ParseJSON(response)
		        if parsedJSON isa Dictionary then
		          result = Dictionary(parsedJSON)
		          // APIが成功フラグを返さない場合の保険
		          if not result.HasKey("success") then
		            result.Value("success") = true
		          end if
		        else
		          result.Value("success") = true
		          result.Value("message") = "Response received"
		          result.Value("data") = response
		        end if
		      catch jsonError as RuntimeException
		        result.Value("success") = false
		        result.Value("message") = "Invalid JSON response: " + jsonError.Message
		        result.Value("data") = response
		      end try
		    else
		      result.Value("success") = true
		      result.Value("message") = "No content"
		      result.Value("data") = ""
		    end if
		    
		  catch error as RuntimeException
		    result.Value("success") = false
		    result.Value("message") = "Network error: " + error.Message
		    result.Value("data") = nil
		  end try
		  
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TestConnection() As Boolean
		  // /v1/api/health
		  // サーバーの生存確認
		  me.LastError = ""
		  
		  try
		    var result as Dictionary = me.SendRequest("GET", "/v1/api/health")
		    if result <> nil then
		      if result.HasKey("success") and result.Value("success").BooleanValue then
		        return true
		      elseif result.HasKey("status") and result.Value("status").StringValue = "ok" then
		        // サーバーからの{"status": "ok"}レスポンス
		        return true
		      else
		        if result.HasKey("message") then
		          me.LastError = result.Value("message").StringValue
		        else
		          me.LastError = "Unknown response format"
		        end if
		      end if
		    else
		      me.LastError = "No response from server"
		    end if
		  catch error as RuntimeException
		    me.LastError = error.Message
		  end try
		  
		  return false
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function UpdateDeal(period As String, dealData As Dictionary) As Dictionary
		  // PUT /v1/api/deals/{dealNo}?period={period}
		  var dealNo as String = dealData.Value("NO").StringValue
		  var endpoint as String = "/v1/api/deals/" + dealNo + "?period=" + period
		  
		  // NOは除外してリクエストデータを作成
		  var requestData as new Dictionary
		  for each key as Variant in dealData.Keys
		    if key.StringValue <> "NO" then
		      requestData.Value(key.StringValue) = dealData.Value(key.StringValue)
		    end if
		  next
		  
		  return me.SendRequest("PUT", endpoint, requestData)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function UpdateDealPartner(oldName As String, newName As String) As Dictionary
		  // PUT /v1/api/deal-partners/:name
		  var partnerData as new Dictionary
		  partnerData.Value("name") = newName
		  return me.SendRequest("PUT", "/v1/api/deal-partners/" + oldName, partnerData)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function UpdateDealWithFile(period As String, dealData As Dictionary, fileData As MemoryBlock, fileName As String, force As Boolean = False) As Dictionary
		  // PUT /v1/api/deals/{dealNo}?period={period} (multipart)
		  var dealNo as String = dealData.Value("NO").StringValue
		  var endpoint as String = "/v1/api/deals/" + dealNo + "?period=" + period
		  if force then
		    endpoint = endpoint + "&force=true"
		  end if
		  
		  // NOは除外してリクエストデータを作成
		  var requestData as new Dictionary
		  for each key as Variant in dealData.Keys
		    if key.StringValue <> "NO" then
		      requestData.Value(key.StringValue) = dealData.Value(key.StringValue)
		    end if
		  next
		  
		  // multipartリクエストを送信
		  return me.SendMultipartRequest("PUT", endpoint, requestData, fileData, fileName)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function UpdatePeriodDates(periodName As String, fromDate As String, toDate As String) As Dictionary
		  // PUT /v1/api/periods/dates?period={period}
		  var endpoint as String = "/v1/api/periods/dates?period=" + periodName 
		  var data as new Dictionary
		  data.Value("startDate") = fromDate 
		  data.Value("endDate") = toDate 
		  return me.SendRequest("PUT", endpoint, data)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function UpdatePeriodName(oldName As String, newName As String) As Dictionary
		  // PUT /v1/api/periods/name?period={period}
		  var endpoint as String = "/v1/api/periods/name?period=" + oldName 
		  var data as new Dictionary
		  data.Value("newName") = newName
		  return me.SendRequest("PUT", endpoint, data)
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		BaseURL As String = "http://localhost:8080"
	#tag EndProperty

	#tag Property, Flags = &h0
		DatabaseFile As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h0
		IsConnected As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		LastError As String
	#tag EndProperty

	#tag Property, Flags = &h0
		LibraryVersion As string = "API-Client-1.0"
	#tag EndProperty

	#tag Property, Flags = &h0
		ThreadYieldInterval As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		TimeoutSeconds As Integer = 30
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="BaseURL"
			Visible=false
			Group="Behavior"
			InitialValue="http://localhost:8080"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TimeoutSeconds"
			Visible=false
			Group="Behavior"
			InitialValue="30"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="LastError"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsConnected"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ThreadYieldInterval"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="LibraryVersion"
			Visible=false
			Group="Behavior"
			InitialValue="API-Client-1.0"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
