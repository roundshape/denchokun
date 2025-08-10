[Setup]
AppName=Denchokun
AppVersion=1.2.1
DefaultDirName={autopf}\Denchokun
DefaultGroupName=Denchokun
ArchitecturesInstallIn64BitMode=x64compatible
SetupIconFile={#SourcePath}\icons8-card-file-box-96.ico
AppPublisher=RoundShape
AppPublisherURL=https://www.roundshape.jp
AppSupportURL=https://www.roundshape.jp
AppUpdatesURL=https://www.roundshape.jp/downloadMain.php
UninstallDisplayIcon={app}\Denchokun.exe
UninstallDisplayName=Denchokun
OutputBaseFilename=Denchokun-setup
OutputDir={#SourcePath}\\output
Compression=lzma2
SolidCompression=yes
ChangesEnvironment=yes

[Files]
; ビルド成果物の場所に合わせて必要なら修正してください
Source: "{#SourcePath}\\Builds - Denchokun\\Windows 64 bit\\Denchokun\\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\\Denchokun"; Filename: "{app}\\Denchokun.exe"; IconFilename: "{app}\\Denchokun.exe"
Name: "{group}\\アンインストール"; Filename: "{uninstallexe}"

[Languages]
Name: "japanese"; MessagesFile: "compiler:Languages\\Japanese.isl"
