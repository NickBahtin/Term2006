  program Term2006;

uses
  FastMM4,
  Windows,
  Forms,
  IniFiles,
  SysUtils,
  BaseFrm in 'BaseFrm.pas' {BaseForm},
  HintEdtFrm in 'HintEdtFrm.pas' {HintEditorFrm},
  OneInstance32 in 'OneInstance32.pas',
  AddEmulatorFrm in 'AddEmulatorFrm.pas' {AddEmulatorForm},
  Excel in 'Excel.pas';

{$R *.res}

var tmpIni:TIniFile;
begin
  SetThreadLocale(1049);
  Screen.MenuFont.Name := 'Tahoma';
  Screen.MenuFont.Charset:=RUSSIAN_CHARSET;
  Application.Initialize;
  tmpIni:=nil;
  try
    tmpIni:=TIniFile.Create(changefileext(Application.ExeName,'.ini'));
    try
      if not OneInstance then
        Term2006Number:=tmpIni.ReadInteger( 'Global', 'Counter', 0 )+1
      else
        Term2006Number:=1;
      tmpIni.WriteInteger( 'Global', 'Counter', Term2006Number);
    finally
      tmpIni.Free;
    end;
  except
  end;

  Application.Title := 'Терминал Term2006';
  Application.CreateForm(TBaseForm, BaseForm);
  Application.CreateForm(TAddEmulatorForm, AddEmulatorForm);
  Application.Run;
  
  try
    try
      tmpIni:=TIniFile.Create(changefileext(Application.ExeName,'.ini'));
      Term2006Number:=tmpIni.ReadInteger( 'Global', 'Counter', 0 )-1;
      tmpIni.WriteInteger( 'Global', 'Counter', Term2006Number);
    finally
      tmpIni.Free;
    end;
  except
  end;


end.
