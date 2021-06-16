; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Win7Mixer"
#define MyAppVersion "1.1"
#define MyAppPublisher "NASS e.K."
#define MyAppURL "https://www.nass-ek.de"

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{5A79FA4B-9A63-4715-B7E6-B621B72F3BCA}
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
LicenseFile=D:\Dokumente\gpl_de.txt
; Uncomment the following line to run in non administrative install mode (install for current user only.)
;PrivilegesRequired=lowest
OutputBaseFilename=win7mixer_setup
SetupIconFile=D:\Bilder\nass-ek.ico
UninstallDisplayIcon=D:\Bilder\nass-ek.ico
Compression=lzma
SolidCompression=yes
WizardStyle=modern
SignTool=Certum

[Languages]
Name: "german"; MessagesFile: "compiler:Languages\German.isl"

[Registry]
Root: HKLM64; SubKey: "Software\Microsoft\Windows NT\CurrentVersion\MTCUVC"; Flags: uninsdeletekey; Check: IsWin64
Root: HKLM64; SubKey: "Software\Microsoft\Windows NT\CurrentVersion\MTCUVC"; ValueType: dword; ValueName: "EnableMtcUvc"; ValueData: "0"; Flags: uninsdeletevalue; Check: IsWin64
