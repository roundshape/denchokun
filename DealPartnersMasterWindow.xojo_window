#tag DesktopWindow
Begin DesktopWindow DealPartnersMasterWindow
   Backdrop        =   0
   BackgroundColor =   &cFFFFFF
   Composite       =   False
   DefaultLocation =   2
   FullScreen      =   False
   HasBackgroundColor=   False
   HasCloseButton  =   False
   HasFullScreenButton=   False
   HasMaximizeButton=   False
   HasMinimizeButton=   False
   Height          =   400
   ImplicitInstance=   True
   MacProcID       =   0
   MaximumHeight   =   32000
   MaximumWidth    =   32000
   MenuBar         =   2102286335
   MenuBarVisible  =   False
   MinimumHeight   =   400
   MinimumWidth    =   322
   Resizeable      =   True
   Title           =   "取引先マスター"
   Type            =   1
   Visible         =   True
   Width           =   322
   Begin DesktopListBox PartnersList
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
      DefaultRowHeight=   -1
      DropIndicatorVisible=   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      GridLineStyle   =   0
      HasBorder       =   True
      HasHeader       =   False
      HasHorizontalScrollbar=   False
      HasVerticalScrollbar=   True
      HeadingIndex    =   -1
      Height          =   331
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
      RowSelectionType=   1
      Scope           =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   False
      Tooltip         =   ""
      Top             =   41
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   322
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
   End
   Begin InputTextClass PartnerNameField
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
      Left            =   44
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
      Width           =   205
   End
   Begin DesktopButton AddButton
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "＋"
      Default         =   True
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   22
      Index           =   -2147483648
      Italic          =   False
      Left            =   252
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      MacButtonStyle  =   0
      Scope           =   0
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   False
      Tooltip         =   ""
      Top             =   11
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   30
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
      Left            =   27
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   False
      Text            =   ""
      TextAlignment   =   0
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   377
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   166
   End
   Begin DesktopProgressWheel RunProgressWheel
      Active          =   False
      AllowAutoDeactivate=   True
      AllowTabStop    =   False
      Enabled         =   True
      Height          =   16
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   5
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      PanelIndex      =   0
      Scope           =   0
      TabIndex        =   4
      TabPanelIndex   =   0
      Tooltip         =   ""
      Top             =   379
      Transparent     =   False
      Visible         =   False
      Width           =   16
      _mIndex         =   0
      _mInitialParent =   ""
      _mName          =   ""
      _mPanelIndex    =   0
   End
   Begin DesktopButton SaveButton
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "保存"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   22
      Index           =   -2147483648
      Italic          =   False
      Left            =   197
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      MacButtonStyle  =   0
      Scope           =   0
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   False
      Tooltip         =   ""
      Top             =   376
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   60
   End
   Begin DesktopButton RemoveButton
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "－"
      Default         =   True
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   22
      Index           =   -2147483648
      Italic          =   False
      Left            =   286
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      MacButtonStyle  =   0
      Scope           =   0
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   False
      Tooltip         =   ""
      Top             =   11
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   30
   End
   Begin DesktopBevelButton ImportButton
      Active          =   False
      AllowAutoDeactivate=   True
      AllowFocus      =   True
      AllowTabStop    =   False
      BackgroundColor =   &c00000000
      BevelStyle      =   0
      Bold            =   False
      ButtonStyle     =   0
      Caption         =   ""
      CaptionAlignment=   3
      CaptionDelta    =   0
      CaptionPosition =   1
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      HasBackgroundColor=   False
      Height          =   36
      Icon            =   1386647551
      IconAlignment   =   0
      IconDeltaX      =   0
      IconDeltaY      =   0
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   5
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MenuStyle       =   0
      PanelIndex      =   0
      Scope           =   0
      TabIndex        =   6
      TabPanelIndex   =   0
      TextColor       =   &c00000000
      Tooltip         =   "CSVファイルのインポート"
      Top             =   3
      Transparent     =   False
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   36
      _mIndex         =   0
      _mInitialParent =   ""
      _mName          =   ""
      _mPanelIndex    =   0
   End
   Begin DesktopButton CancelButton
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "キャンセル"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   22
      Index           =   -2147483648
      Italic          =   False
      Left            =   261
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      MacButtonStyle  =   0
      Scope           =   0
      TabIndex        =   7
      TabPanelIndex   =   0
      TabStop         =   False
      Tooltip         =   ""
      Top             =   376
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   60
   End
End
#tag EndDesktopWindow

#tag WindowCode
	#tag Event
		Sub Closing()
		  var sql as string = "drop table TempTable"
		  try
		    App.InMDB.ExecuteSQL(sql)
		  catch e as DatabaseException
		    MessageBox e.Message
		    return
		  end try
		End Sub
	#tag EndEvent

	#tag Event
		Sub Opening()
		  var sql as string = "CREATE TABLE TempTable AS SELECT * FROM DealPartners"
		  try
		    App.InMDB.ExecuteSQL(sql)
		  catch e as DatabaseException
		    MessageBox e.Message
		    return
		  end try
		  
		  
		End Sub
	#tag EndEvent


	#tag MenuHandler
		Function CloseWindow() As Boolean Handles CloseWindow.Action
		  self.Close
		  Return True
		  
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function ImportItem() As Boolean Handles ImportItem.Action
		  Var dlg As New SelectFolderDialog
		  dlg.ActionButtonCaption = "選択"
		  dlg.Title = "CSVファイルの選択"
		  //dlg.PromptText = "Prompt Text"
		  dlg.InitialFolder = SpecialFolder.Documents
		  
		  var csvF as FolderItem 
		  csvF = dlg.ShowModal
		  if csvF = nil then
		    return true
		  end if
		  
		  
		  
		  Return True
		End Function
	#tag EndMenuHandler


	#tag Method, Flags = &h0
		Function ReadCSV(file as FolderItem) As string
		  var t as TextInputStream = TextInputStream.Open(file)
		  
		  //t.Encoding = Encodings.UTF8 // we expect here: UTF-8
		  t.Encoding = Encodings.ShiftJIS
		  
		  // read rows
		  var lines() as string
		  while not t.EOF
		    var line as string = t.ReadLine
		    
		    if line.trim.len>0 then // ignore empty lines
		      lines.append line
		    end if
		  wend
		  
		  
		  var AllLines as string = Join(lines, EndOfLine)
		  var items() as string = SplitCommaSeparatedValuesMBS(AllLines, "")
		  
		  //var ext as string = file.NameExtensionMBS
		  var errName as string = file.NameWithoutExtensionMBS+".error.csv"
		  var errPath as string = file.Parent.NativePath+errName
		  var errfile as new FolderItem(errPath, FolderItem.PathModes.Native)
		  if errFile.Exists then
		    Return errName+"が存在しているため、エラー出力ができません"
		  end if
		  var outFp as TextOutputStream = nil
		  
		  var maxPartnerLength as Integer = App.XmlPref.GetNode("InputLimit").GetAttribute("partnerbytes").Val
		  
		  var n as integer = 0
		  while n <= items.LastIndex
		    var name as string = items(n)
		    name = name.ReplaceAll(" ","") //Since IsFileNameValid allows space
		    if not IsFileNameValid(name) or name.Bytes > maxPartnerLength then
		      if outFp = nil then
		        outFp = TextOutputStream.Create(errfile)
		        outFp.Encoding = Encodings.ShiftJIS
		      end if
		      var lineNO as integer = n+1
		      var err as string = lineNO.ToString+"行目:不適切な文字含まれているか、社名の長さが"+maxPartnerLength.ToString+"bytesを超えています"
		      err = err.ConvertEncoding(Encodings.ShiftJIS)
		      outFp.WriteLine(err)
		    end if
		    var sql as string = "insert into TempTable(name) values('"+EncodeSqlString(name)+"')"
		    for i as integer = 0 to 0 //Column pass
		      try
		        self.StatusLabel.Text = name
		        self.StatusLabel.Refresh(true)
		        App.InMDB.ExecuteSQL(sql)
		        self.PartnersList.AddRow name
		      Catch e as DatabaseException
		        if outFp = nil then
		          outFp = TextOutputStream.Create(errfile)
		          outFp.Encoding = Encodings.ShiftJIS
		        end if
		        var lineNO as integer = n+1
		        var err as string = lineNO.ToString+"行目:"+e.Message
		        err = err.ConvertEncoding(Encodings.ShiftJIS)
		        outFp.WriteLine(err)
		      end Try
		      App.DoEvents(10)
		      n = n + 1
		    next
		    
		  wend
		  if outFp <> nil then
		    outFp.Close
		  end if
		  
		  
		  return "OK"
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ReCreatePartnersList(DealPartnersNode as XmlNode)
		  self.PartnersList.RemoveAllRows
		  
		  var node as XmlNode = DealPartnersNode.FirstChild
		  if node = nil then
		    return
		  end if
		  
		  while node <> nil
		    if node.FirstChild <> nil then
		      self.PartnersList.AddRow node.FirstChild.Value
		    end if
		    node = node.NextSibling
		  wend
		  
		End Sub
	#tag EndMethod


#tag EndWindowCode

#tag Events PartnerNameField
	#tag Event
		Function KeyDown(key As String) As Boolean
		  if IsFileNameValid(key) then
		    return false
		  end if
		  return true
		End Function
	#tag EndEvent
	#tag Event
		Sub TextChanged()
		  var ret as string = me.TextChangedByControlKey(self.PartnersList, "TempTable")
		End Sub
	#tag EndEvent
	#tag Event
		Sub FocusReceived()
		  self.StatusLabel.Text = ""
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events AddButton
	#tag Event
		Sub Pressed()
		  if self.PartnerNameField.Text = "" then
		    return
		  end if
		  
		  if not IsFileNameValid(self.PartnerNameField.Text) then
		    self.StatusLabel.Text = "名前に不適切な文字があります"
		    return
		  end if
		  
		  var sql as string = "insert into TempTable(name) values('"+EncodeSqlString(self.PartnerNameField.Text)+"')"
		  try
		    App.InMDB.ExecuteSQL(sql)
		  Catch e as DatabaseException
		    if e.ErrorNumber <> 19 then
		      MessageBox e.Message
		      return
		    else
		      self.StatusLabel.Text = "既に同じ名前が登録されています"
		      return
		    end if
		  end try
		  
		  self.PartnersList.AddRow self.PartnerNameField.Text
		  //self.PartnerNameField.Text = ""
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events SaveButton
	#tag Event
		Sub Pressed()
		  var InMDBNode as XmlNode = App.XmlPref.GetNode("InMDB")
		  if InMDBNode = nil then
		    MessageBox "can't get InMDB node"
		    return
		  end if
		  var DealPartnersNode as XmlNode = InMDBNode.FirstChild
		  if DealPartnersNode = nil then
		    MessageBox "can't get DealPartners node"
		    return
		  end if
		  if DealPartnersNode.Name <> "DealPartners" then
		    MessageBox "can't get DealPartners node"
		    return
		  end if
		  
		  var sql as string = "drop table DealPartners"
		  try
		    App.InMDB.ExecuteSQL(sql)
		  catch e as DatabaseException
		    MessageBox e.Message
		    return
		  end try
		  sql = "CREATE TABLE DealPartners AS SELECT * FROM TempTable"
		  try
		    App.InMDB.ExecuteSQL(sql)
		  catch e as DatabaseException
		    MessageBox e.Message
		    return
		  end try
		  
		  
		  while DealPartnersNode.FirstChild <> nil
		    var aNode as XmlNode = DealPartnersNode.FirstChild
		    DealPartnersNode.RemoveChild(aNode)
		  wend
		  
		  var rows as RowSet
		  sql = "select * from DealPartners"
		  
		  
		  
		  self.Close
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RemoveButton
	#tag Event
		Sub Pressed()
		  if self.PartnersList.SelectedRowCount = 0 then
		    self.StatusLabel.Text = "取引先名が選択されていません"
		    return
		  end if
		  
		  while self.PartnersList.SelectedRowCount > 0
		    var name as string = self.PartnersList.SelectedRowValue
		    var sql as string = "delete from TempTable where name='"+name+"'"
		    try
		      App.InMDB.ExecuteSQL(sql)
		    Catch e as DatabaseException
		      MessageBox e.Message
		      return
		    end try
		    self.PartnersList.RemoveRowAt(self.PartnersList.SelectedRowIndex)
		  wend
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ImportButton
	#tag Event
		Sub Pressed()
		  Var dlg As OpenFileDialog
		  Var f As FolderItem
		  dlg = New OpenFileDialog
		  
		  dlg.InitialFolder = SpecialFolder.Desktop
		  dlg.Title = "CSVファイルを選択してください"
		  dlg.Filter = CsvFileType.csv  // "text/plain" file type defined in FileTypes1 set
		  f = dlg.ShowModal
		  if f = nil then
		    return
		  end if
		  self.RunProgressWheel.Visible = true
		  var ret as string = self.ReadCSV(f)
		  self.RunProgressWheel.Visible = false
		  if ret <> "OK" then
		    MessageBox ret
		    Return
		  end if
		  self.StatusLabel.Text = "正常にインポートしました"
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CancelButton
	#tag Event
		Sub Pressed()
		  self.Close
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
