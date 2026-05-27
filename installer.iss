[Setup]
AppName=Learn Java in Shan
AppVersion=1.0
DefaultDirName={autopf}\LearnJavaInShan
DefaultGroupName=Learn Java in Shan
OutputDir=installer
OutputBaseFilename=Learn Java in Shan SetUp
Compression=lzma
SolidCompression=yes

[Files]
Source: "build\windows\x64\runner\Release\*.*"; DestDir: "{app}"; Flags: recursesubdirs createallsubdirs

[Icons]
Name: "{group}\Learn Java in Shan"; Filename: "{app}\learn_java_in_shan.exe"
Name: "{commondesktop}\Learn Java in Shan"; Filename: "{app}\learn_java_in_shan.exe"

[Run]
Filename: "{app}\learn_java_in_shan.exe"; Description: "Launch Learn Java in Shan"; Flags: nowait postinstall skipifsilent