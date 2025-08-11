#tag Class
Protected Class APIClientClass
	#tag Method, Flags = &h0
		Sub BeginTransaction()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function BuildURL(endpoint As String) As String
		  // BaseURL + endpoint の組み立て
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
		Sub Connect()
		  // スタブ実装 - 後でAPI呼び出しに変更
		  me.IsConnected = true
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ConnectToPeriod(dealPeriod as String) As Boolean
		  // /api/v1/periods/{dealPeriod}/connect
		  // 指定期間のDBに接続（既存のConnectDBの代替）
		  try
		    var result as Dictionary = me.SendRequest("POST", "/api/v1/periods/" + dealPeriod + "/connect")
		    if result <> nil and result.HasKey("success") then
		      return result.Value("success").BooleanValue
		    end if
		  catch error as RuntimeException
		    me.LastError = error.Message
		  end try
		  
		  return false
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub CreateDatabase()
		  // スタブ実装 - 後でAPI呼び出しに変更
		  // API経由でデータベース作成を依頼
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CreatePeriod(periodName As String) As Dictionary
		  // POST /api/v1/periods
		  var periodData as new Dictionary
		  periodData.Value("name") = periodName
		  periodData.Value("fromDate") = "未設定"
		  periodData.Value("toDate") = "未設定"
		  
		  var endpoint as String = "/api/v1/periods"
		  return me.SendRequest("POST", endpoint, periodData)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function DeleteDeal(dealNo As String, reason As String) As Dictionary
		  // DELETE /api/v1/deals/{dealNo}
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function DeletePeriod(periodName as String) As Dictionary
		  // DELETE /api/v1/periods/{period}
		  var endpoint as String = "/api/v1/periods/" + periodName
		  return me.SendRequest("DELETE", endpoint)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ExecuteSQL(sql as string)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetDeal(dealNo As String) As Dictionary
		  // GET /api/v1/deals/{dealNo}
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetDealsByPeriod(period As String) As Dictionary
		  // GET /api/v1/deals?period={period}
		  return me.SendRequest("GET", "/api/v1/deals?period=" + period)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetPeriods() As Dictionary
		  // GET /api/v1/periods
		  return me.SendRequest("GET", "/api/v1/periods")
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HandleHTTPError(statusCode As Integer, responseBody As String) As Dictionary
		  // HTTPエラーの統一処理
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function InsertDeal(dealData as Dictionary) As Dictionary
		  var endpoint as String = "/api/v1/deals"
		  var result as Dictionary = me.SendRequest("POST", endpoint, dealData)
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ProcessFileForAPI(dropF as FolderItem, basePath as String, period as String) As Dictionary
		  var fileData as new Dictionary
		  
		  if dropF = nil then
		    return fileData
		  end if
		  
		  // ファイル情報を収集
		  fileData.Value("fileName") = dropF.Name
		  fileData.Value("filePath") = dropF.NativePath
		  fileData.Value("isFolder") = dropF.IsFolder
		  
		  if dropF.Exists then
		    fileData.Value("fileSize") = dropF.Length
		  else
		    fileData.Value("fileSize") = 0
		  end if
		  
		  // ハッシュ値計算
		  if not dropF.IsFolder and dropF.Exists then
		    fileData.Value("hash") = GetSHA256(dropF)
		    
		    // Base64エンコードされたファイルデータ（小さいファイルの場合）
		    // Base64エンコードされたファイルデータ（小さいファイルの場合）
		    if dropF.Length < 10485760 then  // 10MB未満
		      try
		        var bis as BinaryStream = BinaryStream.Open(dropF)
		        if bis <> nil then
		          var data as String = bis.Read(bis.Length)
		          bis.Close()
		          fileData.Value("base64Data") = EncodeBase64(data)
		        else
		          fileData.Value("base64Data") = ""
		        end if
		      catch error as IOException
		        fileData.Value("base64Data") = ""
		      end try
		    else
		      fileData.Value("base64Data") = ""
		    end if
		  elseif dropF.IsFolder then
		    // フォルダの場合はZIP化してハッシュ計算
		    var zipName as String = dropF.Name + ".zip"
		    var zipF as FolderItem = SpecialFolder.Temporary.Child(zipName)
		    var zip as new ZipCompressClass
		    try
		      zip.CompressFolder(dropF, zipF)
		      if zipF.Exists then
		        fileData.Value("hash") = GetSHA256(zipF)
		        zipF.Remove()
		      else
		        fileData.Value("hash") = ""
		      end if
		    catch error as RuntimeException
		      fileData.Value("hash") = ""
		    end try
		    fileData.Value("base64Data") = ""
		  else
		    fileData.Value("hash") = ""
		    fileData.Value("base64Data") = ""
		  end if
		  
		  return fileData
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RollbackTransaction()
		  // スタブ実装 - 後でAPI呼び出しに変更
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SearchDeals(period As String, searchKey As String, fromDate As String, toDate As String) As Dictionary
		  // GET /api/v1/deals/search?period={period}&q={searchKey}&from={fromDate}&to={toDate}
		  // 戻り値: {"success": true, "deals": [array], "count": number}
		  var params() As String
		  params.Add("period=" + period)
		  
		  if searchKey <> "" then
		    params.Add("q=" + searchKey)
		  end if
		  
		  if fromDate <> "" then
		    params.Add("from=" + fromDate)
		  end if
		  
		  if toDate <> "" then
		    params.Add("to=" + toDate)
		  end if
		  
		  var queryString As String = String.FromArray(params, "&")
		  return me.SendRequest("GET", "/api/v1/deals/search?" + queryString)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SelectSQL(sql as string) As RowSet
		  // スタブ実装 - 後で実際のAPI呼び出しに変更
		  return nil
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
		      request.RequestHeader("Content-Type") = "application/json"
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
		  // /api/v1/health
		  // サーバーの生存確認
		  me.LastError = ""
		  
		  try
		    var result as Dictionary = me.SendRequest("GET", "/api/v1/health")
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
		Sub UpdateDeal(dealNo As String, dealData As Dictionary)
		  // PUT /api/v1/deals/{dealNo}
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function UpdatePeriod(periodName as String, updateData as Dictionary) As Dictionary
		  // PUT /api/v1/periods/{period}
		  var endpoint as String = "/api/v1/periods/" + periodName
		  return me.SendRequest("PUT", endpoint, updateData)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function UpdatePeriodName(oldName As String, newName As String) As Dictionary
		  // PUT /api/v1/periods/{oldName} - 期間名のみ変更
		  var periodData as new Dictionary
		  periodData.Value("newName") = newName
		  
		  var endpoint as String = "/api/v1/periods/" + oldName
		  return me.SendRequest("PUT", endpoint, periodData)
		  End Function
		  
		  Function UpdatePeriodDates(periodName As String, fromDate As String, toDate As String) As Dictionary
		    // PUT /api/v1/periods/{periodName} - 日付のみ更新
		    var periodData as new Dictionary
		    periodData.Value("fromDate") = fromDate
		    periodData.Value("toDate") = toDate
		    
		    var endpoint as String = "/api/v1/periods/" + periodName
		    return me.SendRequest("PUT", endpoint, periodData)
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
