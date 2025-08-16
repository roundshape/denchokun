#tag DesktopWindow
Begin DesktopWindow MainWindow
   Backdrop        =   0
   BackgroundColor =   &cFFFFFF
   Composite       =   False
   DefaultLocation =   2
   FullScreen      =   False
   HasBackgroundColor=   False
   HasCloseButton  =   True
   HasFullScreenButton=   False
   HasMaximizeButton=   False
   HasMinimizeButton=   True
   Height          =   436
   ImplicitInstance=   True
   MacProcID       =   0
   MaximumHeight   =   436
   MaximumWidth    =   32000
   MenuBar         =   1382203391
   MenuBarVisible  =   False
   MinimumHeight   =   436
   MinimumWidth    =   481
   Resizeable      =   True
   Title           =   "電帳君"
   Type            =   0
   Visible         =   True
   Width           =   481
   Begin DesktopRectangle DropRectangle
      AllowAutoDeactivate=   True
      BorderColor     =   &c000000
      BorderThickness =   2.0
      CornerSize      =   0.0
      Enabled         =   True
      FillColor       =   &cFFFFFF
      Height          =   184
      Index           =   -2147483648
      Left            =   17
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
         Left            =   18
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
         Begin DesktopLabel Label1
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
            Left            =   21
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
            Width           =   175
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
      Top             =   166
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
      Top             =   166
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
      Top             =   142
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
      Top             =   142
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
      Top             =   90
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
      Top             =   91
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
      Top             =   117
      Transparent     =   False
      Underline       =   False
      ValidationMask  =   ""
      Visible         =   True
      Width           =   188
   End
   Begin DesktopTextField DealingRemarkField
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
      Height          =   25
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
      Top             =   191
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
      Top             =   190
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
      Top             =   90
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
      Top             =   91
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   71
   End
   Begin DesktopLabel ServerURL
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
      LockRight       =   True
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   17
      TabPanelIndex   =   0
      TabStop         =   False
      Text            =   ""
      TextAlignment   =   1
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   38
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   293
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
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      SelectedRowIndex=   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   False
      Tooltip         =   ""
      Top             =   62
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   293
   End
   Begin DesktopLabel MainStatusLabel
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
      Top             =   416
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   460
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
      Top             =   90
      Transparent     =   False
      Visible         =   True
      Width           =   15
      _mIndex         =   0
      _mInitialParent =   ""
      _mName          =   ""
      _mPanelIndex    =   0
   End
   Begin DesktopButton RegisterButton
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "登録"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   60
      Index           =   -2147483648
      Italic          =   False
      Left            =   206
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
      Top             =   349
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   255
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
      Top             =   117
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
      Top             =   63
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
      Height          =   85
      Index           =   -2147483648
      Italic          =   False
      Left            =   206
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
      Top             =   227
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   253
   End
   Begin DesktopButton DisplayButton
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "期間表示"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   22
      Index           =   -2147483648
      Italic          =   False
      Left            =   381
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      MacButtonStyle  =   0
      Scope           =   0
      TabIndex        =   24
      TabPanelIndex   =   0
      TabStop         =   False
      Tooltip         =   ""
      Top             =   63
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin DesktopButton ResetButton
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "リセット"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   27
      Index           =   -2147483648
      Italic          =   False
      Left            =   206
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      MacButtonStyle  =   0
      Scope           =   0
      TabIndex        =   25
      TabPanelIndex   =   0
      TabStop         =   False
      Tooltip         =   ""
      Top             =   321
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   255
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
      Top             =   118
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   9
   End
   Begin DesktopButton ManageDealPeriodButton
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "管理"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   22
      Index           =   -2147483648
      Italic          =   False
      Left            =   381
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      MacButtonStyle  =   0
      Scope           =   0
      TabIndex        =   27
      TabPanelIndex   =   0
      TabStop         =   False
      Tooltip         =   ""
      Top             =   37
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   80
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
      InitialParent   =   ""
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
      Top             =   142
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   22
   End
   Begin DesktopProgressWheel RunProgressWheel
      Active          =   False
      AllowAutoDeactivate=   True
      AllowTabStop    =   True
      Enabled         =   True
      Height          =   16
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   2
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      PanelIndex      =   0
      Scope           =   0
      TabIndex        =   30
      TabPanelIndex   =   0
      Tooltip         =   ""
      Top             =   416
      Transparent     =   False
      Visible         =   False
      Width           =   16
      _mIndex         =   0
      _mInitialParent =   ""
      _mName          =   ""
      _mPanelIndex    =   0
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
      TabIndex        =   31
      TabPanelIndex   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   0
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
      TabIndex        =   32
      TabPanelIndex   =   0
      Tooltip         =   ""
      Top             =   32
      Transparent     =   False
      Visible         =   True
      Width           =   481
      _mIndex         =   0
      _mInitialParent =   ""
      _mName          =   ""
      _mPanelIndex    =   0
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
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   33
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "ホスト："
      TextAlignment   =   3
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   38
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
		  var node as XmlNode = App.XmlPref.GetNode("MainWindow")
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
		  
		  while(UBound(self.DealPeriodWins)>=0)
		    self.DealPeriodWins(0).Close //this makes closing event, then this window is removed
		  wend
		  
		  if self.AllPeriodsWin <> nil then
		    self.AllPeriodsWin.Close
		  end if
		  
		  if self.DealPartnersMasterWin <> nil then
		    self.DealPartnersMasterWin.Close
		  end if
		  
		  Quit
		End Sub
	#tag EndEvent

	#tag Event
		Sub Opening()
		  var node as XmlNode = App.XmlPref.GetNode("MainWindow")
		  var Left as integer = node.GetAttribute("Left").ToInteger
		  var Top as integer = node.GetAttribute("Top").ToInteger
		  var Width as integer = node.GetAttribute("Width").ToInteger
		  var Height as integer = node.GetAttribute("Height").ToInteger
		  if Left < 0 then
		    self.Left = App.XmlPref.DEFAULT_MAIN_LEFT
		  else
		    self.Left = Left
		  end if
		  if Top < 0 then
		    self.Left = App.XmlPref.DEFAULT_MAIN_TOP
		  else
		    self.Top = Top
		  end if
		  if Width < 0 then
		    self.Width = App.XmlPref.DEFAULT_MAIN_WIDTH
		  else
		    self.Width = Width
		  end if
		  if Height < 0 then
		    self.Height = App.XmlPref.DEFAULT_MAIN_HEIGHT
		  else
		    self.Height = Height
		  end if
		  
		  // APIサーバーURLを表示
		  var apiServerURL as String = App.GetAPIServerURL()
		  self.ServerURL.Text = apiServerURL
		  
		  // APIサーバーへの接続確認（オプション）
		  if apiServerURL = "" or apiServerURL = "http://localhost:8080" then
		    self.MainStatusLabel.Text = "APIサーバーを設定してください（設定メニューから）"
		  else
		    self.MainStatusLabel.Text = "サーバー: " + apiServerURL
		  end if
		  
		  self.ReCreateDealPeriodPopupMenu()
		  
		  self.ReCreateDealTypePopupMenu()
		  
		  self.DealingDateTimePicker.GraphicalDisplay = true
		  self.DealingDateTimePicker.DisplayMode = DesktopDateTimePicker.DisplayModes.DateOnly
		  self.DealingDate.Underline = true
		  
		  self.DropCanvas.AcceptFileDrop(AllFileTypes.All)
		  self.DropCanvas.AllowFocus = true
		  self.DropCanvas.AllowFocusRing = true
		  
		  self.LastRegData = nil
		End Sub
	#tag EndEvent


	#tag MenuHandler
		Function AboutItem() As Boolean Handles AboutItem.Action
		  var win as new AboutWindow
		  win.ShowModal
		  Return True
		  
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function AllPeriodsSearch() As Boolean Handles AllPeriodsSearch.Action
		  if self.AllPeriodsWin = nil then
		    self.AllPeriodsWin = new AllPeriodsWindow
		  end if
		  self.AllPeriodsWin.BaseFolderPath = self.ServerURL.Text
		  self.AllPeriodsWin.Show
		  Return True
		  
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function DealPartnersMasterItem() As Boolean Handles DealPartnersMasterItem.Action
		  self.DealPartnersMasterWin = new DealPartnersMasterWindow
		  self.DealPartnersMasterWin.ShowModal
		  Return True
		  
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function SetupItem() As Boolean Handles SetupItem.Action
		  SetupWindow.ShowModal
		  Return True
		  
		End Function
	#tag EndMenuHandler


	#tag Method, Flags = &h0
		Function CreateBaseFolderSelectFile(baseF as FolderItem) As string
		  Var output As TextOutputStream
		  Var file As FolderItem = baseF.child("Denchokun.select")
		  If file <> Nil Then
		    output = TextOutputStream.Create(file)
		    output.Close
		    return "OK"
		  End If
		  return "can't create Denchokun.select"
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetPeriodWindow(period as String) As DealPeriodWindow
		  for Each win as DealPeriodWindow in self.DealPeriodWins
		    if win.Title = period then
		      return win
		    end if
		  next
		  return nil
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ReCreateDealPeriodPopupMenu()
		  var base as XmlNode = App.XmlPref.GetNode("BaseFolder")
		  var workingPeriod as string = base.GetAttribute("workingPeriod")
		  
		  self.DealPeriodPopupMenu.RemoveAllRows
		  
		  // APIサーバーから期間一覧を取得
		  var periodNames() as String
		  var apiClient as new APIClientClass
		  apiClient.BaseURL = App.GetAPIServerURL()
		  
		  
		  var result as Dictionary = apiClient.GetPeriods()
		  if result.HasKey("success") and result.Value("success").BooleanValue then
		    if result.HasKey("periods") then
		      var periodsArray as Variant = result.Value("periods")
		      if periodsArray.IsArray then
		        var periodsVariantArray() as Variant = periodsArray
		        for each periodVariant as Variant in periodsVariantArray
		          // 新しいAPI仕様：オブジェクト形式の期間データのみ対応
		          if periodVariant isa Dictionary then
		            var periodDict as Dictionary = Dictionary(periodVariant)
		            if periodDict.HasKey("name") then
		              periodNames.Add(periodDict.Value("name").StringValue)
		            end if
		          end if
		        next
		      end if
		    end if
		  else
		    // エラー時（success=falseまたはresult=nil）
		    var errorMsg as String = "APIサーバーから期間取得に失敗しました"
		    if result <> nil and result.HasKey("message") then
		      errorMsg = errorMsg + EndOfLine + result.Value("message").StringValue
		    end if
		    MessageBox(errorMsg)
		  end if
		  
		  var i, workingPeriodIndex as integer
		  workingPeriodIndex = -1
		  i = 0
		  For Each aName As string In periodNames
		    self.DealPeriodPopupMenu.AddRow aName
		    if aName = workingPeriod then
		      workingPeriodIndex = i
		    end if
		    i = i + 1
		  Next
		  
		  if workingPeriodIndex < 0 then
		    if periodNames.Count = 0 then
		      self.MainStatusLabel.Text = "利用可能な期間がありません"
		      self.DealPeriodPopupMenu.SelectedRowIndex = -1
		    else
		      if self.MainStatusLabel.Text = "" then
		        self.MainStatusLabel.Text = "取引期間を選択してください"
		      end if
		      self.DealPeriodPopupMenu.SelectedRowIndex = 0
		    end if
		  else
		    if self.MainStatusLabel.Text = "" then
		      self.MainStatusLabel.Text = ""
		    end if
		    self.DealPeriodPopupMenu.SelectedRowIndex = workingPeriodIndex
		  end if
		  
		  return
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ReCreateDealTypePopupMenu()
		  var docType as XmlNode = App.XmlPref.GetNode("DocType")
		  self.DealTypePopupMenu.RemoveAllRows
		  var aType as XmlNode = docType.FirstChild
		  while aType <> nil
		    var type as string = aType.FirstChild.Value
		    self.DealTypePopupMenu.AddRow type
		    aType = aType.NextSibling
		  Wend
		  if self.DealTypePopupMenu.RowCount > 0 then
		    self.DealTypePopupMenu.SelectedRowIndex = 0
		  end if
		  return
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ReFreshPeriodWindow(period as string, selectRowWithNO as string = "")
		  for i as integer = 0 to UBound(self.DealPeriodWins)
		    var win as DealPeriodWindow = self.DealPeriodWins(i)
		    if win.Title = period then
		      win.SearchAndGetResults(selectRowWithNO)
		      win.SelectRecordListRow(selectRowWithNO)
		    end if
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetSearchDateOfPeriodWindow(period as string, dealDate as string)
		  for i as integer = 0 to UBound(self.DealPeriodWins)
		    var win as DealPeriodWindow = self.DealPeriodWins(i)
		    if win.Title = period then
		      win.FromDate.Text = dealDate
		      win.ToDate.Text = dealDate
		    end if
		  next
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		AllPeriodsWin As AllPeriodsWindow
	#tag EndProperty

	#tag Property, Flags = &h0
		DealPartnersMasterWin As DealPartnersMasterWindow
	#tag EndProperty

	#tag Property, Flags = &h0
		DealPeriodWins() As DealPeriodWindow
	#tag EndProperty

	#tag Property, Flags = &h0
		LastRegData As LastRegDataClass
	#tag EndProperty


#tag EndWindowCode

#tag Events DropCanvas
	#tag Event
		Sub DropObject(obj As DragItem, action As DragItem.Types)
		  if obj.FolderItem = nil then
		    return
		  end if
		  if obj.FolderItem.IsAlias then
		    return
		  end if
		  //Check drop object is in BaseFolder
		  if left(obj.FolderItem.NativePath, self.ServerURL.Text.Length) = self.ServerURL.Text then
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
		  
		  self.MainStatusLabel.Text = ""
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
		    var ret as string = App.OCR.DoOCR(self.DropFilePathLabel.Text, self.RunProgressWheel, self.MainStatusLabel)
		    if ret <> "OK" then
		      self.MainStatusLabel.Text = ret
		    end if
		  end if
		End Function
	#tag EndEvent
	#tag Event
		Sub FocusLost()
		  self.DropRectangle.BorderColor = Color.Black
		  self.DropRectangle.BorderThickness = 1
		End Sub
	#tag EndEvent
	#tag Event
		Sub FocusReceived()
		  self.DropRectangle.BorderColor = Color.Blue
		  self.DropRectangle.BorderThickness = 3
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(x As Integer, y As Integer) As Boolean
		  me.SetFocus()
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events DealingNameField
	#tag Event
		Sub FocusReceived()
		  self.MainStatusLabel.Text = ""
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events DealingPartnerField
	#tag Event
		Sub FocusReceived()
		  self.MainStatusLabel.Text = ""
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events DealingPriceField
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
	#tag Event
		Sub FocusReceived()
		  if not App.firstBoot and self.DealPeriodPopupMenu.SelectedRowIndex >=0 then
		    self.MainStatusLabel.Text = ""
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events DealingRemarkField
	#tag Event
		Sub FocusReceived()
		  self.MainStatusLabel.Text = ""
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events DealTypePopupMenu
	#tag Event
		Sub SelectionChanged(item As DesktopMenuItem)
		  if not App.firstBoot and self.DealPeriodPopupMenu.SelectedRowIndex >=0 then
		    self.MainStatusLabel.Text = ""
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ServerURL
	#tag Event
		Sub MouseEnter()
		  me.Tooltip = me.Text
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events DealPeriodPopupMenu
	#tag Event
		Sub SelectionChanged(item As DesktopMenuItem)
		  if me.SelectedRowIndex < 0 then
		    Return
		  end if
		  
		  var dbF as FolderItem = App.GetDatabaseFile(item.Text)
		  if not dbF.Exists then
		    //Since period folder created manually from windows
		    var ret as string = App.CreateDatabaseFile(item.Text)
		    if ret <> "OK" then
		      self.MainStatusLabel.Text = ret
		      return
		    end if
		  end if
		  
		  var base as XmlNode = App.XmlPref.GetNode("BaseFolder")
		  if base = nil then
		    self.MainStatusLabel.Text = "BaseFolder Node Access error"
		    return
		  end if
		  base.SetAttribute("workingPeriod", item.Text)
		  App.XmlPref.SavePreference()
		  
		  self.MainStatusLabel.Text = ""
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events DealingDateTimePicker
	#tag Event
		Sub DateChanged(value as DateTime)
		  self.DealingDate.Text = me.SelectedDate.SQLDate
		  
		  self.MainStatusLabel.Text = ""
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RegisterButton
	#tag Event
		Sub Pressed()
		  if self.DealingDate.Text = "" then
		    self.MainStatusLabel.Text = "取引日が設定されていません"
		    return
		  end if
		  if self.DealingPriceField.Text = "" then
		    self.MainStatusLabel.Text = "取引金額が設定されていません"
		    return
		  end if
		  //if self.DealingNameField.Text = "" then
		  //self.MainStatusLabel.Text = "取引名が設定されていません"
		  //return
		  //end if
		  if self.DealingPartnerField.Text = "" then
		    self.MainStatusLabel.Text = "取引先が設定されていません"
		    return
		  end if
		  
		  if self.DropFilePathLabel.Text = "" then
		    self.MainStatusLabel.Text = "電子ファイルが設定されていません"
		    return
		  end if
		  
		  var maxNameLength, maxPartnerLength, maxPriceLength, maxRemarkLength as integer
		  maxNameLength = App.XmlPref.GetNode("InputLimit").GetAttribute("namebytes").Val
		  maxPartnerLength = App.XmlPref.GetNode("InputLimit").GetAttribute("partnerbytes").Val
		  maxRemarkLength = App.XmlPref.GetNode("InputLimit").GetAttribute("remarkbytes").Val
		  if self.DealingNameField.Text.Bytes > maxNameLength then
		    self.MainStatusLabel.Text = "取引名の長さが規定を超えています"
		    return
		  end if
		  if self.DealingPartnerField.Text.Bytes > maxPartnerLength then
		    self.MainStatusLabel.Text = "取引先の長さが規定を超えています"
		    return
		  end if
		  if self.DealingRemarkField.Text.Bytes > maxRemarkLength then
		    self.MainStatusLabel.Text = "備考の長さが規定を超えています"
		    return
		  end if
		  
		  
		  var price as string = self.DealingPriceField.Text.ReplaceAll(",","")
		  price = price.ReplaceAll(App.kCRLF,"")
		  price = price.ReplaceAll(App.kCR,"")
		  price = price.ReplaceAll(App.kLF,"")
		  price = price.ReplaceAll(App.kTAB,"")
		  if not IsPriceNumber(price) then
		    self.MainStatusLabel.Text = "金額の入力記述が間違っています"
		    return
		  end if
		  maxPriceLength = App.XmlPref.GetNode("InputLimit").GetAttribute("pricebytes").Val
		  if price.Bytes > maxPriceLength then
		    self.MainStatusLabel.Text = "金額の長さが規定を超えています"
		    return
		  end if
		  
		  if self.DealPeriodPopupMenu.SelectedRowIndex < 0 then
		    self.MainStatusLabel.Text = "取引期間が選択されていません"
		    return
		  end if
		  
		  var baseNode as XmlNode = App.XmlPref.GetNode("BaseFolder")
		  if baseNode = nil then
		    MessageBox "can't find basefolder"
		    return
		  end if
		  
		  var type as string = self.DealTypePopupMenu.SelectedRowValue
		  var date as string = self.DealingDate.Text
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
		      if name = self.DealPeriodPopupMenu.SelectedRowValue then
		        exit
		      end if
		      periodNode = periodNode.NextSibling
		    wend
		    fromDateLimit = periodNode.GetAttribute("FromDate")
		    toDateLimit = periodNode.GetAttribute("ToDate")
		    
		    if fromDateLimit <> "未設定" then
		      if date < fromDateLimit then
		        self.MainStatusLabel.Text = "取引日が範囲内ではありません"
		        return
		      end if
		    end if
		    if toDateLimit <> "未設定" then
		      if date > toDateLimit then
		        self.MainStatusLabel.Text = "取引日が範囲内ではありません"
		        return
		      end if
		    end if
		  end if
		  
		  var dropF as FolderItem = new FolderItem(self.DropFilePathLabel.Text, FolderItem.PathModes.Native)
		  
		  var errmsg as string = ""
		  var alreadyRegistered as Boolean = false
		  if dropF.IsFolder then
		    alreadyRegistered = App.CheckFolderIsRegistered(dropF, self.DealPeriodPopupMenu.SelectedRowValue)
		    errmsg = "ドロップしたフォルダは既に登録されています"
		  else
		    alreadyRegistered = App.CheckImageIsRegistered(dropF, self.DealPeriodPopupMenu.SelectedRowValue)
		    errmsg = "ドロップした画像は既に登録されています"
		  end if
		  if alreadyRegistered then
		    Var d As New MessageDialog                  // declare the MessageDialog object
		    Var b As MessageDialogButton                // for handling the result
		    d.IconType = MessageDialog.IconTypes.Caution // display warning icon
		    d.ActionButton.Caption = "検索"
		    d.ActionButton.Default = true
		    d.CancelButton.Visible = True               // show the Cancel button
		    d.CancelButton.Default = false
		    d.AlternateActionButton.Caption = "続行"
		    d.AlternateActionButton.Visible = true      // show the "Don't Save" button
		    d.AlternateActionButton.Default = false
		    d.Message = errmsg
		    //d.Explanation = "If you don't save, your changes will be lost. "
		    
		    b = d.ShowModal                             // display the dialog
		    Select Case b                               // determine which button was pressed.
		    Case d.ActionButton
		      var win as DealPeriodWindow = App.MainWin.GetPeriodWindow(self.DealPeriodPopupMenu.SelectedRowValue)
		      if win = nil then
		        win = new DealPeriodWindow
		        win.BaseFolderPath = self.ServerURL.Text
		        win.DealPeriod = self.DealPeriodPopupMenu.SelectedRowValue
		        win.Title = self.DealPeriodPopupMenu.SelectedRowValue
		        App.MainWin.DealPeriodWins.Add win
		      end if
		      win.SearchKeyField.Text = ""
		      for i as integer = 1 to App.FunctionReturn.CountFields(",")
		        var no as string = App.FunctionReturn.NthField(",",i)
		        if win.SearchKeyField.Text = "" then
		          win.SearchKeyField.Text = "^"+no
		        else
		          win.SearchKeyField.Text = win.SearchKeyField.Text+" ^"+no
		        end if
		      next
		      win.Show
		      win.SearchButton.Press
		      return
		    Case d.CancelButton
		      // user pressed Cancel
		      return
		    Case d.AlternateActionButton
		      // user pressed AlternateActionButton
		    End Select
		  end if
		  
		  var name as string = self.DealingNameField.Text.ReplaceAll(" ","")
		  name = name.ReplaceAll(App.kCRLF,"")
		  name = name.ReplaceAll(App.kCR,"")
		  name = name.ReplaceAll(App.kLF,"")
		  name = name.ReplaceAll(App.kTAB,"")
		  var partner as string = self.DealingPartnerField.Text.ReplaceAll(" ","")
		  partner = partner.ReplaceAll(App.kCRLF,"")
		  partner = partner.ReplaceAll(App.kCR,"")
		  partner = partner.ReplaceAll(App.kLF,"")
		  partner = partner.ReplaceAll(App.kTAB,"")
		  var remark as string = self.DealingRemarkField.Text.ReplaceAll(" ","")
		  
		  if self.LastRegData <> nil then
		    if self.LastRegData.IsSameAsNewData(self.ServerURL.Text, self.DealPeriodPopupMenu.SelectedRowValue,_
		      type, date, price.ToInteger, name, partner, remark, dropF ) then
		      System.Beep
		      self.MainStatusLabel.Text = "前回登録したデータと同じです"
		      return
		    end if
		  end if
		  
		  var apiClient as APICLientClass = App.ConnectAPI(self.DealPeriodPopupMenu.SelectedRowValue)
		  if apiClient = nil then
		    MessageBox App.FunctionError
		    return
		  end if
		  
		  // ★ここから新しいサーバー経由の実装 ★
		  
		  // 取引データの辞書作成
		  var dealData as new Dictionary
		  dealData.Value("DealType") = type
		  dealData.Value("DealDate") = date
		  dealData.Value("DealName") = name
		  dealData.Value("DealPartner") = partner
		  dealData.Value("DealPrice") = price.ToInteger
		  dealData.Value("DealRemark") = remark
		  dealData.Value("RecStatus") = "NEW"
		  
		  // ファイルデータ読み込み
		  var fileData as string
		  try
		    var binaryFile as BinaryStream = BinaryStream.Open(dropF)
		    fileData = binaryFile.Read(binaryFile.Length)
		    binaryFile.Close()
		  catch error as IOException
		    self.MainStatusLabel.Text = "ファイル読み込みエラー: " + error.Message
		    return
		  end try
		  
		  // API経由で登録
		  var result as Dictionary = apiClient.InsertDealWithFile(self.DealPeriodPopupMenu.SelectedRowValue, dealData, fileData, dropF.Name)
		  
		  // 結果処理
		  var ret as string
		  if result.HasKey("success") and result.Value("success").BooleanValue then
		    ret = "OK:" + result.Value("dealNo").StringValue
		  else
		    if result.HasKey("message") then
		      ret = "NG:" + result.Value("message").StringValue
		    else
		      ret = "NG:サーバーエラーが発生しました"
		    end if
		  end if
		  
		  if ret.left(2) <> "OK" then
		    self.MainStatusLabel.Text = ret
		    return
		  end if
		  
		  // ★ここまで新しい実装 ★
		  
		  self.SetSearchDateOfPeriodWindow(self.DealPeriodPopupMenu.SelectedRowValue, self.DealingDate.Text)
		  self.ReFreshPeriodWindow(self.DealPeriodPopupMenu.SelectedRowValue)
		  
		  if self.LastRegData = nil then
		    self.LastRegData = new LastRegDataClass
		  end if
		  self.LastRegData.BaseFolderPath = self.ServerURL.Text
		  self.LastRegData.DealPeriod = self.DealPeriodPopupMenu.SelectedRowValue
		  self.LastRegData.DealType = type
		  self.LastRegData.DealDate = date
		  self.LastRegData.DealName = name
		  self.LastRegData.DealPartner = partner
		  self.LastRegData.DealRemark = remark
		  self.LastRegData.DealPrice = price.ToInteger
		  self.LastRegData.DropF = dropF
		  
		  self.MainStatusLabel.Text = "登録しました"
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events DisplayButton
	#tag Event
		Sub Pressed()
		  if self.DealPeriodPopupMenu.SelectedRowIndex < 0 then
		    Return
		  end if
		  
		  for i as integer=0 to UBound(self.DealPeriodWins)
		    if self.DealPeriodWins(i).Title = self.DealPeriodPopupMenu.SelectedRowValue then
		      self.DealPeriodWins(i).Show
		      return
		    end if
		  next
		  dim win as new DealPeriodWindow(self.ServerURL.Text, self.DealPeriodPopupMenu.SelectedRowValue)
		  self.DealPeriodWins.Add win
		  //win.Title = self.DealPeriodPopupMenu.SelectedRowValue
		  win.Show
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ResetButton
	#tag Event
		Sub Pressed()
		  self.DealingDate.Text = ""
		  self.DealingNameField.Text = ""
		  self.DealingPartnerField.Text = ""
		  self.DealingPriceField.Text = ""
		  self.DealingRemarkField.Text = ""
		  self.DropFilePathLabel.Text = ""
		  self.DropFilePathLabel.Tooltip = ""
		  self.DropCanvas.Backdrop = nil
		  
		  self.MainStatusLabel.Text = ""
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ManageDealPeriodButton
	#tag Event
		Sub Pressed()
		  if self.ServerURL.Text = "" then
		    Return
		  end if
		  
		  dim win as new ManageDealPeriodWindow
		  win.Title = self.ServerURL.Text
		  win.ShowModal
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events DealPartnerButton
	#tag Event
		Sub Pressed()
		  var screenWidth as integer = DesktopDisplay.DisplayAt(0).Width
		  var screenHeight as integer = DesktopDisplay.DisplayAt(0).Height
		  
		  var win as new PopupInMDBWindow("取引先の入力")
		  var screenWinLeft as integer = self.Left+self.DealingPartnerField.Left
		  var screenWinTop as integer = 30+self.Top+self.DealingPartnerField.Top+self.DealingPartnerField.Height //30 is windows title
		  if screenWinTop+win.Height <= screenHeight then
		    win.Top = screenWinTop
		  else
		    win.Top = screenWinTop-win.Height-self.DealingPartnerField.Height-30
		  end if
		  win.Left = screenWinLeft
		  win.InputText.Text = self.DealingPartnerField.Text //Kicks off TextChanged event
		  win.ShowModal
		  self.DealingPartnerField.Text = win.SelectedValue
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events OCRButton
	#tag Event
		Sub Pressed()
		  var ret as string = App.OCR.DoOCR(self.DropFilePathLabel.Text, self.RunProgressWheel, self.MainStatusLabel)
		  if ret <> "OK" then
		    self.MainStatusLabel.Text = ret
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
#tag EndViewBehavior
