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
      Width           =   626
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
   Begin DesktopDateTimePicker FromDateTimePicker
      Active          =   False
      AllowAutoDeactivate=   True
      AllowFocusRing  =   False
      AllowTabStop    =   False
      DisplayMode     =   0
      DisplaySeconds  =   False
      Enabled         =   True
      GraphicalDisplay=   False
      Height          =   22
      HourMode        =   0
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   9
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      PanelIndex      =   0
      Scope           =   0
      TabIndex        =   13
      TabPanelIndex   =   0
      TodayButtonCaption=   ""
      Tooltip         =   ""
      Top             =   9
      Transparent     =   False
      Visible         =   True
      Width           =   15
      _mIndex         =   0
      _mInitialParent =   ""
      _mName          =   ""
      _mPanelIndex    =   0
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
   Begin DesktopDateTimePicker ToDateTimePicker
      Active          =   False
      AllowAutoDeactivate=   True
      AllowFocusRing  =   False
      AllowTabStop    =   False
      DisplayMode     =   0
      DisplaySeconds  =   False
      Enabled         =   True
      GraphicalDisplay=   False
      Height          =   22
      HourMode        =   0
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   131
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      PanelIndex      =   0
      Scope           =   0
      TabIndex        =   16
      TabPanelIndex   =   0
      TodayButtonCaption=   ""
      Tooltip         =   ""
      Top             =   9
      Transparent     =   False
      Visible         =   True
      Width           =   15
      _mIndex         =   0
      _mInitialParent =   ""
      _mName          =   ""
      _mPanelIndex    =   0
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
   Begin DesktopButton StopButton
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "停止"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   22
      Index           =   -2147483648
      Italic          =   False
      Left            =   670
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      MacButtonStyle  =   0
      Scope           =   0
      TabIndex        =   23
      TabPanelIndex   =   0
      TabStop         =   False
      Tooltip         =   ""
      Top             =   379
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   80
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
		  self.FromDateTimePicker.GraphicalDisplay = true
		  self.FromDateTimePicker.DisplayMode = DesktopDateTimePicker.DisplayModes.DateOnly
		  self.ToDateTimePicker.GraphicalDisplay = true
		  self.ToDateTimePicker.DisplayMode = DesktopDateTimePicker.DisplayModes.DateOnly
		  self.FromDate.Text = ""
		  self.ToDate.Text = ""
		  
		  
		  var base as XmlNode = App.XmlPref.GetNode("BaseFolder")
		  var basePath as string =base.GetAttribute("path")
		  var baseF as folderitem
		  baseF = new FolderItem(basePath, FolderItem.PathModes.Native)
		  if baseF = nil then
		    MessageBox "ベースフォルダが見つかりません"
		    return
		  end if
		  
		  var folderNames(), aFolderItem as FolderItemClass
		  For Each aFolder As FolderItem In baseF.Children(false)
		    if not aFolder.IsFolder or aFolder.IsAlias or not aFolder.Visible or aFolder.name.Left(1) = "." then
		      Continue
		    End if
		    aFolderItem = new FolderItemClass
		    var aDealPeriod as DealPeriodClass = App.GetADealPeriod(aFolder.Name)
		    if aDealPeriod = nil then
		      aDealPeriod = new DealPeriodClass
		      aDealPeriod.Name = aFolder.Name
		      aDealPeriod.FromDate = "未設定"
		      aDealPeriod.ToDate = "未設定"
		    end if
		    aFolderItem.DealPeriod = aDealPeriod
		    if not aFolder.IsWriteable or aFolder.Child("Denchokun.ReadOnly").Exists then
		      aFolderItem.IsWriteable = false
		    else
		      aFolderItem.IsWriteable = true
		    end if
		    folderNames.Add aFolderItem
		  next
		  folderNames.Sort(AddressOf self.CompareFolderItem)
		  
		  self.PeriodsList.RemoveAllRows
		  var i as integer
		  i = 0
		  For Each aItem As FolderItemClass In folderNames
		    self.PeriodsList.AddRow aItem.DealPeriod.Name
		    self.PeriodsList.RowTagAt(self.PeriodsList.LastRowIndex) = aItem.DealPeriod
		    i = i + 1
		  Next
		  
		  
		  self.RecordList.ColumnAlignmentAt(0)=DesktopListBox.Alignments.Center
		  self.RecordList.ColumnAlignmentAt(1)=DesktopListBox.Alignments.Center
		  self.RecordList.ColumnAlignmentAt(2)=DesktopListBox.Alignments.Center
		  self.RecordList.ColumnAlignmentAt(3)=DesktopListBox.Alignments.Center
		  self.RecordList.ColumnAlignmentAt(4)=DesktopListBox.Alignments.Center
		  
		  //self.SearchButton.Press()
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
		      row = apiClient.SelectSQL(sql, period)
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
		      aRec = apiClient.SelectSQL(sql, rowTag.DealPeriod)
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
		    
		    var frF as FolderItem
		    var toF as FolderItem
		    if FileName.IndexOf(0,"\") > 0 then
		      var baseFolderPath as string = App.GetBaseFolderPath()
		      frF = new FolderItem(baseFolderPath+rowTag.DealPeriod+"\"+tsFolderName, FolderItem.PathModes.Native)
		      toF = exportF
		      self.StatusLabel.Text = tsFolderName
		    else
		      frF = new FolderItem(rowTag.FilePath, FolderItem.PathModes.Native)
		      toF = exportF.Child(FileName)
		      self.StatusLabel.Text = FileName
		    end if
		    try
		      frF.CopyTo toF
		    catch e as IOException
		      self.StatusLabel.Text = ""
		      self.RunningWheel.Visible = false
		      apiClient.Close
		      output.Close
		      WriteExportErrorFile(errfile, e.Message+":copy "+frF.NativePath+" to "+toF.NativePath)
		      MessageBox e.Message
		      //return true
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
		  var base as XmlNode = App.XmlPref.GetNode("BaseFolder")
		  if base = nil then
		    self.StatusLabel.Text = "BaseFolder Node Access error"
		    return
		  end if
		  var basePath as string = base.GetAttribute("path")
		  var baseF as new FolderItem(basePath, FolderItem.PathModes.Native)
		  if baseF = nil then
		    self.StatusLabel.Text = "BaseFolder is nil"
		    return
		  end if
		  if not baseF.Exists or not baseF.IsFolder then
		    self.StatusLabel.Text = "BaseFolder doesn't exist"
		    return
		  end if
		  
		  if self.PeriodsList.SelectedRowCount = 0 then
		    return
		  end if
		  self.RecordList.RemoveAllRows
		  
		  self.RunningWheel.Visible = true
		  self.StatusLabel.Text = "検索中..."
		  self.StatusLabel.Refresh(true)
		  self.RunningWheel.Refresh(true)
		  
		  var db as APICLientClass
		  var ret as string = "OK"
		  for Each aItem as FolderItem in baseF.Children(false)
		    if not aItem.Visible or left(aItem.Name,1)="." or aItem.IsAlias or not aItem.IsFolder then
		      Continue
		    end if
		    if IsPeriodSelected(aItem.Name) then
		      var dbF as FolderItem = aItem.Child("Denchokun.db")
		      if self.HistoryCheck.Value then
		        ret = self.SearchDBhistory(baseF,aItem,dbF)
		      else
		        ret = self.SearchDBnormal(baseF,aItem,dbF)
		      end if
		      if ret <> "OK" then
		        self.StatusLabel.Text = ret
		        exit
		      end if
		    end if
		  next
		  self.RunningWheel.Visible = false
		  if ret = "OK" then
		    self.StatusLabel.Text = ""
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SearchDBhistory(baseF as FolderItem, periodF as FolderItem, dbF as FolderItem) As string
		  var apiClient as APICLientClass = App.ConnectAPI(periodF.Name)
		  if apiClient = nil then
		    return App.FunctionError
		  end if
		  apiClient.ThreadYieldInterval = 200 //Does this work?
		  
		  // Now db
		  // connected, then go!
		  var sql as string
		  dim key as string = self.SearchKeyField.Text
		  
		  sql = "select * from Deals where nextNO is NULL"
		  
		  if self.FromDate.Text <> "" then
		    sql = sql + " and DealDate >= '"+self.FromDateTimePicker.SelectedDate.SQLDate+"'"
		  end if
		  if self.ToDate.Text <> "" then
		    sql = sql + " and DealDate <= '"+self.ToDateTimePicker.SelectedDate.SQLDate+"'"
		  end if
		  
		  var otherSql as string = App.CreateSqlCondition(key)
		  var dealPeriodNode as XmlNode = App.XmlPref.GetNode("AllPeriodsWindow")
		  if dealPeriodNode = nil then
		    return "can't find AllPeriodsWindow"
		  end if
		  var orderBy as string = dealPeriodNode.GetAttribute("SearchOrder")
		  if orderBy = "" then
		    if otherSql = "" then
		      sql = sql + " order by DealDate asc, NO asc"
		    else
		      sql = sql + " and "+otherSql+" order by DealDate asc, NO asc"
		    end if
		  else
		    if otherSql = "" then
		      sql = sql + " order by DealDate "+orderBy+", NO "+orderBy
		    else
		      sql = sql + " and "+otherSql+" order by DealDate "+orderBy+", NO "+orderBy
		    end if
		  end if
		  Var rowsFound As RowSet
		  Try
		    rowsFound = apiClient.SelectSQL(sql, periodF.name)
		    For Each row As DatabaseRow In rowsFound
		      var NO as string = row.Column("NO").StringValue
		      var prevNO as string = row.Column("prevNO").StringValue
		      var DealType as string = DecodeSqlString(row.Column("DealType").StringValue)
		      var RegDate as string = row.Column("RegDate").StringValue
		      var RecUpdate as string = row.Column("RecUpdate").StringValue
		      var DealDate as string = row.Column("DealDate").StringValue
		      var DealName as string = DecodeSqlString(row.Column("DealName").StringValue)
		      var DealPartner as string = DecodeSqlString(row.Column("DealPartner").StringValue)
		      var DealPrice as string = row.Column("DealPrice").StringValue
		      var RecStatus as string = row.Column("RecStatus").StringValue
		      var rowString as string
		      if prevNO <> "" then
		        rowString = RecUpdate.NthField(" ",1)+"_"+DealDate+"_"+DealPartner+"_"+DealPrice+"_"+DealType+"_"+DealName
		        self.RecordList.AddExpandableRow rowString
		      else
		        rowString = RegDate.NthField(" ",1)+"_"+DealDate+"_"+DealPartner+"_"+DealPrice+"_"+DealType+"_"+DealName
		        self.RecordList.AddRow rowString
		      end if
		      var aRowTag as new RecordListRowPropertiesClass
		      aRowTag.NO = NO
		      aRowTag.DealPeriod = periodF.Name
		      var fileName as string = DecodeSqlString(row.Column("FilePath").StringValue)
		      aRowTag.FilePath = baseF.NativePath+periodF.Name+"\"+fileName
		      aRowTag.RecStatus = RecStatus
		      self.RecordList.RowTagAt(self.RecordList.LastRowIndex)=aRowTag
		    Next
		    rowsFound.Close
		  Catch error As DatabaseException
		    apiClient.Close
		    return "Error: " + error.Message
		  End Try
		  apiClient.Close
		  return "OK"
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SearchDBnormal(baseF as FolderItem, periodF as FolderItem, dbF as FolderItem) As string
		  var apiClient as APICLientClass
		  apiClient = App.ConnectAPI(periodF.Name)
		  if apiClient = nil then
		    return App.FunctionError
		  end if
		  
		  apiClient.ThreadYieldInterval = 200 //Does this work?
		  
		  // Now db
		  // connected, then go!
		  var sql as string
		  var key as string = self.SearchKeyField.Text
		  
		  sql = "select * from Deals where nextNO is NULL and "+_
		  "RecStatus <> 'DELETE'"
		  
		  if self.FromDate.Text <> "" then
		    sql = sql + " and DealDate >= '"+self.FromDateTimePicker.SelectedDate.SQLDate+"'"
		  end if
		  if self.ToDate.Text <> "" then
		    sql = sql + " and DealDate <= '"+self.ToDateTimePicker.SelectedDate.SQLDate+"'"
		  end if
		  
		  var otherSql as string = App.CreateSqlCondition(key)
		  var allPeriodsNode as XmlNode = App.XmlPref.GetNode("AllPeriodsWindow")
		  if allPeriodsNode = nil then
		    return "can't find AllPeriodsWindow"
		  end if
		  var orderBy as string = allPeriodsNode.GetAttribute("SearchOrder")
		  if orderBy = "" then
		    if otherSql = "" then
		      sql = sql + " order by DealDate asc, NO asc"
		    else
		      sql = sql + " and "+otherSql+" order by DealDate asc, NO asc"
		    end if
		  else
		    if otherSql = "" then
		      sql = sql + " order by DealDate "+orderBy+", NO "+orderBy
		    else
		      sql = sql + " and "+otherSql+" order by DealDate "+orderBy+", NO "+orderBy
		    end if
		  end if
		  
		  Var rowsFound As RowSet
		  Try
		    rowsFound = apiClient.SelectSQL(sql, periodF.Name)
		    For Each row As DatabaseRow In rowsFound
		      var NO as string = row.Column("NO").StringValue
		      var DealType as string = DecodeSqlString(row.Column("DealType").StringValue)
		      var DealDate as string = row.Column("DealDate").StringValue
		      var DealName as string = DecodeSqlString(row.Column("DealName").StringValue)
		      var DealPartner as string = DecodeSqlString(row.Column("DealPartner").StringValue)
		      var DealPrice as integer = row.Column("DealPrice").IntegerValue
		      self.RecordList.AddRow(DealDate)
		      var aRowTag as new RecordListRowPropertiesClass
		      aRowTag.NO = NO
		      aRowTag.DealPeriod = periodF.Name
		      var fileName as string = DecodeSqlString(row.Column("FilePath").StringValue)
		      aRowTag.FilePath = baseF.NativePath+periodF.Name+"\"+fileName
		      self.RecordList.RowTagAt(self.RecordList.LastRowIndex)=aRowTag
		      self.RecordList.CellTextAt(self.RecordList.LastRowIndex,1)=DealPartner
		      self.RecordList.CellTextAt(self.RecordList.LastRowIndex,2)=DealPrice.ToString
		      self.RecordList.CellTextAt(self.RecordList.LastRowIndex,3)=DealType
		      self.RecordList.CellTextAt(self.RecordList.LastRowIndex,4)=DealName
		      self.RecordList.CellAlignmentAt(self.RecordList.LastRowIndex,0)=DesktopListBox.Alignments.Center
		      self.RecordList.CellAlignmentAt(self.RecordList.LastRowIndex,1)=DesktopListBox.Alignments.Left
		      self.RecordList.CellAlignmentAt(self.RecordList.LastRowIndex,2)=DesktopListBox.Alignments.Left
		      self.RecordList.CellAlignmentAt(self.RecordList.LastRowIndex,3)=DesktopListBox.Alignments.Left
		      self.RecordList.CellAlignmentAt(self.RecordList.LastRowIndex,4)=DesktopListBox.Alignments.Left
		    Next
		    rowsFound.Close
		  Catch error As DatabaseException
		    apiClient.Close
		    return "Error: " + error.Message
		  End Try
		  apiClient.Close
		  return "OK"
		End Function
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
		Function PaintHeaderContent(g As Graphics, column As Integer) As Boolean
		  //g.DrawingColor = Color.black
		  //取引日    取引名    相手    金額    種別
		  //select case column
		  //case 0
		  //g.DrawText("取引日",20,13)
		  //case 1
		  //g.DrawText("取引名",0,13)
		  //case 2
		  //g.DrawText("相手",0,13)
		  //case 3
		  //g.DrawText("金額",0,13)
		  //case 4
		  //g.DrawText("種別",0,13)
		  //End Select
		  //Return True
		End Function
	#tag EndEvent
	#tag Event
		Function MouseDown(x As Integer, y As Integer) As Boolean
		  
		End Function
	#tag EndEvent
	#tag Event
		Sub RowExpanded(row As Integer)
		  var aRowTag as RecordListRowPropertiesClass
		  aRowTag = me.RowTagAt(row)
		  var rowNO as string = aRowTag.NO
		  var rowPeriod as string = aRowTag.DealPeriod
		  var rowFilePath as string = aRowTag.FilePath
		  
		  var dbF as FolderItem = new FolderItem(self.BaseFolderPath+aRowTag.DealPeriod+"\Denchokun.db", FolderItem.PathModes.Native)
		  
		  //var db as APICLientClass = self.ConnectDB(dbF)
		  var apiClient as APICLientClass
		  apiClient = App.ConnectAPI(aRowTag.DealPeriod)
		  if apiClient = nil then
		    MessageBox App.FunctionError
		    return
		  end if
		  
		  var sql as string = "select * from Deals where nextNO is not NULL and "+_
		  "NO like '"+rowNO.NthField("-",1)+"%'"
		  sql = sql + " order by RecUpdate desc"
		  Try
		    var rowsFound as RowSet = apiClient.SelectSQL(sql, aRowTag.DealPeriod)
		    For Each aRec As DatabaseRow In rowsFound
		      var NO as string = aRec.Column("NO").StringValue
		      var prevNO as string = aRec.Column("prevNO").StringValue
		      var DealType as string = DecodeSqlString(aRec.Column("DealType").StringValue)
		      var DealDate as string = aRec.Column("DealDate").StringValue
		      var DealName as string = DecodeSqlString(aRec.Column("DealName").StringValue)
		      var DealPartner as string = DecodeSqlString(aRec.Column("DealPartner").StringValue)
		      var DealPrice as integer = aRec.Column("DealPrice").IntegerValue
		      var RecUpdate as string = aRec.Column("RecUpdate").StringValue.NthField(" ",1)
		      var RegDate as string = aRec.Column("RegDate").StringValue.NthField(" ",1)
		      var FileName as string = DecodeSqlString(aRec.Column("FilePath").StringValue).NthField(" ",1)
		      var RecStatus as string = aRec.Column("RecStatus").StringValue
		      var rowString as string
		      if RecUpdate = "" then // Since first record set nil to RecUpdate
		        rowString = RegDate+"_"+DealDate+"_"+DealPartner+"_"+DealPrice.ToString+"_"+DealType+"_"+DealName
		      else
		        rowString = RecUpdate+"_"+DealDate+"_"+DealPartner+"_"+DealPrice.ToString+"_"+DealType+"_"+DealName
		      end if
		      Me.AddRow rowString
		      aRowTag = new RecordListRowPropertiesClass
		      aRowTag.NO = NO
		      aRowTag.DealPeriod =  rowPeriod
		      aRowTag.FilePath = self.BaseFolderPath+rowPeriod+"\"+FileName
		      aRowTag.RecStatus = RecStatus
		      me.RowTagAt(me.LastAddedRowIndex) = aRowTag
		    next
		  Catch error As DatabaseException
		    apiClient.Close
		    MessageBox("Error: " + error.Message)
		    return
		  end Try
		  apiClient.Close
		End Sub
	#tag EndEvent
	#tag Event
		Function PaintCellText(g as Graphics, row as Integer, column as Integer, x as Integer, y as Integer) As Boolean
		  var aRowTag as RecordListRowPropertiesClass = me.RowTagAt(row)
		  g.Bold = false
		  if aRowTag.RecStatus = "DELETE" then
		    g.forecolor=&cFF0000 // Rec 
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
		    var rowsFound as RowSet = apiClient.SelectSQL(sql, rowTag.DealPeriod)
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
		  
		  
		  var screenWidth as integer = DesktopDisplay.DisplayAt(0).Width
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
		    if win.SelectedValue <> "" then
		      self.SearchKeyField.SelectedText = win.SelectedValue
		    end if
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
#tag Events FromDateTimePicker
	#tag Event
		Sub DateChanged(value as DateTime)
		  self.FromDate.Text = me.SelectedDate.SQLDate
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
#tag Events ToDateTimePicker
	#tag Event
		Sub DateChanged(value as DateTime)
		  self.ToDate.Text = me.SelectedDate.SQLDate
		End Sub
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
		    self.RecordList.HeaderAt(0) = "更新日_取引日_取引先_金額_種別_取引名"
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
#tag Events StopButton
	#tag Event
		Sub Pressed()
		  self.StopPushed = true
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
