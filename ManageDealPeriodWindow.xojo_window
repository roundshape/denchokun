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
      Left            =   78
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
      DisplayMode     =   0
      DisplaySeconds  =   False
      Enabled         =   True
      GraphicalDisplay=   False
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
      Width           =   15
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
      Left            =   78
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
      DisplayMode     =   0
      DisplaySeconds  =   False
      Enabled         =   True
      GraphicalDisplay=   False
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
      Width           =   15
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
      Left            =   211
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
      Left            =   211
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
		  var base as XmlNode = App.XmlPref.GetNode("BaseFolder")
		  var basePath as string =base.GetAttribute("path")
		  var baseF as folderitem
		  baseF = new FolderItem(basePath, FolderItem.PathModes.Native)
		  if baseF = nil then
		    MessageBox "ベースフォルダが見つかりません"
		    return
		  end if
		  
		  self.DealPeriodList.RemoveAllRows
		  
		  var folderNames(), aFolderItem as FolderItemClass
		  if baseF = nil or not baseF.Exists or not baseF.IsFolder then
		    return
		  end if
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
		  
		  var i as integer
		  i = 0
		  For Each aItem As FolderItemClass In folderNames
		    self.DealPeriodList.AddRow ""
		    self.DealPeriodList.RowTagAt(self.DealPeriodList.LastAddedRowIndex) = aItem
		    self.DealPeriodList.CellTypeAt(self.DealPeriodList.LastAddedRowIndex,0) = DesktopListBox.CellTypes.CheckBox
		    self.DealPeriodList.CellAlignmentOffsetAt(self.DealPeriodList.LastAddedRowIndex,0) = 2
		    if aItem.IsWriteable then
		      self.DealPeriodList.CellCheckBoxValueAt(self.DealPeriodList.LastAddedRowIndex,0) = true
		    else
		      self.DealPeriodList.CellCheckBoxValueAt(self.DealPeriodList.LastAddedRowIndex,0) = false
		    end if
		    var v as string = aItem.DealPeriod.Name+" ("+aItem.DealPeriod.FromDate+" - "+aItem.DealPeriod.ToDate+")"
		    self.DealPeriodList.CellTextAt(self.DealPeriodList.LastAddedRowIndex,1) = v
		    i = i + 1
		  Next
		  
		  self.FromDatePicker.GraphicalDisplay = true
		  self.FromDatePicker.DisplayMode = DesktopDateTimePicker.DisplayModes.DateOnly
		  self.ToDatePicker.GraphicalDisplay = true
		  self.ToDatePicker.DisplayMode = DesktopDateTimePicker.DisplayModes.DateOnly
		  
		  //self.Updated = false
		  
		  
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
		    return
		  end if
		  For Each aRow As DesktopListBoxRow In me.Rows
		    if aRow.Selected then
		      var aFolder as FolderItemClass = aRow.Tag
		      self.NameField.Text = aFolder.DealPeriod.Name
		      self.FromDate.Text = aFolder.DealPeriod.FromDate
		      self.ToDate.Text = aFolder.DealPeriod.ToDate
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
		  var base as XmlNode = App.XmlPref.GetNode("BaseFolder")
		  var basePath as string =base.GetAttribute("path")
		  var baseF as folderitem
		  baseF = new FolderItem(basePath, FolderItem.PathModes.Native)
		  if baseF = nil then
		    MessageBox "ベースフォルダが見つかりません"
		    return
		  end if
		  
		  
		  var readOnlyF as FolderItem
		  for each aRow as DesktopListBoxRow in DealPeriodList.Rows
		    var aRowTagF as FolderItemClass = aRow.Tag
		    var aF as FolderItem = baseF.Child(aRowTagF.DealPeriod.Name)
		    
		    if aF = nil then
		      MessageBox "FolderItem Access Error"
		      return
		    end if
		    
		    if not aF.Exists then
		      Try
		        aF.CreateFolder()
		      Catch  error as IOException
		        MessageBox error.Message
		        return
		      End Try
		      
		      
		      var ret as string = App.CreateDatabaseFile(aRowTagF.DealPeriod.Name)
		      if ret <> "OK" then
		        MessageBox ret
		        return
		      end if
		    end if
		    
		    
		    if aF.IsWriteable and not aRow.CellCheckBoxValueAt(0) then
		      readOnlyF = aF.Child("Denchokun.ReadOnly")
		      if not readOnlyF.Exists then
		        Var t As TextOutputStream = TextOutputStream.Create(readOnlyF)
		        t.Close
		      end if
		    elseif aF.IsWriteable and aRow.CellCheckBoxValueAt(0) then
		      readOnlyF = aF.Child("Denchokun.ReadOnly")
		      if readOnlyF.Exists then
		        readOnlyF.Remove
		      end if
		    end if
		  Next
		  
		  self.UpdateBaseFolderNode(App.XmlPref, base)
		  App.XmlPref.SavePreference()
		  
		  App.MainWin.ReCreateDealPeriodPopupMenu()
		  
		  self.Close
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events AddFolderButton
	#tag Event
		Sub Pressed()
		  var base as XmlNode = App.XmlPref.GetNode("BaseFolder")
		  var basePath as string =base.GetAttribute("path")
		  var baseF as folderitem
		  baseF = new FolderItem(basePath, FolderItem.PathModes.Native)
		  if baseF = nil then
		    MessageBox "ベースフォルダが見つかりません"
		    return
		  end if
		  
		  var dlg as new DealPeriodInputDialog
		  dlg.ShowModal
		  var periodName as string = dlg.TypeNameField.Text
		  var ans as Boolean = dlg.DialogAns
		  dlg.Close
		  
		  var newFolderPath as string = basePath+periodName
		  var newFolderItem as FolderItem = new FolderItem(newFolderPath, FolderItem.PathModes.Native)
		  if newFolderItem = nil then
		    MessageBox "Access Error:Path="+newFolderPath
		    return
		  end if
		  
		  if newFolderItem.Exists then
		    MessageBox "既に同名のフォルダが存在します"
		    return
		  end if
		  
		  var aItem as new FolderItemClass
		  aItem.DealPeriod = new DealPeriodClass
		  aItem.DealPeriod.Name = periodName
		  aItem.DealPeriod.FromDate = "未設定"
		  aItem.DealPeriod.ToDate = "未設定"
		  
		  self.DealPeriodList.AddRow ""
		  self.DealPeriodList.RowTagAt(self.DealPeriodList.LastAddedRowIndex) = aItem
		  self.DealPeriodList.CellTypeAt(self.DealPeriodList.LastAddedRowIndex,0) = DesktopListBox.CellTypes.CheckBox
		  self.DealPeriodList.CellCheckBoxValueAt(self.DealPeriodList.LastAddedRowIndex,0) = true //Since always true
		  self.DealPeriodList.CellAlignmentOffsetAt(self.DealPeriodList.LastAddedRowIndex,0) = 2
		  self.DealPeriodList.CellTextAt(self.DealPeriodList.LastAddedRowIndex,1) = periodName+" ("+aItem.DealPeriod.FromDate+" - "+aItem.DealPeriod.ToDate+")"
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events FromDatePicker
	#tag Event
		Sub DateChanged(value as DateTime)
		  if self.DealPeriodList.SelectedRowCount = 0 then
		    return
		  end if
		  var aItem as FolderItemClass = self.DealPeriodList.RowTagAt(self.DealPeriodList.SelectedRowIndex)
		  aItem.DealPeriod.FromDate = me.SelectedDate.SQLDate
		  self.FromDate.Text = me.SelectedDate.SQLDate
		  var v as string = aItem.DealPeriod.Name+" ("+aItem.DealPeriod.FromDate+" - "+aItem.DealPeriod.ToDate+")"
		  self.DealPeriodList.CellTextAt(self.DealPeriodList.SelectedRowIndex,1) = v
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ToDatePicker
	#tag Event
		Sub DateChanged(value as DateTime)
		  if self.DealPeriodList.SelectedRowCount = 0 then
		    return
		  end if
		  var aItem as FolderItemClass = self.DealPeriodList.RowTagAt(self.DealPeriodList.SelectedRowIndex)
		  aItem.DealPeriod.ToDate = me.SelectedDate.SQLDate
		  self.ToDate.Text = me.SelectedDate.SQLDate
		  var v as string = aItem.DealPeriod.Name+" ("+aItem.DealPeriod.FromDate+" - "+aItem.DealPeriod.ToDate+")"
		  self.DealPeriodList.CellTextAt(self.DealPeriodList.SelectedRowIndex,1) = v
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RenameButton
	#tag Event
		Sub Pressed()
		  if self.NameField.Text = "" then
		    return
		  end if
		  if self.DealPeriodList.SelectedRowCount = 0 then
		    return
		  end if
		  
		  var base as XmlNode = App.XmlPref.GetNode("BaseFolder")
		  var basePath as string =base.GetAttribute("path")
		  var baseF as folderitem
		  baseF = new FolderItem(basePath, FolderItem.PathModes.Native)
		  if baseF = nil then
		    MessageBox "ベースフォルダが見つかりません"
		    return
		  end if
		  
		  var renamedFolderPath as string = basePath+self.NameField.Text
		  var renamedFolderItem as FolderItem = new FolderItem(renamedFolderPath, FolderItem.PathModes.Native)
		  if renamedFolderItem = nil then
		    MessageBox "Access Error:Path="+renamedFolderPath
		    return
		  end if
		  
		  if renamedFolderItem.Exists then
		    MessageBox "既に同名のフォルダが存在します"
		    return
		  end if
		  
		  var selectedRow as FolderItemClass = self.DealPeriodList.RowTagAt(self.DealPeriodList.SelectedRowIndex)
		  var selectedFolderItem as FolderItem = new FolderItem(basePath+selectedRow.DealPeriod.Name, FolderItem.PathModes.Native)
		  
		  
		  Try
		    selectedFolderItem.Name = self.NameField.Text
		  Catch  error as IOException
		    MessageBox error.Message
		    return
		  End Try
		  
		  selectedRow.DealPeriod.Name = self.NameField.Text
		  selectedRow.DealPeriod.FromDate = self.FromDate.Text
		  selectedRow.DealPeriod.ToDate = self.ToDate.Text
		  
		  var v as string = self.NameField.Text+" ("+self.FromDate.Text+" - "+self.ToDate.Text+")"
		  self.DealPeriodList.CellTextAt(self.DealPeriodList.SelectedRowIndex,1) = v
		  
		  //self.Updated = true
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events FromDateReset
	#tag Event
		Sub Pressed()
		  if self.DealPeriodList.SelectedRowCount = 0 then
		    return
		  end if
		  var aItem as FolderItemClass = self.DealPeriodList.RowTagAt(self.DealPeriodList.SelectedRowIndex)
		  aItem.DealPeriod.FromDate = "未設定"
		  self.FromDate.Text = "未設定"
		  var v as string = aItem.DealPeriod.Name+" ("+aItem.DealPeriod.FromDate+" - "+aItem.DealPeriod.ToDate+")"
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
		  var aItem as FolderItemClass = self.DealPeriodList.RowTagAt(self.DealPeriodList.SelectedRowIndex)
		  aItem.DealPeriod.ToDate = "未設定"
		  self.ToDate.Text = "未設定"
		  var v as string = aItem.DealPeriod.Name+" ("+aItem.DealPeriod.FromDate+" - "+aItem.DealPeriod.ToDate+")"
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
