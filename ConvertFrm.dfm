object ConvertForm: TConvertForm
  Left = 490
  Top = 130
  Width = 512
  Height = 463
  Caption = #1050#1086#1085#1074#1077#1088#1089#1080#1103' '#1077#1076#1080#1085#1080#1094' '#1080#1079#1084#1077#1088#1077#1085#1080#1103
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Icon.Data = {
    0000010001001010100000000000280100001600000028000000100000002000
    00000100040000000000C0000000000000000000000000000000000000000000
    000000008000008000000080800080000000800080008080000080808000C0C0
    C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF004445
    5555000000004455555000000000455557000000000055555787800000005555
    777788800000575777778880000070078778888800007000F888888800000000
    8F88888800070000888888777007000008888877777C000000F887776CCC0000
    000088776CCC00000000008CCCCC00000000077CCCCC00000000776CCCCC00FF
    000001FF000003FF0000007F0000001F0000001F0000600F0000700F0000F00E
    0000F0060000F8000000FC000000FF000000FFC00000FF800000FF000000}
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 496
    Height = 198
    Align = alTop
    Caption = #1044#1072#1090#1072' '#1080' '#1074#1088#1077#1084#1103
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 16
      Width = 92
      Height = 13
      Caption = #1089#1090#1072#1085#1076#1072#1088#1090' Microsoft'
    end
    object Label2: TLabel
      Left = 248
      Top = 16
      Width = 55
      Height = 13
      Caption = #1050#1072#1083#1077#1085#1076#1072#1088#1100
    end
    object Label3: TLabel
      Left = 8
      Top = 51
      Width = 188
      Height = 13
      Caption = #1089#1077#1082#1091#1085#1076' '#1089' 2000 '#1075#1086#1076#1072'            HEX (KMD)'
    end
    object Label4: TLabel
      Left = 8
      Top = 88
      Width = 200
      Height = 13
      Caption = #1089#1077#1082#1091#1085#1076' '#1089' 1980 '#1075#1086#1076#1072'           HEX (Praktica)'
    end
    object Label5: TLabel
      Left = 8
      Top = 157
      Width = 236
      Height = 13
      Caption = #1089#1091#1090#1086#1082' '#1089' 2000 '#1075#1086#1076#1072'             HEX (KMD FileNames)'
    end
    object Label10: TLabel
      Left = 8
      Top = 124
      Width = 191
      Height = 13
      Caption = #1089#1077#1082#1091#1085#1076' '#1089' 1970 '#1075#1086#1076#1072'           HEX (CDate)'
    end
    object DateTime1: TCurrencyEdit
      Left = 5
      Top = 29
      Width = 97
      Height = 22
      AutoSize = False
      DecimalPlaces = 8
      DisplayFormat = '0.00000000'
      TabOrder = 0
      OnChange = DateTime1Change
    end
    object Date1: TDateTimePicker
      Left = 246
      Top = 29
      Width = 105
      Height = 22
      Date = 38919.462284837970000000
      Time = 38919.462284837970000000
      TabOrder = 1
      OnChange = Date1Change
    end
    object Time1: TDateTimePicker
      Left = 351
      Top = 29
      Width = 101
      Height = 22
      Date = 38919.462284837970000000
      Time = 38919.462284837970000000
      Kind = dtkTime
      TabOrder = 2
      OnChange = Date1Change
    end
    object SpinEdit1: TSpinEdit
      Left = 5
      Top = 64
      Width = 97
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 3
      Value = 0
      OnChange = SpinEdit1Change
    end
    object SpinEdit2: TSpinEdit
      Left = 5
      Top = 101
      Width = 97
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 4
      Value = 0
      OnChange = SpinEdit2Change
    end
    object SpinEdit3: TSpinEdit
      Left = 5
      Top = 170
      Width = 97
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 5
      Value = 0
      OnChange = SpinEdit3Change
    end
    object HexEdit1: THexEdit
      Left = 104
      Top = 64
      Width = 97
      Height = 21
      NumBase = ebHex
      MaxValue = 0
      MinValue = 0
      TabOrder = 6
      Validate = True
      Value = 0
      OnChange = HexEdit1Change
      AllowUnitedBase = True
    end
    object HexEdit2: THexEdit
      Left = 104
      Top = 101
      Width = 97
      Height = 21
      NumBase = ebHex
      MaxValue = 0
      MinValue = 0
      TabOrder = 7
      Validate = True
      Value = 0
      OnChange = HexEdit2Change
      AllowUnitedBase = True
    end
    object HexEdit3: THexEdit
      Left = 104
      Top = 170
      Width = 97
      Height = 21
      NumBase = ebHex
      MaxValue = 0
      MinValue = 0
      TabOrder = 8
      Validate = True
      Value = 0
      OnChange = HexEdit3Change
      AllowUnitedBase = True
    end
    object ComboBox1: TComboBox
      Left = 246
      Top = 56
      Width = 105
      Height = 21
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 9
      Text = #1055#1086#1085#1077#1076#1077#1083#1100#1085#1080#1082
      Items.Strings = (
        #1055#1086#1085#1077#1076#1077#1083#1100#1085#1080#1082
        #1042#1090#1086#1088#1085#1080#1082
        #1057#1088#1077#1076#1072
        #1063#1077#1090#1074#1077#1088#1075
        #1055#1103#1090#1085#1080#1094#1072
        #1057#1091#1073#1073#1086#1090#1072
        #1042#1086#1089#1082#1088#1077#1089#1077#1085#1100#1077)
    end
    object SpinEdit4: TSpinEdit
      Left = 5
      Top = 137
      Width = 97
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 10
      Value = 0
      OnChange = SpinEdit4Change
    end
    object HexEdit6: THexEdit
      Left = 104
      Top = 137
      Width = 97
      Height = 21
      NumBase = ebHex
      MaxValue = 0
      MinValue = 0
      TabOrder = 11
      Validate = True
      Value = 0
      OnChange = HexEdit6Change
      AllowUnitedBase = True
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 198
    Width = 496
    Height = 72
    Align = alTop
    Caption = #1069#1085#1077#1088#1075#1080#1103
    TabOrder = 1
    object E1: TCurrencyEdit
      Left = 7
      Top = 18
      Width = 150
      Height = 22
      AutoSize = False
      DecimalPlaces = 16
      DisplayFormat = '0.0000000000000000'
      TabOrder = 0
      Value = 1.000000000000000000
      OnChange = E1Change
    end
    object E2: TCurrencyEdit
      Left = 7
      Top = 42
      Width = 150
      Height = 22
      AutoSize = False
      DecimalPlaces = 16
      DisplayFormat = '0.0000000000000000'
      TabOrder = 1
      OnChange = E2Change
    end
    object EI1: TComboBox
      Left = 351
      Top = 18
      Width = 101
      Height = 21
      ItemHeight = 13
      TabOrder = 2
      Text = #1044#1078#1086#1091#1083#1100
      OnChange = EDL1Change
      Items.Strings = (
        #1044#1078#1086#1091#1083#1100
        #1050#1072#1083#1086#1088#1080#1103
        #1042#1072#1090'/'#1095
        #1051'.'#1057'.')
    end
    object EDL1: TComboBox
      Left = 246
      Top = 18
      Width = 105
      Height = 21
      ItemHeight = 13
      TabOrder = 3
      OnChange = EDL1Change
      Items.Strings = (
        ''
        #1050#1080#1083#1086
        #1052#1077#1075#1072
        #1043#1080#1075#1072)
    end
    object EDL2: TComboBox
      Left = 246
      Top = 42
      Width = 105
      Height = 21
      ItemHeight = 13
      TabOrder = 4
      OnChange = EDL1Change
      Items.Strings = (
        ''
        #1050#1080#1083#1086
        #1052#1077#1075#1072
        #1043#1080#1075#1072)
    end
    object EI2: TComboBox
      Left = 351
      Top = 42
      Width = 101
      Height = 21
      ItemHeight = 13
      TabOrder = 5
      Text = #1044#1078#1086#1091#1083#1100
      OnChange = EDL1Change
      Items.Strings = (
        #1044#1078#1086#1091#1083#1100
        #1050#1072#1083#1086#1088#1080#1103
        #1042#1072#1090'/'#1095
        #1051'.'#1057'.')
    end
    object RadioButton1: TRadioButton
      Left = 175
      Top = 22
      Width = 33
      Height = 17
      Caption = '1'
      Checked = True
      TabOrder = 6
      TabStop = True
    end
    object RadioButton2: TRadioButton
      Left = 175
      Top = 46
      Width = 33
      Height = 17
      Caption = '2'
      TabOrder = 7
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 270
    Width = 496
    Height = 97
    Align = alClient
    Caption = #1050#1072#1083#1100#1082#1091#1083#1103#1090#1086#1088
    TabOrder = 2
    object Label6: TLabel
      Left = 6
      Top = 18
      Width = 8
      Height = 13
      Caption = 'D'
    end
    object Label7: TLabel
      Left = 70
      Top = 16
      Width = 8
      Height = 13
      Caption = 'H'
    end
    object Label8: TLabel
      Left = 4
      Top = 37
      Width = 13
      Height = 13
      Caption = 'B1'
    end
    object Label11: TLabel
      Left = 4
      Top = 78
      Width = 13
      Height = 13
      Caption = 'B2'
    end
    object Label12: TLabel
      Left = 6
      Top = 58
      Width = 8
      Height = 13
      Caption = 'D'
    end
    object Label13: TLabel
      Left = 70
      Top = 56
      Width = 8
      Height = 13
      Caption = 'H'
    end
    object BitMask1: TBitMask
      Left = 18
      Top = 35
      Width = 481
      Height = 17
      Hint = 
        #1041#1080#1090' 0'#13#10#1041#1080#1090' 1'#13#10#1041#1080#1090' 2'#13#10#1041#1080#1090' 3'#13#10#1041#1080#1090' 4'#13#10#1041#1080#1090' 5'#13#10#1041#1080#1090' 6'#13#10#1041#1080#1090' 7'#13#10#1041#1080#1090' 8'#13#10#1041 +
        #1080#1090' 9'#13#10#1041#1080#1090' 10'#13#10#1041#1080#1090' 11'#13#10#1041#1080#1090' 12'#13#10#1041#1080#1090' 13'#13#10#1041#1080#1090' 14'#13#10#1041#1080#1090' 15'#13#10#1041#1080#1090' 16'#13#10#1041#1080 +
        #1090' 17'#13#10#1041#1080#1090' 18'#13#10#1041#1080#1090' 19'#13#10#1041#1080#1090' 20'#13#10#1041#1080#1090' 21'#13#10#1041#1080#1090' 22'#13#10#1041#1080#1090' 23'#13#10#1041#1080#1090' 24'#13#10#1041#1080 +
        #1090' 25'#13#10#1041#1080#1090' 26'#13#10#1041#1080#1090' 27'#13#10#1041#1080#1090' 28'#13#10#1041#1080#1090' 29'#13#10#1041#1080#1090' 30'#13#10#1041#1080#1090' 31'
      Size = 32
      Value = 0
      OnChange = HexEdit_D1Change
      Enabled = True
    end
    object HexEdit_H1: THexEdit
      Left = 82
      Top = 14
      Width = 47
      Height = 21
      NumBase = ebHex
      MaxValue = 0
      MinValue = 0
      TabOrder = 1
      Validate = True
      Value = 0
      OnChange = HexEdit_D1Change
      AllowUnitedBase = False
    end
    object HexEdit_D1: THexEdit
      Left = 18
      Top = 14
      Width = 47
      Height = 21
      NumBase = ebDec
      MaxValue = 0
      MinValue = 0
      TabOrder = 2
      Validate = True
      Value = 0
      OnChange = HexEdit_D1Change
      AllowUnitedBase = False
    end
    object Memo1: TMemo
      Left = 144
      Top = 13
      Width = 354
      Height = 20
      Hint = 
        #1041#1080#1090#1086#1074#1072#1103' '#1088#1072#1089#1082#1083#1072#1076#1082#1072' '#1085#1072' '#1089#1083#1086#1074#1086' 1 (B1)'#13#10#1055#1086' '#1087#1088#1072#1074#1086#1081' '#1082#1083#1072#1074#1080#1096#1077' '#1074#1089#1087#1083#1099#1074#1072#1102#1097#1077#1077 +
        ' '#1084#1077#1085#1102' '#13#10#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1103' '#1093#1080#1085#1090#1086#1074
      PopupMenu = PopupMenu1
      TabOrder = 3
    end
    object BitMask2: TBitMask
      Left = 18
      Top = 76
      Width = 481
      Height = 17
      Hint = 
        #1041#1080#1090' 0'#13#10#1041#1080#1090' 1'#13#10#1041#1080#1090' 2'#13#10#1041#1080#1090' 3'#13#10#1041#1080#1090' 4'#13#10#1041#1080#1090' 5'#13#10#1041#1080#1090' 6'#13#10#1041#1080#1090' 7'#13#10#1041#1080#1090' 8'#13#10#1041 +
        #1080#1090' 9'#13#10#1041#1080#1090' 10'#13#10#1041#1080#1090' 11'#13#10#1041#1080#1090' 12'#13#10#1041#1080#1090' 13'#13#10#1041#1080#1090' 14'#13#10#1041#1080#1090' 15'#13#10#1041#1080#1090' 16'#13#10#1041#1080 +
        #1090' 17'#13#10#1041#1080#1090' 18'#13#10#1041#1080#1090' 19'#13#10#1041#1080#1090' 20'#13#10#1041#1080#1090' 21'#13#10#1041#1080#1090' 22'#13#10#1041#1080#1090' 23'#13#10#1041#1080#1090' 24'#13#10#1041#1080 +
        #1090' 25'#13#10#1041#1080#1090' 26'#13#10#1041#1080#1090' 27'#13#10#1041#1080#1090' 28'#13#10#1041#1080#1090' 29'#13#10#1041#1080#1090' 30'#13#10#1041#1080#1090' 31'
      Size = 32
      Value = 0
      OnChange = HexEdit_D1Change
      Enabled = True
    end
    object Memo2: TMemo
      Left = 144
      Top = 54
      Width = 354
      Height = 20
      Hint = 
        #1041#1080#1090#1086#1074#1072#1103' '#1088#1072#1089#1082#1083#1072#1076#1082#1072' '#1085#1072' '#1089#1083#1086#1074#1086' 1 (B1)'#13#10#1055#1086' '#1087#1088#1072#1074#1086#1081' '#1082#1083#1072#1074#1080#1096#1077' '#1074#1089#1087#1083#1099#1074#1072#1102#1097#1077#1077 +
        ' '#1084#1077#1085#1102' '#13#10#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1103' '#1093#1080#1085#1090#1086#1074
      PopupMenu = PopupMenu2
      TabOrder = 5
    end
    object HexEdit_D2: THexEdit
      Left = 18
      Top = 54
      Width = 47
      Height = 21
      NumBase = ebDec
      MaxValue = 0
      MinValue = 0
      TabOrder = 6
      Validate = True
      Value = 0
      OnChange = HexEdit_D2Change
      AllowUnitedBase = False
    end
    object HexEdit_H2: THexEdit
      Left = 82
      Top = 54
      Width = 47
      Height = 21
      NumBase = ebHex
      MaxValue = 0
      MinValue = 0
      TabOrder = 7
      Validate = True
      Value = 0
      OnChange = HexEdit_D2Change
      AllowUnitedBase = False
    end
  end
  object GroupBox4: TGroupBox
    Left = 0
    Top = 367
    Width = 496
    Height = 57
    Align = alBottom
    Caption = 'Float'
    TabOrder = 3
    object Label9: TLabel
      Left = 8
      Top = 11
      Width = 389
      Height = 13
      Caption = 
        'Single                      HEX                           HEX Lo' +
        'gika                 HEX Microchip32'
    end
    object SingleEdt: TCurrencyEdit
      Left = 5
      Top = 24
      Width = 97
      Height = 22
      AutoSize = False
      DecimalPlaces = 8
      DisplayFormat = '0.00000000'
      TabOrder = 0
      OnChange = SingleEdtChange
    end
    object FHexEdit: THexEdit
      Left = 104
      Top = 23
      Width = 97
      Height = 21
      NumBase = ebHex
      MaxValue = 0
      MinValue = 0
      TabOrder = 1
      Validate = True
      Value = 0
      OnChange = FHexEditChange
      AllowUnitedBase = True
    end
    object LHexEdit: THexEdit
      Left = 204
      Top = 24
      Width = 97
      Height = 21
      NumBase = ebHex
      MaxValue = 0
      MinValue = 0
      TabOrder = 2
      Validate = True
      Value = 0
      OnChange = LHexEditChange
      AllowUnitedBase = True
    end
    object M32HexEdit: THexEdit
      Left = 303
      Top = 24
      Width = 97
      Height = 21
      NumBase = ebHex
      MaxValue = 0
      MinValue = 0
      TabOrder = 3
      Validate = True
      Value = 0
      OnChange = M32HexEditChange
      AllowUnitedBase = True
    end
  end
  object FormStorage1: TFormStorage
    Options = []
    UseRegistry = False
    StoredProps.Strings = (
      'DateTime1.Value'
      'Date1.Date'
      'Time1.Time'
      'E1.Value'
      'EDL1.ItemIndex'
      'EDL2.ItemIndex'
      'EI1.ItemIndex'
      'EI2.ItemIndex'
      'E2.Value'
      'BitMask1.Hint'
      'BitMask2.Hint')
    StoredValues = <>
    Left = 376
    Top = 16
  end
  object PopupMenu1: TPopupMenu
    Left = 208
    Top = 302
    object N11: TMenuItem
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1093#1080#1085#1090#1099' '#1089#1083#1086#1074#1072' 1'
      OnClick = N11Click
    end
    object N1: TMenuItem
      Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1093#1080#1085#1090#1099'...'
      OnClick = N1Click
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 352
    Top = 302
    object MenuItem1: TMenuItem
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1093#1080#1085#1090#1099' '#1089#1083#1086#1074#1072' 2'
      OnClick = MenuItem1Click
    end
    object N2: TMenuItem
      Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1093#1080#1085#1090#1099'...'
      OnClick = N2Click
    end
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '*.TXT'
    FileName = '*.txt'
    Filter = '*.txt'
    FilterIndex = 0
    Left = 296
    Top = 88
  end
end
