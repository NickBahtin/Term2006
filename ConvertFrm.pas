unit ConvertFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, Mask,
  Spin, HexEdits, ExtCtrls, BitMask,Math,
  Menus, rxPlacemnt, rxToolEdit, rxCurrEdit;

type
  TEdIzm=(eiJ,eiKall,eiWth,eiHF);//Джоуль,Каллория,Ват*ч,Лошадинная сила
  TGrdIzm=(giNone,giKilo,giMega,giGiga);//1,Кило,Мега,Гига,Терра
const
  EIConst:Array[TEdIzm] of single=(1, 4.18605,3600000, 2684519.538);
  GIConst:Array[TGrdIzm] of longint=(1,1000,1000000,1000000000);

type
  TConvertForm = class(TForm)
    GroupBox1: TGroupBox;
    DateTime1: TCurrencyEdit;
    Date1: TDateTimePicker;
    Time1: TDateTimePicker;
    FormStorage1: TFormStorage;
    GroupBox2: TGroupBox;
    E1: TCurrencyEdit;
    E2: TCurrencyEdit;
    EI1: TComboBox;
    EDL1: TComboBox;
    EDL2: TComboBox;
    EI2: TComboBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    SpinEdit1: TSpinEdit;
    SpinEdit2: TSpinEdit;
    SpinEdit3: TSpinEdit;
    HexEdit1: THexEdit;
    HexEdit2: THexEdit;
    HexEdit3: THexEdit;
    ComboBox1: TComboBox;
    GroupBox3: TGroupBox;
    BitMask1: TBitMask;
    HexEdit_H1: THexEdit;
    HexEdit_D1: THexEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Memo1: TMemo;
    GroupBox4: TGroupBox;
    Label9: TLabel;
    SingleEdt: TCurrencyEdit;
    FHexEdit: THexEdit;
    Label10: TLabel;
    SpinEdit4: TSpinEdit;
    HexEdit6: THexEdit;
    BitMask2: TBitMask;
    Memo2: TMemo;
    Label11: TLabel;
    PopupMenu1: TPopupMenu;
    N11: TMenuItem;
    PopupMenu2: TPopupMenu;
    MenuItem1: TMenuItem;
    Label12: TLabel;
    HexEdit_D2: THexEdit;
    Label13: TLabel;
    HexEdit_H2: THexEdit;
    N1: TMenuItem;
    OpenDialog1: TOpenDialog;
    N2: TMenuItem;
    LHexEdit: THexEdit;
    M32HexEdit: THexEdit;
    procedure DateTime1Change(Sender: TObject);
    procedure Date1Change(Sender: TObject);
    procedure E1Change(Sender: TObject);
    procedure E2Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure EDL1Change(Sender: TObject);
    procedure SpinEdit2Change(Sender: TObject);
    procedure SpinEdit1Change(Sender: TObject);
    procedure SpinEdit3Change(Sender: TObject);
    procedure HexEdit3Change(Sender: TObject);
    procedure HexEdit2Change(Sender: TObject);
    procedure HexEdit1Change(Sender: TObject);
    procedure HexEdit_D1Change(Sender: TObject);
    procedure FHexEditChange(Sender: TObject);
    procedure SingleEdtChange(Sender: TObject);
    procedure SpinEdit4Change(Sender: TObject);
    procedure HexEdit6Change(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure HexEdit_D2Change(Sender: TObject);
    procedure LHexEditChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure M32HexEditChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ConvertForm: TConvertForm;

implementation

uses BaseFrm, HintEdtFrm;

{$R *.dfm}


function EC(Value:Single;EIFrom:TEdIzm;GIFrom:TGrdIzm;EITo:TEdIzm;GITo:TGrdIzm):single;
begin
  result:=Value*(GIConst[GIFrom]*EIConst[EIFrom])/(GIConst[GITo]*EIConst[EITo]);//Привели к нормальному значению
end;

procedure TConvertForm.DateTime1Change(Sender: TObject);
begin
  Date1.OnChange:=nil;Time1.OnChange:=nil;
  SpinEdit1.OnChange:=nil;
  SpinEdit2.OnChange:=nil;
  SpinEdit3.OnChange:=nil;
  SpinEdit4.OnChange:=nil;
  //в секундах с 2000
  SpinEdit1.Value:=Round((DateTime1.Value-36526)*86400);
  HexEdit1.Value:=SpinEdit1.Value;
  //в секундах с 1980
  SpinEdit2.Value:=Round((DateTime1.Value-29221)*86400);
  HexEdit2.Value:=SpinEdit2.Value;
  //в секундах с 1970
  SpinEdit4.Value:=Round((DateTime1.Value-25569)*86400);
  HexEdit6.Value:=SpinEdit4.Value;
  //суток с 1980
  SpinEdit3.Value:=Trunc(DateTime1.Value-36526);
  HexEdit3.Value:=SpinEdit3.Value;

  Date1.DateTime:=Trunc(DateTime1.Value);
  Time1.DateTime:=Frac(DateTime1.Value);
  Date1.OnChange:=Date1Change;Time1.OnChange:=Date1Change;
  SpinEdit1.OnChange:=SpinEdit1Change;
  SpinEdit2.OnChange:=SpinEdit2Change;
  SpinEdit3.OnChange:=SpinEdit3Change;
  SpinEdit4.OnChange:=SpinEdit4Change;
end;

procedure TConvertForm.Date1Change(Sender: TObject);
begin
  DateTime1.Value:=Trunc(Date1.DateTime)+Frac(Time1.DateTime);
end;

procedure TConvertForm.E1Change(Sender: TObject);
begin
  E2.OnChange:=nil;
  E2.Value:=EC(E1.value,TEdIzm(EI1.ItemIndex),TGrdIzm(EDL1.ItemIndex),TEdIzm(EI2.ItemIndex),TGrdIzm(EDL2.ItemIndex));
  E2.OnChange:=E2Change;
end;

procedure TConvertForm.E2Change(Sender: TObject);
begin
  E1.OnChange:=nil;
  E1.Value:=EC(E2.value,TEdIzm(EI2.ItemIndex),TGrdIzm(EDL2.ItemIndex),TEdIzm(Ei1.ItemIndex),TGrdIzm(EDL1.ItemIndex));
  E1.OnChange:=E1Change;
end;

procedure TConvertForm.FormCreate(Sender: TObject);
begin
  edL1.ItemIndex:=0;
  edL2.ItemIndex:=0;
  ei1.ItemIndex:=0;
  ei2.ItemIndex:=0;
  E1Change(nil)
end;

procedure TConvertForm.EDL1Change(Sender: TObject);
begin
  if RadioButton1.Checked then  E1Change(nil)
                          else  E2Change(nil)
end;

procedure TConvertForm.SpinEdit2Change(Sender: TObject);
var dayofWeek:byte;
    day:integer;
begin
  DateTime1.Value:=DateP2DateTime(SpinEdit2.Value);
  HexEdit2.Value:=SpinEdit2.Value;
  //01.01.1980 - суббота
  day:=(SpinEdit2.Value div 86400)-1;
  dayofWeek:=(day mod 7)+1;
  ComboBox1.ItemIndex:=dayofWeek+1;
end;

procedure TConvertForm.SpinEdit1Change(Sender: TObject);
begin
  DateTime1.Value:=DateKMD2DateTime(SpinEdit1.Value);
  HexEdit1.Value:=SpinEdit1.Value;
end;

procedure TConvertForm.SpinEdit3Change(Sender: TObject);
begin
  DateTime1.Value:=SpinEdit3.Value+36526.0;
  HexEdit3.Value:=SpinEdit3.Value;
end;

procedure TConvertForm.HexEdit3Change(Sender: TObject);
begin
  SpinEdit3.Value:=HexEdit3.Value;
end;

procedure TConvertForm.HexEdit2Change(Sender: TObject);
begin
  SpinEdit2.Value:=HexEdit2.Value;
end;

procedure TConvertForm.HexEdit1Change(Sender: TObject);
begin
  SpinEdit1.Value:=HexEdit1.Value;
end;

procedure TConvertForm.HexEdit_D1Change(Sender: TObject);
var v:longword;
    i:integer;
    s:String;
begin
  Hexedit_D1.OnChange:=nil;
  Hexedit_H1.OnChange:=nil;
  BitMask1.OnChange:=nil;

  if sender=Hexedit_D1 then
     v:=hexedit_D1.Value
  else if sender=Hexedit_H1 then
     v:=hexedit_H1.Value
  else if sender=BitMask1 then
     v:=BitMask1.Value
  else
     v:=0;

  Hexedit_D1.Value:=v;
  Hexedit_H1.Value:=v;
  BitMask1.Value:=v;

  Hexedit_D1.OnChange:=HexEdit_D1Change;
  Hexedit_H1.OnChange:=HexEdit_D1Change;
  BitMask1.OnChange:=HexEdit_D1Change;
  memo1.lines.Clear;
  for i:=0 to 31 do
  if (v and (1 shl i))<>0 then
  begin
     s:=IntToStr(i);
     memo1.lines.add('Бит'+s+' '+BitMask1.GetStringFromHint(I));
  end;
  memo1.Hint:=memo1.lines.Text;
  memo1.ShowHint:=True;
end;

procedure TConvertForm.FHexEditChange(Sender: TObject);
var F:single;
    I:longword absolute F;
begin
    I:=FHexEdit.Value;
    SingleEdt.OnChange:=nil;
    SingleEdt.Value:=F;
    SingleEdt.OnChange:=SingleEdtChange;
end;
//    procedure OnF2b(var binar:array of byte; tmpF: Single; m_FloatFormat: TFloatFormat);
//    function OnB2f(longw:longword; m_FloatFormat: TFloatFormat):single;

procedure TConvertForm.SingleEdtChange(Sender: TObject);
var F:single;
    I:longword absolute F;
    x:array[0..3]of byte absolute F;
begin
    F:=SingleEdt.Value;
    FHexEdit.OnChange:=nil;
    FHexEdit.Value:=I;
    FHexEdit.OnChange:=FHexEditChange;
    BaseForm.OnF2b(x,F,ffMicrochip_32);
    M32HexEdit.OnChange:=nil;
    M32HexEdit.Value:=I;
    M32HexEdit.OnChange:=M32HexEditChange;
end;

procedure TConvertForm.SpinEdit4Change(Sender: TObject);
var dayofWeek:byte;
    day:integer;
begin
  DateTime1.Value:=CTimetoDateTime(SpinEdit4.Value);
  HexEdit6.Value:=SpinEdit4.Value;
  //01.01.1980 - суббота
  day:=(SpinEdit2.Value div 86400)-1;
  dayofWeek:=(day mod 7)+1;
  ComboBox1.ItemIndex:=dayofWeek+1;
end;

procedure TConvertForm.HexEdit6Change(Sender: TObject);
begin
  SpinEdit4.Value:=HexEdit6.Value;
end;

procedure TConvertForm.N11Click(Sender: TObject);
begin
  if not Assigned(HintEditorFrm) then
     THintEditorFrm.Create(nil);
  HintEditorFrm.Memo1.Clear;
  HintEditorFrm.Memo1.Text:=BitMask1.Hint;
  if HintEditorFrm.ShowModal=mrOk then
  begin
     BitMask1.Hint:=HintEditorFrm.Memo1.Text;
     BitMask1.Size:=32;
  end;
end;

procedure TConvertForm.MenuItem1Click(Sender: TObject);
begin
  if not Assigned(HintEditorFrm) then
     THintEditorFrm.Create(nil);
  HintEditorFrm.Memo1.Clear;
  HintEditorFrm.Memo1.Text:=BitMask2.Hint;
  if HintEditorFrm.ShowModal=mrOk then
  begin
     BitMask2.Hint:=HintEditorFrm.Memo1.Text;
     BitMask2.Size:=32;
  end;

end;

procedure TConvertForm.N1Click(Sender: TObject);
begin
  if not Assigned(HintEditorFrm) then
     THintEditorFrm.Create(nil);
  OpenDialog1.FileName:='*.txt';
  if OpenDialog1.Execute then
  begin
    HintEditorFrm.Memo1.Clear;
    try
      HintEditorFrm.Memo1.Lines.LoadFromFile(OpenDialog1.FileName);
      if HintEditorFrm.ShowModal=mrOk then
      begin
         BitMask1.Hint:=HintEditorFrm.Memo1.Text;
         BitMask1.Size:=32;
      end;
    except
    end;
  end;
end;

procedure TConvertForm.N2Click(Sender: TObject);
begin
  if not Assigned(HintEditorFrm) then
     THintEditorFrm.Create(nil);
  OpenDialog1.FileName:='*.txt';
  if OpenDialog1.Execute then
  begin
    HintEditorFrm.Memo1.Clear;
    try
      HintEditorFrm.Memo1.Lines.LoadFromFile(OpenDialog1.FileName);
      if HintEditorFrm.ShowModal=mrOk then
      begin
         BitMask2.Hint:=HintEditorFrm.Memo1.Text;
         BitMask2.Size:=32;
      end;
    except
    end;
  end;

end;

procedure TConvertForm.HexEdit_D2Change(Sender: TObject);
var v:longword;
    i:integer;
    s:String;
begin
  Hexedit_D2.OnChange:=nil;
  Hexedit_H2.OnChange:=nil;
  BitMask2.OnChange:=nil;

  if sender=Hexedit_D2 then
     v:=hexedit_D2.Value
  else if sender=Hexedit_H2 then
     v:=hexedit_H2.Value
  else if sender=BitMask2 then
     v:=BitMask2.Value
  else
     v:=0;

  Hexedit_D2.Value:=v;
  Hexedit_H2.Value:=v;
  BitMask2.Value:=v;

  Hexedit_D2.OnChange:=HexEdit_D2Change;
  Hexedit_H2.OnChange:=HexEdit_D2Change;
  BitMask2.OnChange:=HexEdit_D2Change;
  memo2.lines.Clear;
  for i:=0 to 31 do
  if (v and (1 shl i))<>0 then
  begin
     s:=IntToStr(i);
     memo2.lines.add('Бит'+s+' '+BitMask2.GetStringFromHint(I));
  end;
  memo2.Hint:=memo2.lines.Text;
  memo2.ShowHint:=True;
end;

//  GetLogikaFloat(s:string)
procedure TConvertForm.LHexEditChange(Sender: TObject);
var I:longword;
    tmpS:String;
begin
    I:=LHexEdit.Value;
    tmpS:=chr((I shr 24)and $ff)+chr((I shr 16) and $ff)+chr((I shr 8)and $ff)+chr(I and $ff);
    SingleEdt.OnChange:=nil;
    SingleEdt.Value:=BaseForm.GetLogikaFloat(tmpS);
    SingleEdt.OnChange:=SingleEdtChange;
end;


procedure TConvertForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    Action:=caFree;
end;

procedure TConvertForm.M32HexEditChange(Sender: TObject);
var I:longword;
    tmpS:String;
begin
    I:=M32HexEdit.Value;
    SingleEdt.OnChange:=nil;
    SingleEdt.Value:=BaseForm.OnB2f(I,ffMicrochip_32);
    SingleEdt.OnChange:=SingleEdtChange;
end;

end.
