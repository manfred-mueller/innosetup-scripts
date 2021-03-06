; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "OldSchoolPrinters"
#define MyAppVersion "1.1"
#define MyAppPublisher "NASS e.K."
#define MyAppURL "https://www.nass-ek.de"

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{5A79FA4B-9A63-4615-B7E6-B621BC4F4CDF}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={autopf}\{#MyAppName}
DisableDirPage=yes
DefaultGroupName={#MyAppName}
DisableProgramGroupPage=yes
LicenseFile=D:\Dokumente\lizenz-classicprinterview.txt
; Uncomment the following line to run in non administrative install mode (install for current user only.)
;PrivilegesRequired=lowest
OutputBaseFilename=classic-printers-view_setup
SetupIconFile=D:\Bilder\nass-ek.ico
UninstallDisplayIcon=D:\Bilder\nass-ek.ico
Compression=lzma
SolidCompression=yes
WizardStyle=modern
SignTool=Certum

[Languages]
Name: "german"; MessagesFile: "compiler:Languages\German.isl"

[Registry]
Root: HKCR; Subkey: "DesktopBackground\Shell\Printers"; Flags: uninsdeletekeyifempty
Root: HKCR; Subkey: "DesktopBackground\Shell\Printers"; ValueType: string; ValueName: ""; ValueData: "Erweiterte Drucker-Einstellungen"; Flags: uninsdeletekey
Root: HKCR; Subkey: "DesktopBackground\Shell\Printers"; ValueType: string; ValueName: "Icon"; ValueData: "control.exe"; Flags: uninsdeletekey
Root: HKCR; Subkey: "DesktopBackground\Shell\Printers"; ValueType: string; ValueName: "Position"; ValueData: "Bottom"; Flags: uninsdeletekey
Root: HKCR; Subkey: "DesktopBackground\Shell\Printers\command"; Flags: uninsdeletekey
Root: HKCR; Subkey: "DesktopBackground\Shell\Printers\command"; ValueType: string; ValueName: ""; ValueData: "explorer shell:::{{2227A280-3AEA-1069-A2DE-08002B30309D}"; Flags: uninsdeletekey

Root: HKLM; Subkey: "Software\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Printers"; Flags: uninsdeletekeyifempty
Root: HKLM; Subkey: "Software\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Printers"; ValueType: string; ValueName: ""; ValueData: "Printers"; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Printers"; ValueType: string; ValueName: "Icon"; ValueData: "printui.exe"; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Printers\command"; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Printers\command"; ValueType: string; ValueName: ""; ValueData: "explorer shell:::.{{2227A280-3AEA-1069-A2DE-08002B30309D}"; Flags: uninsdeletekey
