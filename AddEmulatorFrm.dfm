object AddEmulatorForm: TAddEmulatorForm
  Left = 693
  Top = 490
  BorderStyle = bsDialog
  Caption = #1042#1074#1086#1076' '#1101#1083#1077#1084#1077#1085#1090#1072' '#1087#1088#1086#1090#1086#1082#1086#1083#1072
  ClientHeight = 142
  ClientWidth = 369
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 16
    Width = 35
    Height = 13
    Caption = #1047#1072#1087#1088#1086#1089
  end
  object Label2: TLabel
    Left = 8
    Top = 40
    Width = 32
    Height = 13
    Caption = #1054#1090#1074#1077#1090
  end
  object Label3: TLabel
    Left = 8
    Top = 64
    Width = 67
    Height = 13
    Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081
  end
  object InpEdt: TEdit
    Left = 77
    Top = 10
    Width = 291
    Height = 21
    TabOrder = 0
  end
  object OutpEdt: TEdit
    Left = 77
    Top = 34
    Width = 291
    Height = 21
    TabOrder = 1
  end
  object CommentEdt: TEdit
    Left = 77
    Top = 58
    Width = 291
    Height = 21
    TabOrder = 2
  end
  object cbHex: TCheckBox
    Left = 80
    Top = 80
    Width = 82
    Height = 17
    Alignment = taLeftJustify
    Caption = 'HEX'
    TabOrder = 3
  end
  object cbCRLF: TCheckBox
    Left = 168
    Top = 80
    Width = 82
    Height = 17
    Alignment = taLeftJustify
    Caption = '<CR>'
    TabOrder = 4
  end
  object OkBtn: TBitBtn
    Left = 208
    Top = 112
    Width = 75
    Height = 25
    TabOrder = 5
    Kind = bkOK
  end
  object CancelBtn: TBitBtn
    Left = 288
    Top = 112
    Width = 75
    Height = 25
    TabOrder = 6
    Kind = bkCancel
  end
end
