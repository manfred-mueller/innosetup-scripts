;InnoSetupVersion=6.0.0 (Unicode)

[Setup]
AppName=LastknownGoodW10
AppId={{5A79FA4B-9A63-4615-B7E6-B621BC4F4CCA}
AppVersion=1.1
AppPublisher=NASS e.K.
AppPublisherURL=https://www.nass-ek.de
AppSupportURL=https://www.nass-ek.de
AppUpdatesURL=https://www.nass-ek.de
DefaultDirName={autopf}\LastknownGoodW10
DefaultGroupName=LastknownGoodW10
UninstallDisplayIcon=C:\Users\Manfred\Pictures\nass-ek.ico
OutputBaseFilename=lastknowngoodw10_setup
Compression=none
DisableDirPage=yes
DisableProgramGroupPage=yes
LicenseFile=embedded\License.txt
WizardImageFile=embedded\WizardImage0.bmp
WizardSmallImageFile=embedded\WizardSmallImage0.bmp

[Files]

[Registry]
Root: HKLM; Subkey: "System\CurrentControlSet\Control\Session Manager\Configuration Manager"; ValueName: "BackupCount"; ValueType: Dword; ValueData: "$1"; MinVersion: 0.0,6.0; Flags: uninsdeletekey 
Root: HKLM; Subkey: "System\CurrentControlSet\Control\Session Manager\Configuration Manager\LastKnownGood"; MinVersion: 0.0,6.0; Flags: uninsdeletekeyifempty 
Root: HKLM; Subkey: "System\CurrentControlSet\Control\Session Manager\Configuration Manager\LastKnownGood"; ValueName: "Enabled"; ValueType: Dword; ValueData: "$1"; MinVersion: 0.0,6.0; Flags: uninsdeletekey 

[CustomMessages]
german.NameAndVersion=%1 Version %2
german.AdditionalIcons=Zusätzliche Symbole:
german.CreateDesktopIcon=&Desktop-Symbol erstellen
german.CreateQuickLaunchIcon=Symbol in der Schnellstartleiste erstellen
german.ProgramOnTheWeb=%1 im Internet
german.UninstallProgram=%1 entfernen
german.LaunchProgram=%1 starten
german.AssocFileExtension=&Registriere %1 mit der %2-Dateierweiterung
german.AssocingFileExtension=%1 wird mit der %2-Dateierweiterung registriert...
german.AutoStartProgramGroupDescription=Beginn des Setups:
german.AutoStartProgram=Starte automatisch%1
german.AddonHostProgramNotFound=%1 konnte im ausgewählten Ordner nicht gefunden werden.%n%nMöchten Sie dennoch fortfahren?

[Languages]
; These files are stubs
; To achieve better results after recompilation, use the real language files
Name: "german"; MessagesFile: "embedded\german.isl"; 
