#tag Class
Protected Class App
Inherits DesktopApplication
	#tag Event
		Sub Closing()
		  me.XmlPref.SavePreference()
		End Sub
	#tag EndEvent

	#tag Event
		Sub Opening()
		  //Check double app start
		  mMutex = New Mutex("Denchokun")
		  If Not mMutex.TryEnter Then
		    mMutex = Nil
		    Quit
		    return
		  End If
		  
		  me.kCR = chr(&h0D)
		  me.kCRLF = chr(&h0D)+chr(&h0A)
		  me.kTAB = chr(&h09)
		  me.kLF = chr(&h0A)
		  
		  //me.workingDB = nil
		  
		  XmlPref = new XmlPrefClass
		  var iret as integer
		  iret = XmlPref.LoadPreference()
		  if iret <> 0 then
		    MessageBox "cannot load preference"
		    quit
		    return
		  end if
		  
		  me.InMDB = me.CreateInMDB()
		  if me.InMDB = nil then
		    MessageBox "cannot create InMDB"
		    quit
		    return
		  end if
		  
		  
		  var launchWin as new LaunchWindow
		  launchWin.Show
		  for i as integer = 1 to 10
		    launchWin.Refresh(true)
		    launchWin.VersionLabel.Text = "Version："+App.Version
		    launchWin.VersionLabel.Refresh(true)
		    
		    //---- Do many while launchwin showing
		    if me.OCR = nil then
		      me.OCR = new OCRClass
		    end if
		    
		    App.DoEvents(100)
		  next
		  launchWin.Close
		  launchWin = nil
		  
		  // スプラッシュ後に設定ファイルからライセンスを試行。失敗時はダイアログ表示
		  MBSRegistered = TryRegisterMBSFromPref()
		  if not MBSRegistered then
		    var licWin as new MBSLicenseWindow
		    licWin.ShowModal
		    if not App.MBSRegistered then
		      Quit
		      return
		    end if
		  end if
		  
		  me.MainWin = new MainWindow
		  var periodWinNode as XmlNode = App.XmlPref.GetNode("DealPeriodWindow")
		  if periodWinNode <> nil then
		    var startup as string = periodWinNode.GetAttribute("Startup")
		    if startup = "on" then
		      if me.MainWin.ServerURL.Text <> "" and me.MainWin.DealPeriodPopupMenu.SelectedRowValue <> "" then
		        var dealPeriod as string = me.MainWin.DealPeriodPopupMenu.SelectedRowValue
		        dim win as new DealPeriodWindow(dealPeriod)
		        //win.SearchAndGetResults("")
		        me.MainWin.DealPeriodWins.Add win
		      end if
		    end if
		  end if
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Function ConnectAPI(DealPeriod as string) As APIClientClass
		  me.FunctionCalled = "ConnectAPI"
		  me.FunctionError = ""
		  
		  // 期間名の検証
		  if DealPeriod = "" or DealPeriod.Trim = "" then
		    me.FunctionError = "期間名が指定されていません"
		    return nil
		  end if
		  
		  var apiClient as new APIClientClass
		  apiClient.BaseURL = me.GetAPIServerURL()  // 新しく追加する設定取得メソッド
		  
		  var connectResult as Dictionary = apiClient.ConnectToPeriod(DealPeriod)
		  if not (connectResult.HasKey("success") and connectResult.Value("success").BooleanValue) then
		    // エラー処理
		    if connectResult.HasKey("error") then
		      me.FunctionError = "接続エラー: " + connectResult.Value("error").StringValue
		    else
		      me.FunctionError = "期間への接続に失敗しました"
		    end if
		    return nil  // ← APIClientClass型なので nil を返す
		  end if
		  
		  // 成功時は apiClient を返す
		  return apiClient
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CreateInMDB() As InMemoryDBClass
		  App.InMDB = New InMemoryDBClass
		  App.InMDB.CreateTempTable()
		  // サーバーから取引先データを取得してIn Memory DBに読み込み
		  try
		    me.LoadDealPartnersToInMemoryDB(App.InMDB)
		  catch e as RuntimeException
		    // 接続失敗時は空のIn Memory DBを返す
		  end try
		  
		  return App.InMDB
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CreateSqlCondition(searchKey as string) As string
		  var rg as new RegEx
		  var rgMatch as RegExMatch
		  rg.SearchPattern = "^((([1-9]\d*)(,\d{3})*)|0)$"
		  
		  var sqlCondition, priceCondition, typeCondition, partnerCondition, nameCondition, dealNoCondition as string
		  var sKey as string = searchKey.ReplaceAll("　"," ")
		  var items() as string = sKey.Split(" ")
		  var priceDone as Boolean = false
		  for each aItem as string in items
		    if aItem = "" then
		      continue
		    end if
		    
		    var sign, price as string
		    if aItem.Left(2) = "<=" then
		      sign = "<="
		      price = aItem.Middle(2)
		    ElseIf aItem.Left(2) = ">=" then
		      sign = ">="
		      price = aItem.Middle(2)
		    ElseIf aItem.Left(1) = "<" then
		      sign = "<"
		      price = aItem.Middle(1)
		    ElseIf aItem.Left(1) = ">" then
		      sign = ">"
		      price = aItem.Middle(1)
		    ElseIf aItem.Left(1) = "=" then
		      sign = "="
		      price = aItem.Middle(1)
		    Else
		      sign = "="
		      price = aItem
		    end if
		    rgMatch = rg.Search(price)
		    if rgMatch <> nil then
		      price = rgMatch.SubExpressionString(0)
		      price = price.ReplaceAll(",","")
		    else
		      price = "" // no match
		    end if
		    
		    if price <> "" and not priceDone then
		      if priceCondition = "" then
		        priceCondition = "DealPrice "+sign+" "+price
		      else
		        priceCondition = priceCondition+" and DealPrice "+sign+" "+price
		        priceDone = true
		      end if
		    else //not price
		      if aItem.Left(1) = "#" then //DealType
		        if typeCondition = "" then
		          typeCondition = "DealType = '"+aItem.Middle(1)+"'"
		        else
		          typeCondition = typeCondition+" or DealType = '"+aItem.Middle(1)+"'"
		        end if
		      ElseIf aItem.Left(1) = "^" then
		        if dealNoCondition = "" then
		          dealNoCondition = "NO = '"+aItem.Middle(1)+"'"
		        else
		          dealNoCondition = dealNoCondition+" or NO = '"+aItem.Middle(1)+"'"
		        end if
		      else //DealName or DealPartner
		        if nameCondition = "" then
		          nameCondition = "DealName like '%"+aItem+"%'"
		        else
		          nameCondition = nameCondition+" or DealName like '%"+aItem+"%'"
		        end if
		        if partnerCondition = "" then
		          partnerCondition = "DealPartner like '%"+aItem+"%'"
		        else
		          partnerCondition = partnerCondition+" or DealPartner like '%"+aItem+"%'"
		        end if
		      end if
		    end if
		    
		  next
		  
		  
		  if nameCondition <> "" and partnerCondition <> "" then
		    sqlCondition = "(("+nameCondition+") or ("+partnerCondition+"))"
		  else //nameCondition = "" and partnerCondition = ""
		    sqlCondition = ""
		  end if
		  
		  if priceCondition <> "" then
		    if sqlCondition = "" then
		      sqlCondition = "("+priceCondition+")"
		    else
		      sqlCondition = sqlCondition + " and ("+priceCondition+")"
		    end if
		  end if
		  
		  if typeCondition <> "" then
		    if sqlCondition = "" then
		      sqlCondition = "("+typeCondition+")"
		    else
		      sqlCondition = sqlCondition + " and ("+typeCondition+")"
		    end if
		  end if
		  
		  if dealNoCondition <> "" then
		    if sqlCondition = "" then
		      sqlCondition = "("+dealNoCondition+")"
		    else
		      sqlCondition = sqlCondition + " and ("+dealNoCondition+")"
		    end if
		  end if
		  
		  
		  return sqlCondition
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function DeleteDeal(deletePeriod as string, deleteNO as string, deleteReason as string, rollbackDB as APICLientClass, rollbackPeriod as string, rollbackNO as string) As string
		  me.FunctionCalled = "DeleteDeal"
		  me.FunctionError = ""
		  
		  var apiClient as APICLientClass = App.ConnectAPI(deletePeriod)
		  if apiClient = nil then
		    if rollbackPeriod <> "" and rollbackNO <> "" then
		      App.RollBackInsertedFilePathRecord(rollBackDB, rollbackPeriod, rollbackNO)
		    end if
		    return App.FunctionError
		  end if
		  
		  // API経由で削除実行（論理削除）
		  var result as Dictionary = apiClient.DeleteDeal(deletePeriod, deleteNO, deleteReason)
		  
		  if result.HasKey("success") and result.Value("success").BooleanValue then
		    return "OK"
		  else
		    var errorMsg as String = "削除に失敗しました"
		    if result.HasKey("message") then
		      errorMsg = errorMsg + ": " + result.Value("message").StringValue
		    elseif result.HasKey("error") then
		      errorMsg = errorMsg + ": " + result.Value("error").StringValue
		    end if
		    return errorMsg
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetADealPeriod(name as string) As DealPeriodClass
		  var base as XmlNode = App.XmlPref.GetNode("BaseFolder")
		  var aPeriod as XmlNode = base.FirstChild
		  while aPeriod <> nil
		    var periodName as string = aPeriod.FirstChild.Value
		    if periodName = name then
		      var aDealPeriod as new DealPeriodClass
		      aDealPeriod.Name = periodName
		      var FromDate as string = aPeriod.GetAttribute("FromDate")
		      if FromDate = "" then
		        aDealPeriod.FromDate = "未設定"
		      else
		        aDealPeriod.FromDate = FromDate
		      end if
		      var ToDate as string = aPeriod.GetAttribute("ToDate")
		      if ToDate = "" then
		        aDealPeriod.ToDate = "未設定"
		      else
		        aDealPeriod.ToDate = ToDate
		      end if
		      return aDealPeriod
		    end if
		    aPeriod = aPeriod.NextSibling
		  Wend
		  Return nil
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetAPIServerURL() As string
		  var apiServerURL as String = me.XmlPref.GetAPIServerURL()
		  return apiServerURL
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetCurrentDealPeriod() As String
		  if MainWin <> nil and MainWin.DealPeriodPopupMenu <> nil then
		    return MainWin.DealPeriodPopupMenu.SelectedRowText
		  else
		    return ""
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LoadDealPartnersToInMemoryDB(inMDB as InMemoryDBClass)
		  var apiClient as new APIClientClass
		  apiClient.BaseURL = me.GetAPIServerURL()
		  
		  try
		    var result as Dictionary = apiClient.GetDealPartners()
		    if result.HasKey("success") and result.Value("success").BooleanValue then
		      if inMDB = nil then
		        return
		      end if
		      // In Memory DBのTempTableテーブルを更新
		      inMDB.ExecuteSQL("DELETE FROM TempTable")
		      
		      if result.HasKey("partners") then
		        var partnersArray as Variant = result.Value("partners")
		        if partnersArray.IsArray then
		          var partners() as Variant = partnersArray
		          for each partner as Variant in partners
		            inMDB.AddDealPartner(partner.StringValue)
		          next
		        end if
		      end if
		    end if
		  catch error as RuntimeException
		    // 接続失敗時は既存のIn Memory DBデータをそのまま使用
		    // エラーは無視してオフラインモードで継続
		  end try
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RollBackInsertedFilePathRecord(rollBackApiClient as APICLientClass, rollbackPeriod as string, rollbackNO as string)
		  var deleteFilePath as string
		  Var rowsFound As RowSet
		  Try
		    rowsFound = rollBackApiClient.SelectSQL(rollbackPeriod, "SELECT FilePath FROM Deals WHERE NO='"+rollbackNO+"'" )
		    if rowsFound.RowCount = 0 then
		      MessageBox "RollBackInsertFilePathRecord(): can't find a record NO='"+rollbackNO+"'"
		      return
		    end if
		    deleteFilePath = DecodeSqlString(rowsFound.Column("FilePath").StringValue)
		    rowsFound.Close
		  Catch error As DatabaseException
		    MessageBox("RollBackInsertFilePathRecord(): " + error.Message)
		    Return
		  End Try
		  
		  var sql as string = "delete from Deals where NO = '"+rollbackNO+"'"
		  Try
		    rollBackApiClient.ExecuteSQL(rollbackPeriod, sql)
		  Catch error As DatabaseException
		    MessageBox("RollBackInsertFilePathRecord(): " + error.Message)
		    return
		  End Try
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetMBSRegistered(value as Boolean)
		  MBSRegistered = value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TryRegisterMBSFromPref() As Boolean
		  // 設定ファイルから取得し、全部そろっていれば registerMBSPlugin を実行
		  var licenseInfo as Dictionary = App.XmlPref.GetMBSLicense()
		  if licenseInfo = nil then
		    return False
		  end if
		  
		  Var name As String = licenseInfo.Value("Name").StringValue
		  Var product As String = licenseInfo.Value("Product").StringValue
		  Var yms As String = licenseInfo.Value("YearMonth").StringValue
		  Var serial As String = licenseInfo.Value("SerialKey").StringValue
		  
		  if name.Trim = "" or product.Trim = "" or yms.Trim = "" or serial.Trim = "" then
		    return False
		  end if
		  
		  if yms.Length <> 6 or not yms.IsNumeric then
		    return False
		  end if
		  
		  Var ym As Integer
		  Try
		    ym = Integer.FromString(yms)
		  Catch
		    return False
		  End Try
		  
		  Return registerMBSPlugin(name, product, ym, serial)
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		firstBoot As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		FunctionCalled As string
	#tag EndProperty

	#tag Property, Flags = &h0
		FunctionError As String
	#tag EndProperty

	#tag Property, Flags = &h0
		FunctionReturn As String
	#tag EndProperty

	#tag Property, Flags = &h0
		InMDB As InMemoryDBClass
	#tag EndProperty

	#tag Property, Flags = &h0
		kCR As String
	#tag EndProperty

	#tag Property, Flags = &h0
		kCRLF As string
	#tag EndProperty

	#tag Property, Flags = &h0
		kLF As string
	#tag EndProperty

	#tag Property, Flags = &h0
		kTAB As string
	#tag EndProperty

	#tag Property, Flags = &h0
		MainWin As MainWindow
	#tag EndProperty

	#tag Property, Flags = &h0
		MBSRegistered As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		mMutex As Mutex
	#tag EndProperty

	#tag Property, Flags = &h0
		OCR As OCRClass
	#tag EndProperty

	#tag Property, Flags = &h0
		XmlPref As XmlPrefClass
	#tag EndProperty


	#tag Constant, Name = kEditClear, Type = String, Dynamic = False, Default = \"&Delete", Scope = Public
		#Tag Instance, Platform = Windows, Language = Default, Definition  = \"&Delete"
		#Tag Instance, Platform = Linux, Language = Default, Definition  = \"&Delete"
	#tag EndConstant

	#tag Constant, Name = kFileQuit, Type = String, Dynamic = False, Default = \"&Quit", Scope = Public
		#Tag Instance, Platform = Windows, Language = Default, Definition  = \"E&xit"
	#tag EndConstant

	#tag Constant, Name = kFileQuitShortcut, Type = String, Dynamic = False, Default = \"", Scope = Public
		#Tag Instance, Platform = Mac OS, Language = Default, Definition  = \"Cmd+Q"
		#Tag Instance, Platform = Linux, Language = Default, Definition  = \"Ctrl+Q"
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="Name"
			Visible=false
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=false
			Group="ID"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=false
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=false
			Group="Position"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=false
			Group="Position"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowAutoQuit"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowHiDPI"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="BugVersion"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Copyright"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Description"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LastWindowIndex"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="MajorVersion"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="MinorVersion"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="NonReleaseVersion"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="RegionCode"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="StageCode"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Version"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="_CurrentEventTime"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="kCR"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="kCRLF"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="kTAB"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="firstBoot"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="kLF"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FunctionCalled"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FunctionError"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FunctionReturn"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MBSRegistered"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
