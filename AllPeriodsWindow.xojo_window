#tag DesktopWindow
Begin DesktopWindow AllPeriodsWindow
   Backdrop        =   0
   BackgroundColor =   &cFFFFFF
   Composite       =   False
   DefaultLocation =   2
   FullScreen      =   False
   HasBackgroundColor=   False
   HasCloseButton  =   True
   HasFullScreenButton=   False
   HasMaximizeButton=   True
   HasMinimizeButton=   True
   Height          =   400
   ImplicitInstance=   True
   MacProcID       =   0
   MaximumHeight   =   32000
   MaximumWidth    =   32000
   MenuBar         =   926765055
   MenuBarVisible  =   False
   MinimumHeight   =   400
   MinimumWidth    =   750
   Resizeable      =   True
   Title           =   "全期間検索"
   Type            =   0
   Visible         =   True
   Width           =   750
   Begin DesktopListBox RecordList
      AllowAutoDeactivate=   True
      AllowAutoHideScrollbars=   True
      AllowExpandableRows=   False
      AllowFocusRing  =   True
      AllowResizableColumns=   True
      AllowRowDragging=   False
      AllowRowReordering=   False
      Bold            =   False
      ColumnCount     =   5
      ColumnWidths    =   ""
      DefaultRowHeight=   30
      DropIndicatorVisible=   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      GridLineStyle   =   3
      HasBorder       =   True
      HasHeader       =   True
      HasHorizontalScrollbar=   False
      HasVerticalScrollbar=   True
      HeadingIndex    =   -1
      Height          =   337
      Index           =   -2147483648
      InitialValue    =   "取引日	取引先	金額	種別	取引名"
      Italic          =   False
      Left            =   157
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      RequiresSelection=   False
      RowSelectionType=   1
      Scope           =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   False
      Tooltip         =   ""
      Top             =   43
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   594
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
   End
   Begin DesktopTextField SearchKeyField
      AllowAutoDeactivate=   True
      AllowFocusRing  =   True
      AllowSpellChecking=   False
      AllowTabs       =   False
      BackgroundColor =   &cFFFFFF
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Format          =   ""
      HasBorder       =   True
      Height          =   22
      Hint            =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   230
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      MaximumCharactersAllowed=   0
      Password        =   False
      ReadOnly        =   False
      Scope           =   0
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextAlignment   =   0
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   11
      Transparent     =   False
      Underline       =   False
      ValidationMask  =   ""
      Visible         =   True
      Width           =   344
   End
   Begin DesktopLabel StatusLabel
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   31
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   10
      TabPanelIndex   =   0
      TabStop         =   False
      Text            =   ""
      TextAlignment   =   0
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   380
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   718
   End
   Begin DesktopListBox PeriodsList
      AllowAutoDeactivate=   True
      AllowAutoHideScrollbars=   True
      AllowExpandableRows=   False
      AllowFocusRing  =   True
      AllowResizableColumns=   False
      AllowRowDragging=   False
      AllowRowReordering=   False
      Bold            =   False
      ColumnCount     =   1
      ColumnWidths    =   ""
      DefaultRowHeight=   30
      DropIndicatorVisible=   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      GridLineStyle   =   3
      HasBorder       =   True
      HasHeader       =   False
      HasHorizontalScrollbar=   False
      HasVerticalScrollbar=   True
      HeadingIndex    =   -1
      Height          =   335
      Index           =   -2147483648
      InitialValue    =   ""
      Italic          =   False
      Left            =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      RequiresSelection=   False
      RowSelectionType=   1
      Scope           =   0
      TabIndex        =   12
      TabPanelIndex   =   0
      TabStop         =   False
      Tooltip         =   ""
      Top             =   44
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   150
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
   End
   Begin DoubleClickLabelClass FromDate
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FirstMouseDownTick=   0
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   31
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   14
      TabPanelIndex   =   0
      TabStop         =   False
      Text            =   "0000-00-00"
      TextAlignment   =   0
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   11
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   65
   End
   Begin DesktopLabel Label2
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   100
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   15
      TabPanelIndex   =   0
      TabStop         =   False
      Text            =   "から"
      TextAlignment   =   2
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   11
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   25
   End
   Begin DoubleClickLabelClass ToDate
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FirstMouseDownTick=   0
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   153
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   17
      TabPanelIndex   =   0
      TabStop         =   False
      Text            =   "0000-00-00"
      TextAlignment   =   0
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   11
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   65
   End
   Begin DesktopCheckBox HistoryCheck
      AllowAutoDeactivate=   True
      Bold            =   False
      Caption         =   "履歴表示"
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   598
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   18
      TabPanelIndex   =   0
      TabStop         =   False
      Tooltip         =   ""
      Top             =   12
      Transparent     =   False
      Underline       =   False
      Value           =   False
      Visible         =   True
      VisualState     =   0
      Width           =   75
   End
   Begin DesktopSeparator FromDateLine
      Active          =   False
      AllowAutoDeactivate=   True
      AllowTabStop    =   False
      Enabled         =   True
      Height          =   10
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   27
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      PanelIndex      =   0
      Scope           =   0
      TabIndex        =   19
      TabPanelIndex   =   0
      Tooltip         =   ""
      Top             =   30
      Transparent     =   False
      Visible         =   True
      Width           =   64
      _mIndex         =   0
      _mInitialParent =   ""
      _mName          =   ""
      _mPanelIndex    =   0
   End
   Begin DesktopSeparator ToDateLine
      Active          =   False
      AllowAutoDeactivate=   True
      AllowTabStop    =   False
      Enabled         =   True
      Height          =   10
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   152
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      PanelIndex      =   0
      Scope           =   0
      TabIndex        =   20
      TabPanelIndex   =   0
      Tooltip         =   ""
      Top             =   30
      Transparent     =   False
      Visible         =   True
      Width           =   64
      _mIndex         =   0
      _mInitialParent =   ""
      _mName          =   ""
      _mPanelIndex    =   0
   End
   Begin DesktopProgressWheel RunningWheel
      Active          =   False
      AllowAutoDeactivate=   True
      AllowTabStop    =   False
      Enabled         =   True
      Height          =   16
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   7
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      PanelIndex      =   0
      Scope           =   0
      TabIndex        =   21
      TabPanelIndex   =   0
      Tooltip         =   ""
      Top             =   381
      Transparent     =   False
      Visible         =   False
      Width           =   16
      _mIndex         =   0
      _mInitialParent =   ""
      _mName          =   ""
      _mPanelIndex    =   0
   End
   Begin DesktopButton SearchButton
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "検索"
      Default         =   True
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   22
      Index           =   -2147483648
      Italic          =   False
      Left            =   674
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      MacButtonStyle  =   0
      Scope           =   0
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   12
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   65
   End
   Begin DesktopLabel ClearSearchKeyField
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   14.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   576
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   22
      TabPanelIndex   =   0
      TabStop         =   False
      Text            =   "X"
      TextAlignment   =   2
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   12
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   16
   End
   Begin DesktopButton FromDateButton
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "Ⅴ"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   22
      Index           =   -2147483648
      Italic          =   False
      Left            =   3
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MacButtonStyle  =   0
      Scope           =   0
      TabIndex        =   24
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   11
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   22
   End
   Begin DesktopButton ToDateButton
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "Ⅴ"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   22
      Index           =   -2147483648
      Italic          =   False
      Left            =   128
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MacButtonStyle  =   0
      Scope           =   0
      TabIndex        =   25
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   11
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   22
   End
