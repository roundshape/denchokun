#tag DesktopWindow
Begin DesktopWindow UpdateWindow
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
   Height          =   438
   ImplicitInstance=   True
   MacProcID       =   0
   MaximumHeight   =   438
   MaximumWidth    =   32000
   MenuBar         =   0
   MenuBarVisible  =   False
   MinimumHeight   =   438
   MinimumWidth    =   481
   Resizeable      =   True
   Title           =   "更新"
   Type            =   1
   Visible         =   True
   Width           =   481
   Begin DesktopRectangle DropRectangle
      AllowAutoDeactivate=   True
      BorderColor     =   &c00000000
      BorderThickness =   2.0
      CornerSize      =   0.0
      Enabled         =   True
      FillColor       =   &cFFFFFF00
      Height          =   184
      Index           =   -2147483648
      Left            =   21
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      TabIndex        =   17
      TabPanelIndex   =   0
      Tooltip         =   ""
      Top             =   227
      Transparent     =   False
      Visible         =   True
      Width           =   184
      Begin Desktopcanvas DropCanvas
         AllowAutoDeactivate=   True
         AllowFocus      =   True
         AllowFocusRing  =   True
         AllowTabs       =   False
         Backdrop        =   0
         Enabled         =   True
         Height          =   183
         Index           =   -2147483648
         InitialParent   =   "DropRectangle"
         Left            =   22
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         TabIndex        =   18
         TabPanelIndex   =   0
         TabStop         =   False
         Tooltip         =   ""
         Top             =   228
         Transparent     =   True
         Visible         =   True
         Width           =   183
         Begin DesktopLabel DropHereLabel
            AllowAutoDeactivate=   True
            Bold            =   False
            Enabled         =   True
            FontName        =   "System"
            FontSize        =   0.0
            FontUnit        =   0
            Height          =   20
            Index           =   -2147483648
            InitialParent   =   "DropCanvas"
            Italic          =   False
            Left            =   30
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   13
            TabPanelIndex   =   0
            TabStop         =   False
            Text            =   "ここに登録するファイルをドロップ"
            TextAlignment   =   2
            TextColor       =   &c000000
            Tooltip         =   ""
            Top             =   307
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   162
         End
      End
   End
   Begin MyTextFieldClass DealingNameField
      AllowAutoDeactivate=   True
      AllowFocusRing  =   True
      AllowSpellChecking=   False
      AllowTabs       =   False
      BackgroundColor =   &cFFFFFF00
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
      Left            =   82
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      MaximumCharactersAllowed=   0
      Password        =   False
      ReadOnly        =   False
      Scope           =   0
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   174
      Transparent     =   False
      Underline       =   False
      ValidationMask  =   ""
      Visible         =   True
      Width           =   379
   End
   Begin DesktopLabel DealingNameLabel
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   16
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
      TabStop         =   False
      Text            =   "取引名："
      TextAlignment   =   3
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   174
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   65
   End
   Begin MyTextFieldClass DealingPartnerField
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
      Left            =   105
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      MaximumCharactersAllowed=   0
      Password        =   False
      ReadOnly        =   False
      Scope           =   0
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextAlignment   =   0
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   149
      Transparent     =   False
      Underline       =   False
      ValidationMask  =   ""
      Visible         =   True
      Width           =   356
   End
   Begin DesktopLabel DealingPartnerLabel
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   16
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   11
      TabPanelIndex   =   0
      TabStop         =   False
      Text            =   "取引先："
      TextAlignment   =   3
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   148
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   65
   End
   Begin DesktopLabel DealingDate
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   22
      Index           =   -2147483648
      Italic          =   False
      Left            =   105
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
      TabStop         =   False
      Text            =   ""
      TextAlignment   =   0
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   97
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   133
   End
   Begin DesktopLabel DealingDateLabel
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   9
      TabPanelIndex   =   0
      TabStop         =   False
      Text            =   "取引日："
      TextAlignment   =   3
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   98
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   60
   End
   Begin DesktopTextField DealingPriceField
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
      Left            =   95
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
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
      Top             =   124
      Transparent     =   False
      Underline       =   False
      ValidationMask  =   ""
      Visible         =   True
      Width           =   188
   End
   Begin MyTextFieldClass DealingRemarkField
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
      Left            =   82
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      MaximumCharactersAllowed=   0
      Password        =   False
      ReadOnly        =   False
      Scope           =   0
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextAlignment   =   0
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   198
      Transparent     =   False
      Underline       =   False
      ValidationMask  =   ""
      Visible         =   True
      Width           =   379
   End
   Begin DesktopLabel RemarkLabel
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   16
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   13
      TabPanelIndex   =   0
      TabStop         =   False
      Text            =   "備考："
      TextAlignment   =   3
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   197
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   65
   End
   Begin DesktopPopupMenu DealTypePopupMenu
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   22
      Index           =   -2147483648
      InitialValue    =   ""
      Italic          =   False
      Left            =   351
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      SelectedRowIndex=   0
      TabIndex        =   14
      TabPanelIndex   =   0
      TabStop         =   False
      Tooltip         =   ""
      Top             =   97
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   110
   End
   Begin DesktopLabel TypeLabel
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   274
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
      Text            =   "取引種別："
      TextAlignment   =   3
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   98
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   71
   End
   Begin DesktopPopupMenu DealPeriodPopupMenu
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   22
      Index           =   -2147483648
      InitialValue    =   ""
      Italic          =   False
      Left            =   82
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      SelectedRowIndex=   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   False
      Tooltip         =   ""
      Top             =   69
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   379
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
      Left            =   29
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   20
      TabPanelIndex   =   0
      TabStop         =   False
      Text            =   ""
      TextAlignment   =   0
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   418
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   452
   End
   Begin DesktopButton UpdateButton
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "更新"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   60
      Index           =   -2147483648
      Italic          =   False
      Left            =   330
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      MacButtonStyle  =   0
      Scope           =   0
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   False
      Tooltip         =   ""
      Top             =   352
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   131
   End
   Begin DesktopLabel PriceLabel
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   22
      Index           =   -2147483648
      Italic          =   False
      Left            =   16
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   11
      TabPanelIndex   =   0
      TabStop         =   False
      Text            =   "金額："
      TextAlignment   =   3
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   124
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   65
   End
   Begin DesktopLabel DealPeriodLabel
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   16
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   19
      TabPanelIndex   =   0
      TabStop         =   False
      Text            =   "取引期間："
      TextAlignment   =   3
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   70
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   65
   End
   Begin DesktopLabel DropFilePathLabel
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   111
      Index           =   -2147483648
      Italic          =   False
      Left            =   217
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      Multiline       =   True
      Scope           =   0
      Selectable      =   False
      TabIndex        =   23
      TabPanelIndex   =   0
      TabStop         =   False
      Text            =   ""
      TextAlignment   =   0
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   233
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   242
   End
   Begin DesktopLabel YenLabel
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   82
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   26
      TabPanelIndex   =   0
      TabStop         =   False
      Text            =   "¥"
      TextAlignment   =   3
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   125
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   9
   End
   Begin DesktopButton CloseButton
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "閉じる"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   60
      Index           =   -2147483648
      Italic          =   False
      Left            =   217
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      MacButtonStyle  =   0
      Scope           =   0
      TabIndex        =   28
      TabPanelIndex   =   0
      TabStop         =   False
      Tooltip         =   ""
      Top             =   352
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   112
   End
   Begin DesktopButton DealPartnerButton
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "V"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   22
      Index           =   -2147483648
      Italic          =   False
      Left            =   81
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MacButtonStyle  =   0
      Scope           =   0
      TabIndex        =   29
      TabPanelIndex   =   0
      TabStop         =   False
      Tooltip         =   ""
      Top             =   149
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   22
   End
   Begin DesktopSeparator Separator1
      Active          =   False
      AllowAutoDeactivate=   True
      AllowTabStop    =   True
      Enabled         =   True
      Height          =   5
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      PanelIndex      =   0
      Scope           =   0
      TabIndex        =   31
      TabPanelIndex   =   0
      Tooltip         =   ""
      Top             =   34
      Transparent     =   False
      Visible         =   True
      Width           =   481
      _mIndex         =   0
      _mInitialParent =   ""
      _mName          =   ""
      _mPanelIndex    =   0
   End
   Begin DesktopProgressWheel RunProgressWheel
      Active          =   False
      AllowAutoDeactivate=   True
      AllowTabStop    =   False
      Enabled         =   True
      Height          =   16
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   3
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      PanelIndex      =   0
      Scope           =   0
      TabIndex        =   32
      TabPanelIndex   =   0
      Tooltip         =   ""
      Top             =   418
      Transparent     =   False
      Visible         =   False
      Width           =   16
      _mIndex         =   0
      _mInitialParent =   ""
      _mName          =   ""
      _mPanelIndex    =   0
   End
   Begin DesktopButton DealingDateTimePickerButton
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "V"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   22
      Index           =   -2147483648
      Italic          =   False
      Left            =   81
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MacButtonStyle  =   0
      Scope           =   0
      TabIndex        =   33
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   97
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   22
   End
