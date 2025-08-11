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
		  // 既存のBaseFolderが無効な場合は初回起動相当として扱う
		  var baseNode__ as XmlNode = XmlPref.GetNode("BaseFolder")
		  if baseNode__ <> nil then
		    var basePath__ as string = baseNode__.GetAttribute("path")
		    var baseF__ as new FolderItem(basePath__, FolderItem.PathModes.Native)
		    if baseF__ = nil or not baseF__.Exists or not baseF__.IsFolder then
		      App.firstBoot = true
		    end if
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
		        var baseFolderPath as string = me.MainWin.ServerURL.Text
		        var dealPeriod as string = me.MainWin.DealPeriodPopupMenu.SelectedRowValue
		        dim win as new DealPeriodWindow(baseFolderPath, dealPeriod)
		        //win.SearchAndGetResults("")
		        me.MainWin.DealPeriodWins.Add win
		      end if
		    end if
		  end if
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Function CheckDroppeFileIsNewlyDropped(period as string, dropF as FolderItem) As boolean
		  var check as string = App.GetBaseFolderPath()+period
		  if dropF.NativePath.IndexOf(0, check, ComparisonOptions.CaseSensitive) > -1 then
		    return false //Already registered path
		  end if
		  return true //newly dropped
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CheckFolderIsRegistered(dropF as FolderItem, period as string) As Boolean
		  me.FunctionReturn = ""
		  me.FunctionCalled = "CheckFolderIsRegistered"
		  me.FunctionError = ""
		  var dropFileFolderPath as string = dropF.Parent.NativePath
		  var zipF as new FolderItem(dropFileFolderPath+dropF.Name+".zip", FolderItem.PathModes.Native)
		  var zip as new ZipCompressClass
		  try
		    zip.CompressFolder(dropF, zipF)
		  Catch error as RuntimeException
		    me.FunctionReturn = "NG:CompressFolder Error: " + error.Message
		    return false
		  end Try
		  
		  var ret as Boolean = App.CheckImageIsRegistered(zipF, period)
		  zipF.Remove
		  return ret
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CheckImageIsRegistered(imageFile as FolderItem, period as string) As Boolean
		  me.FunctionReturn = ""
		  me.FunctionCalled = "CheckImageIsRegistered"
		  me.FunctionError = ""
		  var hash as String = GetSHA256(imageFile)
		  var sql as String = "select NO from Deals where Hash = '"+hash+"' and nextNO is NULL and RecStatus <> 'DELETE'"
		  var exists as Boolean = false
		  var apiClient as APICLientClass = App.ConnectAPI(period)
		  Var rowsFound As RowSet
		  Try
		    rowsFound = apiClient.SelectSQL(sql)
		    if rowsFound.RowCount > 0 then
		      exists = true
		      For Each row As DatabaseRow In rowsFound
		        if me.FunctionReturn = "" then
		          me.FunctionReturn = row.Column("NO").StringValue
		        else
		          me.FunctionReturn = me.FunctionReturn+","+row.Column("NO").StringValue
		        end if
		      Next
		    end if
		    rowsFound.Close
		  Catch error As DatabaseException
		    apiClient.Close
		    me.FunctionError = "Error: " + error.Message
		    return false
		  End Try
		  apiClient.Close
		  return exists
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CheckPreviouslyTimeStampedFile(dropF as FolderItem) As Boolean
		  var i as Integer = dropF.NativePath.IndexOf(0,App.GetBaseFolderPath(),ComparisonOptions.CaseSensitive)
		  if i < 0 then
		    Return false
		  end if
		  var storeF as FolderItem = dropF.Parent
		  for each aF as FolderItem in storeF.Children
		    if aF.Name.Left(4) = "ts_" then
		      return true
		    end if
		  next
		  return false
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CheckTSAenable() As Boolean
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ConnectAPI(DealPeriod as string) As APIClientClass
		  me.FunctionCalled = "ConnectAPI"
		  me.FunctionError = ""
		  
		  var apiClient as new APIClientClass
		  apiClient.BaseURL = me.GetAPIServerURL()  // 新しく追加する設定取得メソッド
		  
		  if not apiClient.ConnectToPeriod(DealPeriod) then
		    me.FunctionError = apiClient.LastError
		    return nil
		  end if
		  
		  return apiClient
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CreateDatabaseFile(dealPeriod as string) As string
		  var DenchokunDBF as FolderItem = nil
		  DenchokunDBF = App.GetDatabaseFile(dealPeriod)
		  if DenchokunDBF = nil then
		    return "Denchokun.db Access error"
		  end if
		  
		  
		  var apiClient as new APICLientClass
		  apiClient.DatabaseFile = DenchokunDBF
		  Try
		    apiClient.CreateDatabase
		    // 新規DB作成時の暗号化は無効化
		    
		    Var sql As String
		    sql = "CREATE TABLE ""Deals"" ("+_
		    """NO""    TEXT NOT NULL UNIQUE,"+_
		    """nextNO""    TEXT,"+_
		    """prevNO""    TEXT,"+_
		    """DealType""    TEXT,"+_
		    """DealDate""    TEXT,"+_
		    """DealName""    TEXT,"+_
		    """DealPartner""    TEXT,"+_
		    """DealPrice""    INTEGER,"+_
		    """DealRemark""    TEXT,"+_
		    """RecUpdate""    TEXT,"+_
		    """RegDate""    TEXT,"+_
		    """RecStatus""    TEXT,"+_
		    """FilePath""    TEXT,"+_
		    """Hash""    TEXT,"+_
		    "PRIMARY KEY(""NO"")"+_
		    ")"
		    Try
		      apiClient.ExecuteSQL(sql)
		    Catch error As DatabaseException
		      apiClient.Close
		      return "Create Deals tale Error: " + error.Message
		    End Try
		    
		    
		    sql = "CREATE INDEX IF NOT EXISTS idx_Hash ON Deals (Hash)"
		    Try
		      apiClient.ExecuteSQL(sql)
		    Catch error As DatabaseException
		      apiClient.Close
		      return "Create index Error: " + error.Message
		    End Try
		    
		    
		    sql = "CREATE TABLE ""System"" ("+_
		    """AppVersion""    TEXT,"+_
		    """SQLiteLibraryVersion""    TEXT"+_
		    ")"
		    Try
		      apiClient.ExecuteSQL(sql)
		    Catch error As DatabaseException
		      apiClient.Close
		      return "Create System table Error: " + error.Message
		    End Try
		    sql = "Insert into System values('"+App.Version+"',"+_
		    "'"+apiClient.LibraryVersion+"'"+_
		    ")"
		    Try
		      apiClient.ExecuteSQL(sql)
		    Catch error As DatabaseException
		      apiClient.Close
		      return "Insert into System Error: " + error.Message
		    End Try
		    
		  Catch error As IOException
		    // handle error here
		    return "CreateDatabase Error: " + error.Message
		  End Try
		  apiClient.Close
		  Return "OK"
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CreateInMDB() As APICLientClass
		  var dbNode as XmlNode = App.XmlPref.GetNode("InMDB")
		  if dbNode = nil then
		    return nil
		  end if
		  
		  var apiClient as New APICLientClass
		  try
		    apiClient.Connect
		  Catch e as DatabaseException
		    return nil
		  end try
		  
		  var DealPartnersNode as XmlNode = dbNode.FirstChild //<DealPartners>
		  while DealPartnersNode.Name <> "DealPartners"
		    DealPartnersNode = DealPartnersNode.NextSibling
		  wend
		  if DealPartnersNode = nil then
		    apiClient.Close
		    return nil
		  end if
		  
		  try
		    apiClient.ExecuteSQL("CREATE TABLE DealPartners(name TEXT PRIMARY KEY)")
		  Catch e as DatabaseException
		    apiClient.Close
		    return nil
		  end try
		  
		  
		  var PartnerNode as XmlNode = DealPartnersNode.FirstChild
		  if PartnerNode <> nil then
		    while PartnerNode <> nil
		      if PartnerNode.FirstChild <> nil then
		        try
		          Var name As string = PartnerNode.FirstChild.Value
		          var sql as string = "insert into DealPartners(name) values('"+EncodeSqlString(name)+"')"
		          apiClient.ExecuteSQL(sql)
		        Catch e as DatabaseException
		          me.InMDB.Close
		          return nil
		        end try
		      end if
		      PartnerNode = PartnerNode.NextSibling
		    wend
		  end if
		  
		  return apiClient
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CreateNewNO(optional no as string = "") As string
		  if no = "" then
		    Var d As DateTime
		    d = DateTime.Now
		    var dealingNO as string = d.SQLDateTime.ReplaceAll("-","")
		    dealingNO = dealingNO.ReplaceAll(":","")
		    dealingNO = dealingNO.ReplaceAll(" ","")
		    return dealingNO
		  else
		    var subNO as string = no.NthField("-",2)
		    var newSubNO as string
		    if subNO = "" then
		      newSubNO = "01"
		    else
		      newSubNO = Format(subNO.ToInteger+1,"00")
		    end if
		    var mainNO as string = no.NthField("-",1)
		    return mainNO+"-"+newSubNO
		  end if
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
		Function CreateSqlConditionOld(searchKey as string) As string
		  var rg as new RegEx
		  var rgMatch as RegExMatch
		  rg.SearchPattern = "^((([1-9]\d*)(,\d{3})*)|0)$"
		  
		  var sqlCondition, priceCondition, typeCondition, partnerCondition, nameCondition as string
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
		    //ElseIf nameCondition = "" and partnerCondition <> "" then
		    //sqlCondition = "("+partnerCondition+")"
		    //ElseIf nameCondition <> "" and partnerCondition = "" then
		    //sqlCondition = "("+nameCondition+")"
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
		  
		  return sqlCondition
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function DeleteDeal(basePath as string, deletePeriod as string, deleteNO as string, deleteReason as string, rollbackDB as APICLientClass, rollbackPeriod as string, rollbackNO as string) As string
		  var apiClient as APICLientClass = App.ConnectAPI(deletePeriod)
		  if apiClient = nil then
		    if rollbackPeriod <> "" and rollbackNO <> "" then
		      App.RollBackInsertedFilePathRecord(basePath, rollBackDB, rollbackPeriod, rollbackNO)
		    end if
		    return App.FunctionError
		  end if
		  apiClient.BeginTransaction()
		  
		  var sql as string = "select DealRemark, FilePath from Deals where NO = '"+deleteNO+"' and nextNO is NULL"
		  var rowSet as RowSet
		  Try
		    rowSet = apiClient.SelectSQL(sql)
		  Catch error As DatabaseException
		    apiClient.RollbackTransaction()
		    apiClient.Close()
		    if rollbackDB <> nil then
		      App.RollBackInsertedFilePathRecord(basePath, rollBackDB, rollbackPeriod, rollbackNO)
		    end if
		    return "select FilePath Error: " + error.Message
		  End Try
		  if rowSet.RowCount=0 then
		    apiClient.RollbackTransaction()
		    apiClient.Close()
		    if rollbackDB <> nil then
		      App.RollBackInsertedFilePathRecord(basePath, rollBackDB, rollbackPeriod, rollbackNO)
		    end if
		    return "NO='"+deleteNO+"' のレコードが見つかりません"
		  end if
		  var DealRemark as string = DecodeSqlString(rowSet.Column("DealRemark").StringValue)
		  if deleteReason <> "" then
		    DealRemark = DealRemark+"(削除理由："+deleteReason+")"
		  end if
		  
		  var FilePath as string = DecodeSqlString(rowSet.Column("FilePath").StringValue)
		  var dic as Dictionary = App.GetDealDatePartnerPrice(deletePeriod, deleteNO)
		  var tsFolderName as string = deleteNO+"_"+_
		  dic.Value("DealDate").StringValue+"_"+_
		  dic.Value("DealPartner").StringValue+"_"+_
		  dic.Value("DealPrice").StringValue
		  var dropF as new FolderItem(basePath+deletePeriod+"\"+tsFolderName, FolderItem.PathModes.Native)
		  if dropF = nil then
		    apiClient.RollbackTransaction()
		    apiClient.Close()
		    if rollbackDB <> nil then
		      App.RollBackInsertedFilePathRecord(basePath, rollBackDB, rollbackPeriod, rollbackNO)
		    end if
		    return "DeleteDeal dropF is nil"
		  end if
		  
		  var yesTS as Boolean = false
		  var newFilePath as string
		  if dropF.Exists and dropF.IsFolder then //FilePath is TimeStamped
		    yesTS = true
		  end if
		  newFilePath = "."+FilePath
		  
		  Var d As DateTime
		  d = DateTime.Now
		  //set nextNo of NO
		  sql = "update Deals set RecStatus='DELETE', DealRemark='"+EncodeSqlString(DealRemark)+_
		  "', FilePath='"+newFilePath+"', RecUpdate='"+d.SQLDateTime+"' where NO='"+deleteNO+"'"
		  Try
		    apiClient.ExecuteSQL(sql)
		  Catch error As DatabaseException
		    apiClient.RollbackTransaction()
		    apiClient.Close()
		    if rollbackDB <> nil then
		      App.RollBackInsertedFilePathRecord(basePath, rollBackDB, rollbackPeriod, rollbackNO)
		    end if
		    return "update Deals Error: " + error.Message
		  End Try
		  
		  var DocPath as string
		  var DocF as FolderItem
		  if yesTS then
		    DocPath = basePath+deletePeriod+"\"+tsFolderName
		    DocF = new FolderItem(DocPath, FolderItem.PathModes.Native)
		    if not DocF.Exists then
		      apiClient.RollbackTransaction()
		      apiClient.Close()
		      if rollbackDB <> nil then
		        App.RollBackInsertedFilePathRecord(basePath, rollBackDB, rollbackPeriod, rollbackNO)
		      end if
		      return "フォルダ("+FilePath+")が存在しません"
		    end if
		    DocF.Name = "."+tsFolderName
		  else
		    DocPath = basePath+deletePeriod+"\"+FilePath
		    DocF = new FolderItem(DocPath, FolderItem.PathModes.Native)
		    if not DocF.Exists then
		      apiClient.RollbackTransaction()
		      apiClient.Close()
		      if rollBackDB <> nil then
		        App.RollBackInsertedFilePathRecord(basePath, rollBackDB, rollbackPeriod, rollbackNO)
		      end if
		      return "ファイル("+FilePath+")が存在しません"
		    end if
		    DocF.Name = newFilePath
		  end if
		  
		  DocF.Visible = false
		  
		  apiClient.CommitTransaction()
		  apiClient.Close()
		  
		  return "OK"
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
		  if apiServerURL = "" then
		    return "http://localhost:8080"  // デフォルト値
		  end if
		  return apiServerURL
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetBaseFolderPath() As String
		  var baseNode as XmlNode = App.XmlPref.GetNode("BaseFolder")
		  var basePath as string = baseNode.GetAttribute("path")
		  return basePath
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetDatabaseFile(dealPeriod as string) As FolderItem
		  var baseNode as XmlNode = App.XmlPref.GetNode("BaseFolder")
		  var basePath as string = baseNode.GetAttribute("path")
		  var path as string = basePath+dealPeriod+"\Denchokun.db"
		  var dbF as FolderItem = new FolderItem(path, FolderItem.PathModes.Native)
		  return dbF
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetDealDatePartnerPrice(period as string, NO as string) As Dictionary
		  var apiClient as APICLientClass = App.ConnectAPI(period )
		  if apiClient = nil then
		    MessageBox "failed to connect DB Error"
		    return nil
		  end if
		  
		  var sql as string = "select DealDate, DealPartner, DealPrice from Deals where NO = '"+NO+"'"
		  var rowSet as RowSet
		  Try
		    rowSet = apiClient.SelectSQL(sql)
		  Catch error As DatabaseException
		    apiClient.Close
		    MessageBox "GetDealDatePartnerPrice Error: " + error.Message
		    return nil
		  End Try
		  if rowSet.RowCount = 0 then
		    apiClient.Close
		    MessageBox "GetDealDatePartnerPrice Error: No Such Deal NO=" +NO
		    return nil
		  end if
		  var DealDate as string = rowSet.Column("DealDate").StringValue
		  var DealPartner as string = DecodeSqlString(rowSet.Column("DealPartner").StringValue)
		  var DealPrice as string = rowSet.Column("DealPrice").StringValue
		  apiClient.Close
		  Var d As New Dictionary("DealDate" : DealDate, "DealPartner" : DealPartner, "DealPrice" : DealPrice)
		  return d
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetFileInStoreFolder(storeF as FolderItem) As FolderItem
		  var aF as FolderItem
		  for each aF in storeF.Children
		    if left(aF.Name,4) <> "ts_" then
		      return aF
		    end if
		  next
		  
		  return nil
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetRegDateAndHash(period as string, NO as string) As Dictionary
		  var apiClient as APICLientClass = App.ConnectAPI(period )
		  if apiClient = nil then
		    MessageBox "failed to connect DB Error"
		    return nil
		  end if
		  
		  var sql as string = "select RegDate, Hash from Deals where NO = '"+NO+"'"
		  var rowSet as RowSet
		  Try
		    rowSet = apiClient.SelectSQL(sql)
		  Catch error As DatabaseException
		    apiClient.Close
		    MessageBox "GetRegDateAndHash Error: " + error.Message
		    return nil
		  End Try
		  if rowSet.RowCount = 0 then
		    apiClient.Close
		    MessageBox "GetRegDateAndHash Error: No Such Deal NO=" +NO
		    return nil
		  end if
		  var RegDate as string = rowSet.Column("RegDate").StringValue
		  var Hash as string = rowSet.Column("Hash").StringValue
		  apiClient.Close
		  Var d As New Dictionary("RegDate" : RegDate, "Hash" : Hash)
		  return d
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetSHA256inStoreFolder(storeF as FolderItem) As string
		  var aF as FolderItem = GetFileInStoreFolder(storeF)
		  if aF <> nil then
		    var ret as string = GetSHA256(aF)
		    return ret
		  end if
		  return ""
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function InsertDeal(db as APICLientClass, basePath as string, period as string, type as string, dealDate as string, dealName as string, dealPartner as string, dealRemark as string, price as integer, dropF as FolderItem, hash as string, regDate as string, update as Boolean) As string
		  
		  var isTS as Boolean = false
		  var newNO as string = App.CreateNewNO("")
		  var ret as String
		  if dropF.IsFolder then
		    // タイムスタンプ機能は削除: 常にTSA OFFの処理を使用
		    ret = me.InsertDealForFolderUnderTSAoff(db, newNO, basePath, period, type, dealDate, dealName, _
		    dealPartner, dealRemark, price, dropF, hash, isTS, regDate, update)
		  else
		    // タイムスタンプ機能は削除: 常にTSA OFFの処理を使用
		    ret = me.InsertDealForFileUnderTSAoff(db, newNO, basePath, period, type, dealDate, dealName, _
		    dealPartner, dealRemark, price, dropF, hash, isTS, regDate, update)
		  end if
		  if ret = "OK" then
		    return "OK:"+newNO
		  else
		    return ret
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function InsertDealForFileUnderTSAOff(apiClient as APICLientClass, newNO as string, basePath as string, period as string, type as string, dealDate as string, dealName as string, dealPartner as string, dealRemark as string, price as integer, dropF as FolderItem, hash as string, isTS as Boolean, regDate as string, update as Boolean) As string
		  var storeFolderName as string = newNO+"_"+dealDate+"_"+dealPartner+"_"+price.ToString
		  var regFilePath as string
		  if isTS then
		    regFilePath = storeFolderName+"\"+dropF.Name
		  else
		    if dropF.NameExtensionMBS() <> "" then
		      regFilePath = newNO+"_"+dealDate+"_"+dealPartner+"_"+price.ToString+"."+dropF.NameExtensionMBS
		    else
		      regFilePath = newNO+"_"+dealDate+"_"+dealPartner+"_"+price.ToString
		    end if
		  end if
		  
		  
		  var newHash as string
		  if hash <> "" then
		    newHash = hash
		  else
		    newHash = GetSHA256(dropF)
		  end if
		  
		  Var d As DateTime
		  d = DateTime.Now
		  var sql as string
		  if update then
		    sql = "insert into Deals values('"+EncodeSqlString(newNO)+"',"+_
		    "NULL,"+_
		    "NULL,"+_
		    "'"+EncodeSqlString(type)+"',"+_
		    "'"+EncodeSqlString(dealDate)+"',"+_
		    "'"+EncodeSqlString(dealName)+"',"+_
		    "'"+EncodeSqlString(dealPartner)+"',"+_
		    price.ToString+","+_
		    "'"+EncodeSqlString(dealRemark)+"',"+_
		    "'"+d.SQLDateTime+"',"+_
		    "'"+regDate+"',"+_
		    "'UPDATE',"+_
		    "'"+EncodeSqlString(regFilePath)+"',"+_
		    "'"+newHash+"'"+_
		    ");"
		  else
		    sql = "insert into Deals values('"+EncodeSqlString(newNO)+"',"+_
		    "NULL,"+_
		    "NULL,"+_
		    "'"+EncodeSqlString(type)+"',"+_
		    "'"+EncodeSqlString(dealDate)+"',"+_
		    "'"+EncodeSqlString(dealName)+"',"+_
		    "'"+EncodeSqlString(dealPartner)+"',"+_
		    price.ToString+","+_
		    "'"+EncodeSqlString(dealRemark)+"',"+_
		    "NULL,"+_
		    "'"+d.SQLDateTime+"',"+_
		    "'NEW',"+_
		    "'"+EncodeSqlString(regFilePath)+"',"+_
		    "'"+newHash+"'"+_
		    ");"
		  end if
		  Try
		    apiClient.ExecuteSQL(sql)
		  Catch error As DatabaseException
		    return "NG:insert into Deals Error: " + error.Message
		  End Try
		  
		  var storePath as string = basePath+period+"\"
		  var storeF as FolderItem = new FolderItem(storePath, FolderItem.PathModes.Native)
		  
		  if isTS then //even if TSAoff, previously TimeStamped, parent folder is copied
		    dropF = dropF.Parent
		    storeF = new FolderItem(storePath, FolderItem.PathModes.Native)
		    var tempF as FolderItem = SpecialFolder.Temporary.Child(dropF.Parent.Name)
		    if tempF.Exists then
		      tempF.Remove()
		    end if
		    tempF = SpecialFolder.Temporary
		    try
		      dropF.Parent.CopyTo tempF
		    Catch error as IOException
		      return "NG:CopyTo Error: " + error.Message
		    end Try
		    var oldFolderName as string = dropF.Parent.Name //previous FolderName
		    tempF = tempF.Child(oldFolderName)
		    tempF.Name = storeFolderName
		    try
		      tempF.MoveTo storeF
		    Catch error as IOException
		      return "NG:CopyTo Error: " + error.Message
		    end Try
		  else
		    try
		      dropF.CopyTo storeF.Child(regFilePath) //newNO+"_"+.........
		    Catch error as IOException
		      return "NG:CopyTo Error: " + error.Message
		    end Try
		  end if
		  
		  return "OK"
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function InsertDealForFileUnderTSAOn(apiClient as APICLientClass, newNO as string, basePath as string, period as string, type as string, dealDate as string, dealName as string, dealPartner as string, dealRemark as string, price as integer, dropF as FolderItem, hash as string, isTS as Boolean, regDate as string, update as Boolean) As string
		  // sotreFolderName is only for tsaEnable=true
		  var storeFolderName as string = newNO+"_"+dealDate+"_"+dealPartner+"_"+price.ToString //in case dropF has extension
		  
		  var regFilePath as string
		  regFilePath = storeFolderName+"\"+dropF.Name
		  
		  
		  var newHash as string
		  if hash <> "" then
		    newHash = hash
		  else
		    newHash = GetSHA256(dropF)
		  end if
		  
		  Var d As DateTime
		  d = DateTime.Now
		  var sql as string
		  if update then
		    sql = "insert into Deals values('"+EncodeSqlString(newNO)+"',"+_
		    "NULL,"+_
		    "NULL,"+_
		    "'"+EncodeSqlString(type)+"',"+_
		    "'"+EncodeSqlString(dealDate)+"',"+_
		    "'"+EncodeSqlString(dealName)+"',"+_
		    "'"+EncodeSqlString(dealPartner)+"',"+_
		    price.ToString+","+_
		    "'"+EncodeSqlString(dealRemark)+"',"+_
		    "'"+d.SQLDateTime+"',"+_
		    "'"+regDate+"',"+_
		    "'UPDATE',"+_
		    "'"+EncodeSqlString(regFilePath)+"',"+_
		    "'"+newHash+"'"+_
		    ");"
		  else
		    sql = "insert into Deals values('"+EncodeSqlString(newNO)+"',"+_
		    "NULL,"+_
		    "NULL,"+_
		    "'"+EncodeSqlString(type)+"',"+_
		    "'"+EncodeSqlString(dealDate)+"',"+_
		    "'"+EncodeSqlString(dealName)+"',"+_
		    "'"+EncodeSqlString(dealPartner)+"',"+_
		    price.ToString+","+_
		    "'"+EncodeSqlString(dealRemark)+"',"+_
		    "NULL,"+_
		    "'"+d.SQLDateTime+"',"+_
		    "'NEW',"+_
		    "'"+EncodeSqlString(regFilePath)+"',"+_
		    "'"+newHash+"'"+_
		    ");"
		  end if
		  
		  Try
		    apiClient.ExecuteSQL(sql)
		  Catch error As DatabaseException
		    return "NG:insert into Deals Error: " + error.Message
		  End Try
		  
		  var storePath as string = basePath+period+"\"
		  var storeF as FolderItem = nil
		  if isTS then
		    storeF = new FolderItem(storePath, FolderItem.PathModes.Native)
		    var tempF as FolderItem = SpecialFolder.Temporary.Child(dropF.Parent.Name)
		    if tempF.Exists then
		      tempF.Remove()
		    end if
		    tempF = SpecialFolder.Temporary
		    try
		      dropF.Parent.CopyTo tempF
		    Catch error as IOException
		      return "NG:CopyTo Error: " + error.Message
		    end Try
		    var oldFolderName as string = dropF.Parent.Name //previous FolderName
		    tempF = tempF.Child(oldFolderName)
		    tempF.Name = storeFolderName
		    try
		      tempF.MoveTo storeF
		    Catch error as IOException
		      return "NG:CopyTo Error: " + error.Message
		    end Try
		  else
		    storeF = new FolderItem(storePath+storeFolderName, FolderItem.PathModes.Native)
		    try
		      storeF.CreateFolder()
		    Catch error as IOException
		      return "NG:CreateFolder Error: " + error.Message
		    end try
		    // タイムスタンプ機能は削除
		    
		    try
		      dropF.CopyTo storeF
		    Catch error as IOException
		      storeF.Remove()
		      return "NG:CopyTo Error: " + error.Message
		    end Try
		  end if
		  
		  return "OK"
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function InsertDealForFolderUnderTSAoff(apiClient as APICLientClass, newNO as string, basePath as string, period as string, type as string, dealDate as string, dealName as string, dealPartner as string, dealRemark as string, price as integer, dropF as FolderItem, hash as string, isTS as Boolean, regDate as string, update as Boolean) As string
		  //if drop is Folder, means dropF is always newly dropped
		  var zipName as string = dropF.Name+".zip"
		  var zipF as FolderItem = SpecialFolder.Temporary.Child(zipName)
		  var zip as new ZipCompressClass
		  try
		    zip.CompressFolder(dropF, zipF)
		  Catch error as RuntimeException
		    return "NG:CompressFolder Error: " + error.Message
		  end Try
		  
		  var registeredFileName as string = newNO+"_"+dealDate+"_"+dealPartner+"_"+price.ToString+".zip"
		  
		  var newHash as string
		  if hash <> "" then
		    newHash = hash
		  else
		    newHash = GetSHA256(zipF)
		  end if
		  
		  Var d As DateTime
		  d = DateTime.Now
		  var sql as string
		  if update then
		    sql = "insert into Deals values('"+EncodeSqlString(newNO)+"',"+_
		    "NULL,"+_
		    "NULL,"+_
		    "'"+EncodeSqlString(type)+"',"+_
		    "'"+EncodeSqlString(dealDate)+"',"+_
		    "'"+EncodeSqlString(dealName)+"',"+_
		    "'"+EncodeSqlString(dealPartner)+"',"+_
		    price.ToString+","+_
		    "'"+EncodeSqlString(dealRemark)+"',"+_
		    "'"+d.SQLDateTime+"'"+_
		    "'"+regDate+"',"+_
		    "'UPDATE',"+_
		    "'"+EncodeSqlString(registeredFileName)+"',"+_
		    "'"+newHash+"'"+_
		    ");"
		  else
		    sql = "insert into Deals values('"+EncodeSqlString(newNO)+"',"+_
		    "NULL,"+_
		    "NULL,"+_
		    "'"+EncodeSqlString(type)+"',"+_
		    "'"+EncodeSqlString(dealDate)+"',"+_
		    "'"+EncodeSqlString(dealName)+"',"+_
		    "'"+EncodeSqlString(dealPartner)+"',"+_
		    price.ToString+","+_
		    "'"+EncodeSqlString(dealRemark)+"',"+_
		    "NULL,"+_
		    "'"+d.SQLDateTime+"',"+_
		    "'NEW',"+_
		    "'"+EncodeSqlString(registeredFileName)+"',"+_
		    "'"+newHash+"'"+_
		    ");"
		  end if
		  
		  Try
		    apiClient.ExecuteSQL(sql)
		  Catch error As DatabaseException
		    zipF.Remove // Since zipF is in Temporary
		    return "NG:insert into Deals Error: " + error.Message
		  End Try
		  
		  var storePath as string = basePath+period+"\"
		  var storeF as FolderItem = new FolderItem(storePath, FolderItem.PathModes.Native)
		  try
		    zipF.MoveTo storeF.Child(registeredFileName)
		  Catch error as IOException
		    zipF.Remove() // zipF is still in Temporary since ERROR
		    return "NG:CopyTo Error: " + error.Message
		  end Try
		  //zipF.Remove() // zipF is moved
		  
		  return "OK"
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function InsertDealForFolderUnderTSAon(apiClient as APICLientClass, newNO as string, basePath as string, period as string, type as string, dealDate as string, dealName as string, dealPartner as string, dealRemark as string, price as integer, dropF as FolderItem, hash as string, isTS as Boolean, regDate as string, update as Boolean) As string
		  // sotreFolderName is only for tsaEnable=true
		  var storeFolderName as string = newNO+"_"+dealDate+"_"+dealPartner+"_"+price.ToString //in case dropF has extension
		  
		  //if drop is Folder, means dropF is always newly dropped
		  var zipName as string = dropF.Name+".zip"
		  var zipF as FolderItem = SpecialFolder.Temporary.Child(zipName)
		  var zip as new ZipCompressClass
		  try
		    zip.CompressFolder(dropF, zipF)
		  Catch error as RuntimeException
		    return "NG:CompressFolder Error: " + error.Message
		  end Try
		  
		  var regFilePath as string = storeFolderName+"\"+dropF.Name+".zip"
		  
		  
		  var newHash as string
		  if hash <> "" then
		    newHash = hash
		  else
		    newHash = GetSHA256(zipF)
		  end if
		  
		  Var d As DateTime
		  d = DateTime.Now
		  var sql as string
		  if update then
		    sql = "insert into Deals values('"+EncodeSqlString(newNO)+"',"+_
		    "NULL,"+_
		    "NULL,"+_
		    "'"+EncodeSqlString(type)+"',"+_
		    "'"+EncodeSqlString(dealDate)+"',"+_
		    "'"+EncodeSqlString(dealName)+"',"+_
		    "'"+EncodeSqlString(dealPartner)+"',"+_
		    price.ToString+","+_
		    "'"+EncodeSqlString(dealRemark)+"',"+_
		    "'"+d.SQLDateTime+"',"+_
		    "'"+regDate+"',"+_
		    "'UPDATE',"+_
		    "'"+EncodeSqlString(regFilePath)+"',"+_ //zipName is under Folder
		    "'"+newHash+"'"+_
		    ");"
		  else
		    sql = "insert into Deals values('"+EncodeSqlString(newNO)+"',"+_
		    "NULL,"+_
		    "NULL,"+_
		    "'"+EncodeSqlString(type)+"',"+_
		    "'"+EncodeSqlString(dealDate)+"',"+_
		    "'"+EncodeSqlString(dealName)+"',"+_
		    "'"+EncodeSqlString(dealPartner)+"',"+_
		    price.ToString+","+_
		    "'"+EncodeSqlString(dealRemark)+"',"+_
		    "NULL,"+_
		    "'"+d.SQLDateTime+"',"+_
		    "'NEW',"+_
		    "'"+EncodeSqlString(regFilePath)+"',"+_ //zipName is under Folder
		    "'"+newHash+"'"+_
		    ");"
		  end if
		  
		  Try
		    apiClient.ExecuteSQL(sql)
		  Catch error As DatabaseException
		    zipF.Remove  // zipF is in Temporary
		    return "NG:insert into Deals Error: " + error.Message
		  End Try
		  
		  var storePath as string = basePath+period+"\"
		  var storeF as FolderItem
		  storeF = new FolderItem(storePath+storeFolderName, FolderItem.PathModes.Native)
		  try
		    storeF.CreateFolder()
		  Catch error as IOException
		    zipF.Remove()  // zipF is in Temporary
		    return "NG:CreateFolder Error: " + error.Message
		  end Try
		  
		  // タイムスタンプ機能は削除
		  
		  try
		    zipF.MoveTo storeF.Child(zipName)
		  Catch error as IOException
		    zipF.Remove()  // zipF is in Temporary
		    storeF.Remove()
		    return "NG:CopyTo Error: " + error.Message
		  end Try
		  
		  return "OK"
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RollBackInsertedFilePathRecord(basePath as string, rollBackApiClient as APICLientClass, rollbackPeriod as string, rollbackNO as string)
		  var deleteFilePath as string
		  Var rowsFound As RowSet
		  Try
		    rowsFound = rollBackApiClient.SelectSQL("SELECT FilePath FROM Deals WHERE NO='"+rollbackNO+"'")
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
		    rollBackApiClient.ExecuteSQL(sql)
		  Catch error As DatabaseException
		    MessageBox("RollBackInsertFilePathRecord(): " + error.Message)
		    return
		  End Try
		  
		  var deleteF as new FolderItem(basePath+rollbackPeriod+"\"+deleteFilePath)
		  if deleteF = nil then
		    MessageBox("RollBackInsertFilePathRecord(): can't get deleteF")
		    return
		  end if
		  if not deleteF.Exists then
		    MessageBox("RollBackInsertFilePathRecord(): no such file("+deleteF.NativePath+")")
		    return
		  end if
		  try
		    deleteF.Remove()
		  Catch error as IOException
		    MessageBox("RollBackInsertFilePathRecord(): can't delete("+deleteF.NativePath+")")
		    return
		  end Try
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

	#tag Method, Flags = &h0
		Function UpdateDeal(db as APICLientClass, updatedItems as string, basePath as string, oldPeriod as string, newPeriod as string, dealNO as string, dealType as string, dealDate as string, dealName as string, dealPartner as string, dealRemark as string, dealPrice as integer, dropF as folderitem) As string
		  var isTS as Boolean = false
		  var dic as Dictionary = App.GetRegDateAndHash(oldPeriod, dealNO)
		  var oldHash as string = dic.Value("Hash").StringValue
		  var regDate as string = dic.Value("RegDate").StringValue
		  
		  //var selectRowWithNO as string = ""
		  var ret as string = ""
		  if newPeriod <> oldPeriod then
		    Var findPos As Integer
		    findPos = updatedItems.IndexOf("FilePath") // returns -1
		    if findPos < 0 then //FilePath not found
		      ret = App.UpdateDealinDifferentPeriod(db, basePath, oldPeriod, newPeriod, _
		      dealNO, dealType, dealDate, dealName, dealPartner, dealRemark, dealPrice, dropF, oldHash, isTS, regDate)
		    else
		      ret = App.UpdateDealinDifferentPeriod(db, basePath, oldPeriod, newPeriod, _
		      dealNO, dealType, dealDate, dealName, dealPartner, dealRemark, dealPrice, dropF, "", isTS, regDate)
		    end if
		    if ret.left(2) <> "OK" then
		      return ret
		    end if
		    //selectRowWithNO = ret.NthField(":",2)
		    //App.MainWin.ReFreshPeriodWindow(oldPeriod)
		    //App.MainWin.ReFreshPeriodWindow(newPeriod,selectRowWithNO)
		    return ret
		  else
		    Var findPos As Integer
		    findPos = updatedItems.IndexOf("FilePath") // returns -1
		    if findPos < 0 then
		      ret = App.UpdateDealinSamePeriod(db, basePath, newPeriod, _
		      dealNO, dealType, dealDate, dealName, dealPartner, dealRemark, dealPrice, dropF, oldHash, isTS, regDate)
		    else
		      ret = App.UpdateDealinSamePeriod(db, basePath, newPeriod, _
		      dealNO, dealType, dealDate, dealName, dealPartner, dealRemark, dealPrice, dropF, "", isTS, regDate)
		    end if
		    if ret.left(2) <> "OK" then
		      return ret
		    end if
		    
		    //selectRowWithNO = ret.NthField(":",2)
		    //App.MainWin.ReFreshPeriodWindow(oldPeriod,selectRowWithNO)
		  end if
		  
		  return ret
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function UpdateDealinDifferentPeriod(db as APICLientClass, basePath as string, oldPeriod as string, newPeriod as string, oldNO as string, dealType as string, dealDate as string, dealName as string, dealPartner as string, dealRemark as string, price as integer, dropF as FolderItem, hash as string, isTS as Boolean, regDate as string) As string
		  var ret as string
		  ret = App.InsertDeal(db, basePath, newPeriod, dealType, dealDate, dealName, dealPartner, dealRemark, price, _
		  dropF, hash, regDate, false) //Since insert to newPeriod, this must not be update
		  if ret.left(2) <> "OK" then
		    return ret
		  end if
		  
		  //Try to delete old record and RollBack(Delete) above record when deletion is failed
		  var newNO as string = ret.Middle(3)
		  var deleteReason as string = newPeriod+"へ"
		  ret = App.DeleteDeal(basePath, oldPeriod, oldNO, deleteReason, db, newPeriod, newNO)
		  if ret.left(2) <> "OK" then
		    return ret
		  end if
		  
		  
		  return ret //"OK:"+newNO
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function UpdateDealinSamePeriod(db as APICLientClass, basePath as string, period as string, oldNO as string, dealType as string, dealDate as string, dealName as string, dealPartner as string, dealRemark as string, price as integer, dropF as FolderItem, hash as string, isTS as Boolean, regDate as String) As string
		  var newNO as string = App.CreateNewNO(oldNO) // add or incr '-00'
		  
		  var ret as string
		  if dropF.IsFolder then //When dropF is Folder, dropF must be newly Dropped. So, Digital File should be updated
		    ret = App.UpdateDealinSamePeriodForFolder(db, newNO, basePath, period, oldNO, _
		    dealType, dealDate, dealName, dealPartner, dealRemark, price, dropF, hash, isTS, regDate)
		  else //When dropF is File, Digital File could be Either new File or prev File(nonTS or TS)
		    ret = App.UpdateDealinSamePeriodForFile(db, newNO, basePath, period, oldNO, _
		    dealType, dealDate, dealName, dealPartner, dealRemark, price, dropF, hash, isTS, regDate)
		  end if
		  if ret <> "OK" then
		    return ret
		  end if
		  
		  return "OK:"+newNO //+newNO
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function UpdateDealinSamePeriodForFile(apiClient as APICLientClass, newNO as string, basePath as string, period as string, oldNO as string, dealType as string, dealDate as string, dealName as string, dealPartner as string, dealRemark as string, price as integer, dropF as FolderItem, hash as string, isTS as Boolean, regDate as string) As string
		  var ret, sql as string
		  // タイムスタンプ機能は削除: 常にTSA OFFの処理を使用
		  ret = App.InsertDealForFileUnderTSAOff(apiClient, newNO, basePath, period, dealType, dealDate, dealName, _
		  dealPartner, dealRemark, price, dropF, hash, isTS, regDate, true)
		  if ret <> "OK" then
		    return ret
		  end if
		  
		  sql = "update Deals set nextNO='"+newNO+"' "+_
		  "where NO='"+oldNO+"'"
		  Try
		    apiClient.ExecuteSQL(sql)
		  Catch error As DatabaseException
		    return "update Deals Error: " + error.Message
		  End Try
		  
		  sql = "update Deals set prevNO='"+oldNO+"' "+_
		  "where NO='"+newNO+"'"
		  Try
		    apiClient.ExecuteSQL(sql)
		  Catch error As DatabaseException
		    return "update Deals Error: " + error.Message
		  End Try
		  
		  return "OK"
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function UpdateDealinSamePeriodForFolder(apiClient as APICLientClass, newNO as string, basePath as string, period as string, oldNO as string, dealType as string, dealDate as string, dealName as string, dealPartner as string, dealRemark as string, price as integer, dropF as FolderItem, hash as string, isTS as Boolean, regDate as string) As string
		  var ret, sql as string
		  // タイムスタンプ機能は削除: 常にTSA OFFの処理を使用
		  ret = App.InsertDealForFolderUnderTSAOff(apiClient , newNO, basePath, period, dealType, dealDate, dealName, _
		  dealPartner, dealRemark, price, dropF, hash, isTS, regDate, true)
		  if ret <> "OK:" then
		    return ret
		  end if
		  
		  
		  sql = "update Deals set nextNO='"+newNO+"' "+_
		  "where NO='"+oldNO+"'"
		  Try
		    apiClient.ExecuteSQL(sql)
		  Catch error As DatabaseException
		    return "update Deals Error: " + error.Message
		  End Try
		  
		  sql = "update Deals set prevNO='"+oldNO+"' "+_
		  "where NO='"+newNO+"'"
		  Try
		    apiClient.ExecuteSQL(sql)
		  Catch error As DatabaseException
		    return "update Deals Error: " + error.Message
		  End Try
		  
		  
		  return "OK"
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function UpdateRemarkByReason(oldRemark as string, label as string, reason as string) As string
		  var re as New RegEx
		  re.SearchPattern="\("+label+"：.*\)" // label prefers to be Zenkaku
		  var match as RegExMatch = re.Search(oldRemark)
		  if match = nil then // no Match
		    if oldRemark = "" then
		      return "("+label+"："+reason+")"
		    else
		      return oldRemark+"("+label+"："+reason+")"
		    end if
		  end if
		  re.ReplacementPattern="("+label+"："+reason+")"
		  var ret as string = re.Replace(oldRemark)
		  return ret
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
		InMDB As APICLientClass
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
