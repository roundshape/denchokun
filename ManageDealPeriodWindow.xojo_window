#tag DesktopWindow
Begin DesktopWindow ManageDealPeriodWindow
   Backdrop        =   0
   BackgroundColor =   &cFFFFFF
   Composite       =   False
   DefaultLocation =   2
   FullScreen      =   False
   HasBackgroundColor=   False
   HasCloseButton  =   True
   HasFullScreenButton=   False
   HasMaximizeButton=   False
   HasMinimizeButton=   False
   Height          =   400
   ImplicitInstance=   True
   MacProcID       =   0
   MaximumHeight   =   32000
   MaximumWidth    =   32000
   MenuBar         =   ""
   MenuBarVisible  =   False
   MinimumHeight   =   64
   MinimumWidth    =   64
   Resizeable      =   False
   Title           =   "Untitled"
   Type            =   1
   Visible         =   True
   Width           =   270
   Begin DesktopListBox DealPeriodList
      AllowAutoDeactivate=   True
      AllowAutoHideScrollbars=   True
      AllowExpandableRows=   False
      AllowFocusRing  =   True
      AllowResizableColumns=   False
      AllowRowDragging=   False
      AllowRowReordering=   False
      Bold            =   False
      ColumnCount     =   2
      ColumnWidths    =   "22,*"
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
      Height          =   244
      Index           =   -2147483648
      InitialValue    =   ""
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
      TabStop         =   True
      Tooltip         =   ""
      Top             =   0
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   270
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
   End
   Begin DesktopButton CloseButton
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   True
      Caption         =   "閉じる"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   22
      Index           =   -2147483648
      Italic          =   False
      Left            =   14
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      MacButtonStyle  =   0
      Scope           =   0
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   361
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin DesktopButton SaveButton
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "更新する"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   22
      Index           =   -2147483648
      Italic          =   False
      Left            =   176
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      MacButtonStyle  =   0
      Scope           =   0
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   361
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin DesktopButton AddFolderButton
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "＋"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   22
      Index           =   -2147483648
      Italic          =   False
      Left            =   14
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      MacButtonStyle  =   0
      Scope           =   0
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   247
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   33
   End
   Begin DesktopLabel NameLabel
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   7
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "名前："
      TextAlignment   =   3
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   275
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   51
   End
   Begin DesktopLabel FromDateLabel
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   7
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "初日："
      TextAlignment   =   3
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   301
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   51
   End
   Begin DesktopLabel ToDateLabel
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   7
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "終日："
      TextAlignment   =   3
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   327
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   51
   End
   Begin DesktopTextField NameField
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
      Italic          =   False
      Left            =   60
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      MaximumCharactersAllowed=   0
      Password        =   False
      ReadOnly        =   False
      Scope           =   0
      TabIndex        =   7
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextAlignment   =   0
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   275
      Transparent     =   False
      Underline       =   False
      ValidationMask  =   ""
      Visible         =   True
      Width           =   145
   End
   Begin DesktopLabel FromDate
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   81
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   8
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "未設定"
      TextAlignment   =   0
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   301
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   127
   End
   Begin DesktopDateTimePicker FromDatePicker
      Active          =   False
      AllowAutoDeactivate=   True
      AllowFocusRing  =   False
      AllowTabStop    =   False
      DisplayMode     =   1
      DisplaySeconds  =   False
      Enabled         =   True
      GraphicalDisplay=   True
      Height          =   22
      HourMode        =   0
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   58
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      PanelIndex      =   0
      Scope           =   0
      TabIndex        =   9
      TabPanelIndex   =   0
      TodayButtonCaption=   ""
      Tooltip         =   ""
      Top             =   299
      Transparent     =   False
      Visible         =   True
      Width           =   18
      _mIndex         =   0
      _mInitialParent =   ""
      _mName          =   ""
      _mPanelIndex    =   0
   End
   Begin DesktopLabel ToDate
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   81
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   10
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "未設定"
      TextAlignment   =   0
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   327
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   127
   End
   Begin DesktopDateTimePicker ToDatePicker
      Active          =   False
      AllowAutoDeactivate=   True
      AllowFocusRing  =   False
      AllowTabStop    =   False
      DisplayMode     =   1
      DisplaySeconds  =   False
      Enabled         =   True
      GraphicalDisplay=   True
      Height          =   22
      HourMode        =   0
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   59
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      PanelIndex      =   0
      Scope           =   0
      TabIndex        =   11
      TabPanelIndex   =   0
      TodayButtonCaption=   ""
      Tooltip         =   ""
      Top             =   325
      Transparent     =   False
      Visible         =   True
      Width           =   18
      _mIndex         =   0
      _mInitialParent =   ""
      _mName          =   ""
      _mPanelIndex    =   0
   End
   Begin DesktopButton RenameButton
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "変更"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   22
      Index           =   -2147483648
      Italic          =   False
      Left            =   207
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MacButtonStyle  =   0
      Scope           =   0
      TabIndex        =   12
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   275
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   49
   End
   Begin DesktopButton FromDateReset
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "✖"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   22
      Index           =   -2147483648
      Italic          =   False
      Left            =   231
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MacButtonStyle  =   0
      Scope           =   0
      TabIndex        =   13
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   301
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   22
   End
   Begin DesktopButton ToDateReset
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "✖"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   22
      Index           =   -2147483648
      Italic          =   False
      Left            =   231
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MacButtonStyle  =   0
      Scope           =   0
      TabIndex        =   14
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   326
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
		  //if self.Updated then
		  //MessageBox "アプリを終了して、再度起動していただく必要があります。"
		  //Quit
		  //return
		  //end if
		End Sub
	#tag EndEvent

	#tag Event
		Sub Opening()
		  self.DealPeriodList.RemoveAllRows
		  
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
		    if result.HasKey("periods") then
		      var periodsArray as Variant = result.Value("periods")
		      if periodsArray.IsArray then
		        var periodsVariantArray() as Variant = periodsArray
		        for each periodVariant as Variant in periodsVariantArray
		          if periodVariant isa Dictionary then
		            var periodDict as Dictionary = Dictionary(periodVariant)
		            
		            // 期間情報をリストに直接追加
		            var name as String = periodDict.Value("name").StringValue
		            var fromDate as String = periodDict.Value("fromDate").StringValue
		            var toDate as String = periodDict.Value("toDate").StringValue
		            
		            var displayText as String = name + " (" + fromDate + " - " + toDate + ")"
		            
		            self.DealPeriodList.AddRow("")
		            var rowIndex as Integer = self.DealPeriodList.LastAddedRowIndex
		            self.DealPeriodList.CellTextAt(rowIndex, 1) = displayText
		            
		            // 期間データをRowTagに保存
		            var periodData as new DealPeriodClass
		            periodData.Name = name
		            periodData.FromDate = fromDate
		            periodData.ToDate = toDate
		            self.DealPeriodList.RowTagAt(rowIndex) = periodData
		          else
		            // 古い形式（文字列配列）の場合
		            var periodName as String = periodVariant.StringValue
		            var displayText as String = periodName + " (未設定 - 未設定)"
		            
		            self.DealPeriodList.AddRow("")
		            var rowIndex as Integer = self.DealPeriodList.LastAddedRowIndex
		            self.DealPeriodList.CellTextAt(rowIndex, 1) = displayText
		            
		            var periodData as new DealPeriodClass
		            periodData.Name = periodName
		            periodData.FromDate = "未設定"
		            periodData.ToDate = "未設定"
		            self.DealPeriodList.RowTagAt(rowIndex) = periodData
		          end if
		        next
		      end if
		    end if
		  else
		    // エラー時の処理
		    var errorMsg as String = "APIサーバーから期間取得に失敗しました"
		    if result.HasKey("message") then
		      errorMsg = errorMsg + EndOfLine + result.Value("message").StringValue
		    end if
		    MessageBox(errorMsg)
		    return
		  end if
		End Sub
	#tag EndEvent


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
		Sub UpdateBaseFolderNode(xml as XmlPrefClass, baseFolderNode as XmlNode)
		  while(baseFolderNode.FirstChild <> nil)
		    baseFolderNode.RemoveChild(baseFolderNode.FirstChild)
		  wend
		  
		  for each aRow as DesktopListBoxRow in self.DealPeriodList.Rows
		    var aRowTag as FolderItemClass = aRow.Tag
		    var nameTextNode as XmlTextNode = xml.CreateTextNode(aRowTag.DealPeriod.Name)
		    var periodNode as XmlNode = xml.CreateElement("Period")
		    periodNode.AppendChild(nameTextNode)
		    periodNode.SetAttribute("FromDate", aRowTag.DealPeriod.FromDate)
		    periodNode.SetAttribute("ToDate", aRowTag.DealPeriod.ToDate)
		    baseFolderNode.AppendChild(periodNode)
		  next
		End Sub
	#tag EndMethod


