unit Excel;
interface
uses ComObj, ActiveX, Variants, Windows, Messages, SysUtils, Classes;
const
  ExcelApp = 'Excel.Application';

function CheckExcelInstall:boolean;
function CheckExcelRun: boolean;
function RunExcel(DisableAlerts:boolean=true; Visible: boolean=false): boolean;
function AddWorkBook(AutoRun:boolean=true):boolean;
function GetAllWorkBooks:TStringList;
function StopExcel:boolean;
function AddDataToWorkBook(Col,Row:integer;Value:Double):boolean;
function SaveWorkBook(FileName:TFileName; WBIndex:integer):boolean;
implementation
var
  MyExcel:variant;

function CheckExcelInstall:boolean;
var
  ClassID: TCLSID;
  Rez : HRESULT;
begin
  Rez := CLSIDFromProgID(PWideChar(WideString(ExcelApp)), ClassID);
  if Rez = S_OK then
    Result := true
  else
    Result := false;
end;

function CheckExcelRun: boolean;
begin
  try
    MyExcel:=GetActiveOleObject(ExcelApp);
    Result:=True;
  except
    Result:=false;
  end;
end;


function RunExcel(DisableAlerts:boolean=true; Visible: boolean=false): boolean;
begin
  try
{проверяем установлен ли Excel}
    if CheckExcelInstall then
      begin
        MyExcel:=CreateOleObject(ExcelApp);
//показывать/не показывать системные сообщения Excel (лучше не показывать)
        MyExcel.Application.EnableEvents:=DisableAlerts;
        MyExcel.Visible:=Visible;
        Result:=true;
      end
    else
      begin
        MessageBox(0,'Приложение MS Excel не установлено на этом компьютере','Ошибка',MB_OK+MB_ICONERROR);
        Result:=false;
      end;
  except
    Result:=false;
  end;
end;

function AddWorkBook(AutoRun:boolean=true):boolean;
begin
  if CheckExcelRun then
    begin
      MyExcel.WorkBooks.Add;
      Result:=true;
    end
  else
   if AutoRun then
     begin
       RunExcel;
       MyExcel.WorkBooks.Add;
       Result:=true;
     end
   else
     Result:=false;
end;

function GetAllWorkBooks:TStringList;
var i:integer;
begin
  try
    Result:=TStringList.Create;
    for i:=1 to MyExcel.WorkBooks.Count do
      Result.Add(MyExcel.WorkBooks.Item[i].FullName)
  except
    MessageBox(0,'Ошибка перечисления открытых книг','Ошибка',MB_OK+MB_ICONERROR);
  end;
end;

function AddDataToWorkBook(Col,Row:integer;Value:Double):boolean;
begin
  MyExcel.WorkBooks[1].WorkSheets[1].Cells[Col, Row]:=Value;
end;

function SaveWorkBook(FileName:TFileName; WBIndex:integer):boolean;
begin
  try
    MyExcel.WorkBooks.Item[WBIndex].SaveAs(FileName);
    if MyExcel.WorkBooks.Item[WBIndex].Saved then
      Result:=true
    else
      Result:=false;
  except
    Result:=false;
  end;
end;

function StopExcel:boolean;
begin
  try
    if MyExcel.Visible then MyExcel.Visible:=false;
    MyExcel.Quit;
    MyExcel:=Unassigned;
    Result:=True;
  except
    Result:=false;
  end;
end;
end.
