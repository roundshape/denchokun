#tag DesktopWindow
Begin DesktopWindow DealPeriodWindow
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
   MenuBar         =   2145400831
   MenuBarVisible  =   False
   MinimumHeight   =   400
   MinimumWidth    =   750
   Resizeable      =   True
   Title           =   "Untitled"
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
      ColumnWidths    =   "70,*,100,100,*"
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
      Left            =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      RequiresSelection=   False
      RowSelectionType=   0
      Scope           =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   False
      Tooltip         =   ""
      Top             =   43
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   750
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
      Left            =   13
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      PanelIndex      =   0
      Scope           =   0
      TabIndex        =   1
      TabPanelIndex   =   0
      TodayButtonCaption=   ""
      Tooltip         =   ""
      Top             =   17
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
      Left            =   35
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   False
      Text            =   "0000-00-00"
      TextAlignment   =   0
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   16
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
      Left            =   104
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   False
      Text            =   "から"
      TextAlignment   =   2
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   16
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
      Left            =   135
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      PanelIndex      =   0
      Scope           =   0
      TabIndex        =   4
      TabPanelIndex   =   0
      TodayButtonCaption=   ""
      Tooltip         =   ""
      Top             =   17
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
      Left            =   157
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   False
      Text            =   "0000-00-00"
      TextAlignment   =   0
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   16
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   65
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
      Left            =   225
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
      Top             =   10
      Transparent     =   False
      Underline       =   False
      ValidationMask  =   ""
      Visible         =   True
      Width           =   265
   End
   Begin DesktopButton DeleteButton
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "削除"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   22
      Index           =   -2147483648
      Italic          =   False
      Left            =   667
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      MacButtonStyle  =   0
      Scope           =   0
      TabIndex        =   9
      TabPanelIndex   =   0
      TabStop         =   False
      Tooltip         =   ""
      Top             =   10
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   70
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
      Left            =   35
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
      Width           =   707
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
      Left            =   514
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   11
      TabPanelIndex   =   0
      TabStop         =   False
      Tooltip         =   ""
      Top             =   12
      Transparent     =   False
      Underline       =   False
      Value           =   False
      Visible         =   True
      VisualState     =   0
      Width           =   72
   End
   Begin DesktopProgressWheel SearchProgressWheel
      Active          =   False
      AllowAutoDeactivate=   True
      AllowTabStop    =   False
      Enabled         =   True
      Height          =   16
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   10
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      PanelIndex      =   0
      Scope           =   0
      TabIndex        =   12
      TabPanelIndex   =   0
      Tooltip         =   ""
      Top             =   382
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
      Left            =   588
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
      Top             =   10
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   70
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
      Left            =   493
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   13
      TabPanelIndex   =   0
      TabStop         =   False
      Text            =   "X"
      TextAlignment   =   2
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   11
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   16
   End
   Begin DesktopButton TodayButton
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "●"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   15
      Index           =   -2147483648
      Italic          =   False
      Left            =   105
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MacButtonStyle  =   0
      Scope           =   0
      TabIndex        =   14
      TabPanelIndex   =   0
      TabStop         =   False
      Tooltip         =   ""
      Top             =   1
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   20
   End
   Begin DesktopBevelButton NextDayButton
      Active          =   False
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowTabStop    =   False
      BackgroundColor =   &c00000000
      BevelStyle      =   0
      Bold            =   False
      ButtonStyle     =   0
      Caption         =   ">"
      CaptionAlignment=   3
      CaptionDelta    =   0
      CaptionPosition =   1
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      HasBackgroundColor=   False
      Height          =   15
      Icon            =   0
      IconAlignment   =   0
      IconDeltaX      =   0
      IconDeltaY      =   0
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   128
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MenuStyle       =   0
      PanelIndex      =   0
      Scope           =   0
      TabIndex        =   15
      TabPanelIndex   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   1
      Transparent     =   False
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   20
      _mIndex         =   0
      _mInitialParent =   ""
      _mName          =   ""
      _mPanelIndex    =   0
   End
   Begin DesktopBevelButton PrevDayButton
      Active          =   False
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowTabStop    =   False
      BackgroundColor =   &c00000000
      BevelStyle      =   0
      Bold            =   False
      ButtonStyle     =   0
      Caption         =   "<"
      CaptionAlignment=   3
      CaptionDelta    =   0
      CaptionPosition =   1
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      HasBackgroundColor=   False
      Height          =   15
      Icon            =   0
      IconAlignment   =   0
      IconDeltaX      =   0
      IconDeltaY      =   0
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   83
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MenuStyle       =   0
      PanelIndex      =   0
      Scope           =   0
      TabIndex        =   16
      TabPanelIndex   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   1
      Transparent     =   False
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   20
      _mIndex         =   0
      _mInitialParent =   ""
      _mName          =   ""
      _mPanelIndex    =   0
   End
End
#tag EndDesktopWindow

#tag WindowCode
	#tag Event
		Sub Closing()
		  var node as XmlNode = App.XmlPref.GetNode("DealPeriodWindow")
		  if self.Left > 0 then
		    node.SetAttribute("Left",self.Left.ToString)
		  end if
		  if self.Top > 0 then
		    node.SetAttribute("Top",self.Top.ToString)
		  end if
		  if self.Width  > 0 then
		    node.SetAttribute("Width",self.Width.ToString)
		  end if
		  if self.Height > 0 then
		    node.SetAttribute("Height",self.Height.ToString)
		  end if
		  
		  for i as integer = 0 to UBound(App.MainWin.DealPeriodWins)
		    if App.MainWin.DealPeriodWins(i) = self then
		      App.MainWin.DealPeriodWins.RemoveAt(i)
		      return
		    end if
		  next
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub Opening()
		  var node as XmlNode = App.XmlPref.GetNode("DealPeriodWindow")
		  var Left as integer = node.GetAttribute("Left").ToInteger
		  var Top as integer = node.GetAttribute("Top").ToInteger
		  var Width as integer = node.GetAttribute("Width").ToInteger
		  var Height as integer = node.GetAttribute("Height").ToInteger
		  if Left < 0 then
		    self.Left = App.XmlPref.DEFAULT_DEALPERIOD_LEFT
		  else
		    self.Left = Left
		  end if
		  if Top < 0 then
		    self.Top = App.XmlPref.DEFAULT_DEALPERIOD_TOP
		  else
		    self.Top = Top
		  end if
		  if Width < 0 then
		    self.Width = App.XmlPref.DEFAULT_DEALPERIOD_WIDTH
		  else
		    self.Width = Width
		  end if
		  if Height < 0 then
		    self.Width = App.XmlPref.DEFAULT_DEALPERIOD_HEIGHT
		  else
		    self.Height = Height
		  end if
		  
		  
		  self.FromDateTimePicker.GraphicalDisplay = true
		  self.FromDateTimePicker.DisplayMode = DesktopDateTimePicker.DisplayModes.DateOnly
		  self.ToDateTimePicker.GraphicalDisplay = true
		  self.ToDateTimePicker.DisplayMode = DesktopDateTimePicker.DisplayModes.DateOnly
		  
		  var baseNode as XmlNode = App.XmlPref.GetNode("BaseFolder")
		  if baseNode = nil then
		    MessageBox "can't find basefolder"
		    return
		  end if
		  
		  //find out the fromDateLimit and the toDateLimite
		  var fromDateLimit as string = "未設定"
		  var toDateLimit as string = "未設定"
		  var periodNode as XmlNode = baseNode.FirstChild
		  if periodNode <> nil then
		    while periodNode <> nil
		      if periodNode.FirstChild = nil then
		        MessageBox "can't find period name node"
		        return
		      end if
		      var name as string = periodNode.FirstChild.Value
		      if name = self.DealPeriod then
		        exit
		      end if
		      periodNode = periodNode.NextSibling
		    wend
		    if periodNode <> nil then //self.DealPeriod found
		      fromDateLimit = periodNode.GetAttribute("FromDate")
		      toDateLimit = periodNode.GetAttribute("ToDate")
		      //else //self.DealPeriod not found
		      // "未設定" is asssigned
		    end if
		  end if
		  
		  if fromDateLimit = "未設定" then
		    self.FromDate.Text = fromDateLimit
		  else
		    var y as integer = fromDateLimit.NthField("-",1).Val
		    var m as integer = fromDateLimit.NthField("-",2).Val
		    var d as integer = fromDateLimit.NthField("-",3).Val
		    Var dt As New DateTime(y, m, d)
		    self.FromDateTimePicker.SelectedDate = dt
		  end if
		  
		  if toDateLimit = "未設定" then
		    self.ToDate.Text = toDateLimit
		  else
		    var y as integer = toDateLimit.NthField("-",1).Val
		    var m as integer = toDateLimit.NthField("-",2).Val
		    var d as integer = toDateLimit.NthField("-",3).Val
		    Var dt As New DateTime(y, m, d)
		    self.ToDateTimePicker.SelectedDate = dt
		  end if
		  
		  self.RecordList.RowSelectionType = DesktopListBox.RowSelectionTypes.Single
		  self.RecordList.ColumnAlignmentAt(0)=DesktopListBox.Alignments.Center
		  self.RecordList.ColumnAlignmentAt(1)=DesktopListBox.Alignments.Center
		  self.RecordList.ColumnAlignmentAt(2)=DesktopListBox.Alignments.Center
		  self.RecordList.ColumnAlignmentAt(3)=DesktopListBox.Alignments.Center
		  self.RecordList.ColumnAlignmentAt(4)=DesktopListBox.Alignments.Center
		  
		  //self.SearchAndGetResults()
		End Sub
	#tag EndEvent


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


	#tag Method, Flags = &h0
		Sub Constructor(basePath as string, period as string)
		  self.Title = period
		  self.BaseFolderPath = basePath
		  self.DealPeriod = period
		  // Calling the overridden superclass constructor.
		  Super.Constructor //this calls openning event
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SearchAndGetResults(selectRowWithNO as string = "")
		  self.SearchProgressWheel.Visible = true
		  self.StatusLabel.Text = "検索中..."
		  self.StatusLabel.Refresh(true)
		  self.SearchProgressWheel.Refresh(true)
		  if not self.HistoryCheck.Value then
		    self.SearchNormal(selectRowWithNO)
		  else
		    self.SearchHistory(selectRowWithNO)
		  end if
		  self.StatusLabel.Text = ""
		  self.SearchProgressWheel.Visible = false
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SearchHistory(selectRowWithNO as string = "")
		  var key as string = self.SearchKeyField.Text
		  
		  var sql as string = "select * from Deals where nextNO is NULL"
		  if self.FromDate.Text <> "未設定" then
		    sql = sql+" and DealDate >= '"+self.FromDate.Text+"'"
		  end if
		  if self.ToDate.Text <> "未設定" then
		    sql = sql+" and DealDate <= '"+self.ToDate.Text+"'"
		  end if
		  
		  var otherSql as string = App.CreateSqlCondition(key)
		  var dealPeriodNode as XmlNode = App.XmlPref.GetNode("DealPeriodWindow")
		  if dealPeriodNode = nil then
		    MessageBox "can't find DealPeriodWindow"
		    return
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
		  
		  self.RecordList.RemoveAllRows
		  
		  var apiClient as APICLientClass
		  apiClient = App.ConnectAPI(self.DealPeriod)
		  if apiClient = nil then
		    MessageBox App.FunctionError
		    return
		  end if
		  apiClient.ThreadYieldInterval = 200 //Does this work?
		  
		  Var rowsFound As RowSet
		  Try
		    rowsFound = apiClient.SelectSQL(sql)
		    For Each row As DatabaseRow In rowsFound
		      var NO as string = row.Column("NO").StringValue
		      var prevNO as string = row.Column("prevNO").StringValue
		      var DealType as string = DecodeSqlString(row.Column("DealType").StringValue)
		      var DealDate as string = row.Column("DealDate").StringValue
		      var DealName as string = DecodeSqlString(row.Column("DealName").StringValue)
		      var DealPartner as string = DecodeSqlString(row.Column("DealPartner").StringValue)
		      var DealPrice as integer = row.Column("DealPrice").IntegerValue
		      var RegDate as string = row.Column("RegDate").StringValue.NthField(" ",1)
		      var RecUpdate as string = row.Column("RecUpdate").StringValue.NthField(" ",1)
		      var FileName as string = DecodeSqlString(row.Column("FilePath").StringValue)
		      var RecStatus as string = row.Column("RecStatus").StringValue
		      var rowString as string
		      if RecUpdate = "" then // Since first record set nil to RecUpdate
		        rowString = RegDate+"_"+DealDate+"_"+DealPartner+"_"+DealPrice.ToString+"_"+DealType+"_"+DealName
		      else
		        rowString = RecUpdate+"_"+DealDate+"_"+DealPartner+"_"+DealPrice.ToString+"_"+DealType+"_"+DealName
		      end if
		      if prevNO <> "" then
		        self.RecordList.AddExpandableRow ""
		      else
		        self.RecordList.AddRow ""
		      end if
		      var rowTag as new RecordListRowPropertiesClass
		      rowTag.NO = NO
		      rowTag.DealPeriod = self.DealPeriod
		      rowTag.FilePath = self.BaseFolderPath+self.DealPeriod+"\"+FileName
		      rowTag.RecStatus = RecStatus
		      self.RecordList.RowTagAt(self.RecordList.LastRowIndex)=rowTag
		      self.RecordList.CellTextAt(self.RecordList.LastAddedRowIndex,0) = rowString
		      if selectRowWithNO <> "" and selectRowWithNO = NO then
		        self.RecordList.SelectedRowIndex = self.RecordList.LastAddedRowIndex
		      end if
		    Next
		    rowsFound.Close
		  Catch error As DatabaseException
		    apiClient.Close
		    MessageBox("Error: " + error.Message)
		    return
		  End Try
		  apiClient.Close
		  
		  self.RecordList.Refresh(true)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SearchNormal(selectRowWithNO as string = "")
		  dim key as string = self.SearchKeyField.Text
		  
		  var sql as string = "select * from Deals where nextNO is NULL and "+_
		  "RecStatus <> 'DELETE'"
		  if self.FromDate.Text <> "未設定" then
		    sql = sql+" and DealDate >= '"+self.FromDate.Text+"'"
		  end if
		  if self.ToDate.Text <> "未設定" then
		    sql = sql+" and DealDate <= '"+self.ToDate.Text+"'"
		  end if
		  
		  var otherSql as string = App.CreateSqlCondition(key)
		  var dealPeriodNode as XmlNode = App.XmlPref.GetNode("DealPeriodWindow")
		  if dealPeriodNode = nil then
		    MessageBox "can't find DealPeriodWindow"
		    return
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
		  
		  self.RecordList.RemoveAllRows
		  //self.RecordList.Refresh(true)
		  
		  var apiClient as APICLientClass
		  apiClient = App.ConnectAPI(self.DealPeriod)
		  if apiClient = nil then
		    MessageBox App.FunctionError
		    return
		  end if
		  
		  Var rowsFound As RowSet
		  Try
		    rowsFound = apiClient.SelectSQL(sql)
		    For Each row As DatabaseRow In rowsFound
		      var NO as string = row.Column("NO").StringValue
		      var DealType as string = row.Column("DealType").StringValue
		      var DealDate as string = row.Column("DealDate").StringValue
		      var DealName as string = DecodeSqlString(row.Column("DealName").StringValue)
		      var DealPartner as string = DecodeSqlString(row.Column("DealPartner").StringValue)
		      var DealPrice as integer = row.Column("DealPrice").IntegerValue
		      var FileName as string = DecodeSqlString(row.Column("FilePath").StringValue)
		      var RecStatus as string = row.Column("RecStatus").StringValue
		      var rowTag as new RecordListRowPropertiesClass
		      rowTag.NO = NO
		      rowTag.DealPeriod = self.DealPeriod
		      rowTag.FilePath = self.BaseFolderPath+self.DealPeriod+"\"+FileName
		      rowTag.RecStatus = RecStatus
		      
		      self.RecordList.AddRow(DealDate)
		      self.RecordList.RowTagAt(self.RecordList.LastRowIndex)=rowTag
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
		    MessageBox("Error: " + error.Message)
		    return
		  End Try
		  apiClient.Close
		  
		  self.RecordList.Refresh(true)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SelectRecordListRow(NO as string)
		  self.RecordList.SelectedRowIndex = DesktopListBox.NoSelection
		  for i as integer = 0 to self.RecordList.LastRowIndex
		    var rowTag as RecordListRowPropertiesClass = self.RecordList.RowTagAt(i)
		    if rowTag.NO = NO then
		      self.RecordList.RowSelectedAt(i) = true
		      return
		    end if
		  next
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		BaseFolderPath As string
	#tag EndProperty

	#tag Property, Flags = &h0
		DealPeriod As string
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
		Sub RowExpanded(row As Integer)
		  var rowTag as RecordListRowPropertiesClass = me.RowTagAt(row)
		  var lastNo as string = rowTag.NO
		  var apiClient as APICLientClass
		  apiClient = App.ConnectAPI(self.DealPeriod)
		  if apiClient = nil then
		    MessageBox App.FunctionError
		    return
		  end if
		  var sql as string = "select * from Deals where nextNO is not NULL and "+_
		  "NO like '"+lastNo.NthField("-",1)+"%'"
		  sql = sql + " order by RecUpdate desc"
		  Try
		    var rowsFound as RowSet = apiClient.SelectSQL(sql)
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
		      var FileName as string = DecodeSqlString(aRec.Column("FilePath").StringValue)
		      var RecStatus as string = aRec.Column("RecStatus").StringValue
		      
		      var rowString as string
		      if RecUpdate = "" then // Since first record set nil to RecUpdate
		        rowString = RegDate+"_"+DealDate+"_"+DealPartner+"_"+DealPrice.ToString+"_"+DealType+"_"+DealName
		      else
		        rowString = RecUpdate+"_"+DealDate+"_"+DealPartner+"_"+DealPrice.ToString+"_"+DealType+"_"+DealName
		      end if
		      Me.AddRow rowString
		      rowTag = new RecordListRowPropertiesClass
		      rowTag.NO = NO
		      rowTag.DealPeriod = self.DealPeriod
		      rowTag.FilePath = self.BaseFolderPath+self.DealPeriod+"\"+FileName
		      rowTag.RecStatus = RecStatus
		      me.RowTagAt(me.LastAddedRowIndex) = rowTag
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
		  
		  var NO as string
		  var prevNO as string
		  var DealType as string
		  var DealDate as string
		  var DealName as string
		  var DealPartner as string
		  var DealPrice as string
		  var DealRemark as string
		  var RecUpdate as string
		  var RegDate as string
		  var FilePath as string
		  var dropF as FolderItem
		  
		  var apiClient as APICLientClass
		  apiClient = App.ConnectAPI(self.DealPeriod)
		  if apiClient = nil then
		    MessageBox(App.FunctionError)
		    return
		  end if
		  var sql as string = "select * from Deals where NO='"+rowTag.NO+"'"
		  Try
		    var rowsFound as RowSet = apiClient.SelectSQL(sql)
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
		    FilePath = DecodeSqlString(rowsFound.Column("FilePath").StringValue)
		    dropF = new FolderItem(self.BaseFolderPath+self.DealPeriod+"\"+FilePath, FolderItem.PathModes.Native)
		  Catch error As DatabaseException
		    apiClient.Close
		    MessageBox("Error: " + error.Message)
		    return
		  end Try
		  apiClient.Close
		  
		  var selectedRowIndex as integer = me.SelectedRowIndex
		  var scrollPosition as integer = me.ScrollPosition
		  
		  var win as new UpdateWindow
		  if self.HistoryCheck.Value then
		    if rowTag.RecStatus = "DELETE" then
		      win.Title = "削除レコード"
		    else
		      win.Title = "履歴レコード"
		    end if
		    win.UpdateButton.Enabled = false
		  end if
		  win.DealPeriodWin = self
		  win.BaseFolderPath.Text = self.BaseFolderPath
		  var baseF as FolderItem = new FolderItem(self.BaseFolderPath, FolderItem.PathModes.Native)
		  win.ReCreateDealPeriodPopupMenu(baseF, self.DealPeriod)
		  win.DealNO = NO
		  win.DealingDate.Text = DealDate
		  win.DealingNameField.Text = DealName
		  win.DealingPartnerField.Text = DealPartner
		  win.DealingPriceField.Text = DealPrice
		  win.DealingRemarkField.Text = DealRemark
		  win.ReCreateDealTypePopupMenu(DealType)
		  win.DropFilePathLabel.Text = dropF.NativePath
		  win.DropFilePathLabel.Tooltip = dropF.NativePath
		  dim w, h as integer
		  w = win.DropCanvas.Width
		  h = win.DropCanvas.Height
		  if w < h then
		    win.DropCanvas.Backdrop = dropF.IconMBS(w)
		  else
		    win.DropCanvas.Backdrop = dropF.IconMBS(h)
		  end if
		  win.ShowModal
		  
		  me.ScrollPosition = scrollPosition
		End Sub
	#tag EndEvent
	#tag Event
		Function KeyDown(key As String) As Boolean
		  if chr(127) = key then  //del key pressed
		    self.RecordList.RemoveAllRows
		  end if
		  return true
		End Function
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
		  
		  self.FromDate.Text= "未設定"
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
		  
		  self.ToDate.Text= "未設定"
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events SearchKeyField
	#tag Event
		Function KeyDown(key As String) As Boolean
		  if Key = App.kCR then
		    self.SearchAndGetResults("")
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
		    if win.SelectedValue <> "" then
		      self.SearchKeyField.SelectedText = "#"+win.SelectedValue
		    end if
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
#tag EndEvents
#tag Events DeleteButton
	#tag Event
		Sub Pressed()
		  if self.RecordList.SelectedRowCount = 0 then
		    return
		  end if
		  
		  var rowTag as RecordListRowPropertiesClass = self.RecordList.RowTagAt(self.RecordList.SelectedRowIndex)
		  
		  var NO as string
		  var prevNO as string
		  var DealType as string
		  var DealDate as string
		  var DealName as string
		  var DealPartner as string
		  var DealPrice as string
		  var DealRemark as string
		  var RecUpdate as string
		  var RegDate as string
		  var FilePath as string
		  var dropF as FolderItem
		  
		  var apiClient as APICLientClass = App.ConnectAPI(self.DealPeriod)
		  if apiClient = nil then
		    MessageBox App.FunctionError
		    return
		  end if
		  var sql as string = "select * from Deals where NO='"+rowTag.NO+"'"
		  Try
		    var rowsFound as RowSet = apiClient.SelectSQL(sql)
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
		    FilePath = DecodeSqlString(rowsFound.Column("FilePath").StringValue)
		    dropF = new FolderItem(self.BaseFolderPath+self.DealPeriod+"\"+FilePath, FolderItem.PathModes.Native)
		    
		  Catch error As DatabaseException
		    apiClient.Close
		    MessageBox("Error: " + error.Message)
		    return
		  end Try
		  apiClient.Close
		  
		  
		  Var dlg As New DeleteDialog
		  dlg.DealDateLabel.Text = DealDate
		  dlg.DealPartnerLabel.Text = DealPartner
		  dlg.DealPriceLabel.Text = DealPrice
		  dlg.DealTypeLabel.Text = DealType
		  dlg.DealNameLabel.Text = DealName
		  dlg.DealRemarkLabel.Text = DealRemark
		  System.Beep
		  dlg.ShowModal 
		  if dlg.PushedButton="CancelButton" then
		    return
		  end if
		  var reason as string = dlg.Reason
		  
		  
		  var ret as string
		  ret = App.DeleteDeal(self.BaseFolderPath, self.DealPeriod, NO, reason, nil, "", "")
		  if ret <> "OK" then
		    apiClient.RollbackTransaction()
		    apiClient.Close()
		    self.StatusLabel.Text = ret
		    return
		  end if
		  
		  
		  self.SearchAndGetResults()
		  self.StatusLabel.Text = "削除しました"
		  
		End Sub
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
		    self.DeleteButton.Enabled = false
		  else
		    self.RecordList.AllowExpandableRows = false
		    self.RecordList.ColumnCount = 5
		    self.RecordList.ColumnWidths = "70,*,100,100,*"
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
		    self.DeleteButton.Enabled = true
		  end if
		  self.SearchAndGetResults()
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events SearchButton
	#tag Event
		Sub Pressed()
		  self.SearchAndGetResults("")
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
#tag Events TodayButton
	#tag Event
		Sub Pressed()
		  Var d As DateTime = DateTime.Now
		  self.FromDate.Text = d.SQLDate
		  self.ToDate.Text = d.SQLDate
		  
		  self.SearchButton.Press
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events NextDayButton
	#tag Event
		Sub Pressed()
		  if self.FromDate.Text <> "未設定" then
		    self.FromDate.Text = GetNextDateString(self.FromDate.Text)
		  end if
		  
		  if self.ToDate.Text <> "未設定" then
		    self.ToDate.Text = GetNextDateString(self.ToDate.Text)
		  end if
		  
		  
		  self.SearchButton.Press
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PrevDayButton
	#tag Event
		Sub Pressed()
		  if self.FromDate.Text <> "未設定" then
		    self.FromDate.Text = GetPrevDateString(self.FromDate.Text)
		  end if
		  
		  if self.ToDate.Text <> "未設定" then
		    self.ToDate.Text = GetPrevDateString(self.ToDate.Text)
		  end if
		  
		  self.SearchButton.Press
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
		Name="DealPeriod"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="string"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="BaseFolderPath"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="string"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
#tag EndViewBehavior