#tag EndWindowCode

#tag Events DealPeriodList
	#tag Event
		Sub SelectionChanged()
		  if me.SelectedRowCount = 0 then
		    self.NameField.Text = ""
		    self.FromDate.Text = ""
		    self.ToDate.Text = ""
		    return
		  end if
		  
		  For Each aRow As DesktopListBoxRow In me.Rows
		    if aRow.Selected then
		      var aPeriod as DealPeriodClass = aRow.Tag  // FolderItemClass → DealPeriodClass に変更
		      self.NameField.Text = aPeriod.Name
		      self.FromDate.Text = aPeriod.FromDate
		      self.ToDate.Text = aPeriod.ToDate
		      return
		    end if
		  Next
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CloseButton
	#tag Event
		Sub Pressed()
		  self.Close
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events SaveButton
	#tag Event
		Sub Pressed()
		  // 全期間の設定をサーバーに保存
		  var apiClient as new APIClientClass
		  apiClient.BaseURL = App.GetAPIServerURL()
		  
		  var successCount as Integer = 0
		  var errorCount as Integer = 0
		  
		  try
		    for i as Integer = 0 to self.DealPeriodList.LastRowIndex
		      var periodData as DealPeriodClass = self.DealPeriodList.RowTagAt(i)
		      
		      if periodData <> nil then
		        var updateData as new Dictionary
		        updateData.Value("name") = periodData.Name
		        updateData.Value("fromDate") = periodData.FromDate
		        updateData.Value("toDate") = periodData.ToDate
		        
		        var result as Dictionary = apiClient.UpdatePeriod(periodData.Name, updateData)
		        if result.HasKey("success") and result.Value("success").BooleanValue then
		          successCount = successCount + 1
		        else
		          errorCount = errorCount + 1
		        end if
		      end if
		    next
		    
		    if errorCount = 0 then
		      MessageBox "すべての期間設定を保存しました（" + successCount.ToString + "件）"
		    else
		      MessageBox successCount.ToString + "件保存、" + errorCount.ToString + "件エラー"
		    end if
		    
		    self.Close
		  catch error as RuntimeException
		    MessageBox "保存エラー: " + error.Message
		  end try
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events AddFolderButton
	#tag Event
		Sub Pressed()
		  // 新しい期間を追加
		  var dialog as new DealPeriodInputDialog
		  dialog.ShowModal
		  
		  // ダイアログがキャンセルされた場合は終了
		  if not dialog.DialogAns then
		    return
		  end if
		  
		  var newPeriodName as String = dialog.TypeNameField.Text
		  if newPeriodName = "" then
		    return
		  end if
		  
		  // API経由で新しい期間を作成
		  var apiClient as new APIClientClass
		  apiClient.BaseURL = App.GetAPIServerURL()
		  
		  try
		    var result as Dictionary = apiClient.CreatePeriod(newPeriodName)  // ← ここを修正
		    if result.HasKey("success") and result.Value("success").BooleanValue then
		      // リストに追加
		      var newPeriod as new DealPeriodClass
		      newPeriod.Name = newPeriodName
		      newPeriod.FromDate = "未設定"
		      newPeriod.ToDate = "未設定"
		      
		      var displayText as String = newPeriod.Name + " (未設定 - 未設定)"
		      
		      self.DealPeriodList.AddRow("")
		      var rowIndex as Integer = self.DealPeriodList.LastAddedRowIndex
		      self.DealPeriodList.CellTextAt(rowIndex, 1) = displayText
		      self.DealPeriodList.RowTagAt(rowIndex) = newPeriod
		      
		      MessageBox "新しい期間を作成しました"
		    else
		      MessageBox "期間の作成に失敗しました"
		    end if
		  catch error as RuntimeException
		    MessageBox "サーバー接続エラー: " + error.Message
		  end try
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events FromDatePicker
	#tag Event
		Sub DateChanged(value as DateTime)
		  if self.DealPeriodList.SelectedRowCount = 0 then
		    return
		  end if
		  
		  var aItem as DealPeriodClass = self.DealPeriodList.RowTagAt(self.DealPeriodList.SelectedRowIndex)
		  aItem.FromDate = me.SelectedDate.SQLDate
		  self.FromDate.Text = me.SelectedDate.SQLDate
		  
		  var v as String = aItem.Name + " (" + aItem.FromDate + " - " + aItem.ToDate + ")"
		  self.DealPeriodList.CellTextAt(self.DealPeriodList.SelectedRowIndex, 1) = v
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ToDatePicker
	#tag Event
		Sub DateChanged(value as DateTime)
		  if self.DealPeriodList.SelectedRowCount = 0 then
		    return
		  end if
		  
		  var aItem as DealPeriodClass = self.DealPeriodList.RowTagAt(self.DealPeriodList.SelectedRowIndex)
		  aItem.ToDate = me.SelectedDate.SQLDate
		  self.ToDate.Text = me.SelectedDate.SQLDate
		  
		  var v as String = aItem.Name + " (" + aItem.FromDate + " - " + aItem.ToDate + ")"
		  self.DealPeriodList.CellTextAt(self.DealPeriodList.SelectedRowIndex, 1) = v
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RenameButton
	#tag Event
		Sub Pressed()
		  if self.NameField.Text = "" then
		    MessageBox "期間名を入力してください"
		    return
		  end if
		  if self.DealPeriodList.SelectedRowCount = 0 then
		    MessageBox "期間を選択してください"
		    return
		  end if
		  
		  var selectedPeriod as DealPeriodClass = self.DealPeriodList.RowTagAt(self.DealPeriodList.SelectedRowIndex)
		  var originalName as String = selectedPeriod.Name
		  
		  // API経由で期間を更新
		  var apiClient as new APIClientClass
		  apiClient.BaseURL = App.GetAPIServerURL()
		  
		  var updateData as new Dictionary
		  updateData.Value("name") = self.NameField.Text
		  updateData.Value("fromDate") = if(self.FromDate.Text = "", "未設定", self.FromDate.Text)
		  updateData.Value("toDate") = if(self.ToDate.Text = "", "未設定", self.ToDate.Text)
		  
		  try
		    var result as Dictionary = apiClient.UpdatePeriod(originalName, updateData)
		    if result.HasKey("success") and result.Value("success").BooleanValue then
		      // ローカル表示を更新
		      selectedPeriod.Name = self.NameField.Text
		      selectedPeriod.FromDate = if(self.FromDate.Text = "", "未設定", self.FromDate.Text)
		      selectedPeriod.ToDate = if(self.ToDate.Text = "", "未設定", self.ToDate.Text)
		      
		      var displayText as String = selectedPeriod.Name + " (" + selectedPeriod.FromDate + " - " + selectedPeriod.ToDate + ")"
		      self.DealPeriodList.CellTextAt(self.DealPeriodList.SelectedRowIndex, 1) = displayText
		      
		      MessageBox "期間情報を更新しました"
		    else
		      MessageBox "期間の更新に失敗しました"
		    end if
		  catch error as RuntimeException
		    MessageBox "サーバー接続エラー: " + error.Message
		  end try
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events FromDateReset
	#tag Event
		Sub Pressed()
		  if self.DealPeriodList.SelectedRowCount = 0 then
		    return
		  end if
		  var selectedPeriod as DealPeriodClass = self.DealPeriodList.RowTagAt(self.DealPeriodList.SelectedRowIndex)
		  selectedPeriod.FromDate = "未設定"
		  self.FromDate.Text = "未設定"
		  var v as string = selectedPeriod.Name+" ("+selectedPeriod.FromDate+" - "+selectedPeriod.ToDate+")"
		  self.DealPeriodList.CellTextAt(self.DealPeriodList.SelectedRowIndex,1) = v
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ToDateReset
	#tag Event
		Sub Pressed()
		  if self.DealPeriodList.SelectedRowCount = 0 then
		    return
		  end if
		  var selectedPeriod as DealPeriodClass = self.DealPeriodList.RowTagAt(self.DealPeriodList.SelectedRowIndex)
		  selectedPeriod.ToDate = "未設定"
		  self.ToDate.Text = "未設定"
		  var v as string = selectedPeriod.Name+" ("+selectedPeriod.FromDate+" - "+selectedPeriod.ToDate+")"
		  self.DealPeriodList.CellTextAt(self.DealPeriodList.SelectedRowIndex,1) = v
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
#tag EndViewBehavior