End
#tag EndDesktopWindow

#tag WindowCode
	#tag Event
		Sub Closing()
		  var node as XmlNode = App.XmlPref.GetNode("AllPeriodsWindow")
		  if self.Left > 0 then
		    node.SetAttribute("Left",self.Left.ToString)
		  end if
		  if self.Top > 0 then
		    node.SetAttribute("Top",self.Top.ToString)
		  end if
		  if self.Width > 0 then
		    node.SetAttribute("Width",self.Width.ToString)
		  end if
		  if self.Height > 0 then
		    node.SetAttribute("Height",self.Height.ToString)
		  end if
		  
		  App.MainWin.AllPeriodsWin = nil
		End Sub
	#tag EndEvent

	#tag Event
		Sub Opening()
		  var node as XmlNode = App.XmlPref.GetNode("AllPeriodsWindow")
		  var Left as integer = node.GetAttribute("Left").ToInteger
		  var Top as integer = node.GetAttribute("Top").ToInteger
		  var Width as integer = node.GetAttribute("Width").ToInteger
		  var Height as integer = node.GetAttribute("Height").ToInteger
		  if Left < 0 then
		    self.Left = App.XmlPref.DEFAULT_ALLPERIODS_LEFT
		  else
		    self.Left = Left
		  end if
		  if Top < 0 then
		    self.Top = App.XmlPref.DEFAULT_ALLPERIODS_TOP
		  else
		    self.Top = Top
		  end if
		  if Width < 0 then
		    self.Width = App.XmlPref.DEFAULT_ALLPERIODS_WIDTH
		  else
		    self.Width = Width
		  end if
		  if Height < 0 then
		    self.Height = App.XmlPref.DEFAULT_ALLPERIODS_HEIGHT
		  else
		    self.Height = Height
		  end if
		  
		  self.FromDate.Text = ""
		  self.ToDate.Text = ""
		  
		  
		  // APIサーバーから期間一覧を取得
		  var apiClient as new APIClientClass
		  apiClient.BaseURL = App.GetAPIServerURL()
		  
		  // 接続確認を先に実行
		  if not apiClient.TestConnection() then
		    var errorMessage as String = "APIサーバーに接続できません。" + EndOfLine + EndOfLine
		    errorMessage = errorMessage + "サーバーURL: " + apiClient.BaseURL + EndOfLine
		    errorMessage = errorMessage + "エラー: " + apiClient.LastError + EndOfLine + EndOfLine
		    errorMessage = errorMessage + "設定メニューでAPIサーバーの設定を確認してください。"
		    MessageBox(errorMessage)
		    return
		  end if
		  
		  var result as Dictionary = apiClient.GetPeriods()
		  if result.HasKey("success") and result.Value("success").BooleanValue then
		    self.PeriodsList.RemoveAllRows
		    
		    if result.HasKey("periods") then
		      var periodsArray as Variant = result.Value("periods")
		      if periodsArray.IsArray then
		        var periodsVariantArray() as Variant = periodsArray
		        for each periodVariant as Variant in periodsVariantArray
		          if periodVariant isa Dictionary then
		            var periodDict as Dictionary = Dictionary(periodVariant)
		            if periodDict.HasKey("name") then
		              var aDealPeriod as new DealPeriodClass
		              aDealPeriod.Name = periodDict.Value("name").StringValue
		              
		              if periodDict.HasKey("fromDate") then
		                aDealPeriod.FromDate = periodDict.Value("fromDate").StringValue
		              else
		                aDealPeriod.FromDate = "未設定"
		              end if
		              
		              if periodDict.HasKey("toDate") then
		                aDealPeriod.ToDate = periodDict.Value("toDate").StringValue
		              else
		                aDealPeriod.ToDate = "未設定"
		              end if
		              
		              self.PeriodsList.AddRow aDealPeriod.Name
		              self.PeriodsList.RowTagAt(self.PeriodsList.LastRowIndex) = aDealPeriod
		            end if
		          end if
		        next
		      end if
		    end if
		  else
		    // エラー時
		    var errorMsg as String = "APIサーバーから期間取得に失敗しました"
		    if result <> nil and result.HasKey("message") then
		      errorMsg = errorMsg + EndOfLine + result.Value("message").StringValue
		    end if
		    MessageBox(errorMsg)
		    return
		  end if
		End Sub
	#tag EndEvent


	#tag MenuHandler
		Function CheckHashItem() As Boolean Handles CheckHashItem.Action
		  if self.RecordList.LastAddedRowIndex < 0 then
		    return true
		  end if
		  
		  self.StopPushed = false
		  self.RunningWheel.Visible = true
		  self.RunningWheel.Refresh(true)
		  
		  var totalCount as integer = self.RecordList.RowCount
		  
		  var apiClient as APICLientClass = nil
		  var rowTag as RecordListRowPropertiesClass
		  var prevPeriod as string = ""
		  var period as string
		  var unMachedHashCount as integer = 0
		  for i as integer = 0 to self.RecordList.LastRowIndex
		    rowTag = self.RecordList.RowTagAt(i)
		    period = rowTag.DealPeriod
		    if period <> prevPeriod then
		      if apiClient <> nil then
		        apiClient.Close
		      end if
		      apiClient = App.ConnectAPI(period)
		      if apiClient = nil then
		        self.StatusLabel.Text = App.FunctionError
		        Return True
		      end if
		    end if
		    
		    var sql as string = "select FilePath, Hash from Deals where NO='"+rowTag.NO+"'"
		    var row as RowSet
		    try
		      row = apiClient.SelectSQL(period, sql)
		    Catch e as SQLiteException
		      self.StatusLabel.Text = e.Message
		      Return True
		    end try
		    var fileName as string = DecodeSqlString(row.Column("FilePath").StringValue)
		    var file as new FolderItem(self.BaseFolderPath+period+"\"+fileName)
		    if file = nil then
		      self.StatusLabel.Text = self.BaseFolderPath+period+"\"+fileName+" is nil"
		      return True
		    end if
		    if not file.Exists then
		      self.StatusLabel.Text = self.BaseFolderPath+period+"\"+fileName+" not exists"
		      return True
		    end if
		    
		    var percentRun as integer = (i*100)/totalCount
		    self.StatusLabel.Text = percentRun.ToString+"% "+fileName
		    self.StatusLabel.Refresh(true)
		    
		    var hash as string = row.Column("Hash").StringValue
		    hash = hash.Middle(7) //Since "SHA256="
		    var fileHash as string = GetSHA256(file)
		    fileHash = fileHash.Middle(7) //Since "SHA256="
		    if hash <> fileHash then
		      self.RecordList.RowSelectedAt(i) = True
		      unMachedHashCount = unMachedHashCount + 1
		    else
		      self.RecordList.RowSelectedAt(i) = false
		    end if
		    
		    App.DoEvents(7)
		    
		    prevPeriod = period
		    
		    if self.StopPushed then
		      exit
		    end if
		  next
		  if apiClient <> nil then
		    apiClient.Close
		  end if
		  self.StatusLabel.Text = ""
		  self.StatusLabel.Refresh(true)
		  
		  self.RunningWheel.Visible = false
		  
		  if self.StopPushed then
		    return True
		  end if
		  
		  if unMachedHashCount > 0 then
		    MessageBox unMachedHashCount.ToString+" 件のハッシュ値が不一致でした"
		  else
		    MessageBox "全件のハッシュ値が一致しました"
		  end if
		  
		  Return True
		  
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function CloseWindow() As Boolean Handles CloseWindow.Action
		  self.Close
		  Return True
		  
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function CollapseAll() As Boolean Handles CollapseAll.Action
		  for i as integer = 0 to self.RecordList.LastRowIndex
		    if self.RecordList.RowExpandableAt(i) then
		      if self.RecordList.RowExpandedAt(i) then
		        self.RecordList.RowExpandedAt(i) = false
		        i = 0
		      end if
		    end if
		  next
		  Return True
		  
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function ExpandAll() As Boolean Handles ExpandAll.Action
		  for i as integer = 0 to self.RecordList.LastRowIndex
		    if self.RecordList.RowExpandableAt(i) then
		      if not self.RecordList.RowExpandedAt(i) then
		        self.RecordList.RowExpandedAt(i) = true
		      end if
		    end if
		  next
		  Return True
		  
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function ExportItem() As Boolean Handles ExportItem.Action
		  if self.RecordList.SelectedRowCount = 0 then
		    messagebox "検索結果の一覧からエクスポートしたい取引を選択してください"
		    return true
		  end if
		  
		  Var dlg As New SelectFolderDialog
		  dlg.ActionButtonCaption = "エクスポートするフォルダを選択してください"
		  dlg.Title = "エクスポート先の選択"
		  //dlg.PromptText = "Prompt Text"
		  dlg.InitialFolder = nil
		  // SpecialFolder.Documents
		  
		  Var exportF As FolderItem
		  exportF = dlg.ShowModal
		  if exportF = nil then
		    return true
		  end if
		  
		  var errfile as FolderItem = new FolderItem(exportF.Child("error.text"))
		  var file as FolderItem = new FolderItem(exportF.Child("export.csv"))
		  if file.Exists then
		    MessageBox "選択したフォルダには既に export.csv が存在しています"
		    return true
		  end if
		  if errfile.Exists then
		    MessageBox "選択したフォルダには既に error.txt が存在しています"
		    return true
		  end if
		  
		  Var output As TextOutputStream
		  Try
		    // TextOutputStream.Create raises an IOException if it can't open the file for some reason.
		    output = TextOutputStream.Create(file)
		    output.Encoding = Encodings.ShiftJIS
		  Catch e As IOException
		    MessageBox e.Message
		    return true
		  End Try
		  
		  self.RunningWheel.Visible = true
		  for i as integer=0 to self.RecordList.RowCount
		    if not self.RecordList.RowSelectedAt(i) then
		      continue
		    end if
		    
		    var rowTag as RecordListRowPropertiesClass = self.RecordList.RowTagAt(i)
		    
		    var apiClient as APICLientClass = App.ConnectAPI(rowTag.DealPeriod)
		    if apiClient = nil then
		      self.RunningWheel.Visible = false
		      output.Close
		      WriteExportErrorFile(errfile, "Database("+rowTag.DealPeriod+") connection error")
		      MessageBox "Database("+rowTag.DealPeriod+") connection error"
		      return true
		    end if
		    
		    var sql as string = "select * from Deals where NO='"+rowTag.NO+"'"
		    var aRec as RowSet
		    try
		      aRec = apiClient.SelectSQL(rowTag.DealPeriod, sql)
		    Catch err as SQLiteException
		      self.RunningWheel.Visible = false
		      apiClient.Close
		      output.Close
		      WriteExportErrorFile(errfile, err.Message)
		      MessageBox err.Message
		      return true
		    end try
		    
		    var RecStatus as string = aRec.Column("RecStatus").StringValue
		    var NO as string = rowTag.NO
		    var DealDate as string = aRec.Column("DealDate").StringValue
		    var DealPrice as string = aRec.Column("DealPrice").StringValue
		    var DealType as string = DecodeSqlString(aRec.Column("DealType").StringValue)
		    var DealName as string = DecodeSqlString(aRec.Column("DealName").StringValue)
		    var DealPartner as string = DecodeSqlString(aRec.Column("DealPartner").StringValue)
		    var DealRemark as string = DecodeSqlString(aRec.Column("DealRemark").StringValue)
		    var FileName as string = DecodeSqlString(aRec.Column("FilePath").StringValue)
		    var tsFolderName as string
		    var outString as String
		    if FileName.IndexOf(0,"\") > 0 then
		      if RecStatus = "DELETE" then
		        tsFolderName = "."+NO+"_"+DealDate+"_"+DealPartner+"_"+DealPrice //this is folder
		      else
		        tsFolderName = NO+"_"+DealDate+"_"+DealPartner+"_"+DealPrice //this is folder
		      end if
		      outString = RecStatus+","+NO+","+DealDate+","""+_
		      DealPartner+""","+DealPrice+","""+DealType+""","""+DealName+""","""+DealRemark+""","""+tsFolderName+""""
		    else
		      outString = RecStatus+","+NO+","+DealDate+","""+_
		      DealPartner+""","+DealPrice+","""+DealType+""","""+DealName+""","""+DealRemark+""","""+FileName+""""
		    end if
		    outString = outString.ConvertEncoding(Encodings.ShiftJIS)
		    try
		      output.WriteLine(outString)
		    catch e as IOException
		      self.RunningWheel.Visible = false
		      apiClient.Close
		      output.Close
		      WriteExportErrorFile(errfile, e.Message)
		      MessageBox e.Message
		      return true
		    end try
		    
		    
		    apiClient.Close
		    App.DoEvents(10)
		  next
		  output.Close
		  self.RunningWheel.Visible = false
		  self.StatusLabel.Text = "エクスポートが終了しました"
		  
		  
		  Return True
		End Function
	#tag EndMenuHandler


	#tag Method, Flags = &h0
		Function CompareFolderItem(f1 as FolderItemClass, f2 as FolderItemClass) As Integer
		  if f1.DealPeriod.Name < f2.DealPeriod.Name then
		    return -1
		  ElseIf f1.DealPeriod.Name > f2.DealPeriod.Name then
		    return 1
		  else
		    return 0
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsPeriodSelected(name as string) As Boolean
		  for each aRow as DesktopListBoxRow in self.PeriodsList.Rows
		    if aRow.Selected then
		      if name=aRow.CellTextAt(0) then
		        return true
		      end if
		    end if
		  next
		  return false
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SearchAllDBs()
		  if self.PeriodsList.SelectedRowCount = 0 then
		    return
		  end if
		  
		  self.RecordList.RemoveAllRows
		  self.RunningWheel.Visible = true
		  self.StatusLabel.Text = "検索中..."
		  self.StatusLabel.Refresh(true)
		  self.RunningWheel.Refresh(true)
		  
		  var apiClient as new APIClientClass
		  apiClient.BaseURL = App.GetAPIServerURL()
		  
		  var searchKey as string = self.SearchKeyField.Text
		  var fromDate as string = ""
		  var toDate as string = ""
		  
		  if self.FromDate.Text <> "" then
		    fromDate = self.FromDate.Text
		  end if
		  if self.ToDate.Text <> "" then
		    toDate = self.ToDate.Text
		  end if
		  
		  // 選択された期間名を取得
		  var selectedPeriods() as String
		  for i as Integer = 0 to self.PeriodsList.RowCount - 1
		    if self.PeriodsList.RowSelectedAt(i) then
		      var periodName as String = self.PeriodsList.CellTextAt(i, 0)
		      selectedPeriods.Add(periodName)
		    end if
		  next
		  
		  Try
		    // 履歴表示かどうかでviewModeを決定
		    var viewMode as String = if(self.HistoryCheck.Value, "history", "flat")
		    var result as Dictionary = apiClient.SearchAllDeals(searchKey, fromDate, toDate, "", "", 0, 0, selectedPeriods, viewMode)
		    
		    if result.HasKey("success") and result.Value("success").BooleanValue then
		      if result.HasKey("deals") then
		        var dealsArray as Variant = result.Value("deals")
		        if dealsArray.IsArray then
		          var dealsVariantArray() as Variant = dealsArray
		          for each dealVariant as Variant in dealsVariantArray
		            if dealVariant isa Dictionary then
		              var dealDict as Dictionary = Dictionary(dealVariant)
		              
		              var NO as string = dealDict.Value("NO").StringValue
		              var DealDate as string = dealDict.Value("DealDate").StringValue
		              var DealName as string = dealDict.Value("DealName").StringValue
		              var DealPartner as string = dealDict.Value("DealPartner").StringValue
		              var DealPrice as string = dealDict.Value("DealPrice").StringValue
		              var DealType as string = dealDict.Value("DealType").StringValue
		              var FilePath as string = dealDict.Value("FilePath").StringValue
		              var DealRemark as string = dealDict.Value("DealRemark").StringValue
		              
		              // RecStatusを取得（新API仕様）
		              var RecStatus as string = ""
		              if dealDict.HasKey("RecStatus") then
		                RecStatus = dealDict.Value("RecStatus").StringValue
		              end if
		              
		              // 期間名をDealRemarkから抽出（[期間名]の形式）
		              var periodName as string = ""
		              if DealRemark.IndexOf("[") >= 0 and DealRemark.IndexOf("]") > DealRemark.IndexOf("[") then
		                var startPos as integer = DealRemark.IndexOf("[") + 1
		                var endPos as integer = DealRemark.IndexOf("]")
		                periodName = DealRemark.Middle(startPos, endPos - startPos)
		              end if
		              
		              if self.HistoryCheck.Value then
		                // 履歴表示モード
		                var rowString as string
		                if RecStatus = "DELETE" then
		                  rowString = DealDate+"_"+DealPartner+"_"+DealPrice+"_"+DealType+"_"+DealName+" (削除済み)"
		                else
		                  rowString = DealDate+"_"+DealPartner+"_"+DealPrice+"_"+DealType+"_"+DealName
		                end if
		                
		                // childrenがある場合は展開可能な行として追加
		                if dealDict.HasKey("children") and dealDict.Value("children").IsArray then
		                  self.RecordList.AddExpandableRow rowString
		                else
		                  self.RecordList.AddRow rowString
		                end if
		              else
		                // 通常表示モード
		                self.RecordList.AddRow(DealDate)
		                self.RecordList.CellTextAt(self.RecordList.LastRowIndex,1) = DealPartner
		                self.RecordList.CellTextAt(self.RecordList.LastRowIndex,2) = DealPrice
		                if RecStatus = "DELETE" then
		                  self.RecordList.CellTextAt(self.RecordList.LastRowIndex,3) = DealType + " (削除済み)"
		                else
		                  self.RecordList.CellTextAt(self.RecordList.LastRowIndex,3) = DealType
		                end if
		                self.RecordList.CellTextAt(self.RecordList.LastRowIndex,4) = DealName
		              end if
		              
		              var aRowTag as new RecordListRowPropertiesClass
		              aRowTag.NO = NO
		              aRowTag.DealPeriod = periodName
		              aRowTag.FilePath = FilePath
		              aRowTag.RecStatus = RecStatus  // RecStatusを保存
		              
		              // 履歴表示の場合はchildren情報も保存
		              if self.HistoryCheck.Value and dealDict.HasKey("children") then
		                aRowTag.Children = dealDict.Value("children")
		                aRowTag.HasChildren = true
		              end if
		              
		              self.RecordList.RowTagAt(self.RecordList.LastRowIndex) = aRowTag
		            end if
		          next
		        end if
		      end if
		      self.StatusLabel.Text = ""
		    else
		      // エラー時
		      var errorMsg as String = "検索に失敗しました"
		      if result <> nil and result.HasKey("message") then
		        errorMsg = errorMsg + ": " + result.Value("message").StringValue
		      end if
		      self.StatusLabel.Text = errorMsg
		    end if
		    
		  Catch error As RuntimeException
		    self.StatusLabel.Text = "検索エラー: " + error.Message
		  End Try
		  
		  self.RunningWheel.Visible = false
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub WriteExportErrorFile(errF as FolderItem, msg as String)
		  var fp as TextOutputStream
		  if errF.Exists then
		    fp = TextOutputStream.Open(errF)
		  else
		    fp = TextOutputStream.Create(errF)
		  end if
		  fp.WriteLine msg
		  fp.Close()
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		BaseFolderPath As string
	#tag EndProperty

	#tag Property, Flags = &h0
		StopPushed As Boolean
	#tag EndProperty


#tag EndWindowCode

#tag Events RecordList
	#tag Event
		Function PaintHeaderBackground(g As Graphics, column As Integer) As Boolean
		  //select case column
		  //case 1
		  g.DrawingColor = &cA7C7E7 
		  //g.DrawRectangle(0, 0, g.Width, g.Height)
		  g.FillRectangle(0, 0, g.Width, g.Height)
		  //End Select
		  Return True
		End Function
	#tag EndEvent
	#tag Event
		Sub RowExpanded(row As Integer)
		  var aRowTag as RecordListRowPropertiesClass = me.RowTagAt(row)
		  
		  // 新しいAPI仕様：既に取得済みのchildren情報を使用
		  if aRowTag.HasChildren and aRowTag.Children <> nil and aRowTag.Children.IsArray then
		    var children() as Variant = aRowTag.Children
		    
		    for each child as Variant in children
		      if child isa Dictionary then
		        var childDict as Dictionary = Dictionary(child)
		        
		        var NO as string = childDict.Value("NO").StringValue
		        var DealDate as string = childDict.Value("DealDate").StringValue
		        var DealPartner as string = childDict.Value("DealPartner").StringValue
		        var DealPrice as string = childDict.Value("DealPrice").StringValue
		        var DealType as string = childDict.Value("DealType").StringValue
		        var DealName as string = childDict.Value("DealName").StringValue
		        var DealRemark as string = childDict.Value("DealRemark").StringValue
		        
		        // 更新日時の取得
		        var RecUpdate as string = ""
		        var RegDate as string = ""
		        if childDict.HasKey("RecUpdate") then
		          RecUpdate = childDict.Value("RecUpdate").StringValue
		        end if
		        if childDict.HasKey("RegDate") then
		          RegDate = childDict.Value("RegDate").StringValue
		        end if
		        
		        // 子レコードを追加
		        var updateTime as String
		        if RecUpdate <> "" then
		          updateTime = RecUpdate.NthField("T", 1).NthField("Z", 1).ReplaceAll("-", "/")
		        else
		          updateTime = RegDate.NthField("T", 1).NthField("Z", 1).ReplaceAll("-", "/") + "(初回)"
		        end if
		        
		        var rowString as string = updateTime + "_" + DealDate + "_" + DealPartner + "_" + DealPrice + "_" + DealType + "_" + DealName
		        Me.AddRow rowString
		        
		        // 子のRowTag設定
		        var childTag as new RecordListRowPropertiesClass
		        childTag.NO = NO
		        childTag.DealPeriod = aRowTag.DealPeriod
		        if childDict.HasKey("RecStatus") then
		          childTag.RecStatus = childDict.Value("RecStatus").StringValue
		        end if
		        if childDict.HasKey("FilePath") then
		          childTag.FilePath = childDict.Value("FilePath").StringValue
		        end if
		        
		        me.RowTagAt(me.LastAddedRowIndex) = childTag
		      end if
		    next
		  end if
		End Sub
	#tag EndEvent
	#tag Event
		Function PaintCellText(g as Graphics, row as Integer, column as Integer, x as Integer, y as Integer) As Boolean
		  var aRowTag as RecordListRowPropertiesClass = me.RowTagAt(row)
		  g.Bold = false
		  
		  if aRowTag.RecStatus = "DELETE" then
		    g.ForeColor = &c808080  // グレー色
		    g.Italic = true         // 斜体
		    return false
		  end if
		  
		  return false
		End Function
	#tag EndEvent
	#tag Event
		Sub DoublePressed()
		  if me.SelectedRowIndex < 0 then
		    return
		  end if
		  
		  var rowTag as RecordListRowPropertiesClass = me.RowTagAt(me.SelectedRowIndex)
		  var NO as string = rowTag.NO
		  var prevNO as string
		  var DealType as string
		  var DealDate as string
		  var DealName as string
		  var DealPartner as string
		  var DealPrice as string
		  var DealRemark as string
		  var RecUpdate as string
		  var RegDate as string
		  var dropF as FolderItem
		  
		  //var dbF as new FolderItem( self.BaseFolderPath+"\"+rowTag.DealPeriod+"\Denchokun.db", FolderItem.PathModes.Native)
		  var apiClient as APICLientClass
		  apiClient = App.ConnectAPI(rowTag.DealPeriod)
		  if apiClient = nil then
		    MessageBox App.FunctionError
		    return
		  end if
		  
		  var sql as string = "select * from Deals where NO='"+rowTag.NO+"'"
		  Try
		    var rowsFound as RowSet = apiClient.SelectSQL(rowTag.DealPeriod, sql)
		    if rowsFound.RowCount() = 0 then //should be one
		      apiClient.Close
		      MessageBox("Error: can't find a record")
		      return
		    end if
		    
		    NO = rowsFound.Column("NO").StringValue
		    prevNO = rowsFound.Column("prevNO").StringValue
		    DealType = DecodeSqlString(rowsFound.Column("DealType").StringValue)
		    DealDate = rowsFound.Column("DealDate").StringValue
		    DealName = DecodeSqlString(rowsFound.Column("DealName").StringValue)
		    DealPartner = DecodeSqlString(rowsFound.Column("DealPartner").StringValue)
		    DealPrice = rowsFound.Column("DealPrice").StringValue
		    DealType = DecodeSqlString(rowsFound.Column("DealType").StringValue)
		    RecUpdate = rowsFound.Column("RecUpdate").StringValue.NthField(" ",1)
		    RegDate = rowsFound.Column("RegDate").StringValue.NthField(" ",1)
		    DealRemark = DecodeSqlString(rowsFound.Column("DealRemark").StringValue)
		    RegDate = rowsFound.Column("RegDate").StringValue
		    dropF = new FolderItem(self.BaseFolderPath+rowTag.DealPeriod+"\"+_
		    DecodeSqlString(rowsFound.Column("FilePath").StringValue), FolderItem.PathModes.Native)
		    
		  Catch error As DatabaseException
		    apiClient.Close
		    MessageBox("Error: " + error.Message)
		    return
		  end Try
		  apiClient.Close
		  
		  var win as new DetailWindow
		  if self.HistoryCheck.Value then
		    if rowTag.RecStatus = "DELETE" then
		      win.Title = "詳細(削除レコード)"
		    else
		      win.Title = "詳細(履歴レコード)"
		    end if
		  end if
		  win.AllPeriodsWin = self
		  win.BaseFolderPath.Text = self.BaseFolderPath
		  win.DealPeriod.Text = rowTag.DealPeriod
		  win.DealNO = rowTag.NO
		  win.DealingDate.Text = DealDate
		  win.DealingName.Text = DealName
		  win.DealingPartner.Text = DealPartner
		  win.DealingPrice.Text = DealPrice
		  win.DealType.text = DealType
		  win.DealingRemark.Text = DealRemark
		  win.RegDate = RegDate
		  win.IconFilePath.Text = dropF.NativePath
		  win.IconFilePath.Tooltip = dropF.NativePath
		  dim w, h as integer
		  w = win.IconCanvas.Width
		  h = win.IconCanvas.Height
		  if w < h then
		    win.IconCanvas.Backdrop = dropF.IconMBS(w)
		  else
		    win.IconCanvas.Backdrop = dropF.IconMBS(h)
		  end if
		  
		  win.ShowModal
		End Sub
	#tag EndEvent
	#tag Event
		Function KeyDown(key As String) As Boolean
		  if chr(127) = key then //del key pressed
		    self.RecordList.RemoveAllRows
		  end if
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events SearchKeyField
	#tag Event
		Function KeyDown(key As String) As Boolean
		  if Key = App.kCR then
		    self.SearchAllDBs()
		    return true
		  end if
		  
		  var screenHeight as integer = DesktopDisplay.DisplayAt(0).Height
		  var screenWinLeft as integer = self.Left+self.SearchKeyField.Left
		  var screenWinTop as integer = 30+self.Top+self.SearchKeyField.Top+self.SearchKeyField.Height //30 is windows title
		  if key = "#" then
		    
		    var win as new PopupDocTypeNodeWindow("種別の入力")
		    if screenWinTop+win.Height <= screenHeight then
		      win.Top = screenWinTop
		    else
		      win.Top = screenWinTop-win.Height-self.SearchKeyField.Height-30
		    end if
		    win.Left = screenWinLeft
		    win.ShowModal
		    self.SearchKeyField.SelectedText = "#"+win.SelectedValue
		    return true //avoid '#' since # is added after SelectedText
		  elseif key = "@" then
		    var win as new PopupInMDBWindow("取引先の入力")
		    if screenWinTop+win.Height <= screenHeight then
		      win.Top = screenWinTop
		    else
		      win.Top = screenWinTop-win.Height-self.SearchKeyField.Height-30
		    end if
		    win.Left = screenWinLeft
		    win.InputText.Text = "" //Kicks off TextChanged event
		    win.ShowModal
		    self.SearchKeyField.SelectedText = win.InputTextValue
		    return true //avoid '@' since @ is added after SelectedText
		  end if
		  return false
		End Function
	#tag EndEvent
	#tag Event
		Sub FocusReceived()
		  self.StatusLabel.Text = ""
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events FromDate
	#tag Event
		Function MouseDown(x As Integer, y As Integer) As Boolean
		  var t as integer = System.Ticks
		  var interval as integer = t - me.FirstMouseDownTick
		  if interval > 50 then
		    me.FirstMouseDownTick = t
		    return false
		  end if
		  
		  self.FromDate.Text= ""
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events ToDate
	#tag Event
		Function MouseDown(x As Integer, y As Integer) As Boolean
		  var t as integer = System.Ticks
		  var interval as integer = t - me.FirstMouseDownTick
		  if interval > 50 then
		    me.FirstMouseDownTick = t
		    return false
		  end if
		  
		  self.ToDate.Text= ""
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events HistoryCheck
	#tag Event
		Sub ValueChanged()
		  if me.Value then
		    self.RecordList.AllowExpandableRows = true
		    self.RecordList.ColumnCount = 1
		    self.RecordList.ColumnWidths = "100%"
		    //self.RecordList.HasHeader = false
		    self.RecordList.HeaderAt(0) = "取引日_取引先_金額_種別_取引名"
		    self.RecordList.ColumnAlignmentAt(0) = DesktopListBox.Alignments.Left
		  else
		    self.RecordList.AllowExpandableRows = false
		    self.RecordList.ColumnCount = 5
		    self.RecordList.ColumnWidths = "70,*,100,70,*"
		    //self.RecordList.HasHeader = true
		    self.RecordList.HeaderAt(0) = "取引日"
		    self.RecordList.HeaderAt(1) = "取引先"
		    self.RecordList.HeaderAt(2) = "金額"
		    self.RecordList.HeaderAt(3) = "種別"
		    self.RecordList.HeaderAt(4) = "取引名"
		    self.RecordList.ColumnAlignmentAt(0)=DesktopListBox.Alignments.Center
		    self.RecordList.ColumnAlignmentAt(1)=DesktopListBox.Alignments.Center
		    self.RecordList.ColumnAlignmentAt(2)=DesktopListBox.Alignments.Center
		    self.RecordList.ColumnAlignmentAt(3)=DesktopListBox.Alignments.Center
		    self.RecordList.ColumnAlignmentAt(4)=DesktopListBox.Alignments.Center
		    
		  end if
		  self.SearchAllDBs()
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events SearchButton
	#tag Event
		Sub Pressed()
		  self.SearchAllDBs()
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ClearSearchKeyField
	#tag Event
		Function MouseDown(x As Integer, y As Integer) As Boolean
		  self.SearchKeyField.Text = ""
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events FromDateButton
	#tag Event
		Sub Pressed()
		  var screenHeight as integer = DesktopDisplay.DisplayAt(0).Height
		  
		  var win as new DealDateTimePickerWindow
		  var screenWinLeft as integer = self.Left+self.FromDate.Left
		  var screenWinTop as integer = 30+self.Top+self.FromDate.Top+self.FromDate.Height //30 is windows title
		  if screenWinTop+win.Height <= screenHeight then
		    win.Top = screenWinTop
		  else
		    win.Top = screenWinTop-win.Height-self.FromDate.Height-30
		  end if
		  win.Left = screenWinLeft
		  
		  if self.FromDate.Text <> "" then
		    win.DealDateTimePicker.SelectedDate = DateTime.FromString(self.FromDate.Text.ReplaceAll("-", "/"), New Locale("ja-JP"), TimeZone.Current)
		  end if
		  
		  win.ShowModal
		  
		  if win.Canceled <> True and win.SelectedDate <> nil then
		    self.FromDate.Text = win.SelectedDate.SQLDate
		    self.StatusLabel.Text = ""
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ToDateButton
	#tag Event
		Sub Pressed()
		  var screenHeight as integer = DesktopDisplay.DisplayAt(0).Height
		  
		  var win as new DealDateTimePickerWindow
		  var screenWinLeft as integer = self.Left+self.ToDate.Left
		  var screenWinTop as integer = 30+self.Top+self.ToDate.Top+self.ToDate.Height //30 is windows title
		  if screenWinTop+win.Height <= screenHeight then
		    win.Top = screenWinTop
		  else
		    win.Top = screenWinTop-win.Height-self.ToDate.Height-30
		  end if
		  win.Left = screenWinLeft
		  
		  if self.ToDate.Text <> "" then
		    win.DealDateTimePicker.SelectedDate = DateTime.FromString(self.ToDate.Text.ReplaceAll("-", "/"), New Locale("ja-JP"), TimeZone.Current)
		  end if
		  
		  win.ShowModal
		  
		  if win.Canceled <> True and win.SelectedDate <> nil then
		    self.ToDate.Text = win.SelectedDate.SQLDate
		    self.StatusLabel.Text = ""
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
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
		Name="Interfaces"
		Visible=true
		Group="ID"
		InitialValue=""
		Type="String"
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
		Name="Width"
		Visible=true
		Group="Size"
		InitialValue="600"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Size"
		InitialValue="400"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimumWidth"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimumHeight"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximumWidth"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximumHeight"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Type"
		Visible=true
		Group="Frame"
		InitialValue="0"
		Type="Types"
		EditorType="Enum"
		#tag EnumValues
			"0 - Document"
			"1 - Movable Modal"
			"2 - Modal Dialog"
			"3 - Floating Window"
			"4 - Plain Box"
			"5 - Shadowed Box"
			"6 - Rounded Window"
			"7 - Global Floating Window"
			"8 - Sheet Window"
			"9 - Modeless Dialog"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Visible=true
		Group="Frame"
		InitialValue="Untitled"
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasCloseButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasMaximizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasMinimizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasFullScreenButton"
		Visible=true
		Group="Frame"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Resizeable"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Composite"
		Visible=false
		Group="OS X (Carbon)"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MacProcID"
		Visible=false
		Group="OS X (Carbon)"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreen"
		Visible=false
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="DefaultLocation"
		Visible=true
		Group="Behavior"
		InitialValue="2"
		Type="Locations"
		EditorType="Enum"
		#tag EnumValues
			"0 - Default"
			"1 - Parent Window"
			"2 - Main Screen"
			"3 - Parent Window Screen"
			"4 - Stagger"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="ImplicitInstance"
		Visible=true
		Group="Windows Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasBackgroundColor"
		Visible=true
		Group="Background"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="BackgroundColor"
		Visible=true
		Group="Background"
		InitialValue="&cFFFFFF"
		Type="ColorGroup"
		EditorType="ColorGroup"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Backdrop"
		Visible=true
		Group="Background"
		InitialValue=""
		Type="Picture"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBar"
		Visible=true
		Group="Menus"
		InitialValue=""
		Type="DesktopMenuBar"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBarVisible"
		Visible=true
		Group="Deprecated"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="BaseFolderPath"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="string"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="StopPushed"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior
