[Setup]
AppName=ddt4all
AppVersion=1.0
DefaultDirName={pf}\ddt4all
DefaultGroupName=ddt4all
SetupIconFile=icons\obd.ico
OutputBaseFilename=ddt4all-installer

[Files]
Source: "*.py"; DestDir: "{app}"
Source: "DDT4ALL.BAT"; DestDir: "{app}"
Source: "README.md"; DestDir: "{app}"
Source: "crcmod\*"; DestDir: "{app}\crcmod"; Flags: ignoreversion recursesubdirs; Excludes: "*.pyc"
Source: "Python27\*"; DestDir: "{app}\Python27"; Flags: ignoreversion recursesubdirs; Excludes: "*.pyc"
Source: "ddtplugins\*"; DestDir: "{app}\ddtplugins"; Flags: ignoreversion recursesubdirs; Excludes: "*.pyc"
Source: "icons\*"; DestDir: "{app}\icons"; Flags: ignoreversion recursesubdirs
Source: "importlib\*"; DestDir: "{app}\importlib"; Flags: ignoreversion recursesubdirs; Excludes: "*.pyc"
Source: "locale\*"; DestDir: "{app}\locale"; Flags: ignoreversion recursesubdirs
Source: "serial\*"; DestDir: "{app}\serial"; Flags: ignoreversion recursesubdirs; Excludes: "*.pyc"

[Dirs]
Name: "{app}\logs"; Permissions: users-full
Name: "{app}\json"; Permissions: users-full

[Icons]
Name: "{group}\ddt4all"; Filename: "{app}\Python27\python.exe"; Parameters: """{app}\ddt4all.py"""; WorkingDir: "{app}"; IconFilename: "{app}\icons\obd.ico"