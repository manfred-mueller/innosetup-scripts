; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Registerbox-IP"
#define MyAppVersion "1.1"
#define MyAppPublisher "NASS e.K."
#define MyAppURL "https://www.nass-ek.de"

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{7B91BC13-81FC-4262-9A63-317BF050D5BC}}
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
OutputBaseFilename=registerbox_setup
SetupIconFile=D:\Bilder\nass-ek.ico
UninstallDisplayIcon=D:\Bilder\nass-ek.ico
Compression=lzma
SolidCompression=yes
WizardStyle=modern
AlwaysRestart=no
SignTool=Certum

[Languages]
Name: "german"; MessagesFile: "compiler:Languages\German.isl"

[Code]
var
  Page: TInputQueryWizardPage;

procedure EditChange(Sender: TObject);
begin
  Page.Values[1] := 'route -p ADD 77.76.214.0 MASK 255.255.254.0 ' + Page.Values[0] + ' METRIC 1';
end;

procedure InitializeWizard();
begin
  Page := CreateInputQueryPage(wpWelcome,
    'Registerbox-IP einstellen', '','Bitte �berpr�fen und gegebenenfalls korrigieren Sie die Registerbox-IP.');

  Page.Add('IP-Adresse:', False);
  Page.Add('Routing-Eintrag:', False);

  Page.Values[0] := 'xxx.xxx.xxx.xxx';

  Page.Edits[0].OnChange := @EditChange;
  Page.Edits[1].ReadOnly := True;
  Page.Edits[1].Color := clBtnFace;
  { Reflect the initial values }
  EditChange(nil);

end;

function Registerbox(Param: string): string;
begin
Result := Page.Values[0];
end;

[Registry]
Root: HKLM; Subkey: "SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\PersistentRoutes"; ValueType: string; ValueName: "77.76.214.0,255.255.254.0,{code:Registerbox},1"; ValueData: ""; Flags: uninsdeletekey