; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "BlockW11Upgrade"
#define MyAppVersion "1.0"
#define MyAppPublisher "NASS e.K."
#define MyAppURL "https://www.nass-ek.de"

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{6EABF858-6F40-4921-AD0D-CDE967F57419}
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
PrivilegesRequired=admin
OutputBaseFilename=block_w11_upgrade_setup
SetupIconFile=D:\Bilder\nass-ek.ico
UninstallDisplayIcon={uninstallexe}
Compression=lzma
SolidCompression=yes
WizardStyle=modern
SignTool=Certum

[Languages]
Name: "german"; MessagesFile: "compiler:Languages\German.isl"

[Registry]
Root: HKLM; Subkey: "Software\Policies\Microsoft\Windows\WindowsUpdate"; Flags: uninsdeletekeyifempty
Root: HKLM; Subkey: "Software\Policies\Microsoft\Windows\WindowsUpdate"; Flags: uninsdeletevalue; ValueType: string; ValueName: "ProductVersion"; ValueData: "Windows 10"
Root: HKLM; Subkey: "Software\Policies\Microsoft\Windows\WindowsUpdate"; Flags: uninsdeletevalue; ValueType: dword; ValueName: "TargetReleaseVersion"; ValueData: "1"
Root: HKLM; Subkey: "Software\Policies\Microsoft\Windows\WindowsUpdate"; Flags: uninsdeletevalue; ValueType: string; ValueName: "TargetReleaseVersionInfo"; ValueData: "21H2"
;[Run]
;Filename: {sys}\shutdown.exe; Parameters: "-L /t 10"; Description: Benutzer neu anmelden; Flags: postinstall nowait

[Code]

procedure CurStepChanged(CurStep: TSetupStep);  
  var
  intResultCode: Integer;
  begin
    if CurStep = ssDone then
      begin
          if SuppressibleMsgBox('Zur Aktivierung der Einstellungen sollte der Rechner neu gestartet werden. Bitte speichern Sie vorher Ihre �nderungen an ge�ffneten Dokumenten und Programmen.' + #13#10 + #13#10 +
            'Jetzt neu starten?',
            mbConfirmation, MB_YESNO, IDYES) = IDYES then
              Exec('shutdown.exe', '-r', '', SW_HIDE,
                ewNoWait, intResultCode);
      end;
  end;
  
function IsWindowsVersionOrNewer(Major, Build: Integer): Boolean;
var
  Version: TWindowsVersion;
begin
  GetWindowsVersionEx(Version);
  Result :=
    (Version.Major > Major) or
    ((Version.Major = Major) and (Version.Build >= Build));
end;

function IsWindows11OrNewer: Boolean;
begin
  Result := IsWindowsVersionOrNewer(10, 21996);
end;

function InitializeSetup: Boolean;
begin
  if IsWindows11OrNewer then
  begin
    SuppressibleMsgBox('Dieses Programm ist ausschlie�lich f�r Windows 10 bestimmt.',
      mbCriticalError, MB_OK, IDOK);
    Result := False;
    Exit;
  end;

  Result := True;
end;