; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Ado"
#define MyAppVersion "1.0"
#define MyAppPublisher "NASS e.K."
#define MyAppURL "https://www.nass-ek.de"

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{5A79FA4B-9A63-4715-B7E6-B621BC4F4CDF}
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
LicenseFile=D:\Dokumente\lizenz-ado.txt
; Uncomment the following line to run in non administrative install mode (install for current user only.)
;PrivilegesRequired=lowest
OutputBaseFilename=ado_setup
SetupIconFile=D:\Bilder\nass-ek.ico
UninstallDisplayIcon=D:\Bilder\nass-ek.ico
Compression=lzma
SolidCompression=yes
WizardStyle=modern
SignTool=Certum

[Languages]
Name: "german"; MessagesFile: "compiler:Languages\German.isl"

[Files]
Source: "D:\Downloads\Windows\ado\bin\x86\Release\Ado.exe"; DestDir: "{win}"; DestName: "ado.exe"; Flags: confirmoverwrite; MinVersion: 0,6.0sp2
