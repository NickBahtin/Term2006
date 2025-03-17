unit MacrosFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Mask, ToolEdit, ExtCtrls, Placemnt,StrUtils;
const
  headerTMF:string='# Terminal macro file';
type
  TMacrosForm = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    SaveBtn: TButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    btnM1: TButton;
    btnM2: TButton;
    btnM3: TButton;
    btnM4: TButton;
    btnM5: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    TabSheet10: TTabSheet;
    Memo1: TMemo;
    LoadBtn: TButton;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    btnM6: TButton;
    btnM7: TButton;
    btnM8: TButton;
    btnM9: TButton;
    btnM10: TButton;
    Edit11: TEdit;
    btnM11: TButton;
    Edit12: TEdit;
    btnM12: TButton;
    Edit13: TEdit;
    btnM13: TButton;
    Edit14: TEdit;
    btnM14: TButton;
    Edit15: TEdit;
    btnM15: TButton;
    Edit16: TEdit;
    btnM16: TButton;
    Edit17: TEdit;
    btnM17: TButton;
    Edit18: TEdit;
    btnM18: TButton;
    Edit19: TEdit;
    btnM19: TButton;
    Edit20: TEdit;
    btnM20: TButton;
    CheckBox1: TCheckBox;
    FormStorage1: TFormStorage;
    Edit21: TEdit;
    btnM21: TButton;
    Edit22: TEdit;
    btnM22: TButton;
    Edit23: TEdit;
    btnM23: TButton;
    Edit24: TEdit;
    btnM24: TButton;
    Edit25: TEdit;
    btnM25: TButton;
    Edit26: TEdit;
    btnM26: TButton;
    Edit27: TEdit;
    btnM27: TButton;
    Edit28: TEdit;
    btnM28: TButton;
    Edit29: TEdit;
    btnM29: TButton;
    Edit30: TEdit;
    btnM30: TButton;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    procedure CheckBox1Click(Sender: TObject);
    procedure LoadBtnClick(Sender: TObject);
    procedure btnM1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure feMakrosChange(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure SaveBtnClick(Sender: TObject);
  private
    FTypeOfMacros: byte;
    FfeMakros_FileName: string;
    function BinToMix(S: string): string;
    procedure SetTypeOfMacros(const Value: byte);
    procedure ClearEdt;
    procedure SetfeMakros_FileName(const Value: string);
    { Private declarations }
  public
    { Public declarations }
    EditArray:array [1..30] of TEdit;
    property TypeOfMacros:byte read FTypeOfMacros write SetTypeOfMacros;
    property feMakros_FileName:string read FfeMakros_FileName write SetfeMakros_FileName;
  end;

var
  MacrosForm: TMacrosForm;

implementation

uses BaseFrm;

{$R *.dfm}

procedure TMacrosForm.CheckBox1Click(Sender: TObject);
begin
   TabSheet10.TabVisible:=CheckBox1.Checked;
end;

function TMacrosForm.BinToMix(S:string):string;
var i:integer;
    tmps,resS,comments:string;
begin
   //вырезаем комментарии
   i:=pos('//',S);
   if i>0 then
      comments:=copy(s,i,length(s)-i)
   else
      comments:='';
   tmpS:=BaseForm.HEX2Str(copy(s,1,i-1));resS:='';
   for i:=1 to length(tmpS) do
//      if ord(tmpS[i])>ord(' ') then
//         resS:=resS+tmpS[i]
//      else
         resS:=resS+'$'+IntToHex(ord(tmpS[i]),2);

   result:=resS+comments;



end;
procedure TMacrosForm.LoadBtnClick(Sender: TObject);
var i:integer;
    s:string;
begin
  if not OpenDialog1.Execute then Exit;
  feMakros_FileName:=OpenDialog1.FileName;
  s:=Uppercase(feMakros_FileName);
  i:=pos('.ASL',s);
  if i>0 then
     TypeOfMacros:=0
  else
     TypeOfMacros:=1;
  ClearEdt;
  BaseForm.labMakrosFileName.Caption:=feMakros_FileName;
  if not FileExists(feMakros_FileName) then Exit;
  memo1.Lines.LoadFromFile(feMakros_FileName);

  if TypeOfMacros=0 then
  begin
    //формат хранения:
    //с первой строки  ASCII HEX XX XX XX //-комментарий
    if Memo1.Lines.Count>0 then Edit1.Text:=Memo1.Lines[0] else Edit1.Text:='';
    if Memo1.Lines.Count>1 then Edit2.Text:=Memo1.Lines[1] else Edit2.Text:='';
    if Memo1.Lines.Count>2 then Edit3.Text:=Memo1.Lines[2] else Edit3.Text:='';
    if Memo1.Lines.Count>3 then Edit4.Text:=Memo1.Lines[3] else Edit4.Text:='';
    if Memo1.Lines.Count>4 then Edit5.Text:=Memo1.Lines[4] else Edit5.Text:='';
    if Memo1.Lines.Count>5 then Edit6.Text:=Memo1.Lines[5] else Edit6.Text:='';
    if Memo1.Lines.Count>6 then Edit7.Text:=Memo1.Lines[6] else Edit7.Text:='';
    if Memo1.Lines.Count>7 then Edit8.Text:=Memo1.Lines[7] else Edit8.Text:='';
    if Memo1.Lines.Count>8 then Edit9.Text:=Memo1.Lines[8] else Edit9.Text:='';
    if Memo1.Lines.Count>9 then Edit10.Text:=Memo1.Lines[9] else Edit10.Text:='';
    if Memo1.Lines.Count>10 then Edit11.Text:=Memo1.Lines[10] else Edit11.Text:='';
    if Memo1.Lines.Count>11 then Edit12.Text:=Memo1.Lines[11] else Edit12.Text:='';
    if Memo1.Lines.Count>12 then Edit13.Text:=Memo1.Lines[12] else Edit13.Text:='';
    if Memo1.Lines.Count>13 then Edit14.Text:=Memo1.Lines[13] else Edit14.Text:='';
    if Memo1.Lines.Count>14 then Edit15.Text:=Memo1.Lines[14] else Edit15.Text:='';
    if Memo1.Lines.Count>15 then Edit16.Text:=Memo1.Lines[15] else Edit16.Text:='';
    if Memo1.Lines.Count>16 then Edit17.Text:=Memo1.Lines[16] else Edit17.Text:='';
    if Memo1.Lines.Count>17 then Edit18.Text:=Memo1.Lines[17] else Edit18.Text:='';
    if Memo1.Lines.Count>18 then Edit19.Text:=Memo1.Lines[18] else Edit19.Text:='';
    if Memo1.Lines.Count>19 then Edit20.Text:=Memo1.Lines[19] else Edit20.Text:='';
    if Memo1.Lines.Count>20 then Edit21.Text:=Memo1.Lines[20] else Edit21.Text:='';
    if Memo1.Lines.Count>21 then Edit22.Text:=Memo1.Lines[21] else Edit22.Text:='';
    if Memo1.Lines.Count>22 then Edit23.Text:=Memo1.Lines[22] else Edit23.Text:='';
    if Memo1.Lines.Count>23 then Edit24.Text:=Memo1.Lines[23] else Edit24.Text:='';
    if Memo1.Lines.Count>24 then Edit25.Text:=Memo1.Lines[24] else Edit25.Text:='';
    if Memo1.Lines.Count>25 then Edit26.Text:=Memo1.Lines[25] else Edit26.Text:='';
    if Memo1.Lines.Count>26 then Edit27.Text:=Memo1.Lines[26] else Edit27.Text:='';
    if Memo1.Lines.Count>27 then Edit28.Text:=Memo1.Lines[27] else Edit28.Text:='';
    if Memo1.Lines.Count>28 then Edit29.Text:=Memo1.Lines[28] else Edit29.Text:='';
    if Memo1.Lines.Count>29 then Edit30.Text:=Memo1.Lines[29] else Edit30.Text:='';
  end
  else begin
    //формат хранения:
    //первая строка # Terminal macro file
    //остальные ASCII либо HEX код формата $xx
    if Memo1.Lines.Count>1 then Edit1.Text:=Memo1.Lines[1] else Edit1.Text:='';
    if Memo1.Lines.Count>2 then Edit2.Text:=Memo1.Lines[2] else Edit2.Text:='';
    if Memo1.Lines.Count>3 then Edit3.Text:=Memo1.Lines[3] else Edit3.Text:='';
    if Memo1.Lines.Count>4 then Edit4.Text:=Memo1.Lines[4] else Edit4.Text:='';
    if Memo1.Lines.Count>5 then Edit5.Text:=Memo1.Lines[5] else Edit5.Text:='';
    if Memo1.Lines.Count>6 then Edit6.Text:=Memo1.Lines[6] else Edit6.Text:='';
    if Memo1.Lines.Count>7 then Edit7.Text:=Memo1.Lines[7] else Edit7.Text:='';
    if Memo1.Lines.Count>8 then Edit8.Text:=Memo1.Lines[8] else Edit8.Text:='';
    if Memo1.Lines.Count>9 then Edit9.Text:=Memo1.Lines[9] else Edit9.Text:='';
    if Memo1.Lines.Count>10 then Edit10.Text:=Memo1.Lines[10] else Edit10.Text:='';
    if Memo1.Lines.Count>11 then Edit11.Text:=Memo1.Lines[11] else Edit11.Text:='';
    if Memo1.Lines.Count>12 then Edit12.Text:=Memo1.Lines[12] else Edit12.Text:='';
    if Memo1.Lines.Count>13 then Edit13.Text:=Memo1.Lines[13] else Edit13.Text:='';
    if Memo1.Lines.Count>14 then Edit14.Text:=Memo1.Lines[14] else Edit14.Text:='';
    if Memo1.Lines.Count>15 then Edit15.Text:=Memo1.Lines[15] else Edit15.Text:='';
    if Memo1.Lines.Count>16 then Edit16.Text:=Memo1.Lines[16] else Edit16.Text:='';
    if Memo1.Lines.Count>17 then Edit17.Text:=Memo1.Lines[17] else Edit17.Text:='';
    if Memo1.Lines.Count>18 then Edit18.Text:=Memo1.Lines[18] else Edit18.Text:='';
    if Memo1.Lines.Count>19 then Edit19.Text:=Memo1.Lines[19] else Edit19.Text:='';
    if Memo1.Lines.Count>20 then Edit20.Text:=Memo1.Lines[20] else Edit20.Text:='';
    if Memo1.Lines.Count>21 then Edit21.Text:=Memo1.Lines[21] else Edit21.Text:='';
    if Memo1.Lines.Count>22 then Edit22.Text:=Memo1.Lines[22] else Edit22.Text:='';
    if Memo1.Lines.Count>23 then Edit23.Text:=Memo1.Lines[23] else Edit23.Text:='';
    if Memo1.Lines.Count>24 then Edit24.Text:=Memo1.Lines[24] else Edit24.Text:='';
    if Memo1.Lines.Count>25 then Edit25.Text:=Memo1.Lines[25] else Edit25.Text:='';
    if Memo1.Lines.Count>26 then Edit26.Text:=Memo1.Lines[26] else Edit26.Text:='';
    if Memo1.Lines.Count>27 then Edit27.Text:=Memo1.Lines[27] else Edit27.Text:='';
    if Memo1.Lines.Count>28 then Edit28.Text:=Memo1.Lines[28] else Edit28.Text:='';
    if Memo1.Lines.Count>29 then Edit29.Text:=Memo1.Lines[29] else Edit29.Text:='';
    if Memo1.Lines.Count>30 then Edit30.Text:=Memo1.Lines[30] else Edit30.Text:='';
  end;
  BaseForm.ListBox1.AddItem('M1: '+Edit1.Text,btnM1);
  BaseForm.ListBox1.AddItem('M2 :'+Edit2.Text,btnM2);
  BaseForm.ListBox1.AddItem('M3 :'+Edit3.Text,btnM3);
  BaseForm.ListBox1.AddItem('M4 :'+Edit4.Text,btnM4);
  BaseForm.ListBox1.AddItem('M5 :'+Edit5.Text,btnM5);
  BaseForm.ListBox1.AddItem('M6 :'+Edit6.Text,btnM6);
  BaseForm.ListBox1.AddItem('M7 :'+Edit7.Text,btnM7);
  BaseForm.ListBox1.AddItem('M8 :'+Edit8.Text,btnM8);
  BaseForm.ListBox1.AddItem('M9 :'+Edit9.Text,btnM9);
  BaseForm.ListBox1.AddItem('M10 :'+Edit10.Text,btnM10);
  BaseForm.ListBox1.AddItem('M11 :'+Edit11.Text,btnM11);
  BaseForm.ListBox1.AddItem('M12 :'+Edit12.Text,btnM12);
  BaseForm.ListBox1.AddItem('M13 :'+Edit13.Text,btnM13);
  BaseForm.ListBox1.AddItem('M14 :'+Edit14.Text,btnM14);
  BaseForm.ListBox1.AddItem('M15 :'+Edit15.Text,btnM15);
  BaseForm.ListBox1.AddItem('M16 :'+Edit16.Text,btnM16);
  BaseForm.ListBox1.AddItem('M17 :'+Edit17.Text,btnM17);
  BaseForm.ListBox1.AddItem('M18 :'+Edit18.Text,btnM18);
  BaseForm.ListBox1.AddItem('M19 :'+Edit19.Text,btnM19);
  BaseForm.ListBox1.AddItem('M20 :'+Edit20.Text,btnM20);
  BaseForm.ListBox1.AddItem('M21 :'+Edit21.Text,btnM21);
  BaseForm.ListBox1.AddItem('M22 :'+Edit22.Text,btnM22);
  BaseForm.ListBox1.AddItem('M23 :'+Edit23.Text,btnM23);
  BaseForm.ListBox1.AddItem('M24 :'+Edit24.Text,btnM24);
  BaseForm.ListBox1.AddItem('M25 :'+Edit25.Text,btnM25);
  BaseForm.ListBox1.AddItem('M26 :'+Edit26.Text,btnM26);
  BaseForm.ListBox1.AddItem('M27 :'+Edit27.Text,btnM27);
  BaseForm.ListBox1.AddItem('M28 :'+Edit28.Text,btnM28);
  BaseForm.ListBox1.AddItem('M29 :'+Edit29.Text,btnM29);
  BaseForm.ListBox1.AddItem('M30 :'+Edit30.Text,btnM30);
end;


procedure TMacrosForm.btnM1Click(Sender: TObject);
var s,resStr:string;
    i:integer;
begin
   s:=EditArray[TButton(Sender).Tag].Text;resStr:='';
   case TypeOfMacros of
   0: begin //тип макроса ASL
       i:=pos('//',S);
       if i>0 then
         resStr:=BaseForm.HEX2Str(copy(s,1,i-1))
       else
         resStr:=BaseForm.HEX2Str(s);
      end;//0-тип макроса ASL
   1: begin //тип макроса TMF
       i:=1;
       while i<=Length(s) do
       begin
         if s[i]<>'$' then
         begin
            resStr:=resStr+s[i];
            inc(i);
         end
         else if ((i+2)<=Length(S)) and (
                                      ((s[i+1] in ['0'..'9']) or
                                       (s[i+1] in ['a'..'f']) or
                                       (s[i+1] in ['A'..'F'])) and
                                      ((s[i+2] in ['0'..'9']) or
                                       (s[i+2] in ['a'..'f']) or
                                       (s[i+2] in ['A'..'F'])))
         then begin
              resStr:=resStr+char(strToInt(copy(s,i,3)));
              inc(i,3);
         end;
       end;
      end;//1-тип макроса TMF
   end;
   BaseForm.OutStr(resStr);
end;

procedure TMacrosForm.ClearEdt;
var i:integer;
begin
  for i:=0 to self.ComponentCount-1 do
  begin
    if self.Components[i] is TEdit then
       TEdit(Components[i]).Text:='';
  end;
  BaseForm.ListBox1.Clear;
  Memo1.Lines.Clear;
  if TypeOfMacros=1 then
     Memo1.Lines.Add(headerTMF);
end;

procedure TMacrosForm.FormCreate(Sender: TObject);
var i:integer;
begin
//  OpenDialog1.InitialDir:=ExtractFilePath(Application.ExeName)+'\';
//  SaveDialog1.InitialDir:=OpenDialog1.InitialDir;
  for i:=0 to self.ComponentCount-1 do
  begin
    if self.Components[i] is TEdit then
       EditArray[TEdit(Components[i]).Tag]:=TEdit(Components[i]);
  end;
end;

procedure TMacrosForm.SetTypeOfMacros(const Value: byte);
begin
  FTypeOfMacros := Value;
end;

procedure TMacrosForm.feMakrosChange(Sender: TObject);
begin
  LoadBtnClick(LoadBtn);
end;

procedure TMacrosForm.Edit1Change(Sender: TObject);
var s:string;
    i,j:integer;

begin
   i:=0;j:=0;
   if Sender is TEdit then
   begin
      s:=TEdit(Sender).Text;
      i:=TEdit(Sender).Tag;
   end;
   if i>0 then
   begin
     if Memo1.Lines.Count<(i+TypeOfMacros) then
        j:=(i+TypeOfMacros)-Memo1.Lines.Count;
     while j>0 do
     begin
        Memo1.Lines.Add('');dec(j);
     end;
     Memo1.Lines[i+TypeOfMacros-1]:=s;
   end;

end;

procedure TMacrosForm.SaveBtnClick(Sender: TObject);
begin
  Memo1.Lines.SaveToFile(feMakros_FileName);
  LoadBtnClick(Sender);
end;

procedure TMacrosForm.SetfeMakros_FileName(const Value: string);
begin
  FfeMakros_FileName := Value;
end;

end.