End
#tag EndDesktopWindow

#tag WindowCode
	#tag Event
		Sub Opening()
		  self.DealingDate.Underline = true
		  
		  self.DropFilePathLabel.MultiLine = True
		  self.DropCanvas.AcceptFileDrop(AllFileTypes.Any)
		  self.DropCanvas.AllowFocus = true
		  self.DropCanvas.AllowFocusRing = true
		  
		  self.WarnHashCheckDone = false
		  
		  //self.DealPeriod.Text = DealPeriodWin.Title
		  
		  // DealNOが設定されている場合、APIから取引に紐づくファイル情報を取得
		  if self.DealNO <> "" and self.DealPeriodWin <> nil then
		    // UI初期化完了後に直接実行
		    self.LoadDealFileFromAPI()
		  end if
		  
		  // 期間一覧を取得してPopupMenuに設定
		  self.LoadPeriodList()
		  
		  // 現在の期間を選択状態にする
		  var currentPeriod as String = self.DealPeriodWin.Title.ReplaceAll("取引期間：", "").ReplaceAll("の管理", "")
		  for i as Integer = 0 to self.DealPeriodPopupMenu.RowCount - 1
		    if self.DealPeriodPopupMenu.RowTagAt(i) = currentPeriod then
		      self.DealPeriodPopupMenu.SelectedRowIndex = i
		      exit for
		    end if
		  next
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Function CheckHaveOtherDealNO(checkNO as string, dealNOs as string) As Boolean
		  var items() as String = dealNOs.Split(",")
		  for each aItem as string in items
		    if aItem <> checkNO then
		      return true //Yes, there is other NO
		    end if
		  next
		  return false //No, no such NO
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(NO as string, win as DealPeriodWindow)
		  me.DealNO = NO
		  me.DealPeriodWin = win
		  // Calling the overridden superclass constructor.
		  Super.Constructor
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DisplayPreviewFromBinary(binaryData As String)
		  try
		    var imageData as MemoryBlock = binaryData.ConvertEncoding(Encodings.UTF8)
		    var previewPicture as Picture = Picture.FromData(imageData)
		    
		    if previewPicture <> nil then
		      // DropCanvasサイズを取得
		      var canvasWidth as Integer = self.DropCanvas.Width - 3
		      var canvasHeight as Integer = self.DropCanvas.Height - 3
		      
		      // アスペクト比を保持してスケーリング
		      var sourceWidth as Integer = previewPicture.Width
		      var sourceHeight as Integer = previewPicture.Height
		      
		      // スケール計算（Double型に変換）
		      var scaleX as Double = canvasWidth / sourceWidth
		      var scaleY as Double = canvasHeight / sourceHeight
		      var scale as Double = Min(scaleX, scaleY)
		      
		      var newWidth as Integer = sourceWidth * scale
		      var newHeight as Integer = sourceHeight * scale
		      
		      // スケーリングされた画像を作成
		      var scaledPicture as Picture = New Picture(newWidth, newHeight)
		      var g as Graphics = scaledPicture.Graphics
		      g.DrawPicture(previewPicture, 0, 0, newWidth, newHeight, 0, 0, sourceWidth, sourceHeight)
		      
		      // Canvas上で中央配置するためのオフセット計算
		      var offsetX as Integer = (self.DropCanvas.Width - newWidth) / 2
		      var offsetY as Integer = (self.DropCanvas.Height - newHeight) / 2
		      
		      // Canvasサイズの背景画像を作成して中央配置
		      var canvasPicture as Picture = New Picture(self.DropCanvas.Width, self.DropCanvas.Height)
		      var canvasG as Graphics = canvasPicture.Graphics
		      canvasG.DrawPicture(scaledPicture, offsetX, offsetY)
		      
		      self.DropCanvas.Backdrop = canvasPicture
		      self.StatusLabel.Text = "プレビュー表示完了"
		    else
		      self.ShowFileIcon(New FolderItem(self.DropFilePathLabel.Text, FolderItem.PathModes.Native))
		      self.StatusLabel.Text = "プレビュー表示に失敗しました"
		    end if
		  catch error as RuntimeException
		    self.ShowFileIcon(New FolderItem(self.DropFilePathLabel.Text, FolderItem.PathModes.Native))
		    self.StatusLabel.Text = "プレビューデータの処理に失敗しました"
		  end try
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DownloadCurrentFile()
		  try
		    // 基本チェック
		    if self.DropFilePathLabel.Text = "" then
		      MessageBox "ダウンロードするファイルがありません"
		      return
		    end if
		    
		    var dealNo as String = self.DealNO
		    var currentPeriod as String = self.DealPeriodWin.Title.ReplaceAll("取引期間：", "").ReplaceAll("の管理", "")
		    
		    // デバッグ情報
		    System.DebugLog("Download - DealNo: " + dealNo)
		    System.DebugLog("Download - Period: " + currentPeriod)
		    
		    var apiClient as new APIClientClass
		    apiClient.BaseURL = App.GetAPIServerURL()
		    
		    self.StatusLabel.Text = "ダウンロード中..."
		    self.StatusLabel.Refresh()  // 画面を強制更新
		    
		    var fileData as MemoryBlock = apiClient.DownloadDealFile(currentPeriod, dealNo)
		    
		    // デバッグ：結果確認
		    if fileData <> nil then
		      System.DebugLog("Download successful, size: " + fileData.Size.ToString)
		    else
		      System.DebugLog("Download failed: " + apiClient.LastError)
		    end if
		    
		    if fileData <> nil and fileData.Size > 0 then
		      // ファイル名を取得
		      var fileName as String = self.DropFilePathLabel.Text.LastField("\")
		      if fileName = "" then
		        fileName = self.DropFilePathLabel.Text.LastField("/")
		      end if
		      if fileName = "" then
		        fileName = "downloaded_file.pdf"
		      end if
		      
		      // ファイル保存ダイアログ
		      var saveDialog as new SaveFileDialog
		      saveDialog.SuggestedFileName = fileName
		      saveDialog.Title = "ファイルを保存"
		      
		      var saveFile as FolderItem = saveDialog.ShowModal(self)
		      if saveFile <> nil then
		        try
		          var binaryStream as BinaryStream = BinaryStream.Create(saveFile)
		          binaryStream.Write(fileData)
		          binaryStream.Close()
		          
		          self.StatusLabel.Text = "ダウンロード完了: " + saveFile.Name
		          MessageBox("ダウンロードが完了しました。" + EndOfLine + "保存先: " + saveFile.NativePath)
		          saveFile.Open()
		          
		        catch error as IOException
		          MessageBox "ファイル保存エラー: " + error.Message
		          self.StatusLabel.Text = "保存に失敗しました"
		        end try
		      else
		        self.StatusLabel.Text = "ダウンロードがキャンセルされました"
		      end if
		    else
		      MessageBox "ダウンロードに失敗しました: " + apiClient.LastError
		      self.StatusLabel.Text = "ダウンロード失敗"
		    end if
		    
		  catch error as RuntimeException
		    MessageBox "エラーが発生しました: " + error.Message
		    self.StatusLabel.Text = "エラー"
		  end try
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetSystemFileIcon(sampleFileName As String) As Picture
		  // システムからファイルアイコンを取得するヘルパーメソッド
		  try
		    var tempFile as FolderItem = SpecialFolder.Temporary.Child(sampleFileName)
		    if tempFile <> nil then
		      return tempFile.IconMBS(64) // 64x64のアイコン
		    end if
		  catch
		    // エラー時はnilを返す
		  end try
		  return nil
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LoadDealFileFromAPI()
		  try
		    var period as String = self.DealPeriodWin.Title.ReplaceAll("取引期間：", "").ReplaceAll("の管理", "")
		    
		    // APIクライアント作成
		    var apiClient as new APIClientClass
		    apiClient.BaseURL = App.GetAPIServerURL()
		    
		    // 取引の詳細情報を取得（ファイル情報を含む）
		    var sql as String = "select * from Deals where NO='" + self.DealNO + "'"
		    var rowsFound as RowSet = apiClient.SelectSQL(period, sql)
		    
		    if rowsFound.RowCount() > 0 then
		      // ファイルパス情報を取得
		      var filePath as String = DecodeSqlString(rowsFound.Column("FilePath").StringValue)
		      
		      if filePath <> "" then
		        self.DropFilePathLabel.Text = filePath
		        self.DropFilePathLabel.Tooltip = filePath
		        
		        // プレビューAPIを呼び出し
		        self.LoadPreviewFromAPI(period)
		      end if
		    end if
		    
		  catch error as RuntimeException
		    self.StatusLabel.Text = "ファイル情報の取得に失敗しました: " + error.Message
		  end try
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LoadLocalPreview(fileItem As FolderItem)
		  try
		    // ローカルファイルから直接プレビューを生成
		    if fileItem.Name.Lowercase.EndsWith(".pdf") then
		      // PDFの場合はサムネイル表示（MBSプラグインが必要）
		      self.ShowFileIcon(fileItem)
		      self.StatusLabel.Text = "PDFファイル（プレビューはサーバー登録後に表示されます）"
		    else
		      // 画像ファイルの場合は直接表示
		      var previewPicture as Picture = Picture.Open(fileItem)
		      if previewPicture <> nil then
		        var canvasWidth as Integer = self.DropCanvas.Width
		        var canvasHeight as Integer = self.DropCanvas.Height
		        
		        var scaledPicture as Picture = self.ScalePictureToFit(previewPicture, canvasWidth, canvasHeight)
		        self.DropCanvas.Backdrop = scaledPicture
		        self.StatusLabel.Text = "ローカルプレビュー表示完了"
		      else
		        self.ShowFileIcon(fileItem)
		        self.StatusLabel.Text = "画像ファイルの読み込みに失敗しました"
		      end if
		    end if
		  catch error as RuntimeException
		    self.ShowFileIcon(fileItem)
		    self.StatusLabel.Text = "ファイルの読み込みエラー: " + error.Message
		  end try
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LoadPeriodList()
		  try
		    var apiClient as new APIClientClass
		    apiClient.BaseURL = App.GetAPIServerURL()
		    
		    var result as Dictionary = apiClient.GetPeriods()
		    if result.HasKey("success") and result.Value("success").BooleanValue then
		      if result.HasKey("periods") then
		        var periodsArray as Variant = result.Value("periods")
		        if periodsArray.IsArray then
		          var periodsVariantArray() as Variant = periodsArray
		          
		          self.DealPeriodPopupMenu.RemoveAllRows()
		          
		          for each periodVariant as Variant in periodsVariantArray
		            if periodVariant isa Dictionary then
		              var periodDict as Dictionary = Dictionary(periodVariant)
		              var name as String = periodDict.Value("name").StringValue
		              // 修正：AddRowでテキストのみ追加し、RowTagでValueを設定
		              self.DealPeriodPopupMenu.AddRow(name)
		              var lastIndex as Integer = self.DealPeriodPopupMenu.LastAddedRowIndex
		              self.DealPeriodPopupMenu.RowTagAt(lastIndex) = name
		            end if
		          next
		        end if
		      end if
		    end if
		    
		  catch error as RuntimeException
		    self.StatusLabel.Text = "期間一覧の取得に失敗しました: " + error.Message
		  end try
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LoadPreviewFromAPI(period As String)
		  try
		    // APIクライアント作成
		    var apiClient as new APIClientClass
		    apiClient.BaseURL = App.GetAPIServerURL()
		    
		    // まずプレビューリンクを取得
		    var linkResult as Dictionary = apiClient.GetDealPreview(period, self.DealNO, 400)
		    
		    if linkResult.HasKey("success") and linkResult.Value("success").BooleanValue then
		      if linkResult.HasKey("url") and linkResult.Value("url").StringValue <> "" then
		        // URLからプレビューデータを取得
		        var previewURL as String = linkResult.Value("url").StringValue
		        var previewResult as Dictionary = apiClient.GetPreviewDataFromURL(previewURL)
		        
		        if previewResult.HasKey("success") and previewResult.Value("success").BooleanValue then
		          if previewResult.HasKey("binaryData") and previewResult.Value("binaryData").StringValue <> "" then
		            // バイナリデータからプレビュー表示
		            self.DisplayPreviewFromBinary(previewResult.Value("binaryData").StringValue)
		            return
		          end if
		        end if
		      end if
		    end if
		    
		    // 通常プレビューが失敗した場合、アイコンサイズで再試行
		    var iconResult as Dictionary = apiClient.GetDealPreviewIcon(period, self.DealNO, 128, 128)
		    
		    if iconResult.HasKey("success") and iconResult.Value("success").BooleanValue then
		      if iconResult.HasKey("url") and iconResult.Value("url").StringValue <> "" then
		        // アイコンサイズのURLからプレビューデータを取得
		        var iconURL as String = iconResult.Value("url").StringValue
		        var iconDataResult as Dictionary = apiClient.GetPreviewDataFromURL(iconURL)
		        
		        if iconDataResult.HasKey("success") and iconDataResult.Value("success").BooleanValue then
		          if iconDataResult.HasKey("binaryData") and iconDataResult.Value("binaryData").StringValue <> "" then
		            // バイナリデータからアイコンサイズプレビュー表示
		            self.DisplayPreviewFromBinary(iconDataResult.Value("binaryData").StringValue)
		            self.StatusLabel.Text = "ファイルアイコンを表示"
		            return
		          end if
		        end if
		      end if
		    end if
		    
		    // 完全に失敗した場合のフォールバック
		    if self.DropFilePathLabel.Text <> "" then
		      var filePath as String = self.DropFilePathLabel.Text
		      self.ShowFileIconFromPath(filePath)
		      self.StatusLabel.Text = "プレビューは利用できません"
		    end if
		    
		  catch error as RuntimeException
		    self.StatusLabel.Text = "プレビュー取得エラー: " + error.Message
		  end try
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function PerformUpdate(force As Boolean) As Dictionary
		  var originalPeriod as String = self.DealPeriodWin.Title.ReplaceAll("取引期間：", "").ReplaceAll("の管理", "")
		  
		  // APIクライアント作成
		  var apiClient as new APIClientClass
		  apiClient.BaseURL = App.GetAPIServerURL()
		  
		  // 入力データの整理
		  var type as String = self.DealTypePopupMenu.SelectedRowValue
		  var date as String = self.DealingDate.Text
		  var name as String = self.DealingNameField.Text.Trim
		  var partner as String = self.DealingPartnerField.Text.Trim
		  var price as String = self.DealingPriceField.Text.ReplaceAll(",", "").Trim
		  var remark as String = self.DealingRemarkField.Text.Trim
		  
		  // 取引データの辞書作成
		  var dealData as new Dictionary
		  dealData.Value("NO") = self.DealNO
		  dealData.Value("DealType") = type
		  dealData.Value("DealDate") = date
		  dealData.Value("DealName") = name
		  dealData.Value("DealPartner") = partner
		  dealData.Value("DealPrice") = price.ToInteger
		  dealData.Value("DealRemark") = remark
		  dealData.Value("RecStatus") = "UPDATE"
		  
		  // ファイルが変更されているかチェック
		  var hasNewFile as Boolean = false
		  var fileData as MemoryBlock
		  var fileName as String = ""
		  
		  if self.DropFilePathLabel.Text <> "" then
		    var dropF as new FolderItem(self.DropFilePathLabel.Text, FolderItem.PathModes.Native)
		    if dropF.Exists then
		      hasNewFile = true
		      fileName = dropF.Name
		      
		      try
		        var binaryFile as BinaryStream = BinaryStream.Open(dropF)
		        fileData = binaryFile.Read(binaryFile.Length)
		        binaryFile.Close()
		      catch error as IOException
		        var errorResult as new Dictionary
		        errorResult.Value("success") = false
		        errorResult.Value("message") = "ファイル読み込みエラー: " + error.Message
		        return errorResult
		      end try
		    end if
		  end if
		  
		  // API経由で更新（force対応）
		  var result as Dictionary
		  if hasNewFile then
		    result = apiClient.UpdateDealWithFile(originalPeriod, dealData, fileData, fileName, force)
		  else
		    result = apiClient.UpdateDeal(originalPeriod, dealData)
		  end if
		  
		  // 重複チェック処理
		  if not result.HasKey("success") or not result.Value("success").BooleanValue then
		    if result.HasKey("error") and result.Value("error").StringValue = "duplicate_file" then
		      // 重複ファイル検出時の処理
		      if not force then  // 初回の場合のみダイアログ表示
		        self.ShowUpdateDuplicateDialog(result)
		        return result  // ダイアログ処理に委ねる
		      end if
		    end if
		  end if
		  
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ReCreateDealTypePopupMenu(SelectedName as string)
		  var docType as XmlNode = App.XmlPref.GetNode("DocType")
		  self.DealTypePopupMenu.RemoveAllRows
		  var selectedIndex as Integer
		  var i as integer = 0
		  var aType as XmlNode = docType.FirstChild
		  while aType <> nil
		    var type as string = aType.FirstChild.Value
		    if type = SelectedName then
		      selectedIndex = i
		    end if
		    self.DealTypePopupMenu.AddRow type
		    aType = aType.NextSibling
		    i = i + 1
		  Wend
		  self.DealTypePopupMenu.SelectedRowIndex = selectedIndex
		  return
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RemoveThisNOfrom(thisNO as string, fromNOs as string) As String
		  var items() as string = fromNOs.Split(",")
		  var ret as string = ""
		  for each aItem as string in items
		    if thisNO <> aItem then
		      if ret = "" then
		        ret = aItem
		      else
		        ret = ret + "," + aItem
		      end if
		    end if
		  next
		  return ret
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ScalePictureToFit(sourcePicture As Picture, maxWidth As Integer, maxHeight As Integer) As Picture
		  if sourcePicture = nil then
		    return nil
		  end if
		  
		  var sourceWidth as Integer = sourcePicture.Width
		  var sourceHeight as Integer = sourcePicture.Height
		  
		  // アスペクト比を保持しながらスケーリング
		  var scaleX as Double = maxWidth / sourceWidth
		  var scaleY as Double = maxHeight / sourceHeight
		  var scale as Double = Min(scaleX, scaleY)
		  
		  var newWidth as Integer = sourceWidth * scale
		  var newHeight as Integer = sourceHeight * scale
		  
		  // 中央配置用のキャンバスを作成
		  var centeredPicture as Picture = New Picture(maxWidth, maxHeight)
		  var g as Graphics = centeredPicture.Graphics
		  
		  // 背景を透明に設定
		  g.ClearRectangle(0, 0, maxWidth, maxHeight)
		  
		  // 中央配置の座標を計算
		  var x as Integer = (maxWidth - newWidth) / 2
		  var y as Integer = (maxHeight - newHeight) / 2
		  
		  // 中央に画像を描画
		  g.DrawPicture(sourcePicture, x, y, newWidth, newHeight, 0, 0, sourceWidth, sourceHeight)
		  
		  return centeredPicture
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ShowFileIcon(fileItem As FolderItem)
		  // 既存のアイコン表示ロジック
		  dim w, h as integer
		  w = self.DropCanvas.Width
		  h = self.DropCanvas.Height
		  if w < h then
		    self.DropCanvas.Backdrop = fileItem.IconMBS(w)
		  else
		    self.DropCanvas.Backdrop = fileItem.IconMBS(h)
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ShowFileIconFromPath(filePath As String)
		  try
		    // ファイル拡張子からアイコンを決定
		    var extension as String = ""
		    
		    // ファイル拡張子を取得（Split関数を使用）
		    if InStr(filePath, ".") > 0 then
		      var parts() as String = Split(filePath, ".")
		      if parts.Ubound >= 0 then
		        extension = parts(parts.Ubound).Lowercase
		      end if
		    end if
		    
		    var iconPicture as Picture
		    
		    // 拡張子に基づいてアイコンを選択
		    Select Case extension
		    Case "pdf"
		      // PDFアイコンを設定（システムから取得または固定画像）
		      iconPicture = self.GetSystemFileIcon("sample.pdf")
		    Case "jpg", "jpeg", "png", "gif", "bmp"
		      // 画像アイコンを設定
		      iconPicture = self.GetSystemFileIcon("sample.jpg")
		    Else
		      // 汎用ファイルアイコン
		      iconPicture = self.GetSystemFileIcon("sample.txt")
		    End Select
		    
		    if iconPicture <> nil then
		      self.DropCanvas.Backdrop = iconPicture
		    end if
		    
		  catch error as RuntimeException
		    // エラー時はDropCanvasを空にする
		    self.DropCanvas.Backdrop = nil
		  end try
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ShowUpdateDuplicateDialog(result As Dictionary)
		  var message as String = "【重複ファイル検出】" + EndOfLine + EndOfLine
		  
		  if result.HasKey("duplicates") then
		    var duplicates as Variant = result.Value("duplicates")
		    if duplicates.IsArray then
		      var duplicateArray() as Variant = duplicates
		      message = message + "既存の取引:" + EndOfLine
		      for each duplicate as Variant in duplicateArray
		        if duplicate isa Dictionary then
		          var dupDict as Dictionary = Dictionary(duplicate)
		          var dupInfo as String = "• " + dupDict.Value("NO").StringValue + " - "
		          dupInfo = dupInfo + dupDict.Value("DealDate").StringValue + " - "
		          dupInfo = dupInfo + dupDict.Value("DealPartner").StringValue + " - "
		          dupInfo = dupInfo + dupDict.Value("DealPrice").StringValue + "円"
		          message = message + dupInfo + EndOfLine
		        end if
		      next
		    end if
		  end if
		  
		  // 情報表示
		  MessageBox(message)
		  
		  // 確認ダイアログ
		  var confirmMessage as String = "それでも更新しますか？"
		  var dialog as new MessageDialog
		  dialog.Message = confirmMessage
		  dialog.ActionButton.Caption = "強制更新"
		  dialog.CancelButton.Visible = true
		  dialog.CancelButton.Caption = "キャンセル"
		  
		  var dialogResult as MessageDialogButton = dialog.ShowModal(self)
		  
		  if dialogResult = dialog.ActionButton then
		    // 強制更新
		    self.StatusLabel.Text = "強制更新中..."
		    self.StatusLabel.Refresh()
		    var forceResult as Dictionary = self.PerformUpdate(true)
		    
		    if forceResult.HasKey("success") and forceResult.Value("success").BooleanValue then
		      // 成功時の警告表示
		      if forceResult.HasKey("warning") and forceResult.Value("warning").StringValue = "duplicate_file" then
		        var warningMsg as String = "更新完了（重複ファイル）"
		        MessageBox(warningMsg)
		      end if
		      
		      self.StatusLabel.Text = "更新しました"
		      
		      // 親ウィンドウの一覧を更新
		      if self.DealPeriodWin <> nil then
		        self.DealPeriodWin.SearchAndGetResults("")
		      end if
		      
		      self.Close()
		    else
		      if forceResult.HasKey("message") then
		        self.StatusLabel.Text = "強制更新エラー: " + forceResult.Value("message").StringValue
		      else
		        self.StatusLabel.Text = "強制更新に失敗しました"
		      end if
		    end if
		  else
		    // キャンセル
		    self.StatusLabel.Text = "更新がキャンセルされました"
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub UpdateDeal()
		  try
		    var originalPeriod as String = self.DealPeriodWin.Title.ReplaceAll("取引期間：", "").ReplaceAll("の管理", "")
		    var newPeriod as String
		    if self.DealPeriodPopupMenu.SelectedRowIndex >= 0 then
		      newPeriod = self.DealPeriodPopupMenu.RowTagAt(self.DealPeriodPopupMenu.SelectedRowIndex)
		    else
		      newPeriod = originalPeriod
		    end if
		    
		    // APIクライアント作成
		    var apiClient as new APIClientClass
		    apiClient.BaseURL = App.GetAPIServerURL()
		    
		    // 入力データの整理
		    var type as String = self.DealTypePopupMenu.SelectedRowValue
		    var date as String = self.DealingDate.Text
		    var name as String = self.DealingNameField.Text.Trim
		    var partner as String = self.DealingPartnerField.Text.Trim
		    var price as String = self.DealingPriceField.Text.ReplaceAll(",", "").Trim
		    var remark as String = self.DealingRemarkField.Text.Trim
		    
		    // 価格の数値チェック
		    if not IsNumeric(price) then
		      self.StatusLabel.Text = "金額は数値で入力してください"
		      return
		    end if
		    
		    var result as Dictionary
		    
		    if originalPeriod <> newPeriod then
		      // 期間変更の場合（既存処理）
		      result = apiClient.MoveDealToOtherPeriod(self.DealNO, originalPeriod, newPeriod)
		      
		      if result.HasKey("success") and result.Value("success").BooleanValue then
		        // 期間移動成功後、新しい取引番号で更新
		        var newDealNo as String = result.Value("newNo").StringValue
		        
		        // 取引データの辞書作成
		        var dealData as new Dictionary
		        dealData.Value("NO") = newDealNo
		        dealData.Value("DealType") = type
		        dealData.Value("DealDate") = date
		        dealData.Value("DealName") = name
		        dealData.Value("DealPartner") = partner
		        dealData.Value("DealPrice") = price.ToInteger
		        dealData.Value("DealRemark") = remark
		        dealData.Value("RecStatus") = "UPDATE"
		        
		        // ファイル処理（既存コード）
		        var hasNewFile as Boolean = false
		        var fileData as MemoryBlock
		        var fileName as String = ""
		        
		        if self.DropFilePathLabel.Text <> "" then
		          var dropF as new FolderItem(self.DropFilePathLabel.Text, FolderItem.PathModes.Native)
		          if dropF.Exists then
		            hasNewFile = true
		            fileName = dropF.Name
		            
		            try
		              var binaryFile as BinaryStream = BinaryStream.Open(dropF)
		              fileData = binaryFile.Read(binaryFile.Length)
		              binaryFile.Close()
		            catch error as IOException
		              self.StatusLabel.Text = "ファイル読み込みエラー: " + error.Message
		              return
		            end try
		          end if
		        end if
		        
		        // 新期間で更新
		        if hasNewFile then
		          result = apiClient.UpdateDealWithFile(newPeriod, dealData, fileData, fileName)
		        else
		          result = apiClient.UpdateDeal(newPeriod, dealData)
		        end if
		        
		        // 結果処理（期間変更）
		        if result.HasKey("success") and result.Value("success").BooleanValue then
		          self.StatusLabel.Text = "期間移動と更新が完了しました"
		        else
		          self.StatusLabel.Text = "期間移動後の更新に失敗しました"
		        end if
		      else
		        if result.HasKey("message") then
		          self.StatusLabel.Text = "期間移動エラー: " + result.Value("message").StringValue
		        else
		          self.StatusLabel.Text = "期間移動に失敗しました"
		        end if
		        return
		      end if
		      
		    else
		      // 同一期間内での更新（重複チェック対応）
		      result = self.PerformUpdate(false)  // 通常更新を試行
		    end if
		    
		    // 最終結果処理
		    if result.HasKey("success") and result.Value("success").BooleanValue then
		      if originalPeriod <> newPeriod then
		        self.StatusLabel.Text = "期間移動と更新が完了しました"
		      else
		        self.StatusLabel.Text = "更新しました"
		      end if
		      
		      // 親ウィンドウの一覧を更新
		      if self.DealPeriodWin <> nil then
		        self.DealPeriodWin.SearchAndGetResults("")
		      end if
		      
		      // ウィンドウを閉じる
		      self.Close()
		    else
		      if result.HasKey("message") then
		        self.StatusLabel.Text = "更新エラー: " + result.Value("message").StringValue
		      else
		        self.StatusLabel.Text = "更新に失敗しました"
		      end if
		    end if
		    
		  catch error as RuntimeException
		    self.StatusLabel.Text = "エラー: " + error.Message
		  end try
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		DealNO As string
	#tag EndProperty

	#tag Property, Flags = &h0
		DealPeriodWin As DealPeriodWindow
	#tag EndProperty

	#tag Property, Flags = &h0
		LastRecord As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		RegDate As string
	#tag EndProperty

	#tag Property, Flags = &h0
		WarnHashCheckDone As Boolean
	#tag EndProperty


#tag EndWindowCode

#tag Events DropCanvas
	#tag Event
		Sub DropObject(obj As DragItem, action As DragItem.Types)
		  self.StatusLabel.Text = ""
		  if obj.FolderItem = nil then
		    return
		  end if
		  if obj.FolderItem.IsAlias then
		    return
		  end if
		  
		  // MainWindowと同じシンプルなアイコン表示
		  dim w, h as integer
		  w = self.DropCanvas.Width
		  h = self.DropCanvas.Height
		  if w < h then
		    self.DropCanvas.Backdrop = obj.FolderItem.IconMBS(w)
		  else
		    self.DropCanvas.Backdrop = obj.FolderItem.IconMBS(h)
		  end if
		  
		  self.DropFilePathLabel.Text = obj.FolderItem.NativePath
		  self.DropFilePathLabel.Tooltip = obj.FolderItem.NativePath
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub DoublePressed(x As Integer, y As Integer)
		  if self.DropFilePathLabel.Text = "" then
		    return
		  end if
		  
		  var dropF as new Folderitem(self.DropFilePathLabel.Text, FolderItem.PathModes.Native)
		  dropF.Open(true)
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(x As Integer, y As Integer) As Boolean
		  me.SetFocus()
		End Function
	#tag EndEvent
	#tag Event
		Sub FocusReceived()
		  self.DropRectangle.BorderColor = Color.Blue
		  self.DropRectangle.BorderThickness = 3
		End Sub
	#tag EndEvent
	#tag Event
		Sub FocusLost()
		  self.DropRectangle.BorderColor = Color.Black
		  self.DropRectangle.BorderThickness = 1
		End Sub
	#tag EndEvent
	#tag Event
		Function ConstructContextualMenu(base As DesktopMenuItem, x As Integer, y As Integer) As Boolean
		  base.AddMenu(new DesktopMenuItem("ダウンロード"))
		End Function
	#tag EndEvent
	#tag Event
		Function ContextualMenuItemSelected(selectedItem As DesktopMenuItem) As Boolean
		  if selectedItem <> nil then
		    Select Case selectedItem.Text
		    Case "ダウンロード"
		      self.DownloadCurrentFile()
		    End Select
		  end if
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events DealingNameField
	#tag Event
		Sub FocusReceived()
		  self.StatusLabel.Text = ""
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events DealingPartnerField
	#tag Event
		Sub FocusReceived()
		  self.StatusLabel.Text = ""
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events DealingPriceField
	#tag Event
		Sub FocusReceived()
		  self.StatusLabel.Text = ""
		End Sub
	#tag EndEvent
	#tag Event
		Function KeyDown(key As String) As Boolean
		  if (key >= "0" and key <= "9") or _
		    key = "," or key = chr(8) or key = chr(9) or _
		    key = chr(&h1C) or key = chr(&h1D) then
		    Return false
		  end if
		  return true
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events DealingRemarkField
	#tag Event
		Sub FocusReceived()
		  self.StatusLabel.Text = ""
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events DealTypePopupMenu
	#tag Event
		Sub SelectionChanged(item As DesktopMenuItem)
		  self.StatusLabel.Text = ""
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events UpdateButton
	#tag Event
		Sub Pressed()
		  // 入力値検証
		  if self.DealingPartnerField.Text.Trim = "" then
		    self.StatusLabel.Text = "取引先を入力してください"
		    return
		  end if
		  
		  if self.DealingPriceField.Text.Trim = "" then
		    self.StatusLabel.Text = "金額を入力してください"
		    return
		  end if
		  
		  if self.DealingDate.Text.Trim = "" then
		    self.StatusLabel.Text = "取引日を入力してください"
		    return
		  end if
		  
		  // 更新処理実行
		  self.UpdateDeal()
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
#tag Events DealPartnerButton
	#tag Event
		Sub Pressed()
		  var screenHeight as integer = DesktopDisplay.DisplayAt(0).Height
		  
		  var win as new PopupInMDBWindow("取引先の入力")
		  //win.UpdateWin = self
		  var screenWinLeft as integer = self.Left+self.DealingPartnerField.Left
		  var screenWinTop as integer = 30+self.Top+self.DealingPartnerField.Top+self.DealingPartnerField.Height //30 is windows title
		  if screenWinTop+win.Height <= screenHeight then
		    win.Top = screenWinTop
		  else
		    win.Top = screenWinTop-win.Height-self.DealingPartnerField.Height-30
		  end if
		  win.Left = screenWinLeft
		  win.InputText.Text = self.DealingPartnerField.Text
		  win.ShowModal
		  self.DealingPartnerField.Text = win.InputTextValue
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events DealingDateTimePickerButton
	#tag Event
		Sub Pressed()
		  var screenHeight as integer = DesktopDisplay.DisplayAt(0).Height
		  
		  var win as new DealDateTimePickerWindow
		  var screenWinLeft as integer = self.Left+self.DealingDate.Left
		  var screenWinTop as integer = 30+self.Top+self.DealingDate.Top+self.DealingDate.Height //30 is windows title
		  if screenWinTop+win.Height <= screenHeight then
		    win.Top = screenWinTop
		  else
		    win.Top = screenWinTop-win.Height-self.DealingDate.Height-30
		  end if
		  win.Left = screenWinLeft
		  
		  if self.DealingDate.Text <> "" then
		    win.DealDateTimePicker.SelectedDate = DateTime.FromString(self.DealingDate.Text.ReplaceAll("-", "/"), New Locale("ja-JP"), TimeZone.Current)
		  end if
		  
		  win.ShowModal
		  
		  if win.Canceled <> True and win.SelectedDate <> nil then
		    self.DealingDate.Text = win.SelectedDate.SQLDate
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
		Name="DealNO"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="string"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="RegDate"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="string"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LastRecord"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="WarnHashCheckDone"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior
