unit AddEmulatorFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TAddEmulatorForm = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    InpEdt: TEdit;
    OutpEdt: TEdit;
    Label3: TLabel;
    CommentEdt: TEdit;
    cbHex: TCheckBox;
    cbCRLF: TCheckBox;
    OkBtn: TBitBtn;
    CancelBtn: TBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AddEmulatorForm: TAddEmulatorForm;

implementation

{$R *.dfm}

end.
