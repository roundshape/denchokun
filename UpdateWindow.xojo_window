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
   Begin DesktopPopupMenu DealPeriod
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
   Begin DesktopDateTimePicker DealingDateTimePicker
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
      Left            =   86
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      PanelIndex      =   0
      Scope           =   0
      TabIndex        =   21
      TabPanelIndex   =   0
      TodayButtonCaption=   ""
      Tooltip         =   ""
      Top             =   97
      Transparent     =   False
      Visible         =   True
      Width           =   15
      _mIndex         =   0
      _mInitialParent =   ""
      _mName          =   ""
      _mPanelIndex    =   0
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
   Begin DesktopLabel BaseFolderPath
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   22
      Index           =   -2147483648
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   27
      TabPanelIndex   =   0
      TabStop         =   False
      Text            =   "Untitled"
      TextAlignment   =   0
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   41
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   438
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
   Begin DesktopBevelButton OCRButton
      Active          =   False
      AllowAutoDeactivate=   True
      AllowFocus      =   False
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
      Height          =   33
      Icon            =   673654783
      IconAlignment   =   0
      IconDeltaX      =   0
      IconDeltaY      =   0
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MenuStyle       =   0
      PanelIndex      =   0
      Scope           =   0
      TabIndex        =   30
      TabPanelIndex   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   2
      Transparent     =   False
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   37
      _mIndex         =   0
      _mInitialParent =   ""
      _mName          =   ""
      _mPanelIndex    =   0
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
End
#tag EndDesktopWindow

#tag WindowCode
	#tag Event
		Sub Activated()
		  if not WarnHashCheckDone then
		    var ret as Boolean = self.CheckHashValid()
		    if not ret then //hash is invalid
		      self.DropRectangle.FillColor = Color.Red //&cff0000
		      MessageBox "登録データのハッシュ値が一致しません"
		    end if
		    WarnHashCheckDone = true
		  end if
		End Sub
	#tag EndEvent

	#tag Event
		Sub Opening()
		  self.DealingDateTimePicker.GraphicalDisplay = true
		  self.DealingDateTimePicker.DisplayMode = DesktopDateTimePicker.DisplayModes.DateOnly
		  self.DealingDate.Underline = true
		  
		  //self.NO.Underline = true
		  self.DropFilePathLabel.MultiLine = True
		  self.DropCanvas.AcceptFileDrop(AllFileTypes.All)
		  self.DropCanvas.AllowFocus = true
		  self.DropCanvas.AllowFocusRing = true
		  
		  self.WarnHashCheckDone = false
		  
		End Sub
	#tag EndEvent


	#tag MenuHandler
		Function CloseWindow() As Boolean Handles CloseWindow.Action
		  self.Close
		  Return True
		  
		End Function
	#tag EndMenuHandler


	#tag Method, Flags = &h0
		Function CheckHashValid() As Boolean
		  var period as string = self.DealPeriodWin.DealPeriod
		  
		  var apiClient as APICLientClass = nil
		  
		  apiClient = App.ConnectAPI(period)
		  if apiClient = nil then
		    self.StatusLabel.Text = App.FunctionError
		    Return true
		  end if
		  
		  var sql as string = "select FilePath, Hash from Deals where NO='"+self.DealNO+"'"
		  var row as RowSet
		  try
		    row = apiClient.SelectSQL(period, sql)
		  Catch e as SQLiteException
		    apiClient.Close
		    self.StatusLabel.Text = e.Message
		    Return True
		  end try
		  var fileName as string = DecodeSqlString(row.Column("FilePath").StringValue)
		  var file as new FolderItem(self.DealPeriodWin.BaseFolderPath+period+"\"+fileName)
		  if file = nil then
		    apiClient.Close
		    self.StatusLabel.Text = self.DealPeriodWin.BaseFolderPath+period+"\"+fileName+" is nil"
		    return True
		  end if
		  if not file.Exists then
		    apiClient.Close
		    self.StatusLabel.Text = self.DealPeriodWin.BaseFolderPath+period+"\"+fileName+" not exists"
		    return True
		  end if
		  
		  var hash as string = row.Column("Hash").StringValue
		  if apiClient <> nil then
		    apiClient.Close
		  end if
		  
		  
		  
		  hash = hash.Middle(7) //Since "SHA256="
		  var fileHash as string
		  if file.IsFolder then
		    fileHash = App.GetSHA256inStoreFolder(file)
		  else
		    fileHash = GetSHA256(file)
		  end if
		  fileHash = fileHash.Middle(7) //Since "SHA256="
		  if hash <> fileHash then
		    Return False
		  end if
		  
		  
		  Return True
		  
		End Function
	#tag EndMethod

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
		Function GetContentItemsUpdated() As String
		  var ret as string = ""
		  var NO as string = self.DealNO
		  var oldDealPeriod as string = self.DealPeriodWin.DealPeriod
		  var oldDealDate as string = self.DealPeriodWin.RecordList.CellTextAt(self.DealPeriodWin.RecordList.SelectedRowIndex,0)
		  var oldDealPartner as string = self.DealPeriodWin.RecordList.CellTextAt(self.DealPeriodWin.RecordList.SelectedRowIndex,1)
		  var oldDealPrice as string = self.DealPeriodWin.RecordList.CellTextAt(self.DealPeriodWin.RecordList.SelectedRowIndex,2)
		  var oldDealType as string = self.DealPeriodWin.RecordList.CellTextAt(self.DealPeriodWin.RecordList.SelectedRowIndex,3)
		  var oldDealName as string = self.DealPeriodWin.RecordList.CellTextAt(self.DealPeriodWin.RecordList.SelectedRowIndex,4)
		  var sql as string = "select DealRemark, FilePath from Deals where NO = '"+NO+"'"
		  
		  var apiClient as APICLientClass = App.ConnectAPI(oldDealPeriod)
		  if apiClient = nil then
		    MessageBox "failed to connect DB Error"
		    return "NG"
		  end if
		  
		  var rowSet as RowSet
		  Try
		    rowSet = apiClient.SelectSQL(oldDealPeriod, sql)
		  Catch error As DatabaseException
		    apiClient.Close
		    MessageBox "select DealRemark Error: " + error.Message
		    return "NG"
		  End Try
		  if rowSet.RowCount = 0 then
		    apiClient.Close
		    MessageBox "select DealRemark Error: No Such Deal NO=" +NO
		    return "NG"
		  end if
		  var oldDealRemark as string = DecodeSqlString(rowSet.Column("DealRemark").StringValue)
		  var oldFilePath as string = self.BaseFolderPath.Text+oldDealPeriod+"\"+_
		  DecodeSqlString(rowSet.Column("FilePath").StringValue)
		  //var oldHash as string = rowSet.Column("Hash").StringVal)ue
		  apiClient.Close
		  
		  if self.DealingDate.Text <> oldDealDate then
		    ret = "DealDate"
		  end if
		  if self.DealingNameField.Text <> oldDealName then
		    if ret = "" then
		      ret = "DealName"
		    else
		      ret = ret+",DealName"
		    end if
		  end if
		  if self.DealingPartnerField.Text <> oldDealPartner then
		    if ret = "" then
		      ret = "DealPartner"
		    else
		      ret = ret+",DealPartner"
		    end if
		  end if
		  if self.DealingPriceField.Text <> oldDealPrice then
		    if ret = "" then
		      ret = "DealPrice"
		    else
		      ret = ret+",DealPrice"
		    end if
		  end if
		  if self.DealTypePopupMenu.SelectedRowValue <> oldDealType then
		    if ret = "" then
		      ret = "DealType"
		    else
		      ret = ret+",DealType"
		    end if
		  end if
		  if self.DropFilePathLabel.Text <> oldFilePath then
		    if ret = "" then
		      ret = "DropFilePath"
		    else
		      ret = ret+",DropFilePath"
		    end if
		  end if
		  if self.DealPeriod.SelectedRowValue <> self.DealPeriodWin.DealPeriod then
		    if ret = "" then
		      ret = "DealPeriod"
		    else
		      ret = ret+",DealPeriod"
		    end if
		  end if
		  
		  //if ret = "" then
		  //ret = oldHash
		  //else
		  //ret = ret + ","+oldHash
		  //end if
		  
		  return ret
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsContentUpdated() As Boolean
		  var NO as string = self.DealNO
		  var oldDealPeriod as string = self.DealPeriodWin.DealPeriod
		  var oldDealDate as string = self.DealPeriodWin.RecordList.CellTextAt(self.DealPeriodWin.RecordList.SelectedRowIndex,0)
		  var oldDealPartner as string = self.DealPeriodWin.RecordList.CellTextAt(self.DealPeriodWin.RecordList.SelectedRowIndex,1)
		  var oldDealPrice as string = self.DealPeriodWin.RecordList.CellTextAt(self.DealPeriodWin.RecordList.SelectedRowIndex,2)
		  var oldDealType as string = self.DealPeriodWin.RecordList.CellTextAt(self.DealPeriodWin.RecordList.SelectedRowIndex,3)
		  var oldDealName as string = self.DealPeriodWin.RecordList.CellTextAt(self.DealPeriodWin.RecordList.SelectedRowIndex,4)
		  var sql as string = "select DealRemark, FilePath from Deals where NO = '"+NO+"'"
		  
		  var apiClient as APICLientClass
		  apiClient = App.ConnectAPI(oldDealPeriod)
		  if apiClient = nil then
		    MessageBox App.FunctionError
		    return false
		  end if
		  
		  var rowSet as RowSet
		  Try
		    rowSet = apiClient.SelectSQL(oldDealPeriod, sql)
		  Catch error As DatabaseException
		    apiClient.Close
		    MessageBox "select DealRemark Error: " + error.Message
		    return false
		  End Try
		  if rowSet.RowCount = 0 then
		    apiClient.Close
		    MessageBox "select DealRemark Error: No Such Deal NO=" +NO
		    return false
		  end if
		  var oldDealRemark as string = DecodeSqlString(rowSet.Column("DealRemark").StringValue)
		  var oldFilePath as string = self.BaseFolderPath.Text+oldDealPeriod+"\"+_
		  DecodeSqlString(rowSet.Column("FilePath").StringValue)
		  apiClient.Close
		  
		  if self.DealingDate.Text <> oldDealDate then
		    return true
		  end if
		  if self.DealingNameField.Text <> oldDealName then
		    return true
		  end if
		  if self.DealingPartnerField.Text <> oldDealPartner then
		    return true
		  end if
		  if self.DealingPriceField.Text <> oldDealPrice then
		    return true
		  end if
		  if self.DealTypePopupMenu.SelectedRowValue <> oldDealType then
		    return true
		  end if
		  if self.DropFilePathLabel.Text <> oldFilePath then
		    return true
		  end if
		  if self.DealPeriod.SelectedRowValue <> self.DealPeriodWin.DealPeriod then
		    return true
		  end if
		  return false
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ReCreateDealPeriodPopupMenu(baseF as FolderItem, selectedPeriod as string)
		  //var base as XmlNode = App.XmlPref.GetNode("BaseFolder")
		  //var workingPeriod as string =base.GetAttribute("workingPeriod")
		  
		  var folderNames() as string
		  if baseF = nil or not baseF.Exists or not baseF.IsFolder then
		    return
		  end if
		  For Each aFolder As FolderItem In baseF.Children(false)
		    if not aFolder.IsFolder or aFolder.IsAlias or not aFolder.Visible or aFolder.name.Left(1) = "." then
		      Continue
		    End if
		    if not aFolder.IsWriteable or aFolder.Child("Denchokun.ReadOnly").Exists then
		      Continue
		    End if
		    folderNames.Add aFolder.Name
		  next
		  folderNames.Sort
		  
		  self.DealPeriod.RemoveAllRows
		  for each aName as string in folderNames
		    self.DealPeriod.AddRow aName
		  next
		  
		  self.DealPeriod.SelectRowWithValue(selectedPeriod)
		  return
		  
		End Sub
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
		  //check object is in BaseFolder
		  if left(obj.FolderItem.NativePath, self.BaseFolderPath.Text.Length) = self.BaseFolderPath.Text then
		    return
		  end if
		  
		  
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
		Function KeyDown(key As String) As Boolean
		  if key.Asc = 20 then // Ctrl+t
		    var ret as string = App.OCR.DoOCR(self.DropFilePathLabel.Text, self.RunProgressWheel, self.StatusLabel)
		    if ret <> "OK" then
		      self.StatusLabel.Text = ret
		    end if
		  end if
		End Function
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
#tag Events DealPeriod
	#tag Event
		Sub SelectionChanged(item As DesktopMenuItem)
		  var dbF as FolderItem = App.GetDatabaseFile(item.Text)
		  if not dbF.Exists then
		    //Since period folder created manually from windows
		    var ret as string = App.CreateDatabaseFile(item.Text)
		    if ret <> "OK" then
		      self.StatusLabel.Text = ret
		      return
		    end if
		  end if
		  
		  self.StatusLabel.Text = ""
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events DealingDateTimePicker
	#tag Event
		Sub DateChanged(value as DateTime)
		  self.DealingDate.Text = me.SelectedDate.SQLDate
		  
		  self.StatusLabel.Text = ""
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events UpdateButton
	#tag Event
		Sub Pressed()
		  
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
		  var screenWidth as integer = DesktopDisplay.DisplayAt(0).Width
		  var screenHeight as integer = DesktopDisplay.DisplayAt(0).Height
		  
		  var win as new PopupInMDBWindow("取引先の入力", nil, nil)
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
		  self.DealingPartnerField.Text = win.SelectedValue
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events OCRButton
	#tag Event
		Sub Pressed()
		  var ret as string = App.OCR.DoOCR(self.DropFilePathLabel.Text, self.RunProgressWheel, self.StatusLabel)
		  if ret <> "OK" then
		    self.StatusLabel.Text = ret
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
