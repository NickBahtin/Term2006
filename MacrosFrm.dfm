object MacrosForm: TMacrosForm
  Left = 502
  Top = 46
  BorderStyle = bsDialog
  Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1072' '#1084#1072#1082#1088#1086#1089#1086#1074
  ClientHeight = 644
  ClientWidth = 574
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 574
    Height = 41
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 12
      Width = 39
      Height = 13
      Caption = #1052#1072#1082#1088#1086#1089
    end
    object SaveBtn: TButton
      Left = 493
      Top = 7
      Width = 75
      Height = 25
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      TabOrder = 0
      OnClick = SaveBtnClick
    end
    object LoadBtn: TButton
      Left = 419
      Top = 7
      Width = 71
      Height = 25
      Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100
      TabOrder = 1
      OnClick = LoadBtnClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 574
    Height = 603
    Align = alClient
    TabOrder = 1
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 572
      Height = 601
      ActivePage = TabSheet1
      Align = alClient
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'M1..M30'
        object btnM1: TButton
          Tag = 1
          Left = 518
          Top = 1
          Width = 45
          Height = 18
          Caption = 'M1'
          TabOrder = 30
          OnClick = btnM1Click
        end
        object btnM2: TButton
          Tag = 2
          Left = 519
          Top = 20
          Width = 45
          Height = 18
          Caption = 'M2'
          TabOrder = 31
          OnClick = btnM1Click
        end
        object btnM3: TButton
          Tag = 3
          Left = 519
          Top = 39
          Width = 45
          Height = 18
          Caption = 'M3'
          TabOrder = 32
          OnClick = btnM1Click
        end
        object btnM4: TButton
          Tag = 4
          Left = 519
          Top = 58
          Width = 45
          Height = 18
          Caption = 'M4'
          TabOrder = 33
          OnClick = btnM1Click
        end
        object btnM5: TButton
          Tag = 5
          Left = 519
          Top = 77
          Width = 45
          Height = 18
          Caption = 'M5'
          TabOrder = 34
          OnClick = btnM1Click
        end
        object Edit1: TEdit
          Tag = 1
          Left = 0
          Top = 1
          Width = 517
          Height = 21
          TabOrder = 0
          OnChange = Edit1Change
        end
        object Edit2: TEdit
          Tag = 2
          Left = 0
          Top = 20
          Width = 517
          Height = 21
          TabOrder = 1
          OnChange = Edit1Change
        end
        object Edit3: TEdit
          Tag = 3
          Left = 0
          Top = 39
          Width = 517
          Height = 21
          TabOrder = 2
          OnChange = Edit1Change
        end
        object Edit4: TEdit
          Tag = 4
          Left = 0
          Top = 58
          Width = 517
          Height = 21
          TabOrder = 3
          OnChange = Edit1Change
        end
        object Edit5: TEdit
          Tag = 5
          Left = 0
          Top = 77
          Width = 517
          Height = 21
          TabOrder = 4
          OnChange = Edit1Change
        end
        object Edit6: TEdit
          Tag = 6
          Left = 0
          Top = 96
          Width = 517
          Height = 21
          TabOrder = 5
          OnChange = Edit1Change
        end
        object Edit7: TEdit
          Tag = 7
          Left = 0
          Top = 115
          Width = 517
          Height = 21
          TabOrder = 6
          OnChange = Edit1Change
        end
        object Edit8: TEdit
          Tag = 8
          Left = 0
          Top = 134
          Width = 517
          Height = 21
          TabOrder = 7
          OnChange = Edit1Change
        end
        object Edit9: TEdit
          Tag = 9
          Left = 0
          Top = 153
          Width = 517
          Height = 21
          TabOrder = 8
          OnChange = Edit1Change
        end
        object Edit10: TEdit
          Tag = 10
          Left = 0
          Top = 172
          Width = 517
          Height = 21
          TabOrder = 9
          OnChange = Edit1Change
        end
        object btnM6: TButton
          Tag = 6
          Left = 519
          Top = 97
          Width = 45
          Height = 18
          Caption = 'M6'
          TabOrder = 35
          OnClick = btnM1Click
        end
        object btnM7: TButton
          Tag = 7
          Left = 520
          Top = 116
          Width = 45
          Height = 18
          Caption = 'M7'
          TabOrder = 36
          OnClick = btnM1Click
        end
        object btnM8: TButton
          Tag = 8
          Left = 520
          Top = 136
          Width = 45
          Height = 18
          Caption = 'M8'
          TabOrder = 37
          OnClick = btnM1Click
        end
        object btnM9: TButton
          Tag = 9
          Left = 520
          Top = 155
          Width = 45
          Height = 18
          Caption = 'M9'
          TabOrder = 38
          OnClick = btnM1Click
        end
        object btnM10: TButton
          Tag = 10
          Left = 520
          Top = 174
          Width = 45
          Height = 18
          Caption = 'M10'
          TabOrder = 39
          OnClick = btnM1Click
        end
        object Edit11: TEdit
          Tag = 11
          Left = 0
          Top = 191
          Width = 517
          Height = 21
          TabOrder = 10
          OnChange = Edit1Change
        end
        object btnM11: TButton
          Tag = 11
          Left = 520
          Top = 193
          Width = 45
          Height = 18
          Caption = 'M11'
          TabOrder = 40
          OnClick = btnM1Click
        end
        object Edit12: TEdit
          Tag = 12
          Left = 0
          Top = 210
          Width = 517
          Height = 21
          TabOrder = 11
          OnChange = Edit1Change
        end
        object btnM12: TButton
          Tag = 12
          Left = 520
          Top = 212
          Width = 45
          Height = 18
          Caption = 'M12'
          TabOrder = 41
          OnClick = btnM1Click
        end
        object Edit13: TEdit
          Tag = 13
          Left = 0
          Top = 229
          Width = 517
          Height = 21
          TabOrder = 12
          OnChange = Edit1Change
        end
        object btnM13: TButton
          Tag = 13
          Left = 520
          Top = 231
          Width = 45
          Height = 18
          Caption = 'M13'
          TabOrder = 42
          OnClick = btnM1Click
        end
        object Edit14: TEdit
          Tag = 14
          Left = 0
          Top = 248
          Width = 517
          Height = 21
          TabOrder = 13
          OnChange = Edit1Change
        end
        object btnM14: TButton
          Tag = 14
          Left = 520
          Top = 250
          Width = 45
          Height = 18
          Caption = 'M14'
          TabOrder = 43
          OnClick = btnM1Click
        end
        object Edit15: TEdit
          Tag = 15
          Left = 0
          Top = 267
          Width = 517
          Height = 21
          TabOrder = 14
          OnChange = Edit1Change
        end
        object btnM15: TButton
          Tag = 15
          Left = 520
          Top = 269
          Width = 45
          Height = 18
          Caption = 'M15'
          TabOrder = 44
          OnClick = btnM1Click
        end
        object Edit16: TEdit
          Tag = 16
          Left = 0
          Top = 286
          Width = 517
          Height = 21
          TabOrder = 15
          OnChange = Edit1Change
        end
        object btnM16: TButton
          Tag = 16
          Left = 520
          Top = 289
          Width = 45
          Height = 18
          Caption = 'M16'
          TabOrder = 45
          OnClick = btnM1Click
        end
        object Edit17: TEdit
          Tag = 17
          Left = 0
          Top = 305
          Width = 517
          Height = 21
          TabOrder = 16
          OnChange = Edit1Change
        end
        object btnM17: TButton
          Tag = 17
          Left = 520
          Top = 307
          Width = 45
          Height = 18
          Caption = 'M17'
          TabOrder = 46
          OnClick = btnM1Click
        end
        object Edit18: TEdit
          Tag = 18
          Left = 0
          Top = 324
          Width = 517
          Height = 21
          TabOrder = 17
          OnChange = Edit1Change
        end
        object btnM18: TButton
          Tag = 18
          Left = 520
          Top = 325
          Width = 45
          Height = 18
          Caption = 'M18'
          TabOrder = 47
          OnClick = btnM1Click
        end
        object Edit19: TEdit
          Tag = 19
          Left = 0
          Top = 343
          Width = 517
          Height = 21
          TabOrder = 18
          OnChange = Edit1Change
        end
        object btnM19: TButton
          Tag = 19
          Left = 520
          Top = 344
          Width = 45
          Height = 18
          Caption = 'M19'
          TabOrder = 48
          OnClick = btnM1Click
        end
        object Edit20: TEdit
          Tag = 20
          Left = 0
          Top = 362
          Width = 517
          Height = 21
          TabOrder = 19
          OnChange = Edit1Change
        end
        object btnM20: TButton
          Tag = 20
          Left = 520
          Top = 363
          Width = 45
          Height = 18
          Caption = 'M20'
          TabOrder = 49
          OnClick = btnM1Click
        end
        object Edit21: TEdit
          Tag = 21
          Left = 0
          Top = 382
          Width = 517
          Height = 21
          TabOrder = 20
          OnChange = Edit1Change
        end
        object btnM21: TButton
          Tag = 21
          Left = 519
          Top = 383
          Width = 45
          Height = 18
          Caption = 'M21'
          TabOrder = 50
          OnClick = btnM1Click
        end
        object Edit22: TEdit
          Tag = 22
          Left = 0
          Top = 401
          Width = 517
          Height = 21
          TabOrder = 21
          OnChange = Edit1Change
        end
        object btnM22: TButton
          Tag = 22
          Left = 519
          Top = 403
          Width = 45
          Height = 18
          Caption = 'M22'
          TabOrder = 51
          OnClick = btnM1Click
        end
        object Edit23: TEdit
          Tag = 23
          Left = 0
          Top = 420
          Width = 517
          Height = 21
          TabOrder = 22
          OnChange = Edit1Change
        end
        object btnM23: TButton
          Tag = 23
          Left = 519
          Top = 423
          Width = 45
          Height = 18
          Caption = 'M23'
          TabOrder = 52
          OnClick = btnM1Click
        end
        object Edit24: TEdit
          Tag = 24
          Left = 0
          Top = 439
          Width = 517
          Height = 21
          TabOrder = 23
          OnChange = Edit1Change
        end
        object btnM24: TButton
          Tag = 24
          Left = 519
          Top = 442
          Width = 45
          Height = 18
          Caption = 'M24'
          TabOrder = 53
          OnClick = btnM1Click
        end
        object Edit25: TEdit
          Tag = 25
          Left = 0
          Top = 458
          Width = 517
          Height = 21
          TabOrder = 24
          OnChange = Edit1Change
        end
        object btnM25: TButton
          Tag = 25
          Left = 519
          Top = 461
          Width = 45
          Height = 18
          Caption = 'M25'
          TabOrder = 54
          OnClick = btnM1Click
        end
        object Edit26: TEdit
          Tag = 26
          Left = 0
          Top = 477
          Width = 517
          Height = 21
          TabOrder = 25
          OnChange = Edit1Change
        end
        object btnM26: TButton
          Tag = 26
          Left = 519
          Top = 480
          Width = 45
          Height = 18
          Caption = 'M26'
          TabOrder = 55
          OnClick = btnM1Click
        end
        object Edit27: TEdit
          Tag = 27
          Left = 0
          Top = 496
          Width = 517
          Height = 21
          TabOrder = 26
          OnChange = Edit1Change
        end
        object btnM27: TButton
          Tag = 27
          Left = 519
          Top = 499
          Width = 45
          Height = 18
          Caption = 'M27'
          TabOrder = 56
          OnClick = btnM1Click
        end
        object Edit28: TEdit
          Tag = 28
          Left = 0
          Top = 515
          Width = 517
          Height = 21
          TabOrder = 27
          OnChange = Edit1Change
        end
        object btnM28: TButton
          Tag = 28
          Left = 519
          Top = 517
          Width = 45
          Height = 18
          Caption = 'M28'
          TabOrder = 57
          OnClick = btnM1Click
        end
        object Edit29: TEdit
          Tag = 29
          Left = 0
          Top = 534
          Width = 517
          Height = 21
          TabOrder = 28
          OnChange = Edit1Change
        end
        object btnM29: TButton
          Tag = 29
          Left = 519
          Top = 535
          Width = 45
          Height = 18
          Caption = 'M29'
          TabOrder = 58
          OnClick = btnM1Click
        end
        object Edit30: TEdit
          Tag = 30
          Left = 0
          Top = 553
          Width = 517
          Height = 21
          TabOrder = 29
          OnChange = Edit1Change
        end
        object btnM30: TButton
          Tag = 30
          Left = 519
          Top = 554
          Width = 45
          Height = 18
          Caption = 'M30'
          TabOrder = 59
          OnClick = btnM1Click
        end
      end
      object TabSheet10: TTabSheet
        Caption = #1058#1077#1082#1089#1090
        ImageIndex = 9
        TabVisible = False
        object Memo1: TMemo
          Left = 0
          Top = 0
          Width = 564
          Height = 573
          Align = alClient
          Lines.Strings = (
            '# Terminal macro file')
          TabOrder = 0
          WordWrap = False
        end
      end
    end
    object CheckBox1: TCheckBox
      Left = 471
      Top = 3
      Width = 97
      Height = 15
      Caption = #1058#1077#1082#1089' '#1084#1072#1082#1088#1086#1089#1072
      TabOrder = 1
      OnClick = CheckBox1Click
    end
  end
  object FormStorage1: TFormStorage
    StoredValues = <>
    Left = 328
    Top = 49
  end
  object OpenDialog1: TOpenDialog
    Left = 360
    Top = 49
  end
  object SaveDialog1: TSaveDialog
    Left = 392
    Top = 49
  end
end
