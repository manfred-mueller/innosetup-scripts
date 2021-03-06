; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "LastKnownGood"
#define MyAppVersion "1.1"
#define MyAppPublisher "NASS e.K."
#define MyAppURL "https://www.nass-ek.de"

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{4A49A381-151D-47B2-89E1-3CB53C1F75DF}}
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
ArchitecturesInstallIn64BitMode=x64
PrivilegesRequired=admin
OutputBaseFilename=lastknowngoodw10_setup
SetupIconFile=D:\Bilder\nass-ek.ico
UninstallDisplayIcon=D:\Bilder\nass-ek.ico
Compression=lzma
SolidCompression=yes
WizardStyle=modern
AlwaysRestart=yes
SignTool=Certum

[Registry]
Root: HKLM; Subkey: "System\CurrentControlSet\Control\Session Manager\Configuration Manager"; ValueName: "BackupCount"; ValueType: Dword; ValueData: "$1"; MinVersion: 0.0,6.0; Flags: uninsdeletekey 
Root: HKLM; Subkey: "System\CurrentControlSet\Control\Session Manager\Configuration Manager\LastKnownGood"; MinVersion: 0.0,6.0; Flags: uninsdeletekeyifempty 
Root: HKLM; Subkey: "System\CurrentControlSet\Control\Session Manager\Configuration Manager\LastKnownGood"; ValueName: "Enabled"; ValueType: Dword; ValueData: "$1"; MinVersion: 0.0,6.0; Flags: uninsdeletekey 

[Languages]
Name: "german"; MessagesFile: "compiler:Languages\German.isl"
