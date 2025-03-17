object BaseForm: TBaseForm
  Tag = 500
  Left = 278
  Top = 178
  Width = 1334
  Height = 733
  Caption = '-'
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Icon.Data = {
    0000010001002020100000000000E80200001600000028000000200000004000
    0000010004000000000000020000000000000000000000000000000000000000
    0000000080000080000000808000800000008000800080800000C0C0C0008080
    80000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000077000000000000000000000000000000
    0770000000000000000000000000000000770000000000000000000000000000
    7707700777000000000000000000000777707707777700000000000000000007
    7777777777777000000000000000000700000000007777000000000000000000
    7777777777707770000000000000000007777777777707770000000000000000
    0077777777777077700000000000000000077777777777077700000000000000
    0000777777777770770000000000000000000777777777777700000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000FFFFFFFFFFFFFFF000000
    00000000000F0F0F0F0F0F0F0F00000000000000000FFFFFFFFFFFFFFF000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000077000000000000000000000000000000077000000000
    000000000000000000000000000000000000000000000000000000000000FFFF
    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3FFFFFFE1FFFFFFF0FF
    FFFFF003FFFFE000FFFFC0007FFFC0003FFFC0001FFFE0000FFFF00007FFF800
    03FFFC0001FFFE0001FFFF0001FFFF8003FFFFFFFFFFFFFE0003FFFC0001FFFC
    0000FFFC0000FFFE0000FFFF0001FFFFFE1FFFFFFF0FFFFFFF8FFFFFFFFF}
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnCanResize = FormCanResize
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 136
    Top = 40
    Width = 31
    Height = 13
    Caption = 'Label1'
  end
  object nrSemaphore1: TnrSemaphore
    Left = 568
    Top = 256
    Width = 16
    Height = 16
    StretchImage = False
    Blink = False
    BlinkInterval = 100
    Checked = True
    ImageChecked = 0
    ImageUnChecked = 0
    Pulse = False
    PulseDuration = 1000
    Style3D = nrs3DSphere
    Transparent = True
    Color3DCheck = clBlue
    Color3DUnCheck = clRed
    Frame3D = False
  end
  object Splitter1: TSplitter
    Left = 999
    Top = 33
    Width = 5
    Height = 622
    Align = alRight
    Color = clGray
    ParentColor = False
    OnCanResize = Splitter1CanResize
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 1318
    Height = 33
    ButtonWidth = 31
    Caption = 'ToolBar1'
    Images = ImageList1
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    object ToolButton4: TToolButton
      Left = 0
      Top = 2
      Action = aPortOpen
    end
    object ToolButton5: TToolButton
      Left = 31
      Top = 2
      Action = aPortClose
    end
    object ToolButton20: TToolButton
      Left = 62
      Top = 2
      Width = 8
      Caption = 'ToolButton20'
      ImageIndex = 6
      Style = tbsSeparator
    end
    object BottonPanelBtn: TToolButton
      Left = 70
      Top = 2
      Hint = #1042#1080#1076#1080#1084#1086#1089#1090#1100' '#1085#1080#1078#1085#1077#1081' '#1087#1072#1085#1077#1083#1080': '#13'"'#1050#1086#1085#1074#1077#1088#1090#1086#1088' '#1074#1099#1076#1077#1083#1077#1085#1085#1099#1093' '#1074#1077#1083#1080#1095#1080#1085'"'
      Caption = #1053#1080#1078#1085#1103#1103' '#1087#1072#1085#1077#1083#1100
      Down = True
      ImageIndex = 47
      Style = tbsCheck
      OnClick = aBottomPnlExecute
    end
    object ToolButton6: TToolButton
      Left = 101
      Top = 2
      Hint = 
        #1042#1080#1076#1080#1084#1086#1089#1090#1100' '#1087#1088#1072#1074#1086#1081' '#1087#1072#1085#1077#1083#1080':'#13'"'#1055#1086#1076#1082#1083#1102#1095#1077#1085#1080#1077','#1053#1072#1089#1090#1088#1086#1081#1082#1080', '#1057#1077#1088#1074#1080#1089', '#1052#1072#1082#1088#1086#1089#1099 +
        '"'
      Action = aEditDopSetUp
    end
    object DispUnitsBtn: TToolButton
      Left = 132
      Top = 2
      Hint = #1044#1080#1089#1087#1077#1090#1095#1077#1088' '#1091#1089#1090#1088#1086#1081#1089#1090#1074
      Caption = 'DispUnitsBtn'
      ImageIndex = 61
      OnClick = DispUnitsBtnClick
    end
    object ToolButton14: TToolButton
      Left = 163
      Top = 2
      Width = 8
      Caption = 'ToolButton14'
      ImageIndex = 7
      Style = tbsSeparator
    end
    object ToolButton16: TToolButton
      Left = 171
      Top = 2
      Width = 8
      Caption = 'ToolButton16'
      ImageIndex = 6
      Style = tbsSeparator
    end
    object ToolButton1: TToolButton
      Left = 179
      Top = 2
      Action = aAbout
    end
    object ToolButton21: TToolButton
      Left = 210
      Top = 2
      Width = 8
      Caption = 'ToolButton21'
      ImageIndex = 6
      Style = tbsSeparator
    end
    object labMakrosFileName: TLabel
      Left = 218
      Top = 2
      Width = 3
      Height = 22
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object MacrosLabel: TPanel
      Left = 221
      Top = 2
      Width = 523
      Height = 22
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = #1040#1082#1090#1080#1074#1085#1099#1081' '#1092#1072#1081#1083' '#1084#1072#1082#1088#1086#1089#1086#1074
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
  end
  object Status: TStatusBar
    Left = 0
    Top = 655
    Width = 1318
    Height = 19
    Panels = <
      item
        Width = 300
      end
      item
        Width = 200
      end
      item
        Width = 400
      end
      item
        Text = '*'
        Width = 15
      end
      item
        Text = '*'
        Width = 15
      end
      item
        Text = '*'
        Width = 15
      end
      item
        Text = '*'
        Width = 15
      end
      item
        Text = '*'
        Width = 15
      end
      item
        Width = 250
      end>
  end
  object WorkPanel: TPanel
    Left = 0
    Top = 33
    Width = 999
    Height = 622
    Align = alClient
    BorderWidth = 2
    Caption = 'WorkPanel'
    Color = 14933983
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = 13500416
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object ProgressBar1: TProgressBar
      Left = 12
      Top = 168
      Width = 345
      Height = 16
      BorderWidth = 1
      Step = 1
      TabOrder = 0
    end
    object Panel5: TPanel
      Left = 3
      Top = 3
      Width = 993
      Height = 616
      Align = alClient
      BorderWidth = 2
      Caption = 'Panel5'
      Color = 14933983
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = 13500416
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object GroupBox2: TGroupBox
        Left = 3
        Top = 74
        Width = 987
        Height = 539
        Align = alClient
        Caption = ' '#1055#1088#1086#1090#1086#1082#1086#1083' '
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Splitter2: TSplitter
          Left = 2
          Top = 316
          Width = 983
          Height = 5
          Cursor = crVSplit
          Align = alBottom
          Color = clGray
          ParentColor = False
        end
        object FillEditBar: TProgressBar
          Left = 2
          Top = 530
          Width = 983
          Height = 7
          Hint = 
            #1053#1072#1087#1086#1083#1085#1077#1085#1085#1086#1089#1090#1100' '#1073#1091#1092#1077#1088#1072' '#1086#1073#1084#1077#1085#1072#13#1052#1072#1082#1089#1080#1084#1072#1083#1100#1085#1086#1077' '#1079#1085#1072#1095#1077#1085#1080#1077' '#1073#1091#1092#1077#1088#1072' '#13#1073#1077#1088#1077#1090#1089 +
            #1103' '#1080#1079' '#1085#1072#1089#1090#1088#1086#1077#1082
          Align = alBottom
          Max = 6500
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
        end
        object Panel7: TPanel
          Left = 2
          Top = 15
          Width = 983
          Height = 301
          Align = alClient
          Caption = 'Panel7'
          TabOrder = 1
          object PageControl2: TPageControl
            Left = 1
            Top = 30
            Width = 981
            Height = 270
            ActivePage = TabSheet6
            Align = alClient
            MultiLine = True
            TabOrder = 0
            TabPosition = tpRight
            object TabSheet6: TTabSheet
              Caption = #1044#1072#1085#1085#1099#1077
              object Panel3: TPanel
                Left = 0
                Top = 0
                Width = 953
                Height = 262
                Align = alClient
                Caption = #1087#1072#1085#1077#1083#1100' '#1087#1086#1090#1086#1082#1072' '#1076#1072#1085#1085#1099#1093
                DockSite = True
                DragKind = dkDock
                TabOrder = 0
                object GroupBox7: TGroupBox
                  Left = 1
                  Top = 1
                  Width = 951
                  Height = 260
                  Align = alClient
                  Caption = ' '#1087#1086#1090#1086#1082' '#1076#1072#1085#1085#1099#1093' '
                  DragKind = dkDock
                  DragMode = dmAutomatic
                  TabOrder = 0
                  OnClick = GroupBox7Click
                  OnEndDock = GroupBox7EndDock
                  object lblSearchResult: TLabel
                    Left = 112
                    Top = 0
                    Width = 481
                    Height = 13
                    AutoSize = False
                    Caption = 'lblSearchResult'
                    Font.Charset = RUSSIAN_CHARSET
                    Font.Color = clRed
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                    Visible = False
                  end
                  object InputBuf: TMemo
                    Left = 2
                    Top = 15
                    Width = 947
                    Height = 243
                    Align = alClient
                    Font.Charset = RUSSIAN_CHARSET
                    Font.Color = clGray
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                    ScrollBars = ssVertical
                    TabOrder = 0
                    OnChange = eInputBufChange
                    OnMouseMove = eInputBufMouseMove
                    OnMouseUp = eInputBufMouseUp
                  end
                  object eInputBuf: TSynEdit
                    Left = 2
                    Top = 15
                    Width = 947
                    Height = 243
                    Align = alClient
                    Font.Charset = RUSSIAN_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    PopupMenu = PopupMenu2
                    TabOrder = 1
                    Visible = False
                    OnKeyDown = eInputBufKeyDown
                    OnMouseMove = eInputBufMouseMove
                    OnMouseUp = eInputBufMouseUp
                    BorderStyle = bsNone
                    Gutter.AutoSize = True
                    Gutter.Font.Charset = RUSSIAN_CHARSET
                    Gutter.Font.Color = clWindowText
                    Gutter.Font.Height = -11
                    Gutter.Font.Name = 'Courier New'
                    Gutter.Font.Style = []
                    Highlighter = SynSQLSyn1
                    MaxScrollWidth = 80
                    Options = [eoAutoIndent, eoDragDropEditing, eoDropFiles, eoEnhanceEndKey, eoGroupUndo, eoScrollPastEol, eoShowScrollHint, eoSmartTabDelete, eoSmartTabs, eoTabsToSpaces]
                    ScrollHintFormat = shfTopToBottom
                    SearchEngine = SynEditSearch1
                    SelectedColor.Background = clTeal
                    SelectedColor.Foreground = clMoneyGreen
                    OnChange = eInputBufChange
                    OnDropFiles = eInputBufDropFiles
                    FontSmoothing = fsmNone
                  end
                end
              end
            end
            object tsSystemJournal: TTabSheet
              Caption = #1057#1080#1089#1090#1077#1084#1099#1077' '#1089#1086#1086#1073#1097#1077#1085#1080#1103
              ImageIndex = 1
              TabVisible = False
              object Panel6: TPanel
                Left = 0
                Top = 0
                Width = 953
                Height = 262
                Align = alClient
                Caption = #1087#1072#1085#1077#1083#1100' '#1087#1086#1090#1086#1082#1072' '#1089#1080#1089#1090#1077#1084#1085#1099#1093' '#1089#1086#1086#1073#1097#1077#1085#1080#1081
                DockSite = True
                TabOrder = 0
                object GroupBox5: TGroupBox
                  Left = 1
                  Top = 1
                  Width = 951
                  Height = 260
                  Align = alClient
                  Caption = ' '#1087#1086#1090#1086#1082' '#1089#1086#1086#1073#1097#1077#1085#1080#1081' '
                  DragKind = dkDock
                  DragMode = dmAutomatic
                  TabOrder = 0
                  object SystemMemo: TMemo
                    Left = 2
                    Top = 15
                    Width = 947
                    Height = 243
                    Align = alClient
                    Font.Charset = RUSSIAN_CHARSET
                    Font.Color = clGray
                    Font.Height = -16
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                    ScrollBars = ssVertical
                    TabOrder = 0
                    OnChange = SystemMemoChange
                  end
                end
              end
            end
            object tsSignal: TTabSheet
              Caption = #1057#1080#1075#1085#1072#1083
              ImageIndex = 2
              TabVisible = False
              object GroupBox13: TGroupBox
                Left = 0
                Top = 49
                Width = 953
                Height = 213
                Align = alClient
                Caption = ' '#1087#1086#1090#1086#1082' '#1079#1085#1072#1095#1077#1085#1080#1081
                DragKind = dkDock
                DragMode = dmAutomatic
                TabOrder = 0
              end
              object PageControl3: TPageControl
                Left = 0
                Top = 49
                Width = 953
                Height = 213
                ActivePage = TabSheet12
                Align = alClient
                TabOrder = 1
                object TabSheet11: TTabSheet
                  Caption = #1043#1088#1072#1092#1080#1082
                  object Chart1: TChart
                    Left = 0
                    Top = 0
                    Width = 1194
                    Height = 417
                    BackWall.Brush.Color = clWhite
                    BackWall.Brush.Style = bsClear
                    Gradient.EndColor = 14275259
                    Gradient.Visible = True
                    MarginLeft = 4
                    MarginTop = 15
                    Title.Text.Strings = (
                      #1054#1090#1086#1087#1083#1077#1085#1080#1077)
                    Title.Visible = False
                    BottomAxis.Increment = 0.000694444444444444
                    BottomAxis.Title.Caption = #1042#1088#1077#1084#1103
                    LeftAxis.AxisValuesFormat = '#'
                    LeftAxis.StartPosition = 5.000000000000000000
                    LeftAxis.EndPosition = 95.000000000000000000
                    LeftAxis.TitleSize = 6
                    Legend.Alignment = laBottom
                    Legend.Visible = False
                    RightAxis.Automatic = False
                    RightAxis.AutomaticMaximum = False
                    RightAxis.AutomaticMinimum = False
                    RightAxis.Maximum = 1.500000000000000000
                    RightAxis.Minimum = -0.500000000000000000
                    RightAxis.Visible = False
                    TopAxis.Visible = False
                    View3D = False
                    View3DWalls = False
                    Align = alClient
                    BevelOuter = bvNone
                    Color = 3355443
                    TabOrder = 0
                    object Series1: TFastLineSeries
                      Marks.ArrowLength = 8
                      Marks.Visible = False
                      SeriesColor = 33023
                      Title = #1050#1072#1085#1072#1083' 1'
                      ValueFormat = '#'
                      LinePen.Color = 33023
                      LinePen.Width = 2
                      XValues.DateTime = True
                      XValues.Name = 'X'
                      XValues.Multiplier = 1.000000000000000000
                      XValues.Order = loAscending
                      YValues.DateTime = False
                      YValues.Name = 'Y'
                      YValues.Multiplier = 1.000000000000000000
                      YValues.Order = loNone
                    end
                    object Series2: TFastLineSeries
                      Marks.ArrowLength = 8
                      Marks.Visible = False
                      SeriesColor = clGreen
                      Title = #1050#1072#1085#1072#1083' 2'
                      ValueFormat = '#'
                      LinePen.Color = clGreen
                      LinePen.Width = 2
                      XValues.DateTime = True
                      XValues.Name = 'X'
                      XValues.Multiplier = 1.000000000000000000
                      XValues.Order = loAscending
                      YValues.DateTime = False
                      YValues.Name = 'Y'
                      YValues.Multiplier = 1.000000000000000000
                      YValues.Order = loNone
                    end
                    object Series3: TFastLineSeries
                      Marks.ArrowLength = 8
                      Marks.Visible = False
                      SeriesColor = clBlue
                      Title = #1050#1072#1085#1072#1083' 3'
                      ValueFormat = '#'
                      LinePen.Color = clBlue
                      LinePen.Width = 2
                      XValues.DateTime = True
                      XValues.Name = 'X'
                      XValues.Multiplier = 1.000000000000000000
                      XValues.Order = loAscending
                      YValues.DateTime = False
                      YValues.Name = 'Y'
                      YValues.Multiplier = 1.000000000000000000
                      YValues.Order = loNone
                    end
                    object Series4: TFastLineSeries
                      Marks.ArrowLength = 8
                      Marks.Visible = False
                      SeriesColor = clRed
                      Title = #1050#1072#1085#1072#1083' 4'
                      ValueFormat = '#'
                      LinePen.Color = clRed
                      LinePen.Width = 2
                      XValues.DateTime = True
                      XValues.Name = 'X'
                      XValues.Multiplier = 1.000000000000000000
                      XValues.Order = loAscending
                      YValues.DateTime = False
                      YValues.Name = 'Y'
                      YValues.Multiplier = 1.000000000000000000
                      YValues.Order = loNone
                    end
                  end
                end
                object TabSheet12: TTabSheet
                  Caption = #1058#1072#1073#1083#1080#1094#1072
                  ImageIndex = 1
                  object gvGraph: TGridView
                    Left = 0
                    Top = 0
                    Width = 945
                    Height = 185
                    Align = alClient
                    Columns = <
                      item
                        Caption = #1042#1088#1077#1084#1103
                        DefWidth = 120
                      end
                      item
                        DefWidth = 120
                      end
                      item
                        DefWidth = 120
                      end
                      item
                        DefWidth = 120
                      end
                      item
                        DefWidth = 120
                      end>
                    Header.Sections = <
                      item
                        Caption = #1042#1088#1077#1084#1103
                        Width = 120
                      end
                      item
                        Caption = #1050#1072#1085#1072#1083' 1'
                        Width = 120
                      end
                      item
                        Caption = #1050#1072#1085#1072#1083' 2'
                        Width = 120
                      end
                      item
                        Caption = #1050#1072#1085#1072#1083' 3'
                        Width = 120
                      end
                      item
                        Caption = #1050#1072#1085#1072#1083' 4'
                        Width = 120
                      end>
                    Header.Synchronized = True
                    ImageHighlight = False
                    ShowCellTips = False
                    TabOrder = 0
                    OnGetCellText = gvGraphGetCellText
                  end
                end
              end
              object Panel2: TPanel
                Left = 0
                Top = 0
                Width = 953
                Height = 49
                Align = alTop
                BevelOuter = bvNone
                TabOrder = 2
                object Margin_DOWN_UP_Btn: TSpeedButton
                  Left = 3
                  Top = 0
                  Width = 21
                  Height = 22
                  Hint = '40'
                  Enabled = False
                  Glyph.Data = {
                    F6000000424DF600000000000000760000002800000010000000100000000100
                    04000000000080000000120B0000120B00001000000010000000000000000000
                    8000008000000080800080000000800080008080000080808000C0C0C0000000
                    FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADAD0DADA
                    DADAADADAD0D0DADADADDADAD0DAD0DADADAADAD0DADAD0DADADDAD0DADADAD0
                    DADAAD0DADADADAD0DADD0DADADADADAD0DA00000DADAD00000DDADA0ADADA0A
                    DADAADAD0DADAD0DADADDADA0ADADA0ADADAADAD0DADAD0DADADDADA0ADADA0A
                    DADAADAD0DADAD0DADADDADA0000000ADADAADADADADADADADAD}
                  ParentShowHint = False
                  ShowHint = False
                  OnClick = Margin_DOWN_UP_BtnClick
                end
                object Margin_DOWN_DOWN_Btn: TSpeedButton
                  Left = 74
                  Top = 0
                  Width = 21
                  Height = 22
                  Hint = '18'
                  Enabled = False
                  Glyph.Data = {
                    F6000000424DF600000000000000760000002800000010000000100000000100
                    04000000000080000000120B0000120B00001000000010000000000000000000
                    8000008000000080800080000000800080008080000080808000C0C0C0000000
                    FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADA0000000A
                    DADAADAD0DADAD0DADADDADA0ADADA0ADADAADAD0DADAD0DADADDADA0ADADA0A
                    DADAADAD0DADAD0DADADDADA0ADADA0ADADA00000DADAD00000DD0DADADADADA
                    D0DAAD0DADADADAD0DADDAD0DADADAD0DADAADAD0DADAD0DADADDADAD0DAD0DA
                    DADAADADAD0D0DADADADDADADAD0DADADADAADADADADADADADAD}
                  OnClick = Margin_DOWN_DOWN_BtnClick
                end
                object Margin_NOMINAL_Btn: TSpeedButton
                  Left = 97
                  Top = 0
                  Width = 23
                  Height = 22
                  Enabled = False
                  Glyph.Data = {
                    F6000000424DF600000000000000760000002800000010000000100000000100
                    04000000000080000000120B0000120B00001000000010000000000000000000
                    8000008000000080800080000000800080008080000080808000C0C0C0000000
                    FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADAD00ADA
                    DADAADADA70DA07DADADDADA000AD000DADAADADAD0DA0ADADAD0000000AD000
                    00000DADADADADADADA00ADADADADADADAD00DADADADADADADA00ADADADADADA
                    DAD00DADADADADADADA00ADADADADADADAD00000000DA0000000DADADA0AD0DA
                    DADAADAD000DA000ADADDADAD70AD07ADADAADADADA00DADADAD}
                  OnClick = Margin_NOMINAL_BtnClick
                end
                object Margin_UP_UP_Btn: TSpeedButton
                  Left = 121
                  Top = 0
                  Width = 21
                  Height = 22
                  Hint = '40'
                  Enabled = False
                  Glyph.Data = {
                    F6000000424DF600000000000000760000002800000010000000100000000100
                    04000000000080000000120B0000120B00001000000010000000000000000000
                    8000008000000080800080000000800080008080000080808000C0C0C0000000
                    FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADAD0DADA
                    DADAADADAD0D0DADADADDADAD0DAD0DADADAADAD0DADAD0DADADDAD0DADADAD0
                    DADAAD0DADADADAD0DADD0DADADADADAD0DA00000DADAD00000DDADA0ADADA0A
                    DADAADAD0DADAD0DADADDADA0ADADA0ADADAADAD0DADAD0DADADDADA0ADADA0A
                    DADAADAD0DADAD0DADADDADA0000000ADADAADADADADADADADAD}
                  ParentShowHint = False
                  ShowHint = False
                  OnClick = Margin_UP_UP_BtnClick
                end
                object Margin_UP_DOWN_Btn: TSpeedButton
                  Left = 192
                  Top = 0
                  Width = 21
                  Height = 22
                  Hint = '18'
                  Enabled = False
                  Glyph.Data = {
                    F6000000424DF600000000000000760000002800000010000000100000000100
                    04000000000080000000120B0000120B00001000000010000000000000000000
                    8000008000000080800080000000800080008080000080808000C0C0C0000000
                    FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADA0000000A
                    DADAADAD0DADAD0DADADDADA0ADADA0ADADAADAD0DADAD0DADADDADA0ADADA0A
                    DADAADAD0DADAD0DADADDADA0ADADA0ADADA00000DADAD00000DD0DADADADADA
                    D0DAAD0DADADADAD0DADDAD0DADADAD0DADAADAD0DADAD0DADADDADAD0DAD0DA
                    DADAADADAD0D0DADADADDADADAD0DADADADAADADADADADADADAD}
                  OnClick = Margin_UP_DOWN_BtnClick
                end
                object Label53: TLabel
                  Left = 0
                  Top = 27
                  Width = 49
                  Height = 13
                  Caption = #1055#1088#1086#1090#1086#1082#1086#1083
                end
                object Label56: TLabel
                  Left = 511
                  Top = 28
                  Width = 293
                  Height = 13
                  Caption = 
                    #1057#1090#1072#1088#1090#1086#1074#1099#1081' '#1089#1080#1084#1074#1086#1083'                 '#1057#1084#1077#1097#1077#1085#1080#1077'                     '#1044#1083 +
                    #1080#1085#1072
                end
                object VisibleS1: TCheckBox
                  Left = 224
                  Top = 3
                  Width = 68
                  Height = 17
                  Caption = #1050#1072#1085#1072#1083' 1'
                  Checked = True
                  Color = clBtnFace
                  Font.Charset = RUSSIAN_CHARSET
                  Font.Color = clOlive
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentColor = False
                  ParentFont = False
                  State = cbChecked
                  TabOrder = 0
                  OnClick = VisibleS1Click
                end
                object VisibleS2: TCheckBox
                  Tag = 1
                  Left = 295
                  Top = 3
                  Width = 68
                  Height = 17
                  Caption = #1050#1072#1085#1072#1083' 2'
                  Checked = True
                  Font.Charset = RUSSIAN_CHARSET
                  Font.Color = clGreen
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  State = cbChecked
                  TabOrder = 1
                  OnClick = VisibleS1Click
                end
                object VisibleS3: TCheckBox
                  Tag = 2
                  Left = 365
                  Top = 3
                  Width = 68
                  Height = 17
                  Caption = #1050#1072#1085#1072#1083' 3'
                  Checked = True
                  Font.Charset = RUSSIAN_CHARSET
                  Font.Color = clBlue
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  State = cbChecked
                  TabOrder = 2
                  OnClick = VisibleS1Click
                end
                object VisibleS4: TCheckBox
                  Tag = 3
                  Left = 434
                  Top = 3
                  Width = 68
                  Height = 17
                  Caption = #1050#1072#1085#1072#1083' 4'
                  Checked = True
                  Font.Charset = RUSSIAN_CHARSET
                  Font.Color = clRed
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  State = cbChecked
                  TabOrder = 3
                  OnClick = VisibleS1Click
                end
                object cbAutoAxis: TCheckBox
                  Tag = 3
                  Left = 513
                  Top = 3
                  Width = 77
                  Height = 17
                  Caption = #1040#1074#1090#1086#1096#1082#1072#1083#1072
                  Checked = True
                  State = cbChecked
                  TabOrder = 4
                  OnClick = cbAutoAxisClick
                end
                object MinValue: TSpinEdit
                  Left = 141
                  Top = 0
                  Width = 47
                  Height = 22
                  MaxValue = 0
                  MinValue = 0
                  TabOrder = 6
                  Value = 0
                  OnChange = MinValueChange
                end
                object seSignalPos: TSpinEdit
                  Left = 714
                  Top = 24
                  Width = 57
                  Height = 22
                  MaxValue = 0
                  MinValue = 0
                  TabOrder = 5
                  Value = 6
                end
                object setSignalSize: TSpinEdit
                  Left = 810
                  Top = 24
                  Width = 57
                  Height = 22
                  MaxValue = 0
                  MinValue = 0
                  TabOrder = 7
                  Value = 8
                end
                object seStartSymbol: TSpinEdit
                  Left = 610
                  Top = 24
                  Width = 46
                  Height = 22
                  MaxValue = 0
                  MinValue = 0
                  TabOrder = 8
                  Value = 33
                end
                object cbSignalTypeProtocol: TComboBox
                  Left = 72
                  Top = 24
                  Width = 433
                  Height = 21
                  ItemHeight = 13
                  TabOrder = 9
                  Text = '<'#1062#1080#1092#1088#1072'1><TAB><'#1062#1080#1092#1088#1072'2><TAB><'#1062#1080#1092#1088#1072'3><TAB><'#1062#1080#1092#1088#1072'4>'
                  Items.Strings = (
                    '<'#1062#1080#1092#1088#1072'1><TAB><'#1062#1080#1092#1088#1072'2><TAB><'#1062#1080#1092#1088#1072'3><TAB><'#1062#1080#1092#1088#1072'4>'
                    'ASCII '#1087#1088#1086#1090#1086#1082#1086#1083' '#1089' '#1087#1086#1079#1080#1077#1081' '#1080' '#1088#1072#1079#1084#1077#1088#1085#1086#1089#1090#1100#1102)
                end
              end
              object MaxValue: TSpinEdit
                Left = 25
                Top = 0
                Width = 47
                Height = 22
                MaxValue = 0
                MinValue = 0
                TabOrder = 3
                Value = 0
                OnChange = MaxValueChange
              end
            end
            object tbHistoryOfCommands: TTabSheet
              Caption = #1048#1089#1090#1086#1088#1080#1103' '#1082#1086#1084#1072#1085#1076
              ImageIndex = 3
              TabVisible = False
              object mListOfCommands: TMemo
                Left = 0
                Top = 0
                Width = 653
                Height = 258
                Align = alClient
                TabOrder = 0
              end
            end
            object tsEmulator: TTabSheet
              Caption = #1069#1084#1091#1083#1103#1090#1086#1088' '#1087#1088#1086#1090#1086#1082#1086#1083#1072
              ImageIndex = 4
              TabVisible = False
              object gwEmulator: TGridView
                Left = 0
                Top = 33
                Width = 953
                Height = 229
                Align = alClient
                AllowEdit = True
                AlwaysEdit = True
                CheckBoxes = True
                Columns = <
                  item
                    ReadOnly = True
                    DefWidth = 50
                  end
                  item
                    DefWidth = 200
                  end
                  item
                    DefWidth = 200
                  end
                  item
                    DefWidth = 300
                  end
                  item
                    CheckKind = gcCheckBox
                    FixedSize = True
                    PickList.Strings = (
                      #1055#1072#1089#1089#1080#1074#1077#1085
                      #1040#1082#1090#1080#1074#1077#1085)
                    DefWidth = 20
                  end>
                Header.Sections = <
                  item
                    Caption = #8470#1087'.'#1087'.'
                    Width = 50
                  end
                  item
                    Caption = #1047#1072#1087#1088#1086#1089
                    Width = 200
                  end
                  item
                    Caption = #1054#1090#1074#1077#1090
                    Width = 200
                  end
                  item
                    Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081
                    Width = 300
                  end
                  item
                    Alignment = taCenter
                    Width = 20
                  end>
                Header.Synchronized = True
                ImageHighlight = False
                ShowCellTips = False
                TabOrder = 0
                OnCellClick = gwEmulatorCellClick
                OnCheckClick = gwEmulatorCheckClick
                OnGetCellColors = gwEmulatorGetCellColors
                OnGetCellText = gwEmulatorGetCellText
                OnGetCheckState = gwEmulatorGetCheckState
                OnGetEditText = gwEmulatorGetEditText
                OnSetEditText = gwEmulatorSetEditText
              end
              object Panel10: TPanel
                Left = 0
                Top = 0
                Width = 953
                Height = 33
                Align = alTop
                TabOrder = 1
                object Label52: TLabel
                  Left = 4
                  Top = 8
                  Width = 30
                  Height = 13
                  Caption = #1060#1072#1081#1083':'
                end
                object SaveEmulatorBtn: TSpeedButton
                  Left = 283
                  Top = 4
                  Width = 23
                  Height = 22
                  Glyph.Data = {
                    36040000424D3604000000000000360000002800000010000000100000000100
                    2000000000000004000000000000000000000000000000000000FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
                    00000000000000000000000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B
                    7B007B7B7B007B7B7B000000000000000000FF00FF00FF00FF00000000000000
                    00000000000000000000000000007B7B7B00BDBDBD00BDBDBD00BDBDBD00BDBD
                    BD00BDBDBD00BDBDBD00000000000000000000000000FF00FF00000000000000
                    00000000000000000000000000007B7B7B00BDBDBD000000000000000000BDBD
                    BD00BDBDBD00BDBDBD00000000000000000000000000FF00FF00000000000000
                    00000000000000000000000000007B7B7B00BDBDBD000000000000000000BDBD
                    BD00BDBDBD00BDBDBD00000000000000000000000000FF00FF00000000000000
                    00000000000000000000000000007B7B7B00BDBDBD00BDBDBD00BDBDBD00BDBD
                    BD00BDBDBD00BDBDBD00000000000000000000000000FF00FF00000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    00000000000000000000000000000000000000000000FF00FF00000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    00000000000000000000000000000000000000000000FF00FF00000000000000
                    000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00000000000000000000000000FF00FF00000000000000
                    000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00000000000000000000000000FF00FF00000000000000
                    000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00000000000000000000000000FF00FF00000000000000
                    000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00000000000000000000000000FF00FF00000000000000
                    000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00000000000000000000000000FF00FF00000000000000
                    000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00000000007B7B7B0000000000FF00FF00000000000000
                    000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00000000000000000000000000FF00FF00FF00FF000000
                    0000000000000000FF000000FF000000FF000000FF000000FF000000FF000000
                    FF000000FF000000FF000000000000000000FF00FF00FF00FF00}
                  OnClick = SaveEmulatorBtnClick
                end
                object btnAddItemToEmulator: TSpeedButton
                  Left = 307
                  Top = 3
                  Width = 23
                  Height = 22
                  Glyph.Data = {
                    36030000424D3603000000000000360000002800000010000000100000000100
                    1800000000000003000000000000000000000000000000000000202020404040
                    4040404040404040404040404040404040404040404040404040404040404040
                    404040404040402020207F7F7FAFAFAFA0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0
                    A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A09090904040407F7F7FDFDFDF
                    C0C0C0C0C0C0C0C0C0C0C0C06F6F6F7F7F7F7F7F7F7F7F7FDFDFDFC0C0C0C0C0
                    C0C0C0C0A0A0A04040407F7F7FDFDFDFC0C0C0C0C0C0C0C0C0C0C0C07F7F7FC0
                    C0C0C0C0C0606060DFDFDFC0C0C0C0C0C0C0C0C0A0A0A04040407F7F7FDFDFDF
                    C0C0C0C0C0C0C0C0C0C0C0C07F7F7FC0C0C0C0C0C0606060DFDFDFC0C0C0C0C0
                    C0C0C0C0A0A0A04040407F7F7FDFDFDFC0C0C0DFDFDFDFDFDFDFDFDF7F7F7FC0
                    C0C0C0C0C0606060EFEFEFDFDFDFDFDFDFDFDFDFA0A0A04040407F7F7FDFDFDF
                    6060606F6F6F606060606060909090C0C0C0C0C0C09090906060606060606060
                    607F7F7FA0A0A04040407F7F7FDFDFDF606060DFDFDFC0C0C0C0C0C0C0C0C0C0
                    C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07F7F7FA0A0A04040407F7F7FDFDFDF
                    606060DFDFDFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                    C07F7F7FA0A0A04040407F7F7FDFDFDF6060607F7F7F7F7F7F7F7F7FBFBFBFC0
                    C0C0C0C0C09090907F7F7F7F7F7F7F7F7F6F6F6FA0A0A04040407F7F7FDFDFDF
                    C0C0C0C0C0C0C0C0C0C0C0C07F7F7FC0C0C0C0C0C0606060DFDFDFC0C0C0C0C0
                    C0C0C0C0A0A0A04040407F7F7FDFDFDFC0C0C0C0C0C0C0C0C0C0C0C07F7F7FC0
                    C0C0C0C0C0606060DFDFDFC0C0C0C0C0C0C0C0C0A0A0A04040407F7F7FDFDFDF
                    C0C0C0C0C0C0C0C0C0C0C0C07F7F7FDFDFDFDFDFDF6F6F6FDFDFDFC0C0C0C0C0
                    C0C0C0C0A0A0A04040407F7F7FDFDFDFC0C0C0C0C0C0C0C0C0C0C0C060606060
                    6060606060606060C0C0C0C0C0C0C0C0C0C0C0C0A0A0A04040407F7F7FEFEFEF
                    DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF
                    DFDFDFDFAFAFAF4040403F3F3F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
                    7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F202020}
                  OnClick = btnAddItemToEmulatorClick
                end
                object btnDeleteItemFromEmulator: TSpeedButton
                  Left = 331
                  Top = 3
                  Width = 23
                  Height = 22
                  Glyph.Data = {
                    36030000424D3603000000000000360000002800000010000000100000000100
                    1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFF404040606060808080808080808080606060404040FFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF20202020206020209F0000BF00
                    00BF0000BF20209F404080808080606060202020FFFFFFFFFFFFFFFFFFFFFFFF
                    00002020209F0000FF0000FF0000FF0000FF0000FF0000FF0000FF20209F6060
                    80808080202020FFFFFFFFFFFF0000200000DF0000FF0000FF0000FF0000FF00
                    00FF0000FF0000FF0000FF0000FF0000DF606080606060FFFFFFFFFFFF00007F
                    0000FF0000FF3F3FFF0000FF0000FF0000FF0000FF0000FF3F3FFF0000FF0000
                    FF20209F8080804040400000400000FF0000FF3F3FFFFFFFFFBFBFFF0000FF00
                    00FF0000FFBFBFFFFFFFFF3F3FFF0000FF0000FF40408060606000007F0000FF
                    0000FF0000FFBFBFFFFFFFFFBFBFFF0000FFBFBFFFFFFFFFBFBFFF0000FF0000
                    FF0000FF20209F8080800000BF0000FF0000FF0000FF0000FFBFBFFFFFFFFFFF
                    FFFFFFFFFFBFBFFF0000FF0000FF0000FF0000FF0000BF8080800000BF0000FF
                    0000FF0000FF0000FF0000FFFFFFFFFFFFFFFFFFFF0000FF0000FF0000FF0000
                    FF0000FF0000BF8080800000BF0000FF0000FF0000FF0000FFBFBFFFFFFFFFFF
                    FFFFFFFFFFBFBFFF0000FF0000FF0000FF0000FF0000BF60606000007F0000FF
                    0000FF0000FFBFBFFFFFFFFFBFBFFF0000FFBFBFFFFFFFFFBFBFFF0000FF0000
                    FF0000FF20209F4040400000400000FF0000FF3F3FFFFFFFFFBFBFFF0000FF00
                    00FF0000FFBFBFFFFFFFFF3F3FFF0000FF0000FF202060FFFFFFFFFFFF00007F
                    0000FF0000FF3F3FFF0000FF0000FF0000FF0000FF0000FF3F3FFF0000FF0000
                    FF20209F202020FFFFFFFFFFFF0000200000DF0000FF0000FF0000FF0000FF00
                    00FF0000FF0000FF0000FF0000FF0000DF000020FFFFFFFFFFFFFFFFFFFFFFFF
                    00002000007F0000FF0000FF0000FF0000FF0000FF0000FF0000FF00007F0000
                    20FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00004000007F0000BF00
                    00BF0000BF00007F000040FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
                  OnClick = btnDeleteItemFromEmulatorClick
                end
                object EmulatorFilenameEdit: TFilenameEdit
                  Left = 42
                  Top = 5
                  Width = 236
                  Height = 21
                  Filter = 'Log '#1092#1072#1081#1083#1099' (*.log)|*.log'
                  DialogOptions = [ofHideReadOnly, ofFileMustExist]
                  NumGlyphs = 1
                  TabOrder = 0
                  OnChange = EmulatorFilenameEditChange
                end
                object cbEmulatorViewInASCII: TCheckBox
                  Left = 365
                  Top = 8
                  Width = 124
                  Height = 17
                  Alignment = taLeftJustify
                  Caption = #1054#1090#1086#1073#1088#1072#1078#1072#1090#1100' '#1074' ASCII'
                  TabOrder = 1
                  OnClick = cbEmulatorViewInASCIIClick
                end
              end
            end
          end
          object ToolBar2: TToolBar
            Left = 1
            Top = 1
            Width = 981
            Height = 29
            Caption = 'ToolBar2'
            Color = clBtnFace
            Images = ImageList1
            ParentColor = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            object ToolButton13: TToolButton
              Left = 0
              Top = 2
              Action = aNewFile
            end
            object ToolButton12: TToolButton
              Left = 23
              Top = 2
              Action = aLoadFile
            end
            object ToolButton2: TToolButton
              Left = 46
              Top = 2
              Action = aFileSave
            end
            object ToolButton15: TToolButton
              Left = 69
              Top = 2
              Width = 8
              Caption = 'ToolButton15'
              ImageIndex = 19
              Style = tbsSeparator
            end
            object AutoScrollBtn: TToolButton
              Left = 77
              Top = 2
              Hint = #1040#1074#1090#1086#1084#1072#1090#1080#1095#1077#1089#1082#1080#1081' '#1089#1082#1088#1086#1083#1083#1080#1085#1075
              ImageIndex = 53
              Style = tbsCheck
              OnClick = AutoScrollBtnClick
            end
            object WordWrapBtn: TToolButton
              Left = 100
              Top = 2
              Hint = #1047#1072#1074#1086#1088#1086#1090' '#1076#1083#1080#1085#1085#1099#1093' '#1089#1090#1088#1086#1082
              ImageIndex = 54
              Style = tbsCheck
              OnClick = WordWrapBtnClick
            end
            object xcharsBtn: TToolButton
              Left = 123
              Top = 2
              Hint = #1057#1087#1077#1094#1089#1080#1084#1074#1086#1083#1099
              ImageIndex = 55
              Style = tbsCheck
              Visible = False
              OnClick = xcharsBtnClick
            end
            object BuffHintBtn: TToolButton
              Left = 146
              Top = 2
              Hint = #1055#1086#1076#1089#1082#1072#1079#1082#1072' '#1087#1088#1080' '#1074#1099#1076#1077#1083#1077#1085#1080#1080' '#1073#1083#1086#1082#1072' '#1074' '#1086#1082#1085#1077' '#1087#1086#1090#1086#1082#1072' '#1076#1072#1085#1085#1099#1093
              Caption = 'BuffHintBtn'
              ImageIndex = 49
              Style = tbsCheck
              OnClick = BuffHintBtnClick
            end
            object ToolButton17: TToolButton
              Left = 169
              Top = 2
              Width = 8
              Caption = 'ToolButton17'
              ImageIndex = 19
              Style = tbsSeparator
            end
            object StampDirectBtn: TToolButton
              Left = 177
              Top = 2
              Hint = #1047#1085#1072#1095#1077#1082' '#1085#1072#1087#1088#1072#1074#1083#1077#1085#1080#1103' '#1074' '#1096#1090#1072#1084#1087#1077' '#1087#1086#1089#1099#1083#1082#1080
              ImageIndex = 56
              Style = tbsCheck
              OnClick = StampDirectBtnClick
            end
            object TimeShtampBtn: TToolButton
              Left = 200
              Top = 2
              Hint = #1042#1088#1077#1084#1103' '#1074' '#1096#1090#1072#1084#1087#1077' '#1087#1086#1089#1099#1083#1082#1080
              ImageIndex = 10
              Style = tbsCheck
              OnClick = TimeShtampBtnClick
            end
            object MillisecondsBtn: TToolButton
              Left = 223
              Top = 2
              Hint = #1042#1088#1077#1084#1103' '#1074' '#1096#1090#1072#1084#1087#1077' '#1087#1086#1089#1099#1083#1082#1080' c '#1084#1080#1083#1083#1080#1089#1077#1082#1091#1085#1076#1072#1084#1080
              ImageIndex = 57
              Style = tbsCheck
              OnClick = MillisecondsBtnClick
            end
            object ToolButton9: TToolButton
              Left = 246
              Top = 2
              Width = 8
              Caption = 'ToolButton9'
              ImageIndex = 56
              Style = tbsSeparator
            end
            object FindTextBtn: TToolButton
              Left = 254
              Top = 2
              Hint = #1055#1086#1080#1089#1082' '#1087#1086' '#1073#1091#1092#1077#1088#1091
              Action = aFindText
              Visible = False
            end
            object FontsBtn: TToolButton
              Left = 277
              Top = 2
              Hint = #1053#1072#1089#1090#1088#1086#1081#1082#1072' '#1086#1090#1086#1073#1088#1072#1078#1077#1085#1080#1103' '#1090#1077#1082#1089#1090#1072' '#1074' '#1073#1091#1092#1077#1088#1077
              Action = aEditOptions
              Visible = False
            end
            object ToolButton26: TToolButton
              Left = 300
              Top = 2
              Hint = #1043#1088#1072#1092#1080#1095#1077#1089#1082#1072#1103' '#1086#1073#1088#1072#1073#1086#1090#1082#1072' '#1089#1080#1075#1085#1072#1083#1086#1074
              Action = aSignal
            end
            object ToolButton30: TToolButton
              Left = 323
              Top = 2
              Action = aListOfCommamds
            end
            object ToolButton31: TToolButton
              Left = 346
              Top = 2
              Action = aListsSyncro
            end
            object ToolButton33: TToolButton
              Left = 369
              Top = 2
              Action = aCmdHist2MAcro
            end
            object ToolButton34: TToolButton
              Left = 392
              Top = 2
              Action = aSystemJournal
            end
            object AutoSendBtn: TToolButton
              Left = 415
              Top = 2
              Hint = #1057#1087#1080#1089#1086#1082' '#1072#1074#1090#1086#1087#1086#1089#1099#1083#1082#1080
              Caption = #1057#1087#1080#1089#1086#1082' '#1072#1074#1090#1086#1087#1086#1089#1099#1083#1082#1080
              ImageIndex = 3
              Style = tbsCheck
              OnClick = AutoSendBtnClick
            end
            object EmulationActiveBtn: TToolButton
              Left = 438
              Top = 2
              Hint = #1069#1084#1091#1083#1103#1090#1086#1088' '#1087#1088#1086#1090#1086#1082#1086#1083#1072
              Caption = 'EmulationActiveBtn'
              ImageIndex = 4
              Style = tbsCheck
              OnClick = EmulationActiveBtnClick
            end
          end
        end
        object Panel9: TPanel
          Left = 2
          Top = 321
          Width = 983
          Height = 209
          Align = alBottom
          TabOrder = 2
          object Splitter3: TSplitter
            Left = 1
            Top = 78
            Width = 981
            Height = 6
            Cursor = crVSplit
            Align = alTop
            Color = clGray
            ParentColor = False
          end
          object BottomPnl: TGroupBox
            Left = 1
            Top = 84
            Width = 981
            Height = 124
            Align = alClient
            Caption = #1050#1086#1085#1074#1077#1088#1090#1086#1088' '#1074#1099#1076#1077#1083#1077#1085#1085#1099#1093' '#1074#1077#1083#1080#1095#1080#1085
            TabOrder = 0
            object GroupBox4: TGroupBox
              Left = 2
              Top = 15
              Width = 185
              Height = 107
              Align = alLeft
              Caption = #1055#1077#1088#1074#1099#1081' '#1073#1072#1081#1090' '#1084#1083#1072#1076#1096#1080#1081
              Color = clBtnFace
              Font.Charset = RUSSIAN_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 0
              object LoMemo: TMemo
                Left = 2
                Top = 15
                Width = 181
                Height = 90
                Align = alClient
                TabOrder = 0
              end
            end
            object GroupBox3: TGroupBox
              Left = 187
              Top = 15
              Width = 792
              Height = 107
              Align = alClient
              Caption = #1055#1077#1088#1074#1099#1081' '#1073#1072#1081#1090' '#1089#1090#1072#1088#1096#1080#1081
              Font.Charset = RUSSIAN_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              object HiMemo: TMemo
                Left = 2
                Top = 15
                Width = 788
                Height = 90
                Align = alClient
                Font.Charset = RUSSIAN_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
              end
            end
          end
          object AutoListGroupBox: TGroupBox
            Left = 1
            Top = 1
            Width = 981
            Height = 77
            Align = alTop
            Caption = #1057#1087#1080#1089#1086#1082' '#1072#1074#1090#1086#1087#1086#1089#1099#1083#1082#1080
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clGray
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            Visible = False
            object Memo1: TRxCheckListBox
              Left = 2
              Top = 15
              Width = 977
              Height = 33
              Hint = #1057#1087#1080#1089#1086#1082' '#1072#1074#1090#1086#1087#1086#1089#1099#1083#1082#1080
              Align = alClient
              DragMode = dmAutomatic
              ItemHeight = 13
              ParentShowHint = False
              PopupMenu = PopupMenu1
              ShowHint = True
              Style = lbVirtual
              TabOrder = 0
              OnClick = Memo1Click
              OnDblClick = Memo1DblClick
              OnDragDrop = Memo1DragDrop
              OnDragOver = Memo1DragOver
              InternalVersion = 202
            end
            object Panel4: TPanel
              Left = 2
              Top = 48
              Width = 977
              Height = 27
              Align = alBottom
              TabOrder = 1
              object RepeatLabel: TRxLabel
                Left = 523
                Top = 5
                Width = 60
                Height = 13
                Caption = #1054#1089#1090#1072#1083#1086#1089#1100':0'
                Visible = False
              end
              object RepeatChk: TCheckBox
                Left = 5
                Top = 5
                Width = 69
                Height = 17
                Hint = #1055#1086#1074#1090#1086#1088' '#1089#1087#1080#1089#1082#1072' '#13#10#1072#1074#1090#1086#1087#1086#1089#1099#1083#1082#1080
                Caption = 'Repeat'
                ParentShowHint = False
                ShowHint = True
                TabOrder = 0
                OnClick = RepeatChkClick
              end
              object RepeatCount: TSpinEdit
                Left = 67
                Top = 3
                Width = 72
                Height = 22
                Hint = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1087#1086#1074#1090#1088#1086#1074' '#1086#1087#1077#1088#1072#1094#1080#1080' '#13#10#1087#1077#1088#1089#1099#1083#1082#1080' '#1087#1072#1082#1077#1090#1072' '#1074' '#1082#1072#1085#1072#1083
                MaxValue = 0
                MinValue = 0
                ParentShowHint = False
                ShowHint = True
                TabOrder = 1
                Value = 0
                Visible = False
              end
              object AutoIncModeChk: TCheckBox
                Left = 153
                Top = 5
                Width = 296
                Height = 17
                Hint = 
                  #1055#1088#1080' '#1072#1082#1090#1080#1074#1072#1094#1080#1080' '#1076#1072#1085#1085#1086#1081' '#1086#1087#1094#1080#1080#13#1087#1077#1088#1077#1076' '#1086#1095#1077#1088#1077#1076#1085#1086#1081' '#1087#1086#1089#1099#1083#1082#1086#1081' '#1087#1088#1086#1080#1089#1093#1086#1076#1080#1090' '#13 +
                  #1079#1072#1084#1077#1085#1072' '#1074#1099#1073#1080#1088#1072#1077#1084#1086#1075#1086' '#1101#1083#1077#1084#1077#1085#1090#1072' '#1085#1072' ASCII '#1079#1085#1072#1095#1077#1085#1080#1077' '#1089#1095#1077#1090#1095#1080#1082#1072' '
                Caption = #1040#1074#1090#1086#1080#1085#1082#1088#1077#1084#1077#1085#1090' '#1087#1072#1088#1072#1084#1077#1090#1088#1072'    '#1052#1072#1089#1082#1072'                '#1057#1095#1077#1090#1095#1080#1082
                ParentShowHint = False
                ShowHint = True
                TabOrder = 2
                Visible = False
                OnClick = RepeatChkClick
              end
              object AutoIncMaskEdt: TEdit
                Left = 360
                Top = 3
                Width = 33
                Height = 21
                Hint = #1052#1072#1089#1082#1072' '#1101#1083#1077#1084#1077#1085#1090#1072' '#1085#1072' '#1072#1074#1090#1086#1079#1072#1084#1077#1085#1091
                TabOrder = 3
                Text = '*'
                Visible = False
              end
              object AutoIncCounter: TSpinEdit
                Left = 443
                Top = 3
                Width = 72
                Height = 22
                Hint = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1087#1086#1074#1090#1088#1086#1074' '#1086#1087#1077#1088#1072#1094#1080#1080' '#13#10#1087#1077#1088#1089#1099#1083#1082#1080' '#1087#1072#1082#1077#1090#1072' '#1074' '#1082#1072#1085#1072#1083
                MaxValue = 0
                MinValue = 0
                ParentShowHint = False
                ShowHint = True
                TabOrder = 4
                Value = 0
                Visible = False
              end
            end
          end
        end
      end
      object GroupBox1: TGroupBox
        Left = 3
        Top = 3
        Width = 987
        Height = 71
        Align = alTop
        Caption = #1057#1090#1088#1086#1082#1072' '#1087#1086#1089#1099#1083#1082#1080
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnMouseMove = GroupBox1MouseMove
        object OutputBuf: TComboBox
          Left = 6
          Top = 45
          Width = 503
          Height = 21
          Hint = #1057#1090#1088#1086#1082#1072' '#1090#1077#1082#1091#1097#1077#1081' '#1087#1086#1089#1099#1083#1082#1080' '#1074' '#1082#1072#1085#1072#1083' '#1089#1074#1103#1079#1080
          ItemHeight = 13
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnChange = OutputBufChange
          OnDragDrop = OutputBufDragDrop
          OnDragOver = OutputBufDragOver
          OnKeyPress = OutputBufKeyPress
        end
        object BigOutputBuf: TMemo
          Left = 6
          Top = 45
          Width = 500
          Height = 21
          TabOrder = 1
          Visible = False
        end
        object ToolBar3: TToolBar
          Left = 2
          Top = 15
          Width = 983
          Height = 26
          ButtonHeight = 23
          ButtonWidth = 31
          Caption = 'ToolBar3'
          Images = ImageList1
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          object HexBtn: TSpeedButton
            Left = 0
            Top = 2
            Width = 28
            Height = 23
            Hint = #1041#1099#1089#1090#1088#1072#1103' '#1089#1084#1077#1085#1072' '#1089#1080#1089#1090#1077#1084#1099'  '#13#1087#1088#1077#1076#1089#1090#1072#1074#1083#1077#1085#1080#1103' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1080':'#13'"HEX","ASCII"'
            AllowAllUp = True
            GroupIndex = -1
            Down = True
            Caption = 'Hex'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clOlive
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = HexBtnClick
          end
          object CRLFModeBtn: TToolButton
            Left = 28
            Top = 2
            Hint = 
              #1040#1074#1090#1086#1084#1072#1090#1080#1095#1077#1089#1082#1080' '#1076#1086#1073#1072#1074#1083#1103#1077#1084#1099#1081' '#1089#1080#1084#1074#1086#1083' '#1082' '#1089#1090#1088#1086#1082#1077' '#1087#1086#1089#1099#1083#1082#1080' '#1087#1088#1080' '#1077#1077' '#1086#1090#1087#1088#1072#1074#1082 +
              #1077
            ImageIndex = 58
            ParentShowHint = False
            ShowHint = True
            Style = tbsCheck
            OnClick = CRLFModeBtnClick
          end
          object ToolButton32: TToolButton
            Left = 59
            Top = 2
            Action = aClearOutputBuf
          end
          object ToolButton8: TToolButton
            Left = 90
            Top = 2
            Width = 20
            Caption = 'ToolButton8'
            ImageIndex = 7
            Style = tbsSeparator
          end
          object btnCreateCRC: TToolButton
            Left = 110
            Top = 2
            Hint = 
              #1057#1087#1086#1089#1086#1073' '#1092#1086#1088#1084#1080#1088#1086#1074#1072#1085#1080#1103' '#1082#1086#1085#1090#1088#1086#1083#1100#1085#1086#1081' '#1089#1091#1084#1084#1099':'#13#1053#1072#1078#1072#1090#1086' - '#1103#1074#1085#1086' '#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100 +
              ' '#1082#1086#1085#1090#1088#1086#1083#1100#1085#1091#1102' '#1089#1091#1084#1084#1091#13#1054#1090#1078#1072#1090#1086' - '#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100' '#1082#1086#1085#1090#1088#1086#1083#1100#1085#1091#1102' '#1089#1091#1084#1084#1091' '#1087#1088#1080' '#1086#1090 +
              #1087#1088#1072#1074#1082#1077
            Caption = 'btnCreateCRC'
            ImageIndex = 11
            Style = tbsCheck
            OnClick = btnCreateCRCClick
          end
          object ToolButton10: TToolButton
            Left = 141
            Top = 2
            Width = 8
            Caption = 'ToolButton10'
            ImageIndex = 7
            Style = tbsSeparator
          end
          object xNo_CRCBtn: TToolButton
            Left = 149
            Top = 2
            Hint = #1053#1077#1090' '#1082#1086#1085#1090#1088#1086#1083#1100#1085#1086#1081' '#1089#1091#1084#1084#1099
            Caption = 'aNO_CRC'
            Grouped = True
            ImageIndex = 15
            Style = tbsCheck
            OnClick = xNo_CRCBtnClick
          end
          object xCS1Btn: TToolButton
            Left = 180
            Top = 2
            Hint = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1089#1091#1084#1084#1099' '#1074#1089#1077#1093' '#1073#1072#1081#1090#13#1087#1086#1089#1099#1083#1082#1080' (1 '#1073#1072#1081#1090')'
            Caption = '1'
            Grouped = True
            ImageIndex = 21
            Style = tbsCheck
            OnClick = xCS1BtnClick
          end
          object xCSN1Btn: TToolButton
            Left = 211
            Top = 2
            Hint = #1048#1085#1074#1077#1088#1090#1080#1088#1086#1074#1072#1085#1085#1072#1103' '#1089#1091#1084#1084#1072' '#1074#1089#1077#1093' '#1073#1072#1081#1090#13#1087#1086#1089#1099#1083#1082#1080' (1 '#1073#1072#1081#1090')'
            Caption = 'xCSN1Btn'
            Grouped = True
            ImageIndex = 21
            OnClick = xCSN1BtnClick
          end
          object xCS2Btn: TToolButton
            Left = 242
            Top = 2
            Hint = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1089#1091#1084#1084#1099' '#1074#1089#1077#1093' '#1073#1072#1081#1090#13#1087#1086#1089#1099#1083#1082#1080' (2 '#1073#1072#1081#1090#1072')'
            Caption = 'mod $FFFF'
            Grouped = True
            ImageIndex = 33
            Style = tbsCheck
            OnClick = xCS2BtnClick
          end
          object xCRC16Btn: TToolButton
            Left = 273
            Top = 2
            Hint = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1082#1086#1085#1090#1088#1086#1083#1100#1085#1086#1081' '#1089#1091#1084#1084#1099' '#13#10#1087#1086#1089#1099#1083#1082#1080' '#1088#1072#1089#1095#1080#1090#1072#1085#1085#1086#1081' '#1087#1086' CRC16'
            Caption = 'CRC16'
            Grouped = True
            ImageIndex = 22
            Style = tbsCheck
            OnClick = xCRC16BtnClick
          end
          object xCRC16tBtn: TToolButton
            Left = 304
            Top = 2
            Hint = 
              #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1082#1086#1085#1090#1088#1086#1083#1100#1085#1086#1081' '#1089#1091#1084#1084#1099' '#13#10#1087#1086#1089#1099#1083#1082#1080' '#1088#1072#1089#1095#1080#1090#1072#1085#1085#1086#1081' '#1087#1086' CRC16 ('#1090#1072#1073 +
              #1083#1080#1095#1085#1072#1103' '#1074#1077#1088#1089#1080#1103')'
            Caption = 'CRC16('#1090#1072#1073#1083'.)'
            Grouped = True
            ImageIndex = 37
            Style = tbsCheck
            OnClick = xCRC16tBtnClick
          end
          object xCRC16MKTCBtn: TToolButton
            Left = 335
            Top = 2
            Hint = 
              #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1082#1086#1085#1090#1088#1086#1083#1100#1085#1086#1081' '#1089#1091#1084#1084#1099' '#13#10#1087#1086#1089#1099#1083#1082#1080' '#1088#1072#1089#1095#1080#1090#1072#1085#1085#1086#1081' '#1087#1086' CRC16 (CCI' +
              'TT)'
            Caption = 'CRC16 CCITT'
            Grouped = True
            ImageIndex = 36
            Style = tbsCheck
            OnClick = xCRC16MKTCBtnClick
          end
          object xCRC16CorallBtn: TToolButton
            Left = 366
            Top = 2
            Hint = 
              #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1082#1086#1085#1090#1088#1086#1083#1100#1085#1086#1081' '#1089#1091#1084#1084#1099' '#13#1087#1086#1089#1099#1083#1082#1080' '#1088#1072#1089#1095#1080#1090#1072#1085#1085#1086#1081' '#1087#1086' CRC16 "'#1050#1086#1088#1072 +
              #1083#1083'"'
            Caption = 'CRC16 "'#1050#1086#1088#1072#1083#1083'"'
            Grouped = True
            ImageIndex = 22
            Style = tbsCheck
            OnClick = xCRC16CorallBtnClick
          end
          object xCRCLogikaBtn: TToolButton
            Left = 397
            Top = 2
            Hint = 'CRC "'#1051#1086#1075#1080#1082#1072'" '#13#1073#1077#1079' '#1091#1095#1077#1090#1072' '#1087#1077#1088#1074#1086#1075#1086' '#1073#1072#1081#1090#1072
            Caption = 'CRC "Logika"'
            Grouped = True
            ImageIndex = 46
            Style = tbsCheck
            OnClick = xCRCLogikaBtnClick
          end
          object xKM5CRCBtn: TToolButton
            Left = 428
            Top = 2
            Hint = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1082#1086#1085#1090#1088#1086#1083#1100#1085#1086#1081' '#1089#1091#1084#1084#1099' '#13#10#1072#1083#1103' '#1050#1052'5,'#1050#1052'5'#1052','#1050#1052#1044
            Caption = #1050#1052'5 '#1082#1086#1085#1090#1088#1086#1083#1100#1085#1072#1103' '#1089#1091#1084#1084#1072
            Grouped = True
            ImageIndex = 26
            Style = tbsCheck
            OnClick = xKM5CRCBtnClick
          end
          object xSikonCRCBtn: TToolButton
            Left = 459
            Top = 2
            Hint = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1082#1086#1085#1090#1088#1086#1083#1100#1085#1086#1081' '#1089#1091#1084#1084#1099' S3N'
            Caption = 'aS3N_CRC'
            Grouped = True
            ImageIndex = 35
            Style = tbsCheck
            OnClick = xSikonCRCBtnClick
          end
          object xCRC32Btn: TToolButton
            Left = 490
            Top = 2
            Hint = 'CRC32'
            Caption = 'CRC32'
            Grouped = True
            ImageIndex = 34
            Style = tbsCheck
            OnClick = xCRC32BtnClick
          end
          object xCRCSprut100Btn: TToolButton
            Left = 521
            Top = 2
            Hint = #1057#1087#1088#1091#1090' 100'#13#1048#1042#1050' "'#1057#1072#1103#1085#1099'"'
            Caption = 'xCRCSprut100Btn'
            ImageIndex = 60
            Style = tbsCheck
            OnClick = xCRCSprut100BtnClick
          end
          object xCRCMODBUSASCIIBtn: TToolButton
            Left = 552
            Top = 2
            Hint = #1050#1086#1085#1090#1088#1086#1083#1100#1085#1072#1103' '#1089#1091#1084#1084#1072' '#1052#1054#1044#1041#1040#1057' ASCII'#13#1086#1073#1103#1079#1072#1090#1077#1083#1100#1085#1099#1081' '#1087#1077#1088#1074#1099#1081' '#1089#1080#1084#1074#1086#1083' '#39':'#39
            Caption = #1050#1086#1085#1090#1088#1086#1083#1100#1085#1072#1103' '#1089#1091#1084#1084#1072' '#1052#1054#1044#1041#1040#1057' ASCII'
            ImageIndex = 63
            Style = tbsCheck
            OnClick = xCRCMODBUSASCIIBtnClick
          end
          object ToolButton3: TToolButton
            Left = 583
            Top = 2
            Caption = #1050#1086#1085#1090#1088#1086#1083#1100#1085#1072#1103' '#1089#1091#1084#1084#1072' '#1052#1054#1044#1041#1040#1057' ASCII '
            ImageIndex = 14
          end
          object ToolButton7: TToolButton
            Left = 614
            Top = 2
            Width = 8
            Caption = 'ToolButton7'
            ImageIndex = 7
            Style = tbsSeparator
          end
          object KM5FunctionBtn: TToolButton
            Left = 622
            Top = 2
            Action = km5Function
            Enabled = False
          end
          object gbKM5: TPanel
            Left = 653
            Top = 2
            Width = 166
            Height = 23
            BevelOuter = bvNone
            Color = 14933983
            TabOrder = 0
            object labkm5: TLabel
              Left = 6
              Top = 4
              Width = 55
              Height = 13
              Alignment = taCenter
              BiDiMode = bdLeftToRight
              Caption = #1040#1076#1088#1077#1089' '#1050#1052'5'
              ParentBiDiMode = False
              Transparent = True
            end
            object cbKM5NetAddr: TComboBox
              Left = 69
              Top = 1
              Width = 95
              Height = 21
              ItemHeight = 13
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              OnChange = cbKM5NetAddrChange
            end
            object KM5NetAddr: THexEdit
              Left = 69
              Top = 0
              Width = 75
              Height = 21
              NumBase = ebHex
              MaxValue = 0
              MinValue = 0
              TabOrder = 1
              Validate = True
              Value = 0
              OnChange = KM5NetAddrChange
              OnKeyPress = KM5NetAddrKeyPress
              AllowUnitedBase = True
            end
          end
        end
        object Panel8: TPanel
          Left = 508
          Top = 41
          Width = 200
          Height = 28
          BevelOuter = bvNone
          ParentBackground = True
          ParentColor = True
          TabOrder = 3
          object RepeatBtn: TBitBtn
            Left = 101
            Top = 2
            Width = 28
            Height = 23
            Hint = 
              #1047#1072#1087#1091#1089#1082'/'#1054#1089#1090#1072#1085#1086#1074#13#10#1087#1077#1088#1080#1086#1076#1080#1095#1077#1089#1082#1086#1081' '#1087#1086#1089#1099#1083#1082#1080' '#13#10#1089#1090#1088#1086#1082' '#1080#1079' '#1089#1087#1080#1089#1082#1072' '#1072#1074#1090#1086#1087#1086#1089#1099 +
              #1083#1082#1080
            Enabled = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            OnClick = RepeatBtnClick
          end
          object btnSaveToHistory: TBitBtn
            Left = 5
            Top = 2
            Width = 28
            Height = 23
            Action = aPortSendData
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            Glyph.Data = {
              F6000000424DF600000000000000760000002800000010000000100000000100
              04000000000080000000120B0000120B00001000000010000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADAD0DADA
              DADAADADAD00ADADADADDADAD0D0DADADADAADAD0DA0ADADADADDAD0DAD00000
              000AAD0DADADADADAD0DD0DADADADADADA0A0DADADADADADAD0DD0DADADADADA
              DA0AAD0DADADADADAD0DDAD0DAD00000000AADAD0DA0ADADADADDADAD0D0DADA
              DADAADADAD00ADADADADDADADAD0DADADADAADADADADADADADAD}
          end
          object AddBtn: TBitBtn
            Left = 69
            Top = 2
            Width = 28
            Height = 23
            Hint = #1057#1086#1093#1088#1072#1085#1077#1085#1080#1077' '#1089#1090#1088#1086#1082#1080' '#1090#1077#1082#1091#1097#1077#1081' '#1087#1086#1089#1099#1083#1082#1080' '#13#10#1074' '#1089#1087#1080#1089#1086#1082#1077' '#1072#1074#1090#1086#1087#1086#1089#1099#1083#1082#1080
            Enabled = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
            OnClick = AddBtnClick
            Glyph.Data = {
              F6000000424DF600000000000000760000002800000010000000100000000100
              0400000000008000000000000000000000001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888808888
              8888888888080888888888888088808888888888088888088888888088888880
              8888880888888888088880888888888880880000088888000008888808888808
              8888888808888808888888880888880888888888088888088888888808888808
              8888888808888808888888880000000888888888888888888888}
          end
          object SaveOutBuffToMacroBtn: TBitBtn
            Left = 37
            Top = 2
            Width = 28
            Height = 23
            Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1089#1090#1088#1086#1082#1091' '#1086#1090#1087#1088#1072#1074#1082#1080' '#1074' '#1084#1072#1082#1088#1086#1089#1077
            ParentShowHint = False
            ShowHint = True
            TabOrder = 3
            OnClick = SaveOutBuffToMacroBtnClick
            Glyph.Data = {
              F6000000424DF600000000000000760000002800000010000000100000000100
              0400000000008000000000000000000000001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888880888
              8888888888880088888888888888080888888888888808808888800000000888
              0888808888888888808880888888888888088088888888888880808888888888
              8808808888888888808880000000088808888888888808808888888888880808
              8888888888880088888888888888088888888888888888888888}
          end
          object PeriodRepeatEdt: TCurrencyEdit
            Left = 132
            Top = 3
            Width = 65
            Height = 21
            Hint = #1055#1077#1088#1080#1086#1076' '#1087#1086#1089#1099#1083#1082#1080' '#1089#1090#1088#1086#1082
            AutoSize = False
            DisplayFormat = '0 '#1084#1089#1077#1082
            MaxValue = 60000.000000000000000000
            MinValue = 100.000000000000000000
            ParentShowHint = False
            ShowHint = True
            TabOrder = 4
            Value = 1000.000000000000000000
            OnChange = PeriodRepeatEdtChange
          end
        end
      end
    end
  end
  object SetUpPanel: TPanel
    Left = 1004
    Top = 33
    Width = 314
    Height = 622
    Align = alRight
    BorderWidth = 2
    Color = 14933983
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = 13500416
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    object Splitter4: TSplitter
      Left = 3
      Top = 385
      Width = 308
      Height = 4
      Cursor = crVSplit
      Align = alTop
      Color = clGray
      ParentColor = False
    end
    object PageControl1: TPageControl
      Left = 3
      Top = 3
      Width = 308
      Height = 382
      ActivePage = TabSheet2
      Align = alTop
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object tsConnect: TTabSheet
        Caption = #1055#1086#1076#1082#1083#1102#1095#1077#1085#1080#1077
        object PageControl4: TPageControl
          Left = 0
          Top = 0
          Width = 300
          Height = 354
          ActivePage = TabSheet4
          Align = alClient
          TabOrder = 0
          object TabSheet4: TTabSheet
            Caption = #1050#1083#1080#1077#1085#1090
            object pcTypeOfConnect: TPageControl
              Left = 0
              Top = 0
              Width = 292
              Height = 326
              ActivePage = TabSheet5
              Align = alClient
              TabOrder = 0
              OnChange = pcTypeOfConnectChange
              OnChanging = pcTypeOfConnectChanging
              object TabSheet5: TTabSheet
                Caption = 'RS232'
                object ComPort_GrpBox: TGroupBox
                  Left = 0
                  Top = 0
                  Width = 284
                  Height = 139
                  Align = alTop
                  Caption = #1055#1086#1089#1083#1077#1076#1086#1074#1072#1090#1077#1083#1100#1085#1099#1081' '#1087#1086#1088#1090
                  Font.Charset = RUSSIAN_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                  OnClick = aAboutExecute
                  object Label8: TLabel
                    Left = 9
                    Top = 18
                    Width = 31
                    Height = 13
                    Caption = #1053#1086#1084#1077#1088
                    OnClick = Label8Click
                  end
                  object Label9: TLabel
                    Left = 9
                    Top = 42
                    Width = 48
                    Height = 13
                    Caption = #1057#1082#1086#1088#1086#1089#1090#1100
                  end
                  object Label10: TLabel
                    Left = 9
                    Top = 66
                    Width = 51
                    Height = 13
                    Caption = #1063#1080#1089#1083#1086' '#1073#1080#1090
                  end
                  object Label11: TLabel
                    Left = 9
                    Top = 88
                    Width = 48
                    Height = 13
                    Caption = #1063#1077#1090#1085#1086#1089#1090#1100
                  end
                  object Label12: TLabel
                    Left = 9
                    Top = 114
                    Width = 54
                    Height = 13
                    Caption = #1057#1086#1089#1090#1086#1103#1085#1080#1077
                  end
                  object Label13: TLabel
                    Left = 96
                    Top = 116
                    Width = 3
                    Height = 13
                    Font.Charset = RUSSIAN_CHARSET
                    Font.Color = clBlue
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                  end
                  object ComPort_State: TLabel
                    Left = 112
                    Top = 114
                    Width = 138
                    Height = 13
                    Caption = '_______________________'
                    FocusControl = AutoDTR
                    Font.Charset = RUSSIAN_CHARSET
                    Font.Color = clBlue
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                  end
                  object ComPort_Number: TComboBox
                    Left = 112
                    Top = 16
                    Width = 115
                    Height = 21
                    Hint = #1053#1086#1084#1077#1088' '#1087#1086#1089#1083#1077#1076#1086#1074#1072#1090#1077#1083#1100#1085#1086#1075#1086' '#1087#1086#1088#1090#1072
                    ItemHeight = 13
                    ItemIndex = 0
                    ParentShowHint = False
                    ShowHint = True
                    TabOrder = 0
                    Text = 'COM1'
                    Items.Strings = (
                      'COM1'
                      'COM2'
                      'COM3'
                      'COM4'
                      'COM5'
                      'COM6'
                      'COM7'
                      'COM8'
                      'COM9'
                      'COM10'
                      'COM11'
                      'COM12'
                      'COM13'
                      'COM14'
                      'COM15'
                      'COM16'
                      'COM17'
                      'COM18'
                      'COM19'
                      'COM20'
                      'COM21'
                      'COM22'
                      'COM23'
                      'COM24'
                      'COM25'
                      'COM26'
                      'COM27'
                      'COM28'
                      'COM29'
                      'COM30'
                      'COM31'
                      'COM32'
                      ''
                      ''
                      '')
                  end
                  object ComPort_Baud: TComboBox
                    Left = 112
                    Top = 40
                    Width = 115
                    Height = 21
                    Hint = #1057#1082#1086#1088#1086#1089#1090#1100' '#1087#1086' '#1087#1086#1089#1083#1077#1076#1086#1074#1072#1090#1077#1083#1100#1085#1086#1084#1091' '#1087#1086#1088#1090#1091
                    ItemHeight = 13
                    ParentShowHint = False
                    ShowHint = True
                    TabOrder = 1
                    Text = '9600'
                    OnChange = ComPort_BaudChange
                    Items.Strings = (
                      '1200'
                      '2400'
                      '4800'
                      '9600'
                      '14400'
                      '19200'
                      '38400'
                      '56000'
                      '57600'
                      '115200'
                      '256000')
                  end
                  object ComPort_EvenBit: TComboBox
                    Left = 112
                    Top = 88
                    Width = 115
                    Height = 21
                    Hint = 
                      #1053#1072#1083#1080#1095#1080#1077' '#1073#1080#1090#1072' '#1095#1077#1090#1085#1086#1089#1090#1080' '#1087#1088#1080' '#1087#1077#1088#1077#1076#1072#1095#1077' '#1073#1072#1081#1090#1072' '#13#10#1087#1086' '#1087#1086#1089#1083#1077#1076#1086#1074#1072#1090#1077#1083#1100#1085#1086#1084#1091' ' +
                      #1087#1086#1088#1090#1091
                    ItemHeight = 13
                    ItemIndex = 0
                    ParentShowHint = False
                    ShowHint = True
                    TabOrder = 2
                    Text = 'NONE'
                    OnChange = ComPort_EvenBitChange
                    Items.Strings = (
                      'NONE'
                      'EVEN'
                      'ODD')
                  end
                  object ComPort_BitsCount: TSpinEdit
                    Left = 112
                    Top = 64
                    Width = 115
                    Height = 22
                    Hint = #1063#1080#1089#1083#1086' '#1073#1080#1090' '#1076#1072#1085#1085#1099#1093' '#1087#1088#1080' '#1087#1077#1088#1077#1076#1072#1095#1077' '#13#10#1087#1086' '#1087#1086#1089#1083#1077#1076#1086#1074#1072#1090#1077#1083#1100#1085#1086#1084#1091' '#1087#1086#1088#1090#1091
                    MaxValue = 8
                    MinValue = 5
                    ParentShowHint = False
                    ShowHint = True
                    TabOrder = 3
                    Value = 8
                    OnChange = ComPort_BitsCountChange
                  end
                  object tbAutoComList: TCheckBox
                    Left = 17
                    Top = 30
                    Width = 75
                    Height = 16
                    Hint = 
                      #1057#1087#1080#1089#1086#1082' '#1076#1086#1089#1090#1091#1087#1085#1099#1093' '#1087#1086#1089#1083#1077#1076#1086#1074#1072#1090#1077#1083#1100#1085#1099#1093' '#1087#1086#1088#1090#1086#1074' '#13#10#1074' '#1086#1087#1077#1088#1072#1094#1080#1086#1085#1085#1086#1081' '#1089#1080#1089#1090#1077#1084 +
                      #1077' / '#1089#1087#1080#1089#1086#1082' '#1087#1086#1088#1090#1086#1074' '#1086#1090' 1 '#1076#1086' 30'
                    Caption = #1074' '#1089#1080#1089#1090#1077#1084#1077
                    Checked = True
                    Font.Charset = RUSSIAN_CHARSET
                    Font.Color = clBlack
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                    ParentShowHint = False
                    ShowHint = True
                    State = cbChecked
                    TabOrder = 4
                    OnClick = tbAutoComListClick
                  end
                end
                object GroupBox6: TGroupBox
                  Left = 0
                  Top = 139
                  Width = 284
                  Height = 159
                  Align = alClient
                  Caption = #1051#1080#1085#1080#1080' '#1091#1087#1088#1072#1074#1083#1077#1085#1080#1103' '#1087#1086#1089#1083#1077#1076#1086#1074#1072#1090#1077#1083#1100#1085#1086#1075#1086' '#1087#1086#1088#1090#1072
                  Font.Charset = RUSSIAN_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 1
                  object RTS: TCheckBox
                    Left = 171
                    Top = 14
                    Width = 49
                    Height = 16
                    Hint = #1057#1086#1089#1090#1086#1103#1085#1080#1077' '#1089#1080#1075#1085#1072#1083#1072' RTS'
                    Caption = 'RTS'
                    Enabled = False
                    ParentShowHint = False
                    ShowHint = True
                    TabOrder = 0
                    OnClick = RTSClick
                  end
                  object DTR: TCheckBox
                    Left = 107
                    Top = 14
                    Width = 57
                    Height = 17
                    Hint = #1057#1086#1089#1090#1086#1103#1085#1080#1077' '#1089#1080#1075#1085#1072#1083#1072' DTR'
                    Caption = 'DTR'
                    Enabled = False
                    ParentShowHint = False
                    ShowHint = True
                    TabOrder = 1
                    OnClick = DTRClick
                  end
                  object AutoDTR: TCheckBox
                    Left = 13
                    Top = 14
                    Width = 69
                    Height = 17
                    Hint = #1040#1074#1090#1086#1087#1077#1088#1077#1082#1083#1102#1095#1077#1085#1080#1077' '#1089#1080#1075#1085#1072#1083#1072' DTR '#13#10#1087#1088#1080' '#1087#1077#1088#1077#1093#1086#1076#1077' '#1089' '#1087#1077#1088#1077#1076#1072#1095#1080' '#1085#1072' '#1087#1088#1080#1077#1084
                    Caption = 'AutoDTR'
                    Color = 14933983
                    Enabled = False
                    ParentColor = False
                    ParentShowHint = False
                    ShowHint = True
                    TabOrder = 2
                    OnClick = AutoDTRClick
                  end
                  object ledCTS: TCheckLED
                    Left = 170
                    Top = 31
                    Width = 39
                    Height = 15
                    LEDColor = LedGreen
                    Lighted = False
                    ToggleSet = []
                    Alignment = taLeftJustify
                    AutoSize = False
                    Caption = ' CTS'
                    FlashTime = 0
                    Enabled = False
                    TabOrder = 3
                    TabStop = True
                    AutoToggle = True
                  end
                  object ledDSR: TCheckLED
                    Left = 106
                    Top = 31
                    Width = 40
                    Height = 15
                    LEDColor = LedGreen
                    Lighted = False
                    ToggleSet = []
                    Alignment = taLeftJustify
                    AutoSize = False
                    Caption = ' DSR'
                    FlashTime = 0
                    Enabled = False
                    TabOrder = 4
                    TabStop = True
                    AutoToggle = True
                  end
                  object ledRING: TCheckLED
                    Left = 13
                    Top = 31
                    Width = 45
                    Height = 15
                    LEDColor = LedGreen
                    Lighted = False
                    ToggleSet = []
                    Alignment = taLeftJustify
                    AutoSize = False
                    Caption = ' RING'
                    FlashTime = 0
                    Enabled = False
                    TabOrder = 5
                    TabStop = True
                    AutoToggle = True
                  end
                end
              end
              object TabSheet14: TTabSheet
                Caption = 'UDP'
                ImageIndex = 2
                object UDPPort_GrpBox: TGroupBox
                  Left = 0
                  Top = 0
                  Width = 284
                  Height = 298
                  Align = alClient
                  Caption = #1050#1083#1080#1077#1085#1090' UDP'
                  Font.Charset = RUSSIAN_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                  object Label3: TLabel
                    Left = 9
                    Top = 18
                    Width = 10
                    Height = 13
                    Caption = 'IP'
                    OnClick = Label2Click
                  end
                  object Label4: TLabel
                    Left = 9
                    Top = 42
                    Width = 25
                    Height = 13
                    Caption = #1055#1086#1088#1090
                  end
                  object Label7: TLabel
                    Left = 9
                    Top = 114
                    Width = 54
                    Height = 13
                    Caption = #1057#1086#1089#1090#1086#1103#1085#1080#1077
                  end
                  object UDPPort_State: TLabel
                    Left = 112
                    Top = 114
                    Width = 138
                    Height = 13
                    Caption = '_______________________'
                    Font.Charset = RUSSIAN_CHARSET
                    Font.Color = clBlue
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                  end
                  object Label61: TLabel
                    Left = 9
                    Top = 66
                    Width = 37
                    Height = 13
                    Caption = 'Local IP'
                  end
                  object Label62: TLabel
                    Left = 9
                    Top = 90
                    Width = 52
                    Height = 13
                    Caption = 'Local '#1055#1086#1088#1090
                  end
                  object cbUDPPort_IP: TComboBox
                    Left = 112
                    Top = 16
                    Width = 115
                    Height = 21
                    ItemHeight = 13
                    ParentShowHint = False
                    ShowHint = True
                    TabOrder = 2
                    Text = '127.0.0.1'
                    OnChange = cbUDPPort_IPChange
                    Items.Strings = (
                      '127.0.0.1')
                  end
                  object UDPPort_IP: TEdit
                    Left = 112
                    Top = 16
                    Width = 97
                    Height = 21
                    Hint = 'IP '#1072#1076#1088#1077#1089' UDP '#1089#1086#1077#1076#1080#1085#1077#1085#1080#1103
                    ParentShowHint = False
                    ShowHint = True
                    TabOrder = 0
                    Text = '127.0.0.1'
                    OnChange = UDPPort_IPChange
                    OnKeyPress = UDPPort_IPKeyPress
                  end
                  object UDPPort_Number: TSpinEdit
                    Left = 112
                    Top = 40
                    Width = 115
                    Height = 22
                    Hint = #1085#1086#1084#1077#1088' '#1087#1086#1088#1090#1072' UDP '#1089#1086#1077#1076#1080#1085#1077#1085#1080#1103
                    MaxValue = 65535
                    MinValue = 1
                    ParentShowHint = False
                    ShowHint = True
                    TabOrder = 1
                    Value = 5555
                  end
                  object UDPLocalPort_IP: TEdit
                    Left = 112
                    Top = 64
                    Width = 113
                    Height = 21
                    Hint = 'IP '#1072#1076#1088#1077#1089' UDP '#1089#1086#1077#1076#1080#1085#1077#1085#1080#1103
                    ParentShowHint = False
                    ShowHint = True
                    TabOrder = 3
                    Text = '127.0.0.1'
                  end
                  object UDPLocalPort_Number: TSpinEdit
                    Left = 112
                    Top = 88
                    Width = 115
                    Height = 22
                    Hint = #1085#1086#1084#1077#1088' '#1087#1086#1088#1090#1072' UDP '#1089#1086#1077#1076#1080#1085#1077#1085#1080#1103
                    MaxValue = 65535
                    MinValue = 1
                    ParentShowHint = False
                    ShowHint = True
                    TabOrder = 4
                    Value = 5555
                  end
                end
              end
              object TabSheet15: TTabSheet
                Caption = 'TCP'
                ImageIndex = 3
                object TCPPort_GrpBox: TGroupBox
                  Left = 0
                  Top = 0
                  Width = 284
                  Height = 298
                  Align = alClient
                  Caption = #1050#1083#1080#1077#1085#1090' TCP'
                  Font.Charset = RUSSIAN_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                  object Label5: TLabel
                    Left = 9
                    Top = 18
                    Width = 10
                    Height = 13
                    Caption = 'IP'
                  end
                  object Label6: TLabel
                    Left = 9
                    Top = 42
                    Width = 25
                    Height = 13
                    Caption = #1055#1086#1088#1090
                  end
                  object Label14: TLabel
                    Left = 9
                    Top = 65
                    Width = 54
                    Height = 13
                    Caption = #1057#1086#1089#1090#1086#1103#1085#1080#1077
                  end
                  object TCPPort_State: TLabel
                    Left = 112
                    Top = 66
                    Width = 138
                    Height = 13
                    Caption = '_______________________'
                    Font.Charset = RUSSIAN_CHARSET
                    Font.Color = clBlue
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                  end
                  object cbTCPPort_IP: TComboBox
                    Left = 112
                    Top = 16
                    Width = 115
                    Height = 21
                    ItemHeight = 13
                    ItemIndex = 0
                    ParentShowHint = False
                    ShowHint = True
                    TabOrder = 2
                    Text = '127.0.0.1'
                    OnChange = cbTCPPort_IPChange
                    Items.Strings = (
                      '127.0.0.1')
                  end
                  object TCPPort_Number: TSpinEdit
                    Left = 112
                    Top = 40
                    Width = 115
                    Height = 22
                    Hint = #1087#1086#1088#1090' TCP '#1089#1086#1077#1076#1080#1085#1077#1085#1080#1103
                    MaxValue = 65535
                    MinValue = 1
                    ParentShowHint = False
                    ShowHint = True
                    TabOrder = 0
                    Value = 10001
                  end
                  object TCPPort_IP: TEdit
                    Left = 112
                    Top = 16
                    Width = 97
                    Height = 21
                    Hint = 'IP '#1072#1076#1088#1077#1089' TCP '#1089#1086#1077#1076#1080#1085#1077#1085#1080#1103
                    ParentShowHint = False
                    ShowHint = True
                    TabOrder = 1
                    Text = '127.0.0.1'
                    OnKeyPress = TCPPort_IPKeyPress
                  end
                end
              end
              object TabSheet13: TTabSheet
                Caption = 'TBN Broker'
                ImageIndex = 1
                object KSPDPort_GrpBox: TGroupBox
                  Left = 0
                  Top = 0
                  Width = 284
                  Height = 298
                  Align = alClient
                  Caption = #1050#1083#1080#1077#1085#1090' '#1058#1041#1053' '#1041#1088#1086#1082#1077#1088
                  Font.Charset = RUSSIAN_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                  object Label15: TLabel
                    Left = 9
                    Top = 18
                    Width = 77
                    Height = 13
                    Caption = 'IP '#1058#1041#1053' '#1041#1088#1086#1082#1077#1088#1072
                  end
                  object Label16: TLabel
                    Left = 9
                    Top = 42
                    Width = 92
                    Height = 13
                    Caption = #1055#1086#1088#1090' '#1058#1041#1053' '#1041#1088#1086#1082#1077#1088#1072
                  end
                  object Label17: TLabel
                    Left = 9
                    Top = 138
                    Width = 54
                    Height = 13
                    Caption = #1057#1086#1089#1090#1086#1103#1085#1080#1077
                  end
                  object KSPD_State: TLabel
                    Left = 132
                    Top = 139
                    Width = 138
                    Height = 13
                    Caption = '_______________________'
                    Font.Charset = RUSSIAN_CHARSET
                    Font.Color = clBlue
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                  end
                  object Label19: TLabel
                    Left = 11
                    Top = 66
                    Width = 43
                    Height = 13
                    Caption = 'ID '#1050#1057#1055#1044
                  end
                  object Label20: TLabel
                    Left = 9
                    Top = 112
                    Width = 48
                    Height = 13
                    Caption = #1057#1082#1086#1088#1086#1089#1090#1100
                  end
                  object Label21: TLabel
                    Left = 10
                    Top = 89
                    Width = 57
                    Height = 13
                    Caption = #1055#1086#1088#1090' '#1050#1057#1055#1044
                  end
                  object cbKSPD_ID: TComboBox
                    Left = 112
                    Top = 64
                    Width = 115
                    Height = 21
                    ItemHeight = 13
                    ParentShowHint = False
                    ShowHint = True
                    TabOrder = 6
                    Text = '127.0.0.1'
                    OnChange = cbKSPD_IDChange
                  end
                  object cbTBNBROKER_IP: TComboBox
                    Left = 112
                    Top = 16
                    Width = 115
                    Height = 21
                    ItemHeight = 13
                    ItemIndex = 0
                    ParentShowHint = False
                    ShowHint = True
                    TabOrder = 5
                    Text = '127.0.0.1'
                    OnChange = cbTBNBROKER_IPChange
                    Items.Strings = (
                      '127.0.0.1')
                  end
                  object TBNBROKER_IP: TEdit
                    Left = 112
                    Top = 16
                    Width = 97
                    Height = 21
                    Hint = 'IP '#1072#1076#1088#1077#1089' '#1058#1041#1053' '#1041#1088#1086#1082#1077#1088#1072
                    ParentShowHint = False
                    ShowHint = True
                    TabOrder = 0
                    Text = '127.0.0.1'
                    OnKeyPress = TBNBROKER_IPKeyPress
                  end
                  object TBNBROKER_Port: TSpinEdit
                    Left = 112
                    Top = 40
                    Width = 115
                    Height = 22
                    Hint = #1085#1086#1084#1077#1088' '#1087#1086#1088#1090#1072' '#1076#1083#1103' '#1082#1083#1080#1077#1085#1090#1089#1082#1086#1075#1086' '#1089#1086#1077#1076#1080#1085#1077#1085#1080#1103' '#1058#1041#1053' '#1041#1088#1086#1082#1077#1088#1072
                    MaxValue = 65535
                    MinValue = 1
                    ParentShowHint = False
                    ShowHint = True
                    TabOrder = 1
                    Value = 10002
                  end
                  object KSPD_ID: TEdit
                    Left = 112
                    Top = 64
                    Width = 97
                    Height = 21
                    Hint = #1048#1076#1077#1085#1090#1080#1092#1080#1082#1072#1090#1086#1088' '#1050#1057#1055#1044' '#1085#1072' '#1058#1041#1053' '#1041#1088#1086#1082#1077#1088#1077
                    ParentShowHint = False
                    ShowHint = True
                    TabOrder = 2
                    OnChange = KSPD_IDChange
                    OnKeyPress = KSPD_IDKeyPress
                  end
                  object KSPD_Baud: TComboBox
                    Left = 112
                    Top = 110
                    Width = 115
                    Height = 21
                    Hint = 
                      #1057#1082#1086#1088#1086#1089#1090#1100' '#1087#1077#1088#1077#1086#1090#1087#1088#1072#1074#1082#1080' '#1087#1072#1082#1077#1090#1086#1074' '#13#10#1087#1086' '#1087#1086#1089#1083#1077#1076#1086#1074#1072#1090#1077#1083#1100#1085#1099#1084' (RS232,RS485' +
                      ') '#13#10#1087#1086#1088#1090#1072#1084' '#1050#1057#1055#1044'5'
                    ItemHeight = 13
                    ItemIndex = 2
                    ParentShowHint = False
                    ShowHint = True
                    TabOrder = 3
                    Text = '9600'
                    Items.Strings = (
                      '2400'
                      '4800'
                      '9600'
                      '19200'
                      '38400'
                      '57600'
                      '115200'
                      '256000')
                  end
                  object KSPD_Port: TComboBox
                    Left = 112
                    Top = 87
                    Width = 115
                    Height = 21
                    Hint = 
                      #1055#1086#1088#1090' '#1076#1086#1089#1090#1072#1074#1082#1080' '#1087#1072#1082#1077#1090#1072' '#1074' '#1050#1057#1055#1044'5'#13#10'CONSOLE - '#1074#1080#1088#1090#1091#1072#1083#1100#1085#1099#1081' '#1087#1086#1088#1090' '#1082#1086#1085#1089#1086#1083#1080 +
                      ' '#13#10#1082#1086#1084#1072#1085#1076' '#1082#1086#1085#1092#1080#1075#1091#1088#1080#1088#1086#1074#1072#1085#1080#1103' '#1050#1057#1055#1044'5'
                    ItemHeight = 13
                    ItemIndex = 0
                    ParentShowHint = False
                    ShowHint = True
                    TabOrder = 4
                    Text = 'RS485'
                    Items.Strings = (
                      'RS485'
                      'RS232'
                      'Ethernet'
                      'CONSOLE')
                  end
                end
              end
              object TabSheet16: TTabSheet
                Caption = 'Bluetooth'
                ImageIndex = 4
                object Bluetooth_GrpBox: TGroupBox
                  Left = 0
                  Top = 0
                  Width = 284
                  Height = 298
                  Align = alClient
                  Caption = 'Bluetooth '#1087#1086#1076#1082#1083#1102#1095#1077#1085#1080#1077
                  Font.Charset = RUSSIAN_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                  Visible = False
                  OnClick = aAboutExecute
                  object Label25: TLabel
                    Left = 9
                    Top = 18
                    Width = 59
                    Height = 13
                    Caption = #1059#1089#1090#1088#1086#1081#1089#1090#1074#1086
                  end
                  object Label29: TLabel
                    Left = 9
                    Top = 107
                    Width = 54
                    Height = 13
                    Caption = #1057#1086#1089#1090#1086#1103#1085#1080#1077
                  end
                  object Label30: TLabel
                    Left = 96
                    Top = 116
                    Width = 3
                    Height = 13
                    Font.Charset = RUSSIAN_CHARSET
                    Font.Color = clBlue
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                  end
                  object Bluetooth_State: TLabel
                    Left = 132
                    Top = 107
                    Width = 138
                    Height = 13
                    Caption = '_______________________'
                    Font.Charset = RUSSIAN_CHARSET
                    Font.Color = clBlue
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                  end
                  object cbBluetooth_mode: TCheckBox
                    Left = 9
                    Top = 69
                    Width = 135
                    Height = 16
                    Alignment = taLeftJustify
                    Caption = #1050#1083#1080#1077#1085#1090
                    Checked = True
                    Enabled = False
                    Font.Charset = RUSSIAN_CHARSET
                    Font.Color = clBlack
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                    ParentShowHint = False
                    ShowHint = True
                    State = cbChecked
                    TabOrder = 0
                  end
                  object nrDeviceBox1: TnrDeviceBox
                    Left = 131
                    Top = 16
                    Width = 95
                    Height = 21
                    nrComm = nrBT1
                    ResetOnChanged = False
                    ItemHeight = 13
                    TabOrder = 1
                  end
                  object Bluetooth_ParamBox: TGroupBox
                    Left = 2
                    Top = 133
                    Width = 280
                    Height = 163
                    Align = alBottom
                    Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099
                    TabOrder = 2
                    object chAuthenticated: TCheckBox
                      Left = 16
                      Top = 14
                      Width = 97
                      Height = 17
                      Hint = 'Authenticated'
                      Caption = 'Authenticated'
                      ParentShowHint = False
                      ShowHint = True
                      TabOrder = 0
                    end
                    object chRemembered: TCheckBox
                      Left = 16
                      Top = 38
                      Width = 97
                      Height = 17
                      Caption = 'Remembered'
                      TabOrder = 1
                    end
                    object chUnknown: TCheckBox
                      Left = 16
                      Top = 62
                      Width = 97
                      Height = 17
                      Caption = 'Unknown'
                      TabOrder = 2
                    end
                    object chConnected: TCheckBox
                      Left = 16
                      Top = 86
                      Width = 97
                      Height = 17
                      Caption = 'Connected'
                      TabOrder = 3
                    end
                    object chInquiry: TCheckBox
                      Left = 16
                      Top = 110
                      Width = 97
                      Height = 17
                      Caption = 'Inquiry'
                      TabOrder = 4
                    end
                    object Button2: TButton
                      Left = 16
                      Top = 134
                      Width = 75
                      Height = 25
                      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
                      TabOrder = 5
                      OnClick = Button2Click
                    end
                    object Button3: TButton
                      Left = 128
                      Top = 134
                      Width = 75
                      Height = 25
                      Caption = #1042#1099#1073#1088#1072#1090#1100'(win)'
                      TabOrder = 9
                      OnClick = Button3Click
                    end
                    object chForceAuth: TCheckBox
                      Left = 128
                      Top = 14
                      Width = 81
                      Height = 17
                      Hint = 'Force Auth.'
                      Caption = 'Force Auth.'
                      ParentShowHint = False
                      ShowHint = True
                      TabOrder = 6
                    end
                    object chAddWiz: TCheckBox
                      Left = 128
                      Top = 38
                      Width = 81
                      Height = 17
                      Caption = 'Add Wizard'
                      TabOrder = 7
                    end
                    object chSkipServices: TCheckBox
                      Left = 128
                      Top = 62
                      Width = 89
                      Height = 17
                      Caption = 'Skip Services'
                      TabOrder = 8
                    end
                  end
                  object Bluetooth_ConfigBtn: TButton
                    Left = 131
                    Top = 41
                    Width = 95
                    Height = 25
                    Caption = #1050#1086#1085#1092#1080#1075#1091#1088#1072#1094#1080#1103
                    TabOrder = 3
                    OnClick = Bluetooth_ConfigBtnClick
                  end
                  object CheckBox2: TCheckBox
                    Left = 9
                    Top = 87
                    Width = 135
                    Height = 16
                    Alignment = taLeftJustify
                    Caption = #1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1086
                    Font.Charset = RUSSIAN_CHARSET
                    Font.Color = clBlack
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                    ParentShowHint = False
                    ShowHint = True
                    TabOrder = 4
                    OnClick = CheckBox2Click
                  end
                end
              end
            end
          end
          object TabSheet1: TTabSheet
            Caption = #1057#1077#1088#1074#1077#1088#1099
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ImageIndex = 3
            ParentFont = False
            object ScrollBox3: TScrollBox
              Left = 0
              Top = 0
              Width = 292
              Height = 326
              Align = alClient
              BevelInner = bvNone
              BevelOuter = bvNone
              BorderStyle = bsNone
              TabOrder = 0
            end
            object PageControl5: TPageControl
              Left = 0
              Top = 0
              Width = 292
              Height = 326
              ActivePage = tsVirtualKSPD
              Align = alClient
              TabOrder = 1
              object tsTCPServer: TTabSheet
                Caption = #1058#1057#1056
                object gbServerTCP: TGroupBox
                  Left = 0
                  Top = 0
                  Width = 284
                  Height = 298
                  Hint = 
                    #1055#1086#1076#1082#1083#1102#1095#1077#1085#1080#1077' '#1082' '#1089#1077#1088#1074#1077#1088#1091' '#1087#1086' IP '#1082#1086#1084#1087#1100#1102#1090#1077#1088#1072' '#1080' '#1087#1086#1088#1090#1091', '#1091#1082#1072#1079#1072#1085#1085#1086#1084#1091' '#1074' '#1085#1072#1089 +
                    #1090#1088#1086#1081#1082#1072#1093', '#1087#1086#1079#1074#1086#1083#1103#1077#1090' '#1091#1089#1090#1072#1085#1086#1074#1080#1090#1100' '#1087#1088#1086#1073#1088#1086#1089' '#1076#1072#1085#1085#1099#1093' '#1087#1086' '#1090#1077#1082#1091#1097#1077#1084#1091' '#1072#1082#1090#1080#1074#1085#1086 +
                    #1084#1091' '#1089#1086#1077#1076#1080#1085#1077#1085#1080#1102
                  Align = alClient
                  Caption = #1057#1077#1088#1074#1077#1088' TCP'
                  Font.Charset = RUSSIAN_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 0
                  object Label26: TLabel
                    Left = 9
                    Top = 33
                    Width = 25
                    Height = 13
                    Caption = #1055#1086#1088#1090
                  end
                  object Label27: TLabel
                    Left = 9
                    Top = 78
                    Width = 54
                    Height = 13
                    Caption = #1057#1086#1089#1090#1086#1103#1085#1080#1077
                  end
                  object ServerStateLab: TLabel
                    Left = 103
                    Top = 76
                    Width = 138
                    Height = 13
                    Caption = '_______________________'
                    FocusControl = AutoDTR
                    Font.Charset = RUSSIAN_CHARSET
                    Font.Color = clBlue
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                  end
                  object Label2: TLabel
                    Left = 9
                    Top = 57
                    Width = 67
                    Height = 13
                    Caption = #1053#1072#1087#1088#1072#1074#1083#1077#1085#1080#1077
                  end
                  object Label44: TLabel
                    Left = 9
                    Top = 105
                    Width = 165
                    Height = 13
                    Caption = #1054#1073#1084#1077#1085','#1073#1072#1081#1090'           I                    O'
                  end
                  object ServerPortEdt: TSpinEdit
                    Left = 103
                    Top = 31
                    Width = 132
                    Height = 22
                    Hint = #1085#1086#1084#1077#1088' '#1087#1086#1088#1090#1072' UDP '#1089#1086#1077#1076#1080#1085#1077#1085#1080#1103
                    MaxValue = 65535
                    MinValue = 1
                    ParentShowHint = False
                    ShowHint = True
                    TabOrder = 0
                    Value = 10001
                  end
                  object serveractive: TCheckBox
                    Left = 9
                    Top = 14
                    Width = 107
                    Height = 17
                    Hint = 
                      #1055#1086#1076#1082#1083#1102#1095#1077#1085#1080#1077' '#1082' '#1076#1072#1085#1085#1086#1084#1091' TCP '#1089#1077#1088#1074#1077#1088#1091'  '#13#1087#1086#1079#1074#1086#1083#1103#1077#1090' '#1086#1088#1075#1072#1085#1080#1079#1086#1074#1072#1090#1100' '#1087#1088#1086#1073#1088 +
                      #1086#1089' '#1076#1072#1085#1085#1099#1093' '#13#1084#1077#1078#1076#1091' '#1090#1077#1082#1091#1097#1080#1084' '#1072#1082#1090#1080#1074#1085#1099#1084' '#1089#1086#1077#1076#1080#1085#1077#1085#1080#1077#1084', '#13#1074#1099#1073#1088#1072#1085#1085#1099#1084' '#1085#1072' '#1074#1082#1083 +
                      #1072#1076#1082#1077' "'#1056#1040#1041#1054#1058#1040'" '#1080' '#13#1082#1083#1080#1077#1085#1090#1086#1084' '#13#1076#1072#1085#1085#1086#1075#1086' '#1087#1086#1076#1082#1083#1102#1095#1077#1085#1080#1103
                    Alignment = taLeftJustify
                    Caption = #1040#1082#1090#1080#1074#1072#1094#1080#1103
                    TabOrder = 1
                    OnClick = serveractiveClick
                  end
                  object cbDest_Server_TCP: TComboBox
                    Left = 103
                    Top = 55
                    Width = 132
                    Height = 21
                    Hint = #1053#1072#1087#1088#1072#1074#1083#1077#1085#1080#1077' '#1087#1077#1088#1077#1076#1072#1095#1080' '#1076#1072#1085#1085#1099#1093
                    ItemHeight = 13
                    ItemIndex = 0
                    ParentShowHint = False
                    ShowHint = True
                    TabOrder = 2
                    Text = #1050#1083#1080#1077#1085#1090
                    Items.Strings = (
                      #1050#1083#1080#1077#1085#1090
                      #1057#1077#1088#1074#1077#1088' '#1058#1057#1056
                      #1042#1080#1088#1090#1091#1072#1083#1100#1085#1099#1081' '#1050#1057#1055#1044
                      #1042#1080#1088#1090#1091#1072#1083#1100#1085#1099#1081' COM'
                      #1069#1084#1091#1083#1103#1090#1086#1088)
                  end
                  object TCP_I_Edt: TEdit
                    Left = 108
                    Top = 99
                    Width = 55
                    Height = 21
                    BiDiMode = bdLeftToRight
                    Enabled = False
                    ParentBiDiMode = False
                    TabOrder = 3
                    Text = '0'
                  end
                  object TCP_O_Edt: TEdit
                    Left = 175
                    Top = 99
                    Width = 55
                    Height = 21
                    BiDiMode = bdLeftToRight
                    Enabled = False
                    ParentBiDiMode = False
                    TabOrder = 4
                    Text = '0'
                  end
                end
              end
              object tsVirtualKSPD: TTabSheet
                Caption = 'VKSPD'
                ImageIndex = 1
                object gbVirtualKSPD: TGroupBox
                  Left = 0
                  Top = 0
                  Width = 284
                  Height = 298
                  Hint = #1055#1086#1076#1082#1083#1102#1095#1077#1085#1080#1077' '#1082' '#1058#1041#1053' '#1041#1088#1086#1082#1077#1088' '#1087#1086' IP '#1080' '#1087#1086#1088#1090#1091
                  Align = alClient
                  Caption = #1042#1080#1088#1090#1091#1072#1083#1100#1085#1099#1081' '#1050#1057#1055#1044' ('#1082#1072#1085#1072#1083' "'#1058#1041#1053' '#1041#1088#1086#1082#1077#1088'")'
                  Font.Charset = RUSSIAN_CHARSET
                  Font.Color = clMaroon
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 0
                  object Label28: TLabel
                    Left = 9
                    Top = 213
                    Width = 54
                    Height = 13
                    Caption = #1057#1086#1089#1090#1086#1103#1085#1080#1077
                  end
                  object Broker_KSPD_State: TLabel
                    Left = 103
                    Top = 211
                    Width = 138
                    Height = 13
                    Caption = '_______________________'
                    Font.Charset = RUSSIAN_CHARSET
                    Font.Color = clBlue
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                  end
                  object Label32: TLabel
                    Left = 9
                    Top = 60
                    Width = 25
                    Height = 13
                    Caption = #1055#1086#1088#1090
                  end
                  object Label33: TLabel
                    Left = 9
                    Top = 39
                    Width = 55
                    Height = 13
                    Caption = 'IP '#1041#1088#1086#1082#1077#1088#1072
                  end
                  object Label31: TLabel
                    Left = 9
                    Top = 87
                    Width = 43
                    Height = 13
                    Caption = 'ID '#1050#1057#1055#1044
                  end
                  object Label35: TLabel
                    Left = 9
                    Top = 140
                    Width = 61
                    Height = 13
                    Caption = #1047#1040#1042'. '#1053#1054#1052#1045#1056
                  end
                  object Label37: TLabel
                    Left = 9
                    Top = 167
                    Width = 67
                    Height = 13
                    Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081
                  end
                  object Label24: TLabel
                    Left = 9
                    Top = 192
                    Width = 67
                    Height = 13
                    Caption = #1053#1072#1087#1088#1072#1074#1083#1077#1085#1080#1077
                  end
                  object Label43: TLabel
                    Left = 9
                    Top = 238
                    Width = 165
                    Height = 13
                    Caption = #1054#1073#1084#1077#1085','#1073#1072#1081#1090'           I                    O'
                  end
                  object chkBroker_KSPD: TCheckBox
                    Left = 9
                    Top = 14
                    Width = 107
                    Height = 17
                    Hint = 
                      #1055#1086#1076#1082#1083#1102#1095#1077#1085#1080#1077' '#1082' '#1058#1041#1053' '#1041#1088#1086#1082#1077#1088' '#1087#1086' IP '#1080' '#1087#1086#1088#1090#1091', '#13#1091#1082#1072#1079#1072#1085#1085#1086#1084#1091' '#1074' '#1085#1072#1089#1090#1088#1086#1081#1082#1072#1093 +
                      ' '#1050#1083#1080#1077#1085#1090#1072' '#1058#1041#1053' '#13#1041#1088#1086#1082#1077#1088', '#1087#1086#1079#1074#1086#1083#1103#1077#1090' '#1080#1084#1080#1090#1080#1088#1086#1074#1072#1090#1100' '#1050#1057#1055#1044', '#13#1087#1086#1089#1088#1077#1076#1089#1090#1074#1086#1084' '#1082 +
                      #1086#1090#1086#1088#1086#1075#1086' '#1074' '#1076#1072#1083#1100#1085#1077#1081#1096#1077#1084' '#1084#1086#1078#1085#1086' '#13#1091#1089#1090#1072#1085#1086#1074#1080#1090#1100' '#1076#1086#1089#1090#1091#1087' '#1082' '#1090#1077#1082#1091#1097#1077#1084#1091' '#1072#1082#1090#1080#1074#1085#1086 +
                      #1084#1091' '#13#1089#1086#1077#1076#1080#1085#1077#1085#1080#1102', '#1074#1099#1073#1088#1072#1085#1085#1086#1084#1091' '#1085#1072' '#1074#1082#1083#1072#1076#1082#1077' '#13'"'#1056#1040#1041#1054#1058#1040'"'
                    Alignment = taLeftJustify
                    Caption = #1040#1082#1090#1080#1074#1072#1094#1080#1103
                    TabOrder = 0
                    OnClick = chkBroker_KSPDClick
                  end
                  object seBroker_KSPD_Port: TSpinEdit
                    Left = 103
                    Top = 58
                    Width = 132
                    Height = 22
                    Hint = #1085#1086#1084#1077#1088' '#1087#1086#1088#1090#1072' '#1058#1041#1053' '#1073#1088#1086#1082#1077#1088#1072
                    MaxValue = 65535
                    MinValue = 1
                    ParentShowHint = False
                    ShowHint = True
                    TabOrder = 1
                    Value = 10003
                  end
                  object cbBroker_KSPD_IP: TComboBox
                    Left = 103
                    Top = 32
                    Width = 132
                    Height = 21
                    ItemHeight = 13
                    ItemIndex = 0
                    ParentShowHint = False
                    ShowHint = True
                    TabOrder = 3
                    Text = '127.0.0.1'
                    OnChange = cbBroker_KSPD_IPChange
                    Items.Strings = (
                      '127.0.0.1')
                  end
                  object Broker_KSPD_IP: TEdit
                    Left = 103
                    Top = 32
                    Width = 112
                    Height = 21
                    Hint = 'IP '#1072#1076#1088#1077#1089' '#1058#1041#1053' '#1073#1088#1086#1082#1077#1088#1072
                    ParentShowHint = False
                    ShowHint = True
                    TabOrder = 2
                    Text = '127.0.0.1'
                    OnKeyPress = Broker_KSPD_IPKeyPress
                  end
                  object seID_Broker_KSPD: TSpinEdit
                    Left = 103
                    Top = 85
                    Width = 132
                    Height = 22
                    Hint = 'ID '#1050#1057#1055#1044' '#1085#1072' '#1089#1077#1088#1074#1077#1088#1077' '#1058#1041#1053' '#1073#1088#1086#1082#1077#1088#13#1091#1074#1077#1083#1080#1095#1077#1085#1085#1099#1081' '#1085#1072' 1000000000'
                    MaxValue = 0
                    MinValue = 0
                    ParentShowHint = False
                    ShowHint = True
                    TabOrder = 4
                    Value = 777
                  end
                  object seHARDNUM_KSPD: TSpinEdit
                    Left = 103
                    Top = 137
                    Width = 132
                    Height = 22
                    Hint = 'HARDNUM '#1050#1057#1055#1044
                    MaxValue = 65535
                    MinValue = 1
                    ParentShowHint = False
                    ShowHint = True
                    TabOrder = 5
                    Value = 1969
                  end
                  object CommentsEdt: TEdit
                    Left = 103
                    Top = 165
                    Width = 132
                    Height = 21
                    Hint = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081' - '#1075#1076#1077' '#1079#1072#1087#1091#1097#1077#1085' Term2006'
                    MaxLength = 30
                    ParentShowHint = False
                    ShowHint = True
                    TabOrder = 6
                    OnChange = CommentsEdtChange
                  end
                  object cbDest_Virtual_KSPD: TComboBox
                    Left = 103
                    Top = 190
                    Width = 132
                    Height = 21
                    Hint = #1053#1072#1087#1088#1072#1074#1083#1077#1085#1080#1077' '#1087#1077#1088#1077#1076#1072#1095#1080' '#1076#1072#1085#1085#1099#1093
                    ItemHeight = 13
                    ItemIndex = 0
                    ParentShowHint = False
                    ShowHint = True
                    TabOrder = 7
                    Text = #1050#1083#1080#1077#1085#1090
                    Items.Strings = (
                      #1050#1083#1080#1077#1085#1090
                      #1057#1077#1088#1074#1077#1088' '#1058#1057#1056
                      #1042#1080#1088#1090#1091#1072#1083#1100#1085#1099#1081' '#1050#1057#1055#1044
                      #1042#1080#1088#1090#1091#1072#1083#1100#1085#1099#1081' COM'
                      #1069#1084#1091#1083#1103#1090#1086#1088)
                  end
                  object KSPD_I_Edt: TEdit
                    Left = 108
                    Top = 232
                    Width = 55
                    Height = 21
                    BiDiMode = bdLeftToRight
                    Enabled = False
                    ParentBiDiMode = False
                    TabOrder = 8
                    Text = '0'
                  end
                  object KSPD_O_Edt: TEdit
                    Left = 175
                    Top = 232
                    Width = 55
                    Height = 21
                    BiDiMode = bdLeftToRight
                    Enabled = False
                    ParentBiDiMode = False
                    TabOrder = 9
                    Text = '0'
                  end
                  object chkRealIDBroker_KSPD: TCheckBox
                    Left = 9
                    Top = 111
                    Width = 107
                    Height = 17
                    Hint = #1086#1090#1082#1083#1102#1095#1077#1085#1085#1072#1103' '#1086#1087#1094#1080#1103' '#1076#1086#1073#1072#1074#1083#1103#1077#1090' '#1082' '#1090#1077#1082#1091#1097#1077#1084#1091' ID '#1082#1086#1085#1089#1090#1072#1085#1090#1091' 1000000'
                    Alignment = taLeftJustify
                    Caption = #1056#1077#1072#1083#1100#1085#1099#1081' ID'
                    TabOrder = 10
                  end
                end
              end
              object tsVirtualCOM: TTabSheet
                Caption = 'VCOM'
                ImageIndex = 2
                object gbVirtualComPort: TGroupBox
                  Left = 0
                  Top = 0
                  Width = 284
                  Height = 298
                  Align = alClient
                  Caption = #1042#1080#1088#1090#1091#1072#1083#1100#1085#1099#1081' COM '#1087#1086#1088#1090
                  Font.Charset = RUSSIAN_CHARSET
                  Font.Color = clGreen
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                  object Label38: TLabel
                    Left = 9
                    Top = 34
                    Width = 31
                    Height = 13
                    Caption = #1053#1086#1084#1077#1088
                  end
                  object Label39: TLabel
                    Left = 9
                    Top = 81
                    Width = 54
                    Height = 13
                    Caption = #1057#1086#1089#1090#1086#1103#1085#1080#1077
                  end
                  object VirtualComPort_State: TLabel
                    Left = 103
                    Top = 81
                    Width = 53
                    Height = 13
                    Caption = #1054#1090#1082#1083#1102#1095#1077#1085
                    Font.Charset = RUSSIAN_CHARSET
                    Font.Color = clBlue
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                  end
                  object Label41: TLabel
                    Left = 9
                    Top = 59
                    Width = 67
                    Height = 13
                    Caption = #1053#1072#1087#1088#1072#1074#1083#1077#1085#1080#1077
                  end
                  object Label42: TLabel
                    Left = 9
                    Top = 105
                    Width = 165
                    Height = 13
                    Caption = #1054#1073#1084#1077#1085','#1073#1072#1081#1090'           I                    O'
                  end
                  object VirtualComPort_Number: TComboBox
                    Left = 103
                    Top = 32
                    Width = 132
                    Height = 21
                    Hint = #1053#1086#1084#1077#1088' '#1074#1080#1088#1090#1091#1072#1083#1100#1085#1086#1075#1086' '#1087#1086#1089#1083#1077#1076#1086#1074#1072#1090#1077#1083#1100#1085#1086#1075#1086' '#1087#1086#1088#1090#1072
                    ItemHeight = 13
                    ItemIndex = 8
                    ParentShowHint = False
                    ShowHint = True
                    TabOrder = 0
                    Text = 'COM9'
                    Items.Strings = (
                      'COM1'
                      'COM2'
                      'COM3'
                      'COM4'
                      'COM5'
                      'COM6'
                      'COM7'
                      'COM8'
                      'COM9'
                      'COM10'
                      'COM11'
                      'COM12'
                      'COM13'
                      'COM14'
                      'COM15'
                      'COM16'
                      'COM17'
                      'COM18'
                      'COM19'
                      'COM20'
                      'COM21'
                      'COM22'
                      'COM23'
                      'COM24'
                      'COM25'
                      'COM26'
                      'COM27'
                      'COM28'
                      'COM29'
                      'COM30'
                      'COM31'
                      'COM32'
                      ''
                      ''
                      '')
                  end
                  object chkVirtualComPort: TCheckBox
                    Left = 9
                    Top = 14
                    Width = 108
                    Height = 17
                    Hint = 
                      #1055#1086#1076#1082#1083#1102#1095#1077#1085#1080#1077' '#1082' '#1074#1080#1088#1090#1091#1072#1083#1100#1085#1086#1084#1091' '#1087#1086#1088#1090#1091' '#13#1087#1086#1079#1074#1086#1083#1103#1077#1090' '#1087#1086#1083#1091#1095#1080#1090#1100' '#1076#1086#1089#1090#1091#1087' '#1082' '#1090#1077 +
                      #1082#1091#1097#1077#1084#1091' '#13#1072#1082#1090#1080#1074#1085#1086#1084#1091' '#1089#1086#1077#1076#1080#1085#1077#1085#1080#1102', '#1074#1099#1073#1088#1072#1085#1085#1086#1084#1091' '#1085#1072' '#13#1074#1082#1083#1072#1076#1082#1077' "'#1056#1040#1041#1054#1058#1040'"'
                    Alignment = taLeftJustify
                    Caption = #1040#1082#1090#1080#1074#1072#1094#1080#1103
                    ParentShowHint = False
                    ShowHint = True
                    TabOrder = 1
                    OnClick = chkVirtualComPortClick
                  end
                  object cbDest_Virtual_COM: TComboBox
                    Left = 103
                    Top = 54
                    Width = 132
                    Height = 21
                    Hint = #1053#1072#1087#1088#1072#1074#1083#1077#1085#1080#1077' '#1087#1077#1088#1077#1076#1072#1095#1080' '#1076#1072#1085#1085#1099#1093
                    ItemHeight = 13
                    ItemIndex = 0
                    ParentShowHint = False
                    ShowHint = True
                    TabOrder = 2
                    Text = #1050#1083#1080#1077#1085#1090
                    Items.Strings = (
                      #1050#1083#1080#1077#1085#1090
                      #1057#1077#1088#1074#1077#1088' '#1058#1057#1056
                      #1042#1080#1088#1090#1091#1072#1083#1100#1085#1099#1081' '#1050#1057#1055#1044
                      #1042#1080#1088#1090#1091#1072#1083#1100#1085#1099#1081' COM'
                      #1069#1084#1091#1083#1103#1090#1086#1088)
                  end
                  object VCOM_I_Edt: TEdit
                    Left = 108
                    Top = 99
                    Width = 55
                    Height = 21
                    BiDiMode = bdLeftToRight
                    Enabled = False
                    ParentBiDiMode = False
                    TabOrder = 3
                    Text = '0'
                  end
                  object VCOM_O_Edt: TEdit
                    Left = 175
                    Top = 99
                    Width = 55
                    Height = 21
                    BiDiMode = bdLeftToRight
                    Enabled = False
                    ParentBiDiMode = False
                    TabOrder = 4
                    Text = '0'
                  end
                end
              end
              object tsVemulator: TTabSheet
                Caption = #1069#1084#1091#1083#1103#1090#1086#1088
                ImageIndex = 3
                object GroupBox16: TGroupBox
                  Left = 0
                  Top = 0
                  Width = 284
                  Height = 258
                  Align = alClient
                  Caption = #1069#1084#1091#1083#1103#1090#1086#1088' '#1087#1088#1086#1090#1086#1082#1086#1083#1072
                  TabOrder = 0
                  object cbEmulatorActive: TCheckBox
                    Left = 6
                    Top = 199
                    Width = 228
                    Height = 17
                    Alignment = taLeftJustify
                    Caption = #1040#1082#1090#1080#1074#1072#1094#1080#1103
                    TabOrder = 0
                    OnClick = cbEmulatorActiveClick
                  end
                  object GroupBox17: TGroupBox
                    Left = 2
                    Top = 100
                    Width = 280
                    Height = 80
                    Align = alTop
                    Caption = 'ASCII'
                    TabOrder = 1
                    object Label54: TLabel
                      Left = 9
                      Top = 16
                      Width = 31
                      Height = 13
                      Caption = #1055#1088#1080#1077#1084
                    end
                    object Label55: TLabel
                      Left = 8
                      Top = 38
                      Width = 50
                      Height = 13
                      Caption = #1055#1077#1088#1077#1076#1072#1095#1072
                    end
                    object edtEmulatorInASCII: TEdit
                      Left = 103
                      Top = 13
                      Width = 132
                      Height = 21
                      TabOrder = 0
                      Text = '<< [ascii] '
                    end
                    object edtEmulatorOutASCII: TEdit
                      Left = 103
                      Top = 34
                      Width = 132
                      Height = 21
                      TabOrder = 1
                      Text = '>> [ascii] '
                    end
                    object cbEmulatorCRLF: TCheckBox
                      Left = 5
                      Top = 61
                      Width = 228
                      Height = 17
                      Alignment = taLeftJustify
                      Caption = #1055#1077#1088#1077#1074#1086#1076' '#1082#1072#1088#1077#1090#1082#1080
                      Checked = True
                      State = cbChecked
                      TabOrder = 3
                      OnClick = cbEmulatorCRLFClick
                    end
                    object edtEmulatorCRChar: TEdit
                      Left = 103
                      Top = 55
                      Width = 50
                      Height = 21
                      TabOrder = 2
                      Text = #182
                    end
                    object edtEmulatorCRCharValue: TSpinEdit
                      Left = 160
                      Top = 55
                      Width = 50
                      Height = 22
                      MaxValue = 0
                      MinValue = 0
                      TabOrder = 4
                      Value = 182
                      OnChange = edtEmulatorCRCharValueChange
                    end
                  end
                  object GroupBox18: TGroupBox
                    Left = 2
                    Top = 15
                    Width = 280
                    Height = 85
                    Align = alTop
                    Caption = 'HEX'
                    TabOrder = 2
                    object Label57: TLabel
                      Left = 9
                      Top = 16
                      Width = 31
                      Height = 13
                      Caption = #1055#1088#1080#1077#1084
                    end
                    object Label58: TLabel
                      Left = 8
                      Top = 38
                      Width = 50
                      Height = 13
                      Caption = #1055#1077#1088#1077#1076#1072#1095#1072
                    end
                    object edtEmulatorInHEX: TEdit
                      Left = 103
                      Top = 13
                      Width = 132
                      Height = 21
                      TabOrder = 0
                      Text = '<< [hex]  '
                    end
                    object edtEmulatorOutHEX: TEdit
                      Left = 103
                      Top = 34
                      Width = 132
                      Height = 21
                      TabOrder = 1
                      Text = '>> [hex]  '
                    end
                  end
                  object cbEmulatorAddNew: TCheckBox
                    Left = 6
                    Top = 184
                    Width = 228
                    Height = 17
                    Alignment = taLeftJustify
                    Caption = #1044#1086#1073#1072#1074#1083#1103#1090#1100' '#1085#1077#1080#1079#1074#1077#1089#1090#1085#1099#1077
                    TabOrder = 3
                    OnClick = cbEmulatorActiveClick
                  end
                end
              end
            end
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 3
        ParentFont = False
        object PageControl6: TPageControl
          Left = 0
          Top = 0
          Width = 300
          Height = 354
          ActivePage = tsObmen
          Align = alClient
          TabOrder = 0
          object tsObmen: TTabSheet
            Caption = #1054#1073#1084#1077#1085
            object GroupBox12: TGroupBox
              Left = 0
              Top = 43
              Width = 292
              Height = 283
              Align = alClient
              Caption = #1054#1073#1084#1077#1085
              Font.Charset = RUSSIAN_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              object Label22: TLabel
                Left = 9
                Top = 18
                Width = 122
                Height = 13
                Caption = #1054#1078#1080#1076#1072#1085#1080#1077' '#1087#1072#1082#1077#1090#1072', '#1084#1089#1077#1082
              end
              object Label23: TLabel
                Left = 9
                Top = 42
                Width = 116
                Height = 13
                Caption = #1054#1078#1080#1076#1072#1085#1080#1077' '#1073#1072#1081#1090#1072', '#1084#1089#1077#1082
              end
              object Label18: TLabel
                Left = 9
                Top = 68
                Width = 73
                Height = 13
                Caption = #1055#1088#1080#1077#1084' '#1076#1072#1085#1085#1099#1093
              end
              object DopNastroyki_TimeOut: TSpinEdit
                Left = 147
                Top = 16
                Width = 133
                Height = 22
                Hint = #1042#1088#1077#1084#1103' '#1086#1078#1080#1076#1072#1085#1080#1103' '#1086#1090#1074#1077#1090#1072' '#1085#1072' '#1087#1086#1089#1099#1083#1082#1091' '
                MaxValue = 65535
                MinValue = 1
                ParentShowHint = False
                ShowHint = True
                TabOrder = 0
                Value = 100
                OnChange = DopNastroyki_TimeOutChange
              end
              object DopNastroyki_ByteTimeOut: TSpinEdit
                Left = 147
                Top = 40
                Width = 133
                Height = 22
                Hint = 
                  #1042#1088#1077#1084#1103' '#1086#1078#1080#1076#1072#1085#1080#1103' '#1086#1095#1077#1088#1077#1076#1085#1086#1075#1086' '#1073#1072#1081#1090#1072' '#1086#1090#1074#1077#1090#1072#13#10'- '#1087#1088#1080' '#1087#1088#1077#1074#1099#1096#1077#1085#1080#1080' '#1074#1088#1077#1084#1077#1085#1080 +
                  ' '#1090#1080#1096#1080#1085#1099' '#1087#1088#1086#1075#1088#1072#1084#1084#1072' '#13#10#1089#1095#1080#1090#1072#1077#1090' '#1087#1088#1080#1085#1080#1084#1072#1077#1084#1099#1081' '#1087#1072#1082#1077#1090' '#1079#1072#1074#1077#1088#1096#1077#1085#1085#1099#1084
                MaxValue = 1000
                MinValue = 1
                ParentShowHint = False
                ShowHint = True
                TabOrder = 1
                Value = 30
              end
              object cbEchoServer: TCheckBox
                Left = 9
                Top = 93
                Width = 151
                Height = 17
                Alignment = taLeftJustify
                Caption = #1069#1093#1086' '#1089#1077#1088#1074#1077#1088
                TabOrder = 2
              end
            end
            object GroupBox10: TGroupBox
              Left = 0
              Top = 0
              Width = 292
              Height = 43
              Align = alTop
              Caption = #1057#1090#1072#1090#1080#1089#1090#1080#1082#1072
              TabOrder = 1
              object Label45: TLabel
                Left = 9
                Top = 23
                Width = 165
                Height = 13
                Caption = #1054#1073#1084#1077#1085','#1073#1072#1081#1090'           I                    O'
              end
              object CLI_I_Edt: TEdit
                Left = 108
                Top = 15
                Width = 55
                Height = 21
                BiDiMode = bdLeftToRight
                ParentBiDiMode = False
                ReadOnly = True
                TabOrder = 0
                Text = '0'
              end
              object CLI_O_Edt: TEdit
                Left = 175
                Top = 15
                Width = 55
                Height = 21
                BiDiMode = bdLeftToRight
                ParentBiDiMode = False
                ReadOnly = True
                TabOrder = 1
                Text = '0'
              end
            end
            object cbOEM: TComboBox
              Left = 147
              Top = 107
              Width = 133
              Height = 21
              Hint = #1056#1072#1079#1083#1080#1095#1085#1099#1077' '#1082#1086#1076#1080#1088#1086#1074#1082#1080
              ItemHeight = 13
              ItemIndex = 0
              ParentShowHint = False
              ShowHint = True
              TabOrder = 2
              Text = #1073#1077#1079' '#1086#1073#1088#1072#1073#1086#1090#1082#1080
              Items.Strings = (
                #1073#1077#1079' '#1086#1073#1088#1072#1073#1086#1090#1082#1080
                'UTF8 -> ANSI'
                'OEM -> ANSI'
                'OEM -> CHAR'
                'CHAR -> OEM'
                'CHAR -> ANSI')
            end
          end
          object tsSetupHeader: TTabSheet
            Caption = #1054#1090#1087#1088#1072#1074#1082#1072
            ImageIndex = 1
            object Label40: TLabel
              Left = 11
              Top = 197
              Width = 79
              Height = 13
              Caption = #1086#1073#1098#1077#1084#1072' '#1076#1072#1085#1085#1099#1093
            end
            object GroupBox9: TGroupBox
              Left = 0
              Top = 81
              Width = 292
              Height = 84
              Align = alTop
              Caption = #1064#1090#1072#1084#1087' '#1087#1086#1089#1099#1083#1082#1080
              TabOrder = 0
              object cbMillisecond: TCheckBox
                Left = 10
                Top = 31
                Width = 150
                Height = 17
                Hint = #1054#1090#1086#1073#1088#1072#1078#1072#1090#1100' '#1084#1080#1083#1083#1080#1089#1077#1082#1091#1085#1076#1099
                Alignment = taLeftJustify
                Caption = #1057' '#1084#1080#1083#1083#1080#1089#1077#1082#1091#1085#1076#1072#1084#1080
                ParentShowHint = False
                ShowHint = True
                TabOrder = 0
                OnClick = cbMillisecondClick
              end
              object cbTimeStamp: TCheckBox
                Left = 10
                Top = 16
                Width = 150
                Height = 17
                Hint = #1054#1090#1086#1073#1088#1072#1078#1072#1090#1100' '#1074#1088#1077#1084#1103' '#1087#1086#1089#1099#1083#1082#1080
                Alignment = taLeftJustify
                Caption = #1042#1088#1077#1084#1103
                ParentShowHint = False
                ShowHint = True
                TabOrder = 1
                OnClick = cbTimeStampClick
              end
              object chkDirectLabel: TCheckBox
                Left = 10
                Top = 46
                Width = 150
                Height = 17
                Hint = #1052#1077#1090#1082#1072' '#1085#1072#1087#1088#1072#1074#1083#1077#1085#1080#1103' '#1087#1077#1088#1077#1076#1072#1095#1080' '#1076#1072#1085#1085#1099#1093
                Alignment = taLeftJustify
                Caption = #1053#1072#1087#1088#1072#1074#1083#1077#1085#1080#1077
                Checked = True
                ParentShowHint = False
                ShowHint = True
                State = cbChecked
                TabOrder = 2
                OnClick = chkDirectLabelClick
              end
              object TransportChk: TCheckBox
                Left = 10
                Top = 63
                Width = 150
                Height = 17
                Hint = 
                  #1054#1090#1086#1073#1088#1072#1078#1072#1090#1100' '#1090#1088#1072#1085#1089#1087#1086#1088#1090#1085#1091#1102' '#13#1095#1072#1089#1090#1100' '#1087#1072#1082#1077#1090#1072' '#1074' '#1086#1082#1085#1077' "'#1057#1080#1089#1090#1077#1084#1085#1099#1077' '#1089#1086#1086#1073#1097#1077#1085#1080 +
                  #1103'"'
                Alignment = taLeftJustify
                Caption = #1058#1088#1072#1085#1089#1087#1086#1088#1090
                ParentShowHint = False
                ShowHint = True
                TabOrder = 3
                OnClick = AutoRunChkClick
              end
            end
            object TerminalTypeGrp: TRadioGroup
              Left = 0
              Top = 32
              Width = 292
              Height = 49
              Hint = 
                #1042#1080#1076' '#1087#1088#1077#1076#1089#1090#1072#1074#1083#1077#1085#1080#1103' '#1087#1077#1088#1077#1076#1072#1074#1072#1077#1084#1086#1081' '#1080' '#1087#1088#1080#1085#1080#1084#1072#1077#1084#1086#1081' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1080#13#10'ASCII -' +
                ' '#1089#1080#1084#1074#1086#1083#1100#1085#1086#1077' '#1087#1088#1077#1076#1089#1090#1072#1074#1083#1077#1085#1080#1077': '#39'1'#39#13#10'HEX Pascal: $31'#13#10'HEX C: 0x31'#13#10'HE' +
                'X : 31'
              Align = alTop
              Caption = #1058#1080#1087' '#1087#1088#1077#1076#1089#1090#1072#1074#1083#1077#1085#1080#1103
              Columns = 2
              ItemIndex = 3
              Items.Strings = (
                'ASCII'
                'HEX Pascal'
                'HEX C'
                'HEX')
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              OnClick = TerminalTypeGrpClick
            end
            object CRLFMode: TRadioGroup
              Left = 0
              Top = 0
              Width = 292
              Height = 32
              Hint = #1040#1074#1090#1086#1084#1072#1090#1080#1095#1077#1089#1082#1080' '#1076#1086#1073#1072#1074#1083#1103#1077#1084#1099#1081' '#1089#1080#1084#1074#1086#1083' '#1082' '#1089#1090#1088#1086#1082#1077' '#1087#1086#1089#1099#1083#1082#1080
              Align = alTop
              Caption = #1047#1072#1074#1077#1088#1096#1072#1102#1097#1080#1081' '#1089#1080#1084#1074#1086#1083
              Color = 14933983
              Columns = 3
              Font.Charset = RUSSIAN_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ItemIndex = 0
              Items.Strings = (
                #1085#1077#1090
                '<CR>'
                '<CR> <LF>')
              ParentColor = False
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 2
              OnClick = CRLFModeClick
            end
            object chClearOutputBuf: TCheckBox
              Left = 9
              Top = 167
              Width = 150
              Height = 17
              Hint = #1054#1095#1080#1089#1090#1082#1072' '#1089#1090#1088#1086#1082#1080' '#1090#1077#1082#1091#1097#1077#1081' '#1087#1086#1089#1099#1083#1082#1080#13#1087#1086#1089#1083#1077' '#1086#1090#1087#1088#1072#1074#1082#1080' '#1077#1077' '#1089#1086#1076#1077#1088#1078#1080#1084#1086#1075#1086
              Alignment = taLeftJustify
              Caption = #1054#1095#1080#1097#1072#1090#1100' '#1089' '#1086#1090#1087#1088#1072#1074#1082#1086#1081
              ParentShowHint = False
              ShowHint = True
              TabOrder = 3
            end
            object MultiStrings: TCheckBox
              Left = 9
              Top = 182
              Width = 150
              Height = 17
              Hint = #1055#1086#1089#1099#1083#1082#1072' '#1085#1077#1089#1082#1086#1083#1100#1082#1080#1093' '#1089#1090#1088#1086#1082
              Alignment = taLeftJustify
              Caption = #1054#1090#1087#1088#1072#1074#1082#1072' '#1073#1086#1083#1100#1096#1086#1075#1086
              ParentShowHint = False
              ShowHint = True
              TabOrder = 4
              OnClick = MultiStringsClick
            end
          end
          object tsEditor: TTabSheet
            Caption = #1056#1077#1076#1072#1082#1090#1086#1088
            ImageIndex = 2
            object Label59: TLabel
              Left = 10
              Top = 157
              Width = 115
              Height = 13
              Caption = #1055#1086#1076#1089#1074#1077#1090#1082#1072' '#1089#1080#1085#1090#1072#1082#1089#1080#1089#1072
            end
            object BufferisedLabel: TLabel
              Left = 9
              Top = 79
              Width = 72
              Height = 26
              Caption = #1041#1077#1079#1073#1091#1092#1077#1088#1085#1099#1081' '#13#10#1084#1072#1082#1089#1080#1084#1091#1084
              Enabled = False
            end
            object LimitLabel: TLabel
              Left = 9
              Top = 103
              Width = 102
              Height = 26
              Caption = #1054#1075#1088#1072#1085#1080#1095#1077#1085#1080#1077' '#1089#1090#1088#1086#1082' '#13#10#1074' '#1073#1091#1092#1077#1088#1077' '#1074#1099#1074#1086#1076#1072
            end
            object Label60: TLabel
              Left = 9
              Top = 128
              Width = 136
              Height = 26
              Caption = #1044#1077#1081#1089#1090#1074#1080#1077' '#1087#1088#1080#13#10#1076#1086#1089#1090#1080#1078#1077#1085#1080#1080' '#1086#1075#1088#1072#1085#1080#1095#1077#1085#1080#1080#1103
            end
            object exInputBuffChk: TCheckBox
              Left = 10
              Top = 1
              Width = 150
              Height = 17
              Hint = #1048#1089#1087#1086#1083#1100#1079#1086#1074#1072#1090#1100' '#1088#1072#1089#1096#1080#1088#1077#1085#1085#1099#1081' '#1088#1077#1076#1072#1082#1090#1086#1088' '#1087#1088#1080#1077#1084#1085#1086#1075#1086' '#1073#1091#1092#1077#1088#1072
              Alignment = taLeftJustify
              Caption = #1056#1072#1089#1096#1080#1088#1077#1085#1085#1099#1081' '#1088#1077#1076#1072#1082#1090#1086#1088
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              OnClick = exInputBuffChkClick
            end
            object cbWordWrap: TCheckBox
              Left = 10
              Top = 16
              Width = 150
              Height = 17
              Hint = #1055#1077#1088#1077#1085#1086#1089' '#1089#1090#1088#1086#1082
              Alignment = taLeftJustify
              Caption = #1047#1072#1074#1086#1088#1086#1090' '#1089#1090#1088#1086#1082
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              OnClick = cbWordWrapClick
            end
            object chkSpecialChars: TCheckBox
              Left = 10
              Top = 31
              Width = 150
              Height = 17
              Hint = #1055#1086#1082#1072#1079#1099#1074#1072#1090#1100' '#1089#1087#1077#1094#1089#1080#1084#1074#1086#1083#1099
              Alignment = taLeftJustify
              Caption = #1057#1087#1077#1094#1089#1080#1084#1074#1086#1083#1099
              ParentShowHint = False
              ShowHint = True
              TabOrder = 2
              OnClick = chkSpecialCharsClick
            end
            object chkScroll: TCheckBox
              Left = 10
              Top = 47
              Width = 150
              Height = 17
              Hint = #1057#1082#1088#1086#1083#1083#1080#1085#1075' '#1086#1082#1085#1072' '#1087#1088#1077#1076#1072#1095#1072'\'#1087#1088#1080#1077#1084
              Alignment = taLeftJustify
              Caption = #1040#1074#1090#1086#1089#1082#1088#1086#1083#1083
              Checked = True
              ParentShowHint = False
              ShowHint = True
              State = cbChecked
              TabOrder = 3
              OnClick = chkScrollClick
            end
            object cbSyntax: TComboBox
              Left = 147
              Top = 155
              Width = 133
              Height = 21
              Hint = #1055#1086#1076#1089#1074#1077#1090#1082#1072' '#1076#1077#1081#1089#1090#1074#1091#1077#1090' '#1090#1086#1083#1100#1082#1086' '#1074' '#1088#1072#1089#1096#1080#1088#1077#1085#1085#1086#1084' '#1088#1077#1076#1072#1082#1090#1086#1088#1077
              ItemHeight = 13
              ItemIndex = 2
              ParentShowHint = False
              ShowHint = True
              TabOrder = 4
              Text = 'SQL'
              OnChange = cbSyntaxChange
              Items.Strings = (
                #1057'++'
                'Pascal'
                'SQL')
            end
            object MaxNonBufferised: TSpinEdit
              Left = 147
              Top = 80
              Width = 133
              Height = 22
              Hint = 
                #1052#1072#1082#1089#1080#1084#1072#1083#1100#1085#1072#1103' '#1074#1077#1083#1080#1095#1080#1085#1072' '#1085#1072#1087#1086#1083#1085#1077#1085#1080#1103' '#1074#1093#1086#1076#1085#1086#1075#1086' '#1073#1091#1092#1077#1088#1072', '#1087#1086#1089#1083#1077' '#1082#1086#1090#1086#1088#1086#1081' ' +
                #1074#1093#1086#1076#1085#1086#1081' '#1073#1091#1092#1077#1088' '#1074#1099#1074#1086#1076#1080#1090#1089#1103' '#1085#1072' '#1101#1082#1088#1072#1085' - '#1076#1077#1081#1089#1090#1074#1091#1077#1090' '#1090#1086#1083#1100#1082#1086' '#1089#1086' '#1089#1073#1088#1086#1096#1077#1085#1085#1099 +
                #1084' '#1092#1083#1072#1075#1086#1084' Bufferised  '
              MaxValue = 1024
              MinValue = 1
              ParentShowHint = False
              ShowHint = True
              TabOrder = 5
              Value = 256
            end
            object LimitEdt: TSpinEdit
              Left = 147
              Top = 104
              Width = 133
              Height = 22
              Hint = 
                #1052#1072#1082#1089#1080#1084#1072#1083#1100#1085#1086#1077' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1089#1090#1088#1086#1082' '#1074' '#1086#1090#1086#1073#1088#1072#1078#1072#1077#1084#1086#1084' '#1073#1091#1092#1077#1088#1077' '#13#1076#1077#1081#1089#1090#1074#1091#1077#1090' '#1090 +
                #1086#1083#1100#1082#1086' '#1087#1088#1080' '#1072#1082#1090#1080#1074#1085#1086#1081' '#1086#1087#1094#1080#1080' "Limit"'
              MaxValue = 100000
              MinValue = 101
              ParentShowHint = False
              ShowHint = True
              TabOrder = 6
              Value = 10000
              OnChange = LimitEdtChange
            end
            object cbLimit: TComboBox
              Left = 147
              Top = 128
              Width = 133
              Height = 21
              ItemHeight = 13
              ItemIndex = 1
              TabOrder = 7
              Text = #1057#1086#1093#1088#1072#1085#1103#1090#1100' '#1080' '#1086#1095#1080#1097#1072#1090#1100
              Items.Strings = (
                #1059#1076#1072#1083#1103#1090#1100' '#1074#1077#1088#1093
                #1057#1086#1093#1088#1072#1085#1103#1090#1100' '#1080' '#1086#1095#1080#1097#1072#1090#1100)
            end
            object chkLimit: TCheckBox
              Left = 9
              Top = 64
              Width = 150
              Height = 17
              Hint = 
                #1055#1088#1080' '#1074#1099#1089#1090#1072#1074#1083#1077#1085#1085#1086#1081' '#1086#1087#1094#1080#1080' '#1091#1076#1072#1083#1103#1102#1090#1089#1103' '#1073#1086#1083#1077#1077' '#1089#1090#1072#1088#1099#1077' '#1076#1072#1085#1085#1099#1077', '#1087#1088#1077#1074#1099#1096#1072#1102#1097#1080 +
                #1077' '#1085#1072#1089#1090#1088#1086#1081#1082#1091' "'#1054#1075#1088#1072#1085#1080#1095#1077#1085#1080#1077' '#1089#1090#1086#1082' '#1074' '#1073#1091#1092#1077#1088#1077' '#1074#1099#1074#1086#1076#1072'"'
              Alignment = taLeftJustify
              Caption = #1054#1075#1088#1072#1085#1080#1095#1077#1085#1080#1077' '#1073#1091#1092#1077#1088#1072
              Checked = True
              ParentShowHint = False
              ShowHint = True
              State = cbChecked
              TabOrder = 8
              OnClick = chkLimitClick
            end
          end
          object tsOther: TTabSheet
            Caption = #1056#1072#1079#1085#1086#1077
            ImageIndex = 3
            object Label36: TLabel
              Left = 13
              Top = 85
              Width = 92
              Height = 13
              Caption = #1087#1088#1080' '#1089#1074#1086#1088#1072#1095#1080#1074#1072#1085#1080#1080
            end
            object AutoListChk: TCheckBox
              Left = 10
              Top = 1
              Width = 150
              Height = 17
              Action = aAutoSendList
              Alignment = taLeftJustify
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
            end
            object chkHideToTray: TCheckBox
              Left = 10
              Top = 31
              Width = 150
              Height = 17
              Hint = #1057#1074#1086#1088#1072#1095#1080#1074#1072#1090#1100#1089#1103' '#1074' '#1087#1072#1085#1077#1083#1100' '#1074' '#1074#1080#1076#1077' '#1079#1085#1072#1095#1082#1072
              Alignment = taLeftJustify
              Caption = #1057#1074#1086#1088#1072#1095#1080#1074#1072#1090#1100#1089#1103' '#1074' '#1090#1088#1077#1081
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              OnClick = chkHideToTrayClick
            end
            object cbForceClosePortChangingDeviceMaps: TCheckBox
              Left = 10
              Top = 112
              Width = 150
              Height = 17
              Hint = #1054#1090#1082#1083#1102#1095#1072#1090#1100' '#1087#1086#1088#1090' '#1087#1088#1080' '#1080#1079#1084#1077#1085#1077#1085#1080#1080' '#1082#1072#1088#1090#1099' '#1091#1089#1090#1088#1086#1081#1089#1090#1074' '#1054#1057
              Alignment = taLeftJustify
              Caption = #1054#1090#1082#1083#1102#1095#1072#1090#1100' '#1087#1086#1088#1090
              Checked = True
              ParentShowHint = False
              ShowHint = True
              State = cbChecked
              TabOrder = 2
            end
            object AutoRunChk: TCheckBox
              Left = 10
              Top = 45
              Width = 150
              Height = 17
              Hint = #1047#1072#1087#1091#1089#1082' '#1087#1088#1080#1083#1086#1078#1077#1085#1080#1103' '#1087#1088#1080' '#1089#1090#1072#1088#1090#1077' Windows'
              Alignment = taLeftJustify
              Caption = #1040#1074#1090#1086#1079#1072#1075#1088#1091#1079#1082#1072
              ParentShowHint = False
              ShowHint = True
              TabOrder = 3
              OnClick = AutoRunChkClick
            end
            object cbSystemJournal: TCheckBox
              Left = 10
              Top = 98
              Width = 150
              Height = 17
              Action = aSystemJournal
              Alignment = taLeftJustify
              ParentShowHint = False
              ShowHint = True
              TabOrder = 4
            end
            object cbOldStyleDialog: TCheckBox
              Left = 10
              Top = 16
              Width = 150
              Height = 17
              Hint = 
                #1048#1085#1086#1075#1076#1072' '#1086#1087#1077#1088#1072#1094#1080#1086#1085#1085#1072#1103' '#1089#1080#1089#1090#1077#1084#1072' '#1084#1086#1078#1077#1090' '#39#1087#1086#1076#1074#1077#1096#1080#1074#1072#1090#1100#39' '#1074#1099#1079#1086#1074' '#1074' '#1087#1088#1086#1075#1088#1072#1084#1084 +
                #1077' '#1076#1080#1072#1083#1086#1075#1086#1074' '#1086#1090#1082#1088#1099#1090#1080#1103' '#1092#1072#1081#1083#1086#1074' - '#1074' '#1101#1090#1086#1084' '#1089#1083#1091#1095#1072#1077' '#1074#1099#1073#1077#1088#1080#1090#1077' '#1074#1072#1088#1080#1072#1085#1090':'#13'"'#1044#1080 +
                #1072#1083#1086#1075#1080' '#1074' '#1089#1090#1072#1088#1086#1084' '#1089#1090#1080#1083#1077'"'
              Alignment = taLeftJustify
              Caption = #1044#1080#1072#1083#1086#1075#1080' '#1074' '#1089#1090#1072#1088#1086#1084' '#1089#1090#1080#1083#1077
              ParentShowHint = False
              ShowHint = True
              TabOrder = 5
              OnClick = cbOldStyleDialogClick
            end
            object chkHint: TCheckBox
              Left = 10
              Top = 60
              Width = 150
              Height = 17
              Hint = #1055#1086#1076#1089#1082#1072#1079#1082#1072' '#1087#1088#1080' '#1074#1099#1076#1077#1083#1077#1085#1080#1080' '#1073#1083#1086#1082#1072' '#1074' '#1086#1082#1085#1077' '#1087#1086#1090#1086#1082#1072' '#1076#1072#1085#1085#1099#1093
              Alignment = taLeftJustify
              Caption = #1055#1086#1076#1089#1082#1072#1079#1082#1072
              Checked = True
              ParentShowHint = False
              ShowHint = True
              State = cbChecked
              TabOrder = 6
              OnClick = chkHintClick
            end
            object chkNotWriteToLogWhenHidden: TCheckBox
              Left = 10
              Top = 76
              Width = 150
              Height = 13
              Hint = #1053#1077' '#1087#1080#1089#1072#1090#1100' '#1074' '#1083#1086#1075', '#1077#1089#1083#1080' '#1089#1074#1077#1088#1085#1091#1090#1086' '#1087#1088#1080#1083#1086#1078#1077#1085#1080#1077
              Alignment = taLeftJustify
              Caption = #1053#1077' '#1079#1072#1087#1080#1089#1099#1074#1072#1090#1100' '#1074' '#1083#1086#1075
              ParentShowHint = False
              ShowHint = True
              TabOrder = 7
            end
            object cbForceOpenPort: TCheckBox
              Left = 11
              Top = 127
              Width = 150
              Height = 17
              Hint = #1040#1074#1090#1086#1087#1086#1076#1082#1083#1102#1095#1077#1085#1080#1077' '#1087#1086#1088#1090#1072' '#1087#1088#1080' '#1077#1075#1086' '#1086#1090#1082#1083#1102#1095#1077#1085#1080#1080' '#1080#1079#1074#1085#1077
              Alignment = taLeftJustify
              Caption = #1040#1074#1090#1086#1087#1086#1076#1082#1083#1102#1095#1077#1085#1080#1077' '
              Checked = True
              ParentShowHint = False
              ShowHint = True
              State = cbChecked
              TabOrder = 8
            end
          end
          object tsConsole: TTabSheet
            Caption = #1050#1086#1085#1089#1086#1083#1100
            ImageIndex = 4
            object Label34: TLabel
              Left = 10
              Top = 51
              Width = 37
              Height = 13
              Caption = #1055#1072#1088#1086#1083#1100
            end
            object PasswordEdt: TEdit
              Left = 148
              Top = 48
              Width = 120
              Height = 21
              Hint = #1055#1072#1088#1086#1083#1100' '#1076#1083#1103' '#1076#1086#1089#1090#1091#1087#1072
              MaxLength = 8
              PasswordChar = '*'
              TabOrder = 0
              Text = '12345678'
            end
            object chkUSR_CON: TCheckBox
              Left = 10
              Top = 31
              Width = 150
              Height = 17
              Hint = 
                #1055#1086#1076#1076#1077#1088#1078#1080#1074#1072#1090#1100' '#1082#1086#1085#1089#1086#1083#1100#1085#1099#1081' '#1085#1072#1073#1086#1088' '#1082#1086#1084#1072#1085#1076'  '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103' '#1080#1079' '#1089#1090#1088#1086#1082#1080' '#1090#1077#1082 +
                #1091#1097#1077#1081' '#1087#1086#1089#1099#1083#1082#1080
              Alignment = taLeftJustify
              Caption = #1057#1090#1088#1086#1082#1072' '#1074#1074#1086#1076#1072' '#1087#1086#1089#1099#1083#1082#1080
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
            end
            object chkTCP_CON: TCheckBox
              Left = 10
              Top = 1
              Width = 150
              Height = 17
              Hint = #1055#1086#1076#1076#1077#1088#1078#1080#1074#1072#1090#1100' '#1082#1086#1085#1089#1086#1083#1100#1085#1099#1081' '#1085#1072#1073#1086#1088' '#1082#1086#1084#1072#1085#1076'  TCP '#1089#1077#1088#1074#1077#1088#1086#1084
              Alignment = taLeftJustify
              Caption = 'TCP '#1089#1077#1088#1074#1077#1088
              ParentShowHint = False
              ShowHint = True
              TabOrder = 2
            end
            object chkCOM_CON: TCheckBox
              Left = 10
              Top = 16
              Width = 150
              Height = 17
              Hint = #1055#1086#1076#1076#1077#1088#1078#1080#1074#1072#1090#1100' '#1082#1086#1085#1089#1086#1083#1100#1085#1099#1081' '#1085#1072#1073#1086#1088' '#1082#1086#1084#1072#1085#1076'  '#1042#1080#1088#1090#1091#1072#1083#1100#1085#1099#1084' COM '#1087#1086#1088#1090#1086#1084
              Alignment = taLeftJustify
              Caption = #1042#1080#1088#1090#1091#1072#1083#1100#1085#1099#1081' COM'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 3
            end
          end
        end
      end
      object TabSheet3: TTabSheet
        Caption = #1057#1077#1088#1074#1080#1089
        ImageIndex = 4
        object GroupBox14: TGroupBox
          Left = 0
          Top = 0
          Width = 300
          Height = 264
          Align = alTop
          Caption = #1058#1072#1081#1084#1077#1088
          TabOrder = 0
          object Label46: TLabel
            Left = 8
            Top = 40
            Width = 49
            Height = 13
            Caption = #1044#1077#1081#1089#1090#1074#1080#1077
          end
          object Label47: TLabel
            Left = 8
            Top = 86
            Width = 30
            Height = 13
            Caption = #1042#1088#1077#1084#1103
            ParentShowHint = False
            ShowHint = True
          end
          object RxClock1: TRxClock
            Left = 2
            Top = 15
            Width = 296
            Height = 22
            BevelInner = bvRaised
            BevelOuter = bvNone
            DotsColor = clRed
            Align = alTop
            FullRepaint = False
            Color = 14933983
            OnAlarm = RxClock1Alarm
          end
          object chkAlarm: TCheckBox
            Left = 8
            Top = 62
            Width = 100
            Height = 17
            Alignment = taLeftJustify
            Caption = #1047#1072#1087#1091#1089#1090#1080#1090#1100
            TabOrder = 1
            OnClick = chkAlarmClick
          end
          object cbAlarm: TComboBox
            Left = 96
            Top = 40
            Width = 132
            Height = 21
            ItemHeight = 13
            ItemIndex = 0
            TabOrder = 2
            Text = #1055#1088#1086#1080#1075#1088#1072#1090#1100' '#1079#1074#1091#1082
            OnChange = cbAlarmChange
            Items.Strings = (
              #1055#1088#1086#1080#1075#1088#1072#1090#1100' '#1079#1074#1091#1082
              #1042#1099#1087#1086#1083#1085#1080#1090#1100' '#1082#1086#1084#1072#1085#1076#1091
              #1054#1090#1087#1088#1072#1074#1080#1090#1100' '#1087#1086#1089#1099#1083#1082#1091
              #1047#1072#1074#1077#1088#1096#1080#1090#1100' Term2006'
              #1042#1099#1082#1083#1102#1095#1080#1090#1100' '#1055#1050
              #1055#1077#1088#1077#1079#1072#1075#1088#1091#1079#1080#1090#1100' '#1055#1050
              #1059#1083#1086#1078#1080#1090#1100' '#1089#1087#1072#1090#1100' '#1055#1050)
          end
          object HourAlarm: TSpinEdit
            Left = 96
            Top = 80
            Width = 41
            Height = 21
            MaxValue = 59
            MinValue = 0
            TabOrder = 3
            Value = 0
            OnChange = HourAlarmChange
          end
          object MinAlarm: TSpinEdit
            Left = 140
            Top = 80
            Width = 41
            Height = 21
            MaxValue = 59
            MinValue = 0
            TabOrder = 4
            Value = 0
            OnChange = MinAlarmChange
          end
          object SecAlarm: TSpinEdit
            Left = 184
            Top = 80
            Width = 41
            Height = 21
            MaxValue = 59
            MinValue = 0
            TabOrder = 5
            Value = 0
            OnChange = SecAlarmChange
          end
          object GroupBox15: TGroupBox
            Left = 2
            Top = 106
            Width = 296
            Height = 156
            Align = alBottom
            Caption = #1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1099#1077' '#1085#1072#1089#1090#1088#1086#1081#1082#1080
            TabOrder = 6
            object TimerPageControl: TPageControl
              Left = 2
              Top = 15
              Width = 292
              Height = 139
              ActivePage = TabSheet7
              Align = alClient
              TabOrder = 0
              object TabSheet8: TTabSheet
                Caption = #1055#1088#1086#1080#1075#1088#1072#1090#1100' '#1079#1074#1091#1082
                ImageIndex = 1
                TabVisible = False
                object Label48: TLabel
                  Left = 2
                  Top = 16
                  Width = 24
                  Height = 13
                  Caption = #1047#1074#1091#1082
                end
                object SystemSoundList: TComboBox
                  Left = 88
                  Top = 10
                  Width = 132
                  Height = 21
                  Enabled = False
                  ItemHeight = 13
                  TabOrder = 0
                  Text = 'FaxBeep'
                end
                object PlaySoundBtn: TButton
                  Left = 88
                  Top = 33
                  Width = 132
                  Height = 22
                  Caption = #1055#1088#1086#1074#1077#1088#1080#1090#1100
                  Enabled = False
                  TabOrder = 1
                  OnClick = PlaySoundBtnClick
                end
              end
              object TabSheet9: TTabSheet
                Caption = #1042#1099#1087#1086#1083#1085#1080#1090#1100' '#1082#1086#1084#1072#1085#1076#1091
                ImageIndex = 2
                TabVisible = False
                object Label49: TLabel
                  Left = 2
                  Top = 8
                  Width = 44
                  Height = 13
                  Caption = #1050#1086#1084#1072#1085#1076#1072
                end
                object ExecCmdBtn: TButton
                  Left = 96
                  Top = 31
                  Width = 132
                  Height = 22
                  Caption = #1055#1088#1086#1074#1077#1088#1080#1090#1100
                  Enabled = False
                  TabOrder = 0
                  OnClick = ExecCmdBtnClick
                end
                object CmdEdt: TEdit
                  Left = 96
                  Top = 8
                  Width = 132
                  Height = 21
                  Enabled = False
                  TabOrder = 1
                end
              end
              object TabSheet7: TTabSheet
                Caption = #1054#1090#1087#1088#1072#1074#1080#1090#1100' '#1087#1086#1089#1099#1083#1082#1091
                TabVisible = False
                object Label50: TLabel
                  Left = 8
                  Top = 11
                  Width = 41
                  Height = 13
                  Caption = #1055#1077#1088#1080#1086#1076' '
                  ParentShowHint = False
                  ShowHint = True
                end
                object SendCmdPeriodEdt: TCurrencyEdit
                  Left = 96
                  Top = 5
                  Width = 65
                  Height = 21
                  Hint = #1055#1077#1088#1080#1086#1076' '#1084#1077#1078#1076#1091' '#1087#1086#1089#1099#1083#1082#1072#1084#1080
                  AutoSize = False
                  DecimalPlaces = 0
                  DisplayFormat = '0 '#1089#1077#1082
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 0
                  Value = 600.000000000000000000
                end
                object SendSTARTCmdChk: TCheckBox
                  Left = 8
                  Top = 27
                  Width = 153
                  Height = 17
                  Alignment = taLeftJustify
                  BiDiMode = bdLeftToRight
                  Caption = #1055#1088#1080' '#1089#1090#1072#1088#1090#1077' '#1090#1072#1081#1084#1077#1088#1072
                  ParentBiDiMode = False
                  TabOrder = 1
                  OnClick = SendSTARTCmdChkClick
                end
                object SendFINISHCmdChk: TCheckBox
                  Left = 8
                  Top = 66
                  Width = 153
                  Height = 17
                  Alignment = taLeftJustify
                  BiDiMode = bdLeftToRight
                  Caption = #1055#1088#1080' '#1092#1080#1085#1080#1096#1077' '#1090#1072#1081#1084#1077#1088#1072
                  Checked = True
                  Enabled = False
                  ParentBiDiMode = False
                  State = cbChecked
                  TabOrder = 2
                end
                object SendCmdTimerStartBtn: TBitBtn
                  Left = 168
                  Top = 3
                  Width = 104
                  Height = 25
                  Caption = #1057#1058#1040#1056#1058
                  ModalResult = 4
                  TabOrder = 3
                  OnClick = SendCmdTimerStartBtnClick
                  Glyph.Data = {
                    DE010000424DDE01000000000000760000002800000024000000120000000100
                    0400000000006801000000000000000000001000000000000000000000000000
                    80000080000000808000800000008000800080800000C0C0C000808080000000
                    FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333444444
                    33333333333F8888883F33330000324334222222443333388F3833333388F333
                    000032244222222222433338F8833FFFFF338F3300003222222AAAAA22243338
                    F333F88888F338F30000322222A33333A2224338F33F8333338F338F00003222
                    223333333A224338F33833333338F38F00003222222333333A444338FFFF8F33
                    3338888300003AAAAAAA33333333333888888833333333330000333333333333
                    333333333333333333FFFFFF000033333333333344444433FFFF333333888888
                    00003A444333333A22222438888F333338F3333800003A2243333333A2222438
                    F38F333333833338000033A224333334422224338338FFFFF8833338000033A2
                    22444442222224338F3388888333FF380000333A2222222222AA243338FF3333
                    33FF88F800003333AA222222AA33A3333388FFFFFF8833830000333333AAAAAA
                    3333333333338888883333330000333333333333333333333333333333333333
                    0000}
                  NumGlyphs = 2
                end
                object SendCmdStartEdt: TEdit
                  Left = 8
                  Top = 44
                  Width = 265
                  Height = 21
                  TabOrder = 4
                  Visible = False
                end
                object SendCmdFinishEdt: TEdit
                  Left = 8
                  Top = 84
                  Width = 265
                  Height = 21
                  TabOrder = 5
                end
                object RepeatSentCmdChk: TCheckBox
                  Left = 8
                  Top = 110
                  Width = 153
                  Height = 17
                  Alignment = taLeftJustify
                  BiDiMode = bdLeftToRight
                  Caption = #1055#1086#1074#1090#1086#1088#1080#1090#1100' '#1095#1077#1088#1077#1079' '#1087#1072#1091#1079#1091
                  ParentBiDiMode = False
                  TabOrder = 6
                end
                object SendCmdPauseEdt: TCurrencyEdit
                  Left = 168
                  Top = 107
                  Width = 104
                  Height = 21
                  AutoSize = False
                  DecimalPlaces = 0
                  DisplayFormat = '0 '#1089#1077#1082
                  TabOrder = 7
                  Value = 10.000000000000000000
                end
              end
              object TabSheet10: TTabSheet
                Caption = #1055#1091#1089#1090#1086#1081
                ImageIndex = 3
                TabVisible = False
                object Label51: TLabel
                  Left = 8
                  Top = 8
                  Width = 69
                  Height = 13
                  Caption = #1054#1090#1089#1091#1090#1089#1090#1074#1091#1102#1090
                end
              end
            end
          end
        end
      end
    end
    object GroupBox8: TGroupBox
      Left = 3
      Top = 389
      Width = 308
      Height = 230
      Align = alClient
      Caption = #1052#1072#1082#1088#1086#1089#1099
      TabOrder = 1
      object MacrosBox: TGroupBox
        Left = 2
        Top = 15
        Width = 304
        Height = 213
        Align = alClient
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        object ToolBar4: TToolBar
          Left = 2
          Top = 15
          Width = 300
          Height = 29
          Caption = 'ToolBar4'
          Images = ImageList1
          TabOrder = 0
          object ToolButton27: TToolButton
            Left = 0
            Top = 2
            Action = aMacrosAddFileToControl
          end
          object ToolButton29: TToolButton
            Left = 23
            Top = 2
            Action = aMacrosDeleteFileFromControl
          end
          object ToolButton28: TToolButton
            Left = 46
            Top = 2
            Width = 8
            Caption = 'ToolButton28'
            ImageIndex = 46
            Style = tbsSeparator
          end
          object ToolButton24: TToolButton
            Left = 54
            Top = 2
            Action = aMacrosLoad
          end
          object ToolButton25: TToolButton
            Left = 77
            Top = 2
            Action = aMacrosSave
            Visible = False
          end
          object ToolButton23: TToolButton
            Left = 100
            Top = 2
            Width = 8
            Caption = 'ToolButton23'
            ImageIndex = 46
            Style = tbsSeparator
          end
          object ToolButton18: TToolButton
            Left = 108
            Top = 2
            Action = aMacrosAddNew
          end
          object ToolButton19: TToolButton
            Left = 131
            Top = 2
            Action = aMacrosEdit
          end
          object ToolButton22: TToolButton
            Left = 154
            Top = 2
            Action = aMacrosDelete
          end
        end
        object tcMacros: TTabControl
          Left = 2
          Top = 44
          Width = 300
          Height = 167
          Align = alClient
          TabOrder = 1
          Tabs.Strings = (
            'Term2006.tmf')
          TabIndex = 0
          OnChange = tcMacrosChange
          object ListBox1: TListBox
            Left = 4
            Top = 24
            Width = 292
            Height = 139
            Align = alClient
            BevelInner = bvNone
            BevelOuter = bvNone
            BorderStyle = bsNone
            Color = clBtnFace
            DragMode = dmAutomatic
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ItemHeight = 13
            ParentFont = False
            ParentShowHint = False
            PopupMenu = PopupMenu4
            ShowHint = False
            TabOrder = 0
            OnClick = ListBox1Click
            OnDblClick = ListBox1DblClick
            OnDragDrop = ListBox1DragDrop
            OnDragOver = ListBox1DragOver
            OnKeyDown = ListBox1KeyDown
            OnKeyUp = ListBox1KeyUp
          end
          object MacrosEdit: TEdit
            Left = 8
            Top = 32
            Width = 121
            Height = 21
            BorderStyle = bsNone
            Color = clWhite
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            Visible = False
            OnKeyPress = MacrosEditKeyPress
          end
        end
      end
    end
  end
  object ActionManager1: TActionManager
    Images = ImageList1
    Left = 228
    Top = 300
    StyleName = 'XP Style'
    object aAbout: TAction
      Category = #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
      Caption = #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
      Hint = #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
      ImageIndex = 5
      ShortCut = 16457
      OnExecute = aAboutExecute
    end
    object aPortOpen: TAction
      Category = #1055#1086#1088#1090
      Caption = #1054#1090#1082#1088#1099#1090#1080#1077' '#1087#1086#1088#1090#1072
      Hint = #1054#1090#1082#1088#1099#1090#1080#1077' '#1087#1086#1088#1090#1072
      ImageIndex = 0
      ShortCut = 16463
      OnExecute = aPortOpenExecute
    end
    object aPortClose: TAction
      Category = #1055#1086#1088#1090
      Caption = #1047#1072#1082#1088#1099#1090#1080#1077' '#1087#1086#1088#1090#1072
      Enabled = False
      Hint = #1047#1072#1082#1088#1099#1090#1080#1077' '#1087#1086#1088#1090#1072
      ImageIndex = 2
      ShortCut = 16468
      OnExecute = aPortCloseExecute
    end
    object aPortSendData: TAction
      Category = #1055#1086#1088#1090
      Enabled = False
      Hint = #1057#1090#1088#1086#1082#1091' '#1086#1090#1087#1088#1072#1074#1082#1080' '#1074' '#1087#1086#1088#1090
      ImageIndex = 32
      OnExecute = aPortSendDataExecute
    end
    object aFileSave: TAction
      Category = #1060#1072#1081#1083
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1089#1086#1076#1077#1088#1078#1080#1084#1086#1077' '#1087#1088#1086#1090#1086#1082#1086#1083#1072
      ImageIndex = 6
      OnExecute = aFileSaveExecute
    end
    object aLoadFile: TAction
      Category = #1060#1072#1081#1083
      Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100'...'
      Hint = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1083#1086#1075' '#1080#1079' '#1092#1072#1081#1083#1072
      ImageIndex = 27
      OnExecute = aLoadFileExecute
    end
    object aNewFile: TAction
      Category = #1060#1072#1081#1083
      Caption = #1054#1095#1080#1089#1090#1080#1090#1100
      Hint = #1054#1095#1080#1089#1090#1080#1090#1100' '#1073#1091#1092#1077#1088' '#1086#1073#1084#1077#1085#1072
      ImageIndex = 28
      OnExecute = aNewFileExecute
    end
    object aFileClose: TAction
      Category = #1060#1072#1081#1083
      Caption = #1042#1099#1093#1086#1076
      Hint = #1047#1072#1074#1077#1088#1096#1077#1085#1080#1077' '#1088#1072#1073#1086#1090#1099
      ImageIndex = 13
      OnExecute = aFileCloseExecute
    end
    object aCS1: TAction
      Category = #1050#1086#1085#1090#1088#1086#1083#1100#1085#1072#1103' '#1089#1091#1084#1084#1072
      AutoCheck = True
      Caption = 'mod $FF'
      GroupIndex = 1
      Hint = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#13#10#1082#1086#1085#1090#1088#1086#1083#1100#1085#1086#1081' '#1089#1091#1084#1084#1099#13#10#1087#1086#1089#1099#1083#1082#1080
      ImageIndex = 21
      OnExecute = aCS1Execute
    end
    object aCRC16: TAction
      Category = #1050#1086#1085#1090#1088#1086#1083#1100#1085#1072#1103' '#1089#1091#1084#1084#1072
      AutoCheck = True
      Caption = 'CRC16'
      GroupIndex = 1
      Hint = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1082#1086#1085#1090#1088#1086#1083#1100#1085#1086#1081' '#1089#1091#1084#1084#1099' '#13#10#1087#1086#1089#1099#1083#1082#1080' '#1088#1072#1089#1095#1080#1090#1072#1085#1085#1086#1081' '#1087#1086' CRC16'
      ImageIndex = 22
      OnExecute = aCRC16Execute
    end
    object aCRC16t: TAction
      Category = #1050#1086#1085#1090#1088#1086#1083#1100#1085#1072#1103' '#1089#1091#1084#1084#1072
      AutoCheck = True
      Caption = 'CRC16('#1090#1072#1073#1083'.)'
      GroupIndex = 1
      Hint = 
        #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1082#1086#1085#1090#1088#1086#1083#1100#1085#1086#1081' '#1089#1091#1084#1084#1099' '#13#10#1087#1086#1089#1099#1083#1082#1080' '#1088#1072#1089#1095#1080#1090#1072#1085#1085#1086#1081' '#1087#1086' CRC16 ('#1090#1072#1073 +
        #1083#1080#1095#1085#1072#1103' '#1074#1077#1088#1089#1080#1103')'
      ImageIndex = 37
      OnExecute = aCRC16tExecute
    end
    object aKM5CRC: TAction
      Category = #1050#1086#1085#1090#1088#1086#1083#1100#1085#1072#1103' '#1089#1091#1084#1084#1072
      AutoCheck = True
      Caption = #1050#1052'5 '#1082#1086#1085#1090#1088#1086#1083#1100#1085#1072#1103' '#1089#1091#1084#1084#1072
      GroupIndex = 1
      ImageIndex = 26
      OnExecute = aKM5CRCExecute
    end
    object aSikonCRC: TAction
      Category = #1050#1086#1085#1090#1088#1086#1083#1100#1085#1072#1103' '#1089#1091#1084#1084#1072
      AutoCheck = True
      Caption = 'aS3N_CRC'
      GroupIndex = 1
      ImageIndex = 35
      OnExecute = aSikonCRCExecute
    end
    object aHistory: TAction
      Category = #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
      Caption = #1048#1089#1090#1086#1088#1080#1103' '#1074#1077#1088#1089#1080#1081
      Hint = #1048#1089#1090#1086#1088#1080#1103' '#1074#1077#1088#1089#1080#1081' CommX'
      ImageIndex = 12
      ShortCut = 16456
      OnExecute = aHistoryExecute
    end
    object aPackSikon: TAction
      Category = #1060#1091#1085#1082#1094#1080#1080
      Caption = #1059#1087#1072#1082#1086#1074#1072#1090#1100' '#1087#1072#1082#1077#1090
      ImageIndex = 31
      ShortCut = 16464
      OnExecute = aPackSikonExecute
    end
    object aUnPackSikon: TAction
      Category = #1060#1091#1085#1082#1094#1080#1080
      Caption = #1056#1072#1089#1087#1072#1082#1086#1074#1072#1090#1100' '#1087#1072#1082#1077#1090
      ImageIndex = 30
      ShortCut = 16469
      OnExecute = aUnPackSikonExecute
    end
    object aCRC32: TAction
      Category = #1050#1086#1085#1090#1088#1086#1083#1100#1085#1072#1103' '#1089#1091#1084#1084#1072
      AutoCheck = True
      Caption = 'CRC32'
      GroupIndex = 1
      Hint = 'CRC32'
      ImageIndex = 34
      OnExecute = aCRC32Execute
    end
    object aCS2: TAction
      Category = #1050#1086#1085#1090#1088#1086#1083#1100#1085#1072#1103' '#1089#1091#1084#1084#1072
      AutoCheck = True
      Caption = 'mod $FFFF'
      GroupIndex = 1
      ImageIndex = 33
      OnExecute = aCS2Execute
    end
    object aFindText: TAction
      Category = #1060#1072#1081#1083
      Caption = #1055#1086#1080#1089#1082'...'
      Hint = #1055#1086#1080#1089#1082' '#1089#1090#1088#1086#1082#1080
      ImageIndex = 18
      OnExecute = aFindTextExecute
    end
    object aCRC16MKTC: TAction
      Category = #1050#1086#1085#1090#1088#1086#1083#1100#1085#1072#1103' '#1089#1091#1084#1084#1072
      AutoCheck = True
      Caption = 'CRC16 CCITT'
      GroupIndex = 1
      Hint = 
        #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1082#1086#1085#1090#1088#1086#1083#1100#1085#1086#1081' '#1089#1091#1084#1084#1099' '#13#10#1087#1086#1089#1099#1083#1082#1080' '#1088#1072#1089#1095#1080#1090#1072#1085#1085#1086#1081' '#1087#1086' CRC16 (CCI' +
        'TT)'
      ImageIndex = 22
      OnExecute = aCRC16MKTCExecute
    end
    object aNO_CRC: TAction
      Category = #1050#1086#1085#1090#1088#1086#1083#1100#1085#1072#1103' '#1089#1091#1084#1084#1072
      AutoCheck = True
      Caption = 'aNO_CRC'
      GroupIndex = 1
      Hint = #1053#1077#1090' '#1082#1086#1085#1090#1088#1086#1083#1100#1085#1086#1081' '#1089#1091#1084#1084#1099
      ImageIndex = 15
      OnExecute = aNO_CRCExecute
    end
    object km5Function: TAction
      Category = #1060#1091#1085#1082#1094#1080#1080
      Caption = 'km5Function'
      ImageIndex = 39
      OnExecute = km5FunctionExecute
    end
    object aFileSaveAs: TAction
      Category = #1060#1072#1081#1083
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1082#1072#1082'...'
      Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1073#1091#1092#1077#1088' '#1086#1073#1084#1077#1085#1072' '#1087#1086#1076'  '#1079#1072#1076#1072#1085#1085#1099#1084' '#1080#1084#1077#1085#1077#1084
      ImageIndex = 6
      OnExecute = aFileSaveAsExecute
    end
    object aSaveToHistory: TAction
      Category = #1060#1072#1081#1083
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1074' History'
      Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1073#1091#1092#1077#1088' '#1086#1073#1084#1077#1085#1072' '#1074' '#1089#1087#1077#1094'. '#1082#1072#1090#1072#1083#1086#1075
      ImageIndex = 6
      ShortCut = 16467
      OnExecute = aSaveToHistoryExecute
    end
    object aEditOptions: TAction
      Category = 'Editor'
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080' '#1073#1091#1092#1077#1088#1072' '#1086#1073#1084#1077#1085#1072
      Hint = #1053#1072#1089#1090#1088#1086#1081#1082#1080' '#1073#1091#1092#1077#1088#1072' '#1086#1073#1084#1077#1085#1072
      ImageIndex = 40
      OnExecute = aEditOptionsExecute
    end
    object aEditDopSetUp: TAction
      Category = 'Editor'
      AutoCheck = True
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080' '#1087#1086#1076#1082#1083#1102#1095#1077#1085#1080#1103
      Checked = True
      Hint = #1053#1072#1089#1090#1088#1086#1081#1082#1080' '#1087#1086#1076#1082#1083#1102#1095#1077#1085#1080#1103
      ImageIndex = 9
      ShortCut = 49242
      OnExecute = aEditDopSetUpExecute
    end
    object aHexASCII: TAction
      Category = 'Editor'
      AutoCheck = True
      Caption = 'Hex'
      Hint = #1042#1080#1076' '#1087#1088#1077#1076#1089#1090#1072#1074#1083#1077#1085#1080#1103
    end
    object aCut: TAction
      Category = 'Editor'
      Caption = #1042#1099#1088#1077#1079#1072#1090#1100
      ImageIndex = 45
      OnExecute = aCutExecute
    end
    object aCopy: TAction
      Category = 'Editor'
      Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100
      ImageIndex = 43
      OnExecute = aCopyExecute
    end
    object aPaste: TAction
      Category = 'Editor'
      Caption = #1042#1089#1090#1072#1074#1080#1090#1100
      ImageIndex = 44
      OnExecute = aPasteExecute
    end
    object aCRCLogika: TAction
      Category = #1050#1086#1085#1090#1088#1086#1083#1100#1085#1072#1103' '#1089#1091#1084#1084#1072
      Caption = 'aCRCLogika'
      ImageIndex = 46
      OnExecute = aCRCLogikaExecute
    end
    object aClearStatistic: TAction
      Category = 'Editor'
      Caption = #1057#1073#1088#1086#1089#1080#1090#1100' '#1089#1090#1072#1090#1080#1089#1090#1080#1082#1091
      ImageIndex = 3
      OnExecute = aClearStatisticExecute
    end
    object aExpand: TAction
      Category = #1060#1072#1081#1083
      Caption = #1056#1072#1079#1074#1077#1088#1085#1091#1090#1100
      ImageIndex = 32
      OnExecute = aExpandExecute
    end
    object aCollapse: TAction
      Category = #1060#1072#1081#1083
      Caption = #1057#1074#1077#1088#1085#1091#1090#1100
      ImageIndex = 47
      OnExecute = aCollapseExecute
    end
    object aMacrosAddNew: TAction
      Category = #1052#1072#1082#1088#1086#1089#1099
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1085#1086#1074#1099#1081' '#1084#1072#1082#1088#1086#1089
      ImageIndex = 49
      OnExecute = aMacrosAddNewExecute
    end
    object aMacrosEdit: TAction
      Category = #1052#1072#1082#1088#1086#1089#1099
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1090#1077#1082#1091#1097#1080#1081' '#1084#1072#1082#1088#1086#1089
      ImageIndex = 50
      OnExecute = aMacrosEditExecute
    end
    object aMacrosDelete: TAction
      Category = #1052#1072#1082#1088#1086#1089#1099
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1090#1077#1082#1091#1097#1080#1081' '#1084#1072#1082#1088#1086#1089
      ImageIndex = 45
      OnExecute = aMacrosDeleteExecute
    end
    object aMacrosLoad: TAction
      Category = #1052#1072#1082#1088#1086#1089#1099
      Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100'...'
      Hint = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1084#1072#1082#1088#1086#1089#1099' '#1080#1079' '#1092#1072#1081#1083#1072
      ImageIndex = 27
      OnExecute = aMacrosLoadExecute
    end
    object aMacrosSave: TAction
      Category = #1052#1072#1082#1088#1086#1089#1099
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1090#1077#1082#1091#1097#1080#1081' '#1085#1072#1073#1086#1088' '#1084#1072#1082#1088#1086#1089#1086#1074
      ImageIndex = 6
      OnExecute = aMacrosSaveExecute
    end
    object aMacrosSaveAs: TAction
      Category = #1052#1072#1082#1088#1086#1089#1099
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1082#1072#1082'...'
      Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1090#1077#1082#1091#1097#1080#1081' '#1085#1072#1073#1086#1088' '#1087#1086#1076' '#1085#1086#1074#1099#1084' '#1080#1084#1077#1085#1077#1084
      ImageIndex = 51
      OnExecute = aMacrosSaveAsExecute
    end
    object aCRCSprut100: TAction
      Category = #1050#1086#1085#1090#1088#1086#1083#1100#1085#1072#1103' '#1089#1091#1084#1084#1072
      Caption = 'aCRCSprut100'
      ImageIndex = 60
      OnExecute = aCRCSprut100Execute
    end
    object aSignal: TAction
      Category = #1060#1091#1085#1082#1094#1080#1080
      Caption = #1057#1080#1075#1085#1072#1083
      Hint = 
        #1055#1088#1077#1086#1073#1088#1072#1079#1086#1074#1072#1090#1100' '#1079#1085#1072#1095#1077#1085#1080#1103' '#1073#1091#1092#1077#1088#1072' '#1086#1073#1084#1077#1085#1072' '#1074' '#1075#1088#1072#1092#1080#1095#1077#1089#1082#1086#1077' '#1087#1088#1077#1076#1089#1090#1072#1074#1083#1077#1085#1080#1077 +
        ' '#1079#1085#1072#1095#1077#1085#1080#1081
      ImageIndex = 62
      OnExecute = aSignalExecute
    end
    object aMacrosAddFileToControl: TAction
      Category = #1052#1072#1082#1088#1086#1089#1099
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1092#1072#1081#1083' '#1084#1072#1082#1088#1086#1089#1086#1074
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1092#1072#1081#1083' '#1084#1072#1082#1088#1086#1089#1086#1074
      ImageIndex = 43
      OnExecute = aMacrosAddFileToControlExecute
    end
    object aMacrosDeleteFileFromControl: TAction
      Category = #1052#1072#1082#1088#1086#1089#1099
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1092#1072#1081#1083' '#1080#1079' '#1089#1087#1080#1089#1082#1072' '
      Enabled = False
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1092#1072#1081#1083' '#1080#1079' '#1089#1087#1080#1089#1082#1072' '
      ImageIndex = 29
      OnExecute = aMacrosDeleteFileFromControlExecute
    end
    object aListOfCommamds: TAction
      Category = #1052#1072#1082#1088#1086#1089#1099
      AutoCheck = True
      Caption = 'aListOfCommamds'
      Hint = #1042#1080#1076#1080#1084#1086#1089#1090#1100' '#1074#1082#1083#1072#1076#1082#1080' '#1089#1087#1080#1089#1082#1072#13#1082#1086#1084#1072#1085#1076' '#1088#1091#1095#1085#1086#1081' '#1087#1086#1089#1099#1083#1082#1080
      ImageIndex = 49
      OnExecute = aListOfCommamdsExecute
    end
    object aListsSyncro: TAction
      Category = #1052#1072#1082#1088#1086#1089#1099
      Caption = #1057#1080#1085#1093#1088#1086#1085#1080#1079#1080#1088#1086#1074#1072#1090#1100' '#1089#1087#1080#1089#1082#1080' '#1082#1086#1084#1072#1085#1076
      Hint = 
        #1057#1080#1085#1093#1088#1086#1085#1080#1079#1072#1094#1080#1103' '#1080#1089#1090#1086#1088#1080#1080' '#1082#1086#1084#1072#1085#1076' '#1089' '#13#1074#1099#1087#1072#1076#1072#1102#1097#1080#1084' '#1089#1087#1080#1089#1082#1086#1084' '#1089#1090#1088#1086#1082#1080' '#1090#1077#1082#1091#1097#1077 +
        #1081' '#1087#1086#1089#1099#1083#1082#1080#13#1055#1088#1080#1084#1077#1088': '#13#1050#1086#1088#1088#1077#1082#1090#1080#1088#1091#1077#1084' '#1080#1089#1090#1086#1088#1080#1102' '#1082#1086#1084#1072#1085#1076' '#1080' '#1089#1080#1085#1093#1088#1086#1085#1080#1079#1080#1088#1091#1077#1084'.' +
        #13#1055#1086#1089#1083#1077' '#1101#1090#1086#1075#1086', '#1086#1090#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1085#1099#1081' '#1085#1072#1073#1086#1088' '#1087#1086#1103#1074#1080#1090#1089#1103' '#13#1074' '#1074#1099#1087#1072#1076#1072#1102#1097#1077#1084' '#1089#1087#1080 +
        #1089#1082#1077' '#1089#1090#1088#1086#1082#1080' '#1090#1077#1082#1091#1097#1077#1081' '#1087#1086#1089#1099#1083#1082#1080'.'
      ImageIndex = 32
      Visible = False
      OnExecute = aListsSyncroExecute
    end
    object aClearOutputBuf: TAction
      Category = 'Editor'
      AutoCheck = True
      Hint = #1054#1095#1080#1089#1090#1082#1072' '#1089#1090#1088#1086#1082#1080' '#1090#1077#1082#1091#1097#1077#1081' '#1087#1086#1089#1099#1083#1082#1080#13#1087#1086#1089#1083#1077' '#1086#1090#1087#1088#1072#1074#1082#1080' '#1077#1077' '#1089#1086#1076#1077#1088#1078#1080#1084#1086#1075#1086
      ImageIndex = 28
      OnExecute = aClearOutputBufExecute
    end
    object aCmdHist2MAcro: TAction
      Category = #1052#1072#1082#1088#1086#1089#1099
      Caption = #1057#1086#1079#1076#1072#1090#1100' '#1084#1072#1082#1088#1086#1089' '#1080#1079' '#1080#1089#1090#1086#1088#1080#1080' '#1082#1086#1084#1072#1085#1076
      Hint = #1057#1086#1079#1076#1072#1090#1100' '#1084#1072#1082#1088#1086#1089' '#1080#1079' '#1080#1089#1090#1086#1088#1080#1080' '#1082#1086#1084#1072#1085#1076
      ImageIndex = 51
      Visible = False
      OnExecute = aCmdHist2MAcroExecute
    end
    object aSystemJournal: TAction
      Category = #1055#1086#1088#1090
      AutoCheck = True
      Caption = #1057#1080#1089#1090#1077#1084#1085#1099#1081' '#1078#1091#1088#1085#1072#1083
      Hint = #1057#1080#1089#1090#1077#1084#1085#1099#1081' '#1078#1091#1088#1085#1072#1083
      ImageIndex = 5
      OnExecute = aSystemJournalExecute
    end
    object aAutoSendList: TAction
      Caption = #1057#1087#1080#1089#1086#1082' '#1072#1074#1090#1086#1087#1086#1089#1099#1083#1082#1080
      Hint = #1057#1087#1080#1089#1086#1082' '#1072#1074#1090#1086#1087#1086#1089#1099#1083#1082#1080
      ImageIndex = 3
      OnExecute = aAutoSendListExecute
    end
    object aCRCMODBUSASCII: TAction
      Category = #1050#1086#1085#1090#1088#1086#1083#1100#1085#1072#1103' '#1089#1091#1084#1084#1072
      Caption = #1050#1086#1085#1090#1088#1086#1083#1100#1085#1072#1103' '#1089#1091#1084#1084#1072' '#1052#1054#1044#1041#1040#1057' ASCII'
      Hint = #1050#1086#1085#1090#1088#1086#1083#1100#1085#1072#1103' '#1089#1091#1084#1084#1072' '#1052#1054#1044#1041#1040#1057' ASCII'
      ImageIndex = 63
      OnExecute = aCRCMODBUSASCIIExecute
    end
    object aCSN: TAction
      Category = #1050#1086#1085#1090#1088#1086#1083#1100#1085#1072#1103' '#1089#1091#1084#1084#1072
      Caption = #1050#1086#1085#1090#1088#1086#1083#1100#1085#1072#1103' '#1089#1091#1084#1084#1072' '#1058#1069#1052
      ImageIndex = 21
      OnExecute = aCSNExecute
    end
    object aCRC16Corall: TAction
      Category = #1050#1086#1085#1090#1088#1086#1083#1100#1085#1072#1103' '#1089#1091#1084#1084#1072
      Caption = 'CRC16 '#1050#1086#1088#1072#1083#1083'-8'
      ImageIndex = 36
      OnExecute = aCRC16CorallExecute
    end
  end
  object MainMenu1: TMainMenu
    Tag = 50
    Images = ImageList1
    OwnerDraw = True
    Left = 744
    Top = 316
    object N2: TMenuItem
      Caption = #1060#1072#1081#1083
      object N12: TMenuItem
        Action = aNewFile
      end
      object N62: TMenuItem
        Caption = '-'
      end
      object N13: TMenuItem
        Action = aLoadFile
      end
      object N3: TMenuItem
        Action = aFileSave
      end
      object N17: TMenuItem
        Action = aFileSaveAs
      end
      object StoreDataToExecMnu: TMenuItem
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1076#1072#1085#1085#1099#1077' '#1074' Excel...'
        ImageIndex = 6
        OnClick = StoreDataToExecMnuClick
      end
      object N14: TMenuItem
        Action = aSaveToHistory
      end
      object N22: TMenuItem
        Caption = '-'
      end
      object N4: TMenuItem
        Action = aFileClose
      end
    end
    object N6: TMenuItem
      Caption = #1055#1086#1088#1090
      object N7: TMenuItem
        Action = aPortOpen
      end
      object N8: TMenuItem
        Action = aPortClose
      end
    end
    object N15: TMenuItem
      Caption = #1060#1091#1085#1082#1094#1080#1080
      object S3N1: TMenuItem
        Caption = 'S3N'
        object N10: TMenuItem
          Action = aPackSikon
        end
        object N16: TMenuItem
          Action = aUnPackSikon
        end
      end
      object N24: TMenuItem
        Caption = #1041#1080#1090#1089#1090#1072#1092#1092#1080#1085#1075
        object N25: TMenuItem
          Caption = #1059#1087#1072#1082#1086#1074#1072#1090#1100' '#1087#1072#1082#1077#1090
          ImageIndex = 31
          OnClick = N25Click
        end
        object N26: TMenuItem
          Caption = #1056#1072#1089#1087#1072#1082#1086#1074#1072#1090#1100' '#1087#1072#1082#1077#1090
          ImageIndex = 30
          OnClick = N26Click
        end
      end
      object BroadcastRequestMnu: TMenuItem
        Caption = #1053#1072#1073#1086#1088#1099' '#1079#1072#1087#1088#1086#1089#1086#1074' (Hex mode)'
        object KM5BroadcastRequest: TMenuItem
          Caption = #1096#1080#1088#1086#1082#1086#1074#1077#1097#1072#1090#1077#1083#1100#1085#1099#1081' '#1050#1052'5,'#1056#1052'5,'#1050#1052'5'#1052','#1040#1058#1058
          ShortCut = 16459
          OnClick = KM5BroadcastRequestClick
        end
        object NKM5x: TMenuItem
          Caption = #1092#1091#1085#1082#1094#1080#1080' '#1050#1052'5,'#1056#1052'5,'#1040#1058#1058
        end
        object N29: TMenuItem
          Caption = '-'
        end
        object N56: TMenuItem
          Caption = #1055#1044#1059' / '#1040#1058#1044#1059' ('#1096#1080#1088#1086#1082#1086#1074#1077#1097#1072#1090#1077#1083#1100#1085#1099#1081')'
          OnClick = N56Click
        end
        object AP9BroadcastRequest: TMenuItem
          Caption = #1040#1055'9'
          OnClick = AP9BroadcastRequestClick
        end
        object MKTCBroadcastRequest: TMenuItem
          Caption = #1052#1050#1058#1057
          OnClick = MKTCBroadcastRequestClick
        end
        object VTD_V: TMenuItem
          Caption = #1042#1058#1044'-'#1042' ('#1072#1076#1088#1077#1089' 254)'
          OnClick = VTD_VClick
        end
        object VKT71: TMenuItem
          Caption = #1042#1050#1058'-7 ('#1072#1076#1088#1077#1089' 1)'
          OnClick = VKT71Click
        end
        object N91001201301: TMenuItem
          Caption = #1058#1057#1056#1042'-2x,'#1058#1057#1056#1042'-3x,'#1042#1050#1058'-9/'#1058#1052#1050'-'#1053'100/'#1058#1052#1050'-'#1053'120/'#1058#1052#1050'-'#1053'130 ...'
          object N01: TMenuItem
            Caption = #1040#1076#1088#1077#1089' 0 ('#1096#1080#1088#1086#1082#1086#1074#1077#1097#1072#1090#1077#1083#1100#1085#1099#1081')'
            ImageIndex = 47
            OnClick = N01Click
          end
          object N112: TMenuItem
            Caption = #1040#1076#1088#1077#1089' 1'
            ImageIndex = 23
            OnClick = N112Click
          end
          object N212: TMenuItem
            Caption = #1040#1076#1088#1077#1089' 2'
            ImageIndex = 23
            OnClick = N212Click
          end
        end
        object Modbus1: TMenuItem
          Caption = #1042#1048#1057#1058' (Modbus) ...'
          object N111: TMenuItem
            Caption = #1040#1076#1088#1077#1089' 1'
            ImageIndex = 23
            OnClick = N111Click
          end
          object N211: TMenuItem
            Caption = #1040#1076#1088#1077#1089' 2'
            ImageIndex = 23
            OnClick = N211Click
          end
          object N311: TMenuItem
            Caption = #1040#1076#1088#1077#1089' 3'
            ImageIndex = 23
            OnClick = N311Click
          end
        end
        object TEM104_1Mnu: TMenuItem
          Caption = #1058#1069#1052'-104/106 ...'
          object N110: TMenuItem
            Caption = #1040#1076#1088#1077#1089' 1'
            ImageIndex = 23
            OnClick = N110Click
          end
          object N210: TMenuItem
            Caption = #1040#1076#1088#1077#1089' 2'
            ImageIndex = 23
            OnClick = N210Click
          end
          object N310: TMenuItem
            Caption = #1040#1076#1088#1077#1089' 3'
            ImageIndex = 23
            OnClick = N310Click
          end
        end
        object N2001: TMenuItem
          Caption = #1052#1077#1088#1082#1091#1088#1080#1081' 200'
          OnClick = N2001Click
        end
        object N23x1: TMenuItem
          Caption = #1052#1077#1088#1082#1091#1088#1080#1081' 23x'
          OnClick = N23x1Click
        end
      end
    end
    object N34: TMenuItem
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080
      object aEditDopSetUp1: TMenuItem
        Action = aEditDopSetUp
        AutoCheck = True
        Caption = #1054#1073#1097#1080#1077
      end
      object cMainDarkMnu: TMenuItem
        Caption = #1058#1077#1084#1085#1072#1103' '#1089#1093#1077#1084#1072
        OnClick = cDarkMnuClick
      end
      object N35: TMenuItem
        Action = aEditOptions
        Caption = #1056#1077#1076#1072#1082#1090#1086#1088
      end
    end
    object N1: TMenuItem
      Caption = #1055#1086#1084#1086#1097#1100
      object N5: TMenuItem
        Action = aAbout
      end
    end
  end
  object ApplicationEvents1: TApplicationEvents
    OnException = ApplicationEvents1Exception
    Left = 284
    Top = 337
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = '*.txt'
    FileName = 'ComLog.txt'
    Filter = #1058#1077#1082#1089#1090#1086#1074#1099#1081' '#1092#1072#1081#1083'|*.TXT|'#1057#1087#1080#1089#1086#1082' '#1072#1074#1090#1086#1087#1086#1089#1099#1083#1082#1080'|*.ASL'
    Left = 336
    Top = 340
  end
  object FormStorage1: TFormStorage
    IniFileName = 'Term2006.ini'
    IniSection = 'Storage'
    Options = []
    UseRegistry = False
    OnRestorePlacement = FormStorage1RestorePlacement
    StoredProps.Strings = (
      'MainMenu1.Tag'
      'UDPSocket.Host'
      'UDPSocket.LocalPort'
      'UDPSocket.Port'
      'aPortOpen.Tag'
      'UDPPort_IP.Text'
      'UDPPort_Number.Value'
      'TCPPort_IP.Text'
      'TCPPort_Number.Value'
      'KSPD_ID.Text'
      'KSPD_Port.Text'
      'TBNBROKER_IP.Text'
      'TBNBROKER_Port.Value'
      'nrDeviceBox1.Text'
      'nrBT1.DeviceIndex'
      'serveractive.Checked'
      'ServerPortEdt.Value'
      'chkBroker_KSPD.Checked'
      'Broker_KSPD_IP.Text'
      'seBroker_KSPD_Port.Value'
      'SecondTimer.Tag'
      'chkVirtualComPort.Checked'
      'chkTCP_CON.Checked'
      'chkCOM_CON.Checked'
      'chkUSR_CON.Checked'
      'seID_Broker_KSPD.Value'
      'seHARDNUM_KSPD.Value'
      'VirtualComPort_Number.Text'
      'BigOutputBuf.Lines'
      'OutputBuf.Text'
      'tcMacros.Tabs'
      'tcMacros.TabIndex'
      'aSystemJournal.Checked'
      'cbTCPPort_IP.Items'
      'cbBroker_KSPD_IP.Items'
      'cbKSPD_ID.Items'
      'cbKM5NetAddr.Items'
      'cbUDPPort_IP.Items'
      'tsSystemJournal.TabVisible'
      'tsSignal.TabVisible'
      'SendCmdFinishEdt.Text'
      'SendCmdStartEdt.Text'
      'SendCmdPeriodEdt.Value'
      'SendSTARTCmdChk.Checked'
      'SendCmdStartEdt.Visible'
      'TimerPageControl.ActivePage'
      'cDarkMnu.Checked'
      'KSPD_Port.ItemIndex'
      'KSPD_Baud.ItemIndex'
      'cbOldStyleDialog.Checked'
      'OpenDialog1.Options'
      'OpenDialog2.Options'
      'SaveDialog1.Options'
      'SaveDialog2.Options'
      'ComPort_Baud.ItemIndex'
      'ComPort_Baud.Text'
      'ComPort_BitsCount.Value'
      'ComPort_EvenBit.ItemIndex'
      'ComPort_EvenBit.Text'
      'ComPort_Number.Text'
      'ComPort_Number.ItemIndex'
      'AutoIncModeChk.Checked'
      'HexBtn.Down'
      'xCSN1Btn.Enabled'
      'edtEmulatorCRChar.Text'
      'edtEmulatorCRCharValue.Value'
      'edtEmulatorInASCII.Text'
      'edtEmulatorInHEX.Text'
      'edtEmulatorOutASCII.Text'
      'edtEmulatorOutHEX.Text'
      'EmulationActiveBtn.Down'
      'EmulatorFilenameEdit.FileName'
      'tsEmulator.TabVisible'
      'cbEmulatorAddNew.Checked'
      'cbSignalTypeProtocol.ItemIndex'
      'seSignalPos.Value'
      'seStartSymbol.Value'
      'setSignalSize.Value'
      'Panel9.Visible'
      'cbLimit.ItemIndex'
      'LimitEdt.Enabled'
      'cbLimit.Enabled'
      'UDPLocalPort_IP.Text'
      'UDPLocalPort_Number.Value'
      'cbOEM.ItemIndex'
      'PageControl2.ActivePage'
      'PageControl3.ActivePage'
      'PageControl4.ActivePage'
      'PageControl1.ActivePage'
      'pcTypeOfConnect.ActivePage'
      'cbForceOpenPort.Checked')
    StoredValues = <>
    Left = 712
    Top = 192
  end
  object ImageList1: TImageList
    Left = 336
    Top = 384
    Bitmap = {
      494C010140004700340010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001001000001002000000000000010
      0100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008C8473008C8473008C84
      73008C8473008C8473008C8473008C8473008C8473008C847300847B6B008473
      6B007B736B007B6B6300736B6300736B63000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A59C8C00A59C8C00736B
      6300736B6300A5948C00A5948C00A5948C00A5948C00A5948C00A5948C00736B
      6300736B6300A5948C00A5948C00736B63000000000000000000000000008080
      8000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B5ADA500B5ADA500ADAD
      AD0063636B00B5ADA500B5ADA500B5ADA500B5ADA500B5ADA500B5ADA500ADAD
      AD0063636B00B5ADA500B5ADA500736B63000000000000000000000000000000
      0000000000000000000080808000000000000000000000000000808080000000
      0000000000000000000080808000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000009C9C0063CECE0063CECE0063CE
      CE0063CECE0063CECE0063CECE0063CECE0063CECE0063CECE0063CECE0063CE
      CE0063CECE0063CECE00000000000000000000000000BDB5AD00BDB5AD00E7E7
      E700524A4A00BDB5AD00BDB5AD00BDB5AD00BDB5AD00BDB5AD00BDB5AD00E7E7
      E700524A4A00B5B5A500BDB5AD00736B63000000000000000000000000000000
      000000000000FF000000000000000000000000FFFF0000FFFF00000000000000
      00000000FF00000080000000000080808000009C9C0063CECE0063CECE0063CE
      CE0063CECE0063CECE0063CECE0063CECE0063CECE0063CECE0063CECE0063CE
      CE0063CECE0063CECE000000000000000000009C9C00CEFFFF009CCEFF009CFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF009CCEFF009CFFFF009CCEFF009CCE
      FF009CCEFF0063CECE000000000000000000948C7B00847B6B00847B6B00ADAD
      AD00524A4A00736B6300736B6300736B6300736B6300736B6300736B63009CA5
      9C00524A4A00847B6B00736B6300736B63000000000000000000000000000000
      000000000000FF000000800000000000000000FFFF0000FFFF00008080000000
      00000000FF00000080000000000000000000009C9C00CEFFFF009CCEFF009CFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF009CCEFF009CFFFF009CCEFF009CCE
      FF009CCEFF0063CECE000000000000000000009C9C00CEFFFF00000000000000
      00009CFFFF009CFFFF00000000009CFFFF009CFFFF009CFFFF00000000009CCE
      FF000000000063CECE000000000000000000BDB5AD00BDB5AD00A59C94009C94
      84009C948400ADA59400A59C94009C948C009C948C009C9484009C948400847B
      7300847B73009C9484009C9484009C9484000000000000000000000000000000
      000000000000FF000000800000000000000000FFFF0000FFFF00008080000000
      00000000FF00000080000000000000000000009C9C00CEFFFF009CFFFF003131
      31009CFFFF009CFFFF009CFFFF00313131009CFFFF0031313100313131009CCE
      FF009CCEFF0063CECE000000000000000000009C9C00CEFFFF009CFFFF009CFF
      FF00000000009CFFFF0000000000000000009CFFFF009CFFFF00000000000000
      00009CFFFF0063CECE000000000000000000BDB5AD00EFE7D600EFE7DE00EFE7
      DE00E7E7D600E7DED600DEDECE00DED6CE00D6D6C600D6CEC600C6C6B500BDB5
      AD00B5AD9C00A59C94009C948C009C9484000000000000000000000000000000
      000000000000FF000000800000000000000000FFFF0000FFFF00008080000000
      00000000FF00000080000000000000000000009C9C00CEFFFF009CFFFF003131
      31009CFFFF009CFFFF009CFFFF00313131009CFFFF00313131009CFFFF003131
      31009CFFFF0063CECE000000000000000000009C9C00CEFFFF00000000000000
      0000000000009CFFFF00000000009CFFFF00000000009CFFFF00000000009CFF
      FF000000000063CECE000000000000000000DED6C600BDB5AD00B5B5A500B5AD
      A50000000000ADA59400A59C94009C948C009C948C009C9484009C9484009C94
      84009C9484009C9484009C948400E7D6CE0000000000FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000FFFF0000FFFF00008080000000
      00000000FF00000080000000000000000000009C9C00CEFFFF009CFFFF003131
      31009CFFFF00313131009CFFFF00313131009CFFFF00313131009CFFFF003131
      31009CCEFF0063CECE000000000000000000009C9C00CEFFFF00000000009CFF
      FF009CFFFF009CFFFF00000000009CFFFF00000000009CFFFF00000000009CFF
      FF000000000063CECE000000000000000000F7E7DE00F7E7DE00F7E7DE00F7E7
      DE005A525200736B6B00B5ADA500A5A5A500E7E7E700737373006B6B6B005252
      5200A5A59C00E7E7E700A5A5A500FFEFE70000000000FFFFFF00808080008080
      8000FFFFFF00FFFFFF00FFFFFF000000000000FFFF0000FFFF00008080000000
      000000000000000000000000000000000000009C9C00CEFFFF009CFFFF003131
      31009CFFFF00313131009CFFFF00313131009CFFFF0031313100313131009CFF
      FF009CFFFF0063CECE000000000000000000009C9C00CEFFFF009CFFFF000000
      0000000000009CFFFF009CFFFF00000000009CFFFF009CFFFF009CFFFF000000
      00009CFFFF0063CECE000000000000000000F7E7DE00F7E7DE00F7E7DE00F7E7
      DE00CEC6B500847B7300424239000808080010101000292929007B7B7B00C6C6
      C600A59C9C00E7E7E700A5A5A500FFEFE70000000000FFFFFF00808080008080
      8000FFFFFF0000000000000000000000000000FFFF0000FFFF00000000000000
      000000000000000000000000000000000000009C9C00CEFFFF009CFFFF003131
      3100313131009CFFFF0031313100313131009CFFFF00313131009CFFFF003131
      31009CFFFF0063CECE000000000000000000009C9C00CEFFFF009CFFFF009CFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFF
      FF009CCEFF0063CECE000000000000000000F7E7DE00F7E7DE00F7E7D600F7E7
      DE00F7E7DE00F7E7DE00F7E7DE00ADADAD00E7E7E700A59C9C00E7E7E700E7E7
      E700A59C9C00E7E7E700ADADAD00FFEFE70000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000009C9C00CEFFFF009CFFFF003131
      31009CFFFF009CFFFF009CFFFF00313131009CFFFF0031313100313131009CFF
      FF009CCEFF0063CECE000000000000000000009C9C00CEFFFF00CEFFFF00CEFF
      FF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFF
      FF009CFFFF0063CECE000000000000000000F7E7DE00F7E7DE00F7E7DE00F7E7
      DE00F7E7DE00F7E7DE00FFEFDE00B5ADAD00E7E7E700A5A59C00E7E7E700E7E7
      E700A5A59C00E7E7E700B5ADAD00FFEFE70000000000FFFFFF00808080008080
      8000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      000000000000000000000000000000000000009C9C00CEFFFF00CEFFFF00CEFF
      FF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFF
      FF009CFFFF0063CECE000000000000000000009C9C0063CECE0063CECE0063CE
      CE0063CECE0063CECE0063CECE0063CECE00009C9C00009C9C00009C9C00009C
      9C00009C9C00009C9C000000000000000000F7E7DE00F7E7DE00F7E7DE00F7E7
      DE00F7E7DE00FFEFDE00FFEFDE00B5B5B500E7E7E700A5A59C004ACE9C004ABD
      7300A5A59C00E7E7E700B5B5B500FFEFE70000000000FFFFFF00808080008080
      8000FFFFFF0000000000000000000000000000000000FFFFFF00000000000000
      000000000000000000000000000000000000009C9C0063CECE0063CECE0063CE
      CE0063CECE0063CECE0063CECE0063CECE00009C9C00009C9C00009C9C00009C
      9C00009C9C00009C9C00000000000000000000000000009C9C00F7F7F700CEFF
      FF00CEFFFF009CFFFF009CFFFF00009C9C000000000000000000000000000000
      000000000000000000000000000000000000F7E7DE00F7E7DE00F7E7DE00F7E7
      DE00F7E7DE00FFEFDE00FFEFDE00B5B5B500E7E7E700E7E7E7004ACE9C004ABD
      7300E7E7E700E7E7E700B5B5B500FFEFE70000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      00000000000000000000000000000000000000000000009C9C00F7F7F700CEFF
      FF00CEFFFF009CFFFF009CFFFF00009C9C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000009C9C00009C
      9C00009C9C00009C9C00009C9C00000000000000000000000000000000000000
      000000000000000000000000000000000000F7E7DE00F7E7DE00F7E7DE00F7E7
      DE00FFEFDE00FFEFDE00FFEFDE00B5B5B500FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00B5B5B500FFEFE7008000000080000000800000008000
      0000800000008000000080000000800000008000000080000000800000000000
      0000000000000000000000000000000000000000000000000000009C9C00009C
      9C00009C9C00009C9C00009C9C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7E7DE00F7E7DE00F7E7DE00F7E7
      DE00FFEFDE00FFEFDE00FFEFDE00C6C6BD00BDB5B500BDB5B500BDB5B500BDB5
      B500B5B5B500B5B5B500C6C6BD00FFEFE7008000000080000000800000008000
      0000800000008000000080000000800000008000000080000000800000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000B0B0B000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000909090000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      800000808000008080000080800000808000808080000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009090900000005F0000005F000000
      5F0000005F0000005F0000005F0000005F0000005F0000005F0000005F000000
      5F0000005F0000005F0020205F00808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000000000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080008080800000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00606060000000BF0000005F000000
      5F0000005F0000005F0000005F0000005F0000005F0000005F0000005F000000
      5F0000005F0000007F0000005F0080808000F0F0F00000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF0000BFBF0000BF
      BF000000BF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BF
      BF0000BFBF0000BFBF0000808000008080008080800060606000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00606060000000BF007F7F7F00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00BFBFBF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000005F0000005F00808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF00BF000000BF00
      00000000BF00BF000000BF000000BF000000BF000000BF000000BF000000BF00
      0000BF000000BF00000000808000008080008080800080808000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00606060000000BF007F7F7F00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000005F0000005F00808080000000000000000000000000000000
      3A000000000000000000000000000000000000003A0000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF0000BFBF0000BF
      BF000000BF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BF
      BF0000BFBF0000BFBF0000808000008080008080800080808000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00606060000000BF007F7F7F00FFFF
      FF007F7F7F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000005F0000005F00808080000000000000000000000066000000
      00000000000000000000000000000000000000003A0000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF00BF000000BF00
      00000000BF00BF000000BF000000BF000000BF000000BF000000BF000000BF00
      0000BF000000BF00000000808000008080008080800080808000606060000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00606060000000BF007F7F7F00FFFF
      FF00FFFFFF007F7F7F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000005F0000005F00808080000000000000000000000000000000
      00000000000000000000000000000000000000003A0000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF0000BFBF0000BF
      BF000000BF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BF
      BF0000BFBF0000BFBF0000808000008080008080800080808000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00606060000000BF007F7F7F00FFFF
      FF00FFFFFF00FFFFFF007F7F7F007F7F7F00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000005F0000005F00808080000000000000000000000000000000
      00000000000000000000000000000000000000003A0000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF00BF000000BF00
      00000000BF00BF000000BF000000BF000000BF000000BF000000BF000000BF00
      0000BF000000BF0000000080800000808000808080008080800090909000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C00030303000606060000000BF007F7F7F00BFBF
      BF00FFFFFF00FFFFFF00BFBFBF00000000007F7F7F007F7F7F007F7F7F00FFFF
      FF00BFBFBF0000005F0000005F00808080000000000000000000000000000000
      00000000000000000000000000000000000000003A0000000000000000003A00
      00000000000000000000000000000000000000FFFF0000FFFF0000BFBF0000BF
      BF000000BF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BF
      BF0000BFBF0000BFBF0000808000008080008080800080808000A0A0A000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C00060606000FFFFFF00FFFFFF00606060000000BF007F7F7F00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF007F7F7F007F7F7F00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000005F0000005F00808080000000000000000000000000000000
      00000000000000000000000000000000000000003A0000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF00BF000000BF00
      00000000BF00BF000000BF000000BF000000BF000000BF000000BF000000BF00
      0000BF000000BF00000000808000008080008080800080808000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C0006060
      6000FFFFFF00FFFFFF00FFFFFF00FFFFFF00606060000000BF007F7F7F00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF007F7F7F00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000005F0000005F00808080000000000000000000000060000000
      0000000000000000000000000000000000000000360000000000F0F0F0000000
      00000000000000000000000000000000000000FFFF0000FFFF0000BFBF0000BF
      BF000000BF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BF
      BF0000BFBF0000BFBF0000808000008080008080800090909000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C00060606000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00606060000000BF007F7F7F00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF007F7F7F00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000005F0000005F008080800000000000F0F0F000000000000000
      6000000000000000000000000000000000000000360000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF00BF000000BF00
      00000000BF00BF000000BF000000BF000000BF000000BF000000BF000000BF00
      0000BF000000BF000000008080000080800080808000A0A0A000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C00060606000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00606060000000BF007F7F7F00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00BFBFBF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000005F0000005F00808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF0000BFBF0000BF
      BF000000BF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BF
      BF0000BFBF0000BFBF00008080000080800080808000C0C0C000C0C0C000C0C0
      C000C0C0C00060606000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00606060000000BF007F7F7F00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00BFBFBF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000005F0000005F00808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF0000BFBF0000BF
      BF000000BF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BF
      BF0000BFBF0000BFBF00008080000080800090909000C0C0C000C0C0C0006060
      6000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00606060000000BF0000005F000000
      5F0000005F0000005F0000005F0000005F0000005F0000005F0000005F000000
      5F0000005F0000009F0000005F00909090000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF000000000000808000A0A0A00060606000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009090900000005F0000005F000000
      5F0000005F0000005F0000005F0000005F0000005F0000005F0000005F000000
      5F0000005F0000005F0030305000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000606060000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF7F00FFFF7F00FFFF7F00FFFF
      7F00FFFF7F00FFFF7F00FFFF7F00FFFF7F000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000060606000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFBF00FFFF7F00FFFFBF000000
      000000000000000000000000000000000000FF7F7F00FF00FF00FF7F7F00FF7F
      7F00FF7F7F00FF7F7F00FF7F7F00FFBF3F00000000000000FF000000FF000000
      000080808000808080008080800080808000808080000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000006060600080808000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFBF00FF3FBF00FFFF3F000000
      000000000000000000000000000000000000FF7F7F00FF00FF00FFFF7F00FFFF
      7F00FFFF7F00FFFF7F00FFFF7F00FFFF7F00000000000000FF000000FF000000
      FF00BF000000BF000000BF000000BF000000BF0000000000FF000000FF008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000606060008080800080808000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFF3F00FF7F7F00FFFF
      BF0000000000000000000000000000000000FF7F7F00FF00FF00FFFF7F00FF7F
      7F00FF3FBF00FF7F7F00FF7F7F00FFBF3F0000000000000000000000FF000000
      FF000000FF000000FF00FFFFFF00FFFFFF000000FF000000FF00BF0000008080
      8000000000000000000000000000000000000000000000000000000000006060
      6000808080008080800080808000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000800000000000
      00000000000000000000000000000000000000000000FFFFBF00FF7F7F00FFFF
      3F0000000000000000000000000000000000FF7F7F00FF00FF00FFFF7F00FF7F
      7F00FF7F7F000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF0000FFFF000000FF000000FF000000FF00BF0000008080
      8000000000000000000000000000000000000000000000000000606060008080
      8000808080008080800080808000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080000000800000000000
      0000000000000000000000000000000000000000000000000000FFFF3F00FF7F
      7F00FFFFBF00000000000000000000000000FF7F7F00FF00FF00FFFF7F00FF7F
      7F00FF7F7F00000000000000000000000000000000000000000000000000BF00
      0000FFFFFF000000FF000000FF000000FF000000FF00FFFFFF00BF0000008080
      8000000000000000000000000000000000000000000020202000404040004040
      4000404040006060600080808000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080000000800000000000
      0000000000000000000000000000000000000000000000000000FFFFBF00FF7F
      7F00FFFF3F00FFFF7F00FFFF7F00FFFFBF00FF7F7F00FF00FF00FFFF7F00FF7F
      7F00FF7F7F00000000000000000000000000000000000000000000000000BF00
      0000FFFFFF000000FF000000FF000000FF000000FF00FFFFFF00BF0000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000004040400080808000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008000000080000000800000008000
      000080000000000000000000000000000000000000000000000000000000FFFF
      3F00FF00FF00FF00FF00FF00FF00FFFF7F00FF7F7F00FF00FF00FFFF7F00FF7F
      7F00FF3FBF00FF7F7F00FF7F7F00FFFF7F00000000000000000000000000BF00
      00000000FF000000FF000000FF000000FF000000FF0000FFFF00BF0000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000004040400080808000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080000000800000000000
      000000000000800000000000000000000000000000000000000000000000FFFF
      BF00FF7F7F00FFBF3F00FFFF7F00FFFFBF00FF7F7F00FF00FF00FFFF7F00FF7F
      7F00FF7F7F00FFFF7F00FFFF7F00FFFFBF00000000000000000000000000BF00
      00000000FF000000FF00FFFFFF00FFFFFF000000FF000000FF00BF0000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000004040400080808000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000800000000000
      0000000000008000000000000000000000000000000000000000000000000000
      0000FFFF3F00FF7F7F00FFFFBF0000000000FF7F7F00FF00FF00FFFF7F00FF7F
      7F00FF7F7F0000000000000000000000000000000000000000000000FF000000
      FF000000FF00FFFFFF00FFFFFF00FFFFFF00BF0000000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000004040400080808000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000800000000000
      0000000000008000000000000000000000000000000000000000000000000000
      0000FFFFBF00FF7F7F00FFFF3F0000000000FF7F7F00FF00FF00FFFF7F00FF7F
      7F00FF7F7F0000000000000000000000000000000000000000000000FF000000
      FF00FFFFFF0000FFFF0000FFFF0000FFFF00BF000000BF0000000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000000000004040400080808000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008000000000000000000000000000000000000000000000000000
      000000000000FFFF3F00FF7F7F00FFFFBF00FF7F7F00FF00FF00FFFF7F00FF7F
      7F00FF7F7F00FFFF7F00FFFF7F00FFFF7F00000000000000FF000000FF00BF00
      0000BF000000BF000000BF000000BF000000BF00000000000000000000000000
      00000000FF000000FF0000000000000000000000000000000000000000000000
      0000000000004040400080808000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008000000000000000000000000000000000000000000000000000
      000000000000FFFFBF00FF7F7F00FFFF7F00FF7F7F00FF00FF00FFFF7F00FFBF
      3F00FF7F7F00FF7F7F00FF7F7F00FFBF3F00000000000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF0000000000000000000000000000000000000000000000
      0000000000004040400080808000B0B0B0003030300000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080000000800000008000000080000000800000008000
      0000800000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFBF7F00FFFF7F00FF7F7F00FF00FF00FFFF7F000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000040404000B0B0B000C0C0C000C0C0C00030303000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF7F00FFFF7F00FFFFBF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000060606000C0C0C000C0C0C000C0C0C000C0C0C000303030000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF00000000000000000000000000000000000000FF000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000808080000000000000000000000000000000000000000000000000000000
      0000808080000000000000000000000000000000000000000000000000008080
      8000808080008080800000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF000000FF000000000000000000
      000000000000000000000000000000000000000000000000000000BFBF0000BF
      BF00000000008080800080808000808080008080800080808000000000000000
      00000000000000BFBF0000000000000000000000000000000000000000000000
      0000808080008080800080808000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF0000000000000000000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000BFBF0000BF
      BF00000000008080800080808000808080008080800080808000000000000000
      00000000000000BFBF00000000000000000000000000000000000000000000FF
      000000FF000000FF000000000000808080008080800080808000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000BF0000000000000000000000000000000000
      0000000000000000000000000000808080000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000BFBF0000BF
      BF00000000008080800080808000808080008080800080808000000000000000
      00000000000000BFBF000000000000000000000000000000000000000000C0C0
      C00000FF000000FF0000C0C0C000000000000000000080808000808080008080
      800000000000000000000000000000000000000000000000000000000000FFFF
      FF000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF008080800000000000BF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000BFBF0000BF
      BF00000000000000000000000000000000000000000000000000000000000000
      00000000000000BFBF00000000000000000000000000000000000000000000FF
      000000FF000000FF000000FF000000FF000000FF000000000000808080008080
      800080808000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BF000000FFFF
      FF00C0C0C000BF00000000000000000000000000000000000000000000000000
      0000000000000000000000BFBF00FFFFFF0000BFBF00C0C0C000000000000000
      000000000000000000000000000000000000000000000000000000BFBF0000BF
      BF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BF
      BF0000BFBF0000BFBF00000000000000000000000000000000000000000000FF
      0000C0C0C000C0C0C00000FF0000C0C0C000C0C0C00000FF0000000000000000
      000080808000808080008080800000000000000000000000000000000000FFFF
      FF000000000000000000000000000000000000000000FFFFFF00BF000000BF00
      0000BF0000000000000000000000000000000000000000000000000000000000
      00000000000080808000FFFFFF0000BFBF00FFFFFF0000BFBF00000000000000
      000000000000000000000000000000000000000000000000000000BFBF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000BFBF0000BFBF00000000000000000000000000000000000000000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BF000000BF00
      0000BF0000000000000000000000000000000000000000000000000000000000
      0000000000008080800000BFBF00FFFFFF0000BFBF00FFFFFF00000000000000
      000000000000000000000000000000000000000000000000000000BFBF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000BFBF000000000000000000000000000000000000000000C0C0
      C00000FF000000FF0000C0C0C00000FF000000FF0000C0C0C000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF0000000000000000000000000000000000FFFFFF00BF000000BF00
      0000BF000000BF00000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF0000BFBF00FFFFFF0000BFBF00000000000000
      000000000000000000000000000000000000000000000000000000BFBF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000BFBF00000000000000000000000000000000000000000000FF
      000000FF000000FF000000FF000000FF000000FF000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C0C0C00000BFBF00FFFFFF0000BFBF00000000000000
      000000000000000000000000000000000000000000000000000000BFBF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000BFBF00000000000000000000000000000000000000000000FF
      0000C0C0C000C0C0C00000FF0000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF0000000000000000000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C0C0C000FFFFFF0000BFBF00FFFFFF00C0C0C0000000
      000000000000000000000000000000000000000000000000000000BFBF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000BFBF000000000000000000000000000000000000000000C0C0
      C000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000000000008080800000000000000000000000000000BFBF000000
      000000000000000000000000000000000000000000000000000000BFBF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C0C0C00000BFBF0000BFBF0000BFBF000000
      000000000000000000000000000000000000000000000000000000BFBF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001B88
      CC001B88CC008E5D59008E5D59008E5D59008E5D59008E5D59008E5D59008E5D
      59008E5D59008E5D59008E5D5900000000000000000000000000000000009730
      0200A3380100A03601009A32020000000000000000000000000097300200A036
      01009D350100952E020000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      00000000000000000000000000000000000000000000000000001B88CC0074C7
      E90067C5EB00BAB7AA00FBE7D300F8EEDC00F6EDD700F4E9D300F4E9D000F4E7
      D000F4E6CF00F6E7CE008E5D5900000000000000000000000000000000009E35
      01000000000000000000932D0200952D020000000000952D0200993002000000
      000000000000972F020000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF0000000000FF000000FF000000FF00000000000000FFFFFF00FFFFFF000000
      00000000FF000000FF000000FF0000000000000000001B88CC008CE1F6007FEF
      FF0072EEFF00BAB7AA00F3DCCF00F3DDC500F3D5B600F2D4B500F0D3B200F0D1
      AD00EED4B600EBDAC2008E5D5900000000000000000000000000000000009E35
      0100000000000000000000000000952D020000000000952E0200000000000000
      000000000000962E020000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF0000000000FF00000000000000FFFFFF00FFFFFF00FFFFFF000000
      00000000FF000000FF000000FF0000000000000000001B88CC008AE0F6007AE7
      FF006BE6FF00BAB7AA00F6E1D500F7DCC000F7D0AB00F7D0AB00F7D0AB00F6CE
      A500F2D3B100EBDCC5008E5D5900000000000000000000000000000000009E35
      0100912C02000000000000000000932D020000000000952E0200000000000000
      00008A270300962F02000000000000000000009C9C0063CECE0063CECE0063CE
      CE0063CECE0063CECE0063CECE0063CECE0063CECE0063CECE0063CECE0063CE
      CE0063CECE0063CECE000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      00000000FF000000FF000000FF0000000000000000001B88CC0097E2F6008BED
      FF007DEBFF00BAB7AA00F7E5DC00F7DEC600F7D3B100F7D4B100F6D3B000F4D0
      AB00F2D5B600EEDECA008E5D5900000000000000000000000000000000000000
      0000A13801009C330200A13601009F330100000000009D3201009F350100962F
      0200952E0200000000000000000000000000009C9C00CEFFFF009CCEFF009CFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF009CCEFF009CFFFF009CCEFF009CCE
      FF009CCEFF0063CECE0000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF000000
      000000000000000000000000000000000000000000001B88CC00A1E5F6009AEF
      FF008CEEFF00BAB7AA00F8EAE200F8E7D400F8DDC200F7DDC100F7DABF00F6D8
      BB00F2DCC200EFE1D0008E5D5900000000000000000000000000000000000000
      00000000000099310100A02F0000882F0500692D1500882D06009F2E0000972F
      020000000000000000000000000000000000009C9C00CEFFFF009CFFFF009CFF
      FF009CFFFF00000000009CFFFF000000000000000000000000009CFFFF000000
      00000000000063CECE0000000000000000000000000000000000000000000000
      000000000000FFFFFF00000000007F7F7F0000FFFF007F7F7F0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000001B88CC00ADE6F600ACF2
      FF009CF0FF00BAB7AA00FBF0EB00FBE1C500FBD0A900FAD1AA00F8D0A900F8CE
      A400F6D8B800F4E9DA008E5D5900000000000000000000000000000000000000
      00000000000000000000000000006848390098868700952E0200000000000000
      000000000000000000000000000000000000009C9C00CEFFFF009CFFFF009CFF
      FF009CFFFF00000000009CFFFF00000000009CFFFF00000000009CFFFF000000
      00009CFFFF0063CECE0000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF0000FFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000001B88CC00B7E9F600BCF4
      FF00ACF3FF00BAB7AA00FEF4F000FEF4EB00FAEBDD00FAEADA00F8E7D700F8E9
      D800F7EBDD00E1DAD3008E5D5900000000000000000000000000000000000000
      000000000000000000004B3F3500B19D9C00BDA3A1006E595100554339000000
      000000000000000000000000000000000000009C9C00CEFFFF009CFFFF000000
      000000000000000000009CFFFF000000000000000000000000009CFFFF000000
      00009CCEFF0063CECE0000000000000000000000000000000000000000000000
      00000000000000000000000000007F7F7F0000FFFF007F7F7F0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000001B88CC00C0EAF600D0FA
      FF00BFF7FF00BAB7AA00FEF6F200FFFFFF00FEFFFE00FBF8F700FAFAF700EBE0
      D900C7ADA300B59A8B008E5D5900000000000000000000000000000000000000
      0000000000000000000088766E00E6D4D70077635900AC8F8C00997B77004B3B
      300000000000000000000000000000000000009C9C00CEFFFF009CFFFF009CFF
      FF009CFFFF00000000009CFFFF00000000009CFFFF009CFFFF009CFFFF009CFF
      FF009CFFFF0063CECE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF00FFFFFF00000000001B88CC00C7EBF600E2FC
      FF00D0FAFF00BAB7AA00FFF8F600FFFFFF00FFFFFF00FFFFFF00FFFFFF00D4BB
      B500D7925500F47A410000000000000000000000000000000000000000000000
      00000000000055413500E2D9D800AD9D98004B372A00A0868000C6A4A500664F
      440000000000000000000000000000000000009C9C00CEFFFF009CFFFF009CFF
      FF009CFFFF00000000009CFFFF000000000000000000000000009CFFFF009CFF
      FF009CFFFF0063CECE0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF000000
      00000000000000000000FFFFFF00FFFFFF00000000001B88CC00CFEDF600F6FF
      FF00E2FEFF00BAB7AA00FBEBE200FBF2ED00FBF0EB00FAEFEB00FAF0ED00DAB4
      A700B79A6F001B88CC0000000000000000000000000000000000000000000000
      000091756F0090827900E7E5E2005D4A3D00000000005E4A3E00C0A09F009175
      6F0091756F00000000000000000000000000009C9C00CEFFFF009CFFFF009CFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFF
      FF009CCEFF0063CECE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00000000001B88CC00D0EBF600FFFF
      FF00F2FFFF00BAB7AA00BAB7AA00BAB7AA00BAB7AA00BAB7AA00BAB7AA00BAB7
      AA006BB4CF001B88CC0000000000000000000000000000000000000000000000
      000056423600CCC5C10097898000000000000000000000000000826B6300B295
      920056423600000000000000000000000000009C9C00CEFFFF00CEFFFF00CEFF
      FF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFF
      FF009CFFFF0063CECE0000000000000000000000000000000000FFFF0000FFFF
      0000FFFF00000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001B88CC00D3EDF700F4F2
      F0009CB7BC0093B4BC0091B4BB0090B4BB008FB4BB008BB1B8009FC4CA00D5FC
      FE006FCEF2001B88CC0000000000000000000000000000000000000000000000
      00006B594D00B0A59E00513E3100000000000000000000000000513E3100997F
      7A006D574D00000000000000000000000000009C9C0063CECE0063CECE0063CE
      CE0063CECE0063CECE0063CECE0063CECE00009C9C00009C9C00009C9C00009C
      9C00009C9C00009C9C0000000000000000000000000000000000FFFF0000FFFF
      0000FFFF00000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00000000001B88CC00DCF6FF00D5BC
      B100A98C8000C1B0AA00C1B0A900C1B0A900C1B0A900C0ACA400A6877900DEE1
      DA0078D0F4001B88CC0000000000000000000000000000000000000000000000
      00006C5B4E00705F530000000000000000000000000000000000000000006B54
      49006C564B0000000000000000000000000000000000009C9C00F7F7F700CEFF
      FF00CEFFFF009CFFFF009CFFFF00009C9C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFF0000FFFF
      0000FFFF00000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF0000000000000000001B88CC00A0C5
      D8007E878800D9CCC600F8F7F600F7F6F400F7F6F400C2B5AD006A868F0073C1
      E0001B88CC000000000000000000000000000000000000000000000000000000
      0000544133000000000000000000000000000000000000000000000000000000
      0000554135000000000000000000000000000000000000000000009C9C00009C
      9C00009C9C00009C9C00009C9C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF000000000000000000000000001B88
      CC001B88CC0088786F0088786F0088786F0088786F0088786F001B88CC001B88
      CC00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF01FF00FF01FF00FF01FF00FF01FF00FF01FF00FF01FF00FF01FF00FF01
      FF00FF01FF000000000000000000000000000000000000000000000000000000
      000000000000FF01FF00FF01FF00FF01FF00FF01FF00FF01FF00FF01FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A0756E0074434200744342007443420074434200744342007443
      4200744342007443420074434200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080000000
      000000000000000000000000000000000000FF04FF00FF06FF00FF07FF00FF09
      FF00FF0AFF00FF0CFF00FF0DFF00FF0DFF00FF0DFF00FF0DFF00FF0DFF00FF0C
      FF00FF0BFF00FF09FF00FF07FF00FF04FF00FF04FF00FF05FF00FF05FF00FF06
      FF00FF07FF00FF09FF00FF0AFF00FF0CFF00FF0DFF00FF0CFF00FF0BFF00FF0A
      FF00FF07FF00FF06FF00FF04FF00FF03FF000000000000000000000000000000
      000000000000A0756E00FFF8E500F7EDD900F7EBD500F4E9D100F4E9D000F4E7
      CF00F6EAD000EEDDC40075444300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      800000000000000000008080800000000000FF0EFF00FF13FF00FF16FF00FF1B
      FF00FF1FFF00FF20FF00FF22FF00FF23FF00FF22FF00FF22FF00FF20FF00FF1D
      FF00FF1BFF00FF17FF00FF12FF00FF0CFF00FF09FF00FF0EFF00FF0FFF00FF11
      FF00FF15FF00FF19FF00FF1AFF00FF1EFF00FF1FFF00FF1EFF00FF1CFF00FF19
      FF00FF15FF00FF11FF00FF0DFF00FF08FF000000000000000000000000000000
      000000000000A0756E00F7EDDC00F2D9BF00F2D7BB00F0D5BA00EFD4B500EED3
      B200EED9BF00E5D0BA0075444300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      800000000000000000000000000000000000FF1BFF00FF26FF00FF2DFF00FF35
      FF00FF3BFF00FF3EFF00FF40FF00FF40FF00FF3EFF00FF3BFF00FF39FF00FF34
      FF00FF31FF00FF2BFF00FF22FF00FF18FF00FF13FF00FF1CFF00FF20FF00FF25
      FF00FF2BFF00FF34FF00FF36FF00FF3BFF00FF3DFF00FF3CFF00FF36FF00FF31
      FF00FF2AFF00FF22FF00FF18FF00FF0FFF000000000000000000000000000000
      000000000000A0756E00FAEFDE00FCC59100FCC59100FCC59100FCC59100FCC5
      9100FCC59100E3D1BC0075444300000000000000000000000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000808080000000000000000000FF2CFF00F139EE00FF4AFF00FF57
      FF00E253DD00FF64FF00D453CC00F160EE00FF64FF00F15BEE00E351DD00FF55
      FF00E246DD00FF46FF00F034EE00FF27FF00FF22FF00E32CDD00FF3AFF00FF42
      FF00FF4DFF00E24DDD00FF5BFF00FF63FF00D351CC00F15DEE00F054EE00FF52
      FF00FF45FF00FF37FF00F125EF00FF19FF0000000000A0756E00744342007443
      420074434200A0756E00FCF4E700F6D9BA00F7D7B600F6D4B500F6D4B200F4D1
      AD00F0DCC200E6D3C00081524C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080000000
      000000000000000000000000000000000000B62BAB003F0D2400FF6BFF00E26C
      DD00360B1300883F71003F0C1400410C1400A04A89003F0B14004B142500A94A
      9A00340A140099368900782B6500FF38FF00FF32FF0037071400D545CD00FF62
      FF00D35CCC00360B1300E273DD0044152400370B1400390B13009B4589006120
      4600F15CEF006E2A5900C032B800FF24FF0000000000A0756E00FFF8E500F7ED
      D900F7EBD500A0756E00FEF6EB00F8DABC00F8D9B800F8D8B700F7D5B600F7D4
      B200F3DEC700E7D7C50081524D00000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      000080808000000000000000000000000000FF4AFF002E091300320B1300350C
      1400652B4600E48BDD00A2578A0055182600480D1500A2508A00FF90FF00FF88
      FF003F141D00A7509A008C477C00FF43FF00FF40FF0033081300D458CC00FF7C
      FF00D372CC00380C14008140680072395600D585CD00C977BD00D878D0009A4F
      8800713E5B00A54C9900FF40FF00FF29FF0000000000A0756E00F7EDDC00F2D9
      BF00F2D7BB00A0756E00FEFAF200FCC59100FCC59100FCC59100FCC59100FCC5
      9100FCC59100EBDDCF008F5F5A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000000000000000
      000000000000000000000000000000000000FF4BFF00782C67008A3F7800622A
      4600AC609A0088496E007A445D00B96DAA00914D7700A6599200FF91FF00FF8B
      FF00502B3300B15FA60099578A00FF47FF00FF47FF00300913009A4389009A4B
      8900995589003B0E1400743B57003C0F14004C2228005F3C4200B16CA400BE6C
      B3006F515A00C45ABB00FF40FF00FF2AFF0000000000A0756E00FAEFDE00FCC5
      9100FCC59100A0756E00FFFCFA00FCE3CC00FBE0C700FADEC600F8DEC400FCE2
      C600FCF0DE00E1D7CE008F5E5900000000000000000000000000000000000000
      0000808080000000000000000000000000000000000000000000000000008080
      800000000000000000000000000000000000FF44FF00B441AB004E1A3500370C
      1500F288F000AB629D0068444C006B464F00DC74D600562D360064384900B65F
      A9005E3D4500B964AE00A25F9400FF43FF00FF47FF002F0913006F2A57006F2F
      57007034570049202600D081C70061394600925F7F00805C6A00E27DDD00805C
      6D00E366DF0087607700EC3FE900FF26FF0000000000A0756E00FCF4E700F6D9
      BA00F7D7B600A0756E00FFFFFF00FEFFFF00FBFBFB00FAF8F700FAFAF600E5D5
      D000C6B1AF00A79395009E675A00000000000000000000000000000000000000
      0000000000000000000000000000000000008080800000000000000000000000
      000000000000000000000000000000000000FF37FF00FF4FFF00310913007034
      5A00FF6FFF00FF6EFF00EA66E600EA5FE600FF61FF00F360F100E760E400FF67
      FF00844A7100CE5CC600BF58B600FF38FF00FF3EFF002F081300D455CC00FF75
      FF00D569CE005B394100FF80FF00DD73D800B665AB00E26EDE00D863D200EB5D
      E900FF4FFF00EC44E900D838D200FF1DFF0000000000A0756E00FEF6EB00F8DA
      BC00F8D9B800A0756E00FFFFFF00FFFFFF00FFFEFE00FFFCF800FFFEFA00A075
      6E00A0756E00A0756E00A0756E00000000000000000000000000000000000000
      0000000000008080800000000000000000000000000000000000808080000000
      000000000000000000000000000000000000FF25FF00FF34FF00C533BD00E646
      E300FF48FF00FF46FF00FF43FF00FF3CFF00FF3BFF00FF3FFF00FF43FF00FF45
      FF00B841AF00EA44E700D740D200FF28FF00FF2FFF004D103500E347DF00FF57
      FF00E555E10075446300FF59FF00FF57FF00FF52FF00FF4BFF00FF41FF00FF3B
      FF00FF32FF00FF28FF00FF1CFF00FF13FF0000000000A0756E00FEFAF200FCC5
      9100FCC59100A0756E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A075
      6E00E5A15400B6735D0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF15FF00FF1EFF00FF27FF00FF2B
      FF00FF28FF00FF27FF00FF25FF00FF20FF00FF20FF00FF24FF00FF28FF00FF2A
      FF00FF2DFF00FF29FF00FF23FF00FF19FF00FF1FFF00FF2EFF00FF34FF00FF37
      FF00FF3BFF00FF3DFF00FF36FF00FF34FF00FF31FF00FF2BFF00FF25FF00FF22
      FF00FF1CFF00FF16FF00FF10FF00FF0AFF0000000000A0756E00FFFCFA00FCE3
      CC00FBE0C700A0756E00A0756E00A0756E00A0756E00A0756E00A0756E00A075
      6E00AA6D68000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000000000000000000080808000000000000000
      000000000000000000000000000000000000FF0AFF00FF0FFF00FF13FF00FF15
      FF00FF13FF00FF11FF00FF10FF00FF0DFF00FF0DFF00FF10FF00FF13FF00FF16
      FF00FF17FF00FF16FF00FF13FF00FF0DFF00FF11FF00FF19FF00FF1CFF00FF1D
      FF00FF1FFF00FF1FFF00FF1AFF00FF18FF00FF16FF00FF12FF00FF0FFF00FF0D
      FF00FF0BFF00FF09FF00FF07FF00FF04FF0000000000A0756E00FFFFFF00FEFF
      FF00FBFBFB00FAF8F700FAFAF600E5D5D000C6B1AF00A79395009E675A000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF04FF00FF05FF00FF07FF00FF07
      FF00FF05FF00FF04FF00FF03FF00FF01FF00FF02FF00FF03FF00FF05FF00FF07
      FF00FF08FF00FF08FF00FF07FF00FF05FF00FF07FF00FF0BFF00FF0BFF00FF0C
      FF00FF0CFF00FF0CFF00FF09FF00FF07FF00FF07FF00FF04FF00FF03FF00FF03
      FF00FF02FF00FF01FF00FF01FF00FF01FF0000000000A0756E00FFFFFF00FFFF
      FF00FFFEFE00FFFCF800FFFEFA00A0756E00A0756E00A0756E00A0756E000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000808080008080800000000000000000000000
      00000000000000000000000000000000000000000000FF01FF00FF01FF00FF01
      FF00FF01FF000000000000000000000000000000000000000000FF01FF00FF01
      FF00FF02FF00FF02FF00FF01FF00FF01FF00FF02FF00FF04FF00FF04FF00FF04
      FF00FF04FF00FF04FF00FF02FF00FF01FF00FF01FF0000000000000000000000
      00000000000000000000000000000000000000000000A0756E00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00A0756E00E5A15400B6735D00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A0756E00A0756E00A075
      6E00A0756E00A0756E00A0756E00A0756E00AA6D680000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007F7F7F000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C3C3C3000000
      00007F7F7F00C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C3000000
      00007F7F7F00C3C3C3000000000000000000009C9C0063CECE0063CECE0063CE
      CE0063CECE0063CECE0063CECE0063CECE0063CECE0063CECE0063CECE0063CE
      CE0063CECE0063CECE000000000000000000009C9C0063CECE0063CECE0063CE
      CE0063CECE0063CECE0063CECE0063CECE0063CECE0063CECE0063CECE0063CE
      CE0063CECE0063CECE000000000000000000009C9C0063CECE0063CECE0063CE
      CE0063CECE0063CECE0063CECE0063CECE0063CECE0063CECE0063CECE0063CE
      CE0063CECE0063CECE0000000000000000000000000000000000C3C3C3000000
      00007F7F7F00C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C3000000
      00007F7F7F00C3C3C3000000000000000000009C9C00CEFFFF009CCEFF009CFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF009CCEFF009CFFFF009CCEFF009CCE
      FF009CCEFF0063CECE000000000000000000009C9C00CEFFFF009CCEFF009CFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF009CCEFF009CFFFF009CCEFF009CCE
      FF009CCEFF0063CECE000000000000000000009C9C00CEFFFF009CCEFF009CFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF009CCEFF009CFFFF009CCEFF009CCE
      FF009CCEFF0063CECE0000000000000000000000000000000000C3C3C3000000
      00007F7F7F00C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C3000000
      00007F7F7F00C3C3C3000000000000000000009C9C00CEFFFF009CFFFF009CFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF00000000009CFFFF000000
      00009CFFFF0063CECE000000000000000000009C9C00CEFFFF009CFFFF009CFF
      FF00000000009CFFFF000000000000000000000000009CFFFF009CFFFF000000
      00000000000063CECE000000000000000000009C9C00CEFFFF009CFFFF009CFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFF
      FF009CFFFF0063CECE0000000000000000000000000000000000C3C3C3000000
      00007F7F7F00C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C3000000
      00007F7F7F00C3C3C3000000000000000000009C9C00CEFFFF009CFFFF000000
      00009CFFFF000000000000000000000000009CFFFF00000000009CFFFF000000
      00009CFFFF0063CECE000000000000000000009C9C00CEFFFF009CFFFF009CFF
      FF00000000009CFFFF00000000009CFFFF00000000009CFFFF00000000009CFF
      FF009CFFFF0063CECE000000000000000000009C9C00CEFFFF009CFFFF009CFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFF
      FF009CFFFF0063CECE0000000000000000000000000000000000C3C3C3000000
      0000000000000000000000000000C3C3C3007F7F7F0000000000000000000000
      00007F7F7F00C3C3C3000000000000000000009C9C00CEFFFF009CFFFF000000
      00009CFFFF00000000009CFFFF00000000009CFFFF0000000000000000009CFF
      FF009CCEFF0063CECE000000000000000000009C9C00CEFFFF00000000000000
      0000000000009CFFFF000000000000000000000000009CFFFF00000000000000
      00009CCEFF0063CECE000000000000000000009C9C00CEFFFF009CFFFF009CFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFF
      FF009CFFFF0063CECE0000000000000000000000000000000000000000000000
      0000000000000000000000000000C3C3C3007F7F7F0000000000000000000000
      000000000000000000000000000000000000009C9C00CEFFFF00000000000000
      00009CFFFF000000000000000000000000009CFFFF00000000009CFFFF000000
      00009CFFFF0063CECE000000000000000000009C9C00CEFFFF009CFFFF009CFF
      FF00000000009CFFFF00000000009CFFFF009CFFFF009CFFFF00000000009CFF
      FF009CFFFF0063CECE000000000000000000009C9C00CEFFFF009CFFFF009CFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFF
      FF009CFFFF0063CECE0000000000000000000000000000000000000000000000
      0000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C00000000000000000000000000000000000009C9C00CEFFFF009CFFFF000000
      00009CFFFF00000000009CFFFF009CFFFF009CFFFF00000000009CFFFF000000
      00009CFFFF0063CECE000000000000000000009C9C00CEFFFF009CFFFF009CFF
      FF00000000009CFFFF000000000000000000000000009CFFFF009CFFFF009CFF
      FF009CFFFF0063CECE000000000000000000009C9C00CEFFFF009CFFFF009CFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFF
      FF009CFFFF0063CECE0000000000000000000000000000000000000000000000
      0000C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C0C0
      C00000000000000000000000000000000000009C9C00CEFFFF009CFFFF000000
      00009CFFFF000000000000000000000000009CFFFF009CFFFF009CFFFF009CFF
      FF009CCEFF0063CECE000000000000000000009C9C00CEFFFF009CFFFF009CFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFF
      FF009CCEFF0063CECE000000000000000000009C9C00CEFFFF009CFFFF009CFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFF
      FF009CCEFF0063CECE0000000000000000000000000000000000000000000000
      0000C0C0C0007F7F7F00C0C0C0007F7F7F007F7F7F00C0C0C0007F7F7F00C0C0
      C00000000000000000000000000000000000009C9C00CEFFFF00CEFFFF00CEFF
      FF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFF
      FF009CFFFF0063CECE000000000000000000009C9C00CEFFFF00CEFFFF00CEFF
      FF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFF
      FF009CFFFF0063CECE000000000000000000009C9C00CEFFFF00CEFFFF00CEFF
      FF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFF
      FF009CFFFF0063CECE0000000000000000000000000000000000000000000000
      0000C0C0C00000F2FF0000F2FF0000F2FF0000F2FF0000F2FF0000F2FF00C0C0
      C00000000000000000000000000000000000009C9C0063CECE0063CECE0063CE
      CE0063CECE0063CECE0063CECE0063CECE00009C9C00009C9C00009C9C00009C
      9C00009C9C00009C9C000000000000000000009C9C0063CECE0063CECE0063CE
      CE0063CECE0063CECE0063CECE0063CECE00009C9C00009C9C00009C9C00009C
      9C00009C9C00009C9C000000000000000000009C9C0063CECE0063CECE0063CE
      CE0063CECE0063CECE0063CECE0063CECE00009C9C00009C9C00009C9C00009C
      9C00009C9C00009C9C0000000000000000000000000000000000000000000000
      0000C0C0C00000F2FF0000F2FF0000F2FF0000F2FF0000F2FF0000F2FF00C0C0
      C0000000000000000000000000000000000000000000009C9C00F7F7F700CEFF
      FF00CEFFFF009CFFFF009CFFFF00009C9C000000000000000000000000000000
      00000000000000000000000000000000000000000000009C9C00F7F7F700CEFF
      FF00CEFFFF009CFFFF009CFFFF00009C9C000000000000000000000000000000
      00000000000000000000000000000000000000000000009C9C00F7F7F700CEFF
      FF00CEFFFF009CFFFF009CFFFF00009C9C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000000000000000000000000000000000000000000000000000009C9C00009C
      9C00009C9C00009C9C00009C9C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000009C9C00009C
      9C00009C9C00009C9C00009C9C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000009C9C00009C
      9C00009C9C00009C9C00009C9C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008000000080000000800000008000
      8000800080008000800080008000800080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008000000080000000800080008000
      8000800080008000800080008000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008000000080008000800080008000
      8000800080008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008000800080008000800080008000
      80008000800080808000C0C0C00080808000C0C0C00000000000000000000000
      000000000000000000000000000000000000009C9C0063CECE0063CECE0063CE
      CE0063CECE0063CECE0063CECE0063CECE0063CECE0063CECE0063CECE0063CE
      CE0063CECE0063CECE000000000000000000009C9C0063CECE0063CECE0063CE
      CE0063CECE0063CECE0063CECE0063CECE0063CECE0063CECE0063CECE0063CE
      CE0063CECE0063CECE000000000000000000009C9C0063CECE0063CECE0063CE
      CE0063CECE0063CECE0063CECE0063CECE0063CECE0063CECE0063CECE0063CE
      CE0063CECE0063CECE0000000000000000008000800080008000800080008000
      800080808000808080008080800080808000C0C0C000C0C0C000C0C0C0000000
      000000000000000000000000000000000000009C9C00CEFFFF009CCEFF009CFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF009CCEFF009CFFFF009CCEFF009CCE
      FF009CCEFF0063CECE000000000000000000009C9C00CEFFFF009CCEFF009CFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF009CCEFF009CFFFF009CCEFF009CCE
      FF009CCEFF0063CECE000000000000000000009C9C00CEFFFF009CCEFF009CFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF009CCEFF009CFFFF009CCEFF009CCE
      FF009CCEFF0063CECE0000000000000000008000800080808000800080008080
      800080808000808080008080800080808000C0C0C000C0C0C000C0C0C0000000
      000000000000000000000000000000000000009C9C00CEFFFF00000000000000
      000000000000000000000000000000000000000000009CFFFF00000000009CCE
      FF000000000063CECE000000000000000000009C9C00CEFFFF009CFFFF000000
      000000000000000000009CFFFF000000000000000000000000009CFFFF009CCE
      FF009CCEFF0063CECE000000000000000000009C9C00CEFFFF00000000000000
      00009CFFFF009CFFFF0000000000000000009CFFFF009CFFFF00000000009CCE
      FF009CFFFF0063CECE0000000000000000008080800000000000000000008080
      8000C0C0C0008080800080808000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C00000000000000000000000000000000000009C9C00CEFFFF00000000000000
      00009CFFFF009CFFFF009CFFFF009CFFFF00000000009CFFFF00000000009CFF
      FF000000000063CECE000000000000000000009C9C00CEFFFF009CFFFF009CFF
      FF009CFFFF00000000009CFFFF00000000009CFFFF009CFFFF009CFFFF009CFF
      FF009CFFFF0063CECE000000000000000000009C9C00CEFFFF009CFFFF009CFF
      FF00000000009CFFFF009CFFFF009CFFFF00000000009CFFFF00000000009CFF
      FF000000000063CECE0000000000000000008080800000000000000000000000
      0000FFFFFF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C00000000000000000000000000000000000009C9C00CEFFFF009CFFFF009CFF
      FF0000000000000000009CFFFF009CFFFF009CFFFF009CFFFF00000000009CFF
      FF000000000063CECE000000000000000000009C9C00CEFFFF009CFFFF000000
      0000000000009CFFFF009CFFFF000000000000000000000000009CFFFF009CFF
      FF009CCEFF0063CECE000000000000000000009C9C00CEFFFF00000000000000
      0000000000009CFFFF000000000000000000000000009CFFFF00000000000000
      00000000000063CECE0000000000000000000000000000000000000000000000
      0000C0C0C000FFFFFF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C00000000000000000000000000080808000009C9C00CEFFFF009CFFFF009CFF
      FF0000000000000000009CFFFF009CFFFF009CFFFF009CFFFF00000000009CFF
      FF000000000063CECE000000000000000000009C9C00CEFFFF009CFFFF009CFF
      FF009CFFFF00000000009CFFFF009CFFFF009CFFFF00000000009CFFFF009CFF
      FF009CFFFF0063CECE000000000000000000009C9C00CEFFFF00000000009CFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF00000000009CFFFF00000000009CFF
      FF000000000063CECE0000000000000000000000000000000000000000000000
      0000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000808080008080
      800080808000000000000000000080808000009C9C00CEFFFF00000000000000
      00009CFFFF009CFFFF009CFFFF009CFFFF00000000009CFFFF00000000009CFF
      FF000000000063CECE000000000000000000009C9C00CEFFFF009CFFFF000000
      000000000000000000009CFFFF000000000000000000000000009CFFFF009CFF
      FF009CFFFF0063CECE000000000000000000009C9C00CEFFFF009CFFFF000000
      0000000000009CFFFF0000000000000000009CFFFF009CFFFF009CFFFF009CFF
      FF000000000063CECE0000000000000000000000000000000000000000000000
      000000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000808080008080
      8000808080008080800080808000FF000000009C9C00CEFFFF00000000000000
      000000000000000000000000000000000000000000009CFFFF00000000009CFF
      FF000000000063CECE000000000000000000009C9C00CEFFFF009CFFFF009CFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFF
      FF009CCEFF0063CECE000000000000000000009C9C00CEFFFF009CFFFF009CFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFF
      FF009CCEFF0063CECE0000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00C0C0C000C0C0C00080808000808080008080
      800080800000FF000000FF000000FF000000009C9C00CEFFFF00CEFFFF00CEFF
      FF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFF
      FF009CFFFF0063CECE000000000000000000009C9C00CEFFFF00CEFFFF00CEFF
      FF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFF
      FF009CFFFF0063CECE000000000000000000009C9C00CEFFFF00CEFFFF00CEFF
      FF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFF
      FF009CFFFF0063CECE0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C0C0C000C0C0C000808080008080
      800080800000FF000000FF000000FF000000009C9C0063CECE0063CECE0063CE
      CE0063CECE0063CECE0063CECE0063CECE00009C9C00009C9C00009C9C00009C
      9C00009C9C00009C9C000000000000000000009C9C0063CECE0063CECE0063CE
      CE0063CECE0063CECE0063CECE0063CECE00009C9C00009C9C00009C9C00009C
      9C00009C9C00009C9C000000000000000000009C9C0063CECE0063CECE0063CE
      CE0063CECE0063CECE0063CECE0063CECE00009C9C00009C9C00009C9C00009C
      9C00009C9C00009C9C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C0C0C000FF00
      0000FF000000FF000000FF000000FF00000000000000009C9C00F7F7F700CEFF
      FF00CEFFFF009CFFFF009CFFFF00009C9C000000000000000000000000000000
      00000000000000000000000000000000000000000000009C9C00F7F7F700CEFF
      FF00CEFFFF009CFFFF009CFFFF00009C9C000000000000000000000000000000
      00000000000000000000000000000000000000000000009C9C00F7F7F700CEFF
      FF00CEFFFF009CFFFF009CFFFF00009C9C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008080800080808000FF00
      0000FF000000FF000000FF000000FF0000000000000000000000009C9C00009C
      9C00009C9C00009C9C00009C9C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000009C9C00009C
      9C00009C9C00009C9C00009C9C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000009C9C00009C
      9C00009C9C00009C9C00009C9C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000808080008080800080800000FF00
      0000FF000000FF000000FF000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800000000000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000000080000000FF000000FF000000FF000000FF000000FF000000
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0080000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      00007F7F7F007F7F7F00BFBFBF007F7F7F00000000007F7F7F00BFBFBF007F7F
      7F007F7F7F000000000000000000000000000000000000000000000000000000
      00007F7F7F007F7F7F00BFBFBF007F7F7F00000000007F7F7F00BFBFBF007F7F
      7F007F7F7F000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00800000008000000080000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000000000000000000000000000000000000000BFBF
      BF00BFBFBF00BFBFBF00BFBFBF007F7F7F00000000007F7F7F00BFBFBF00BFBF
      BF00BFBFBF00BFBFBF000000000000000000000000000000000000000000BFBF
      BF00BFBFBF00BFBFBF00BFBFBF007F7F7F00000000007F7F7F00BFBFBF00BFBF
      BF00BFBFBF00BFBFBF0000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000080808000000080000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF0000008000808080000000000000000000000000007F7F
      7F007F7F7F007F7F7F00BFBFBF00BFBFBF0000000000BFBFBF00BFBFBF007F7F
      7F007F7F7F007F7F7F0000000000000000000000000000000000000000007F7F
      7F007F7F7F007F7F7F00BFBFBF00BFBFBF0000000000BFBFBF00BFBFBF007F7F
      7F007F7F7F007F7F7F0000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000000000000000000000000000000000000000FF000000
      FF000000FF00FFFFFF00FFFFFF000000FF000000FF000000FF00FFFFFF00FFFF
      FF000000FF000000FF000000FF0000000000000000000000000000000000BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00000000000000000000000000BFBFBF00BFBF
      BF00BFBFBF00BFBFBF000000000000000000000000000000000000000000BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00000000000000000000000000BFBFBF00BFBF
      BF00BFBFBF00BFBFBF0000000000000000000000000000000000FFFFFF00FFFF
      FF0080000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0080000000FFFF
      FF00FFFFFF0000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF00FFFFFF00FFFFFF000000FF00FFFFFF00FFFFFF000000
      FF000000FF000000FF000000FF00000000000000000000000000000000007F7F
      7F007F7F7F007F7F7F007F7F7F000000000000000000000000007F7F7F007F7F
      7F007F7F7F007F7F7F0000000000000000000000000000000000000000007F7F
      7F007F7F7F007F7F7F007F7F7F000000000000000000000000007F7F7F007F7F
      7F007F7F7F007F7F7F0000000000000000000000000000000000FFFFFF008000
      000080000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008000
      0000FFFFFF0000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF00FFFFFF00FFFFFF00FFFFFF000000FF000000
      FF000000FF000000FF000000FF000000000000FFFF000000000000000000BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF00BFBFBF00BFBFBF000000000000000000000000000000000000000000BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF00BFBFBF00BFBFBF0000000000000000000000000000000000FFFFFF00FFFF
      FF0080000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0080000000FFFF
      FF00FFFFFF0000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF00FFFFFF00FFFFFF00FFFFFF000000FF000000
      FF000000FF000000FF000000FF00000000000000000000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF00FFFFFF00FFFFFF000000FF00FFFFFF00FFFFFF000000
      FF000000FF000000FF000000FF0000000000000000000000000000FFFF0000FF
      FF0000FFFF0000FFFF000000000000000000000000000000000000000000BFBF
      BF00000000000000000000000000000000000000000000000000000000000000
      000000000000BFBFBF000000000000000000000000000000000000000000BFBF
      BF00000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000080808000000080000000
      FF000000FF00FFFFFF00FFFFFF000000FF000000FF000000FF00FFFFFF00FFFF
      FF000000FF000000FF00000080008080800000FFFF0000FFFF0000FFFF0000FF
      FF007F7F7F00000000007F7F7F0000FFFF0000FFFF000000000000000000BFBF
      BF00000000000000000000000000000000000000000000000000000000000000
      000000000000BFBFBF000000000000000000000000000000000000000000BFBF
      BF00000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000000000000000000000000000000000FFFF0000FF
      FF0000000000BFBFBF000000000000000000000000000000000000000000BFBF
      BF00000000000000000000000000000000000000000000000000000000000000
      000000000000BFBFBF000000000000000000000000000000000000000000BFBF
      BF00000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00800000008000000080000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000000000000000000000000000000000FFFF000000000000FF
      FF0000000000BFBFBF000000000000000000000000000000000000000000BFBF
      BF00000000000000000000000000000000000000000000000000000000000000
      00007F7F7F007F7F7F00BFBFBF00000000000000000000000000BFBFBF007F7F
      7F007F7F7F000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0080000000FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000080000000FF000000FF000000FF000000FF000000FF000000
      80000000000000000000000000000000000000FFFF00000000000000000000FF
      FF007F7F7F007F7F7F00BFBFBF00000000000000000000000000BFBFBF007F7F
      7F007F7F7F000000000000000000000000000000000000000000000000000000
      00000000000000000000BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800000000000000000000000000000000000000000008080
      80000000000000000000000000000000000000000000000000000000000000FF
      FF000000000000000000BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF00BFBF
      BF0000FFFF00BFBFBF0000FFFF00BFBFBF0000FFFF00BFBFBF0000FFFF000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF0000008000000000000000FF000000FF000000FF00000080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000009C9C0063CECE0063CECE0063CE
      CE0063CECE0063CECE0063CECE0063CECE0063CECE0063CECE0063CECE0063CE
      CE0063CECE0063CECE0000000000000000000000000000FFFF000000000000FF
      FF00BFBFBF0000FFFF00BFBFBF0000FFFF00BFBFBF0000FFFF00BFBFBF0000FF
      FF0000000000FFFFFF00FFFFFF00000000000000000000000000000000000000
      FF00000080000000000000000000000000000000FF0000008000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000009C9C00CEFFFF009CCEFF009CFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF009CCEFF009CFFFF009CCEFF009CCE
      FF009CCEFF0063CECE00000000000000000000000000FFFFFF0000FFFF000000
      000000FFFF00BFBFBF0000FFFF00BFBFBF0000FFFF00BFBFBF0000FFFF00BFBF
      BF0000FFFF0000000000FFFFFF00000000000000000000000000000000000000
      FF00000080000000000000000000000000000000FF0000008000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000080808000000000000000000000000000009C9C00CEFFFF00000000009CFF
      FF00000000009CFFFF00000000009CFFFF009CFFFF009CFFFF00000000009CCE
      FF009CCEFF0063CECE0000000000000000000000000000FFFF00FFFFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      FF00000080000000000000000000000000000000FF0000008000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000808080008080800080808000808080008080
      8000808080008080800000FFFF0000000000009C9C00CEFFFF00000000009CFF
      FF00000000009CFFFF00000000009CFFFF009CFFFF009CFFFF00000000009CFF
      FF009CFFFF0063CECE00000000000000000000000000FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      FF00000080000000000000000000000000000000FF000000FF000000FF000000
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000808080008080800080808000808080008080
      8000808080008080800000FFFF0000000000009C9C00CEFFFF00000000000000
      00009CFFFF009CFFFF00000000009CFFFF00000000009CFFFF00000000009CFF
      FF009CCEFF0063CECE0000000000000000000000000000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF0000000000FFFFFF000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      FF00000080000000000000000000000000000000FF0000008000000000000000
      FF00000080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000808080008080800080808000808080008080
      8000808080008080800000FFFF0000000000009C9C00CEFFFF00000000009CFF
      FF00000000009CFFFF0000000000000000009CFFFF0000000000000000009CFF
      FF009CFFFF0063CECE00000000000000000000000000FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      FF00000080000000000000000000000000000000FF0000008000000000000000
      FF00000080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000808080008080800080808000808080008080
      8000808080008080800000FFFF0000000000009C9C00CEFFFF00000000009CFF
      FF00000000009CFFFF00000000009CFFFF009CFFFF009CFFFF00000000009CFF
      FF009CFFFF0063CECE0000000000000000000000000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF0000000000FFFFFF000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      FF00000080000000000000000000000000000000FF0000008000000000000000
      FF00000080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000808080008080800080808000808080008080
      8000808080008080800000FFFF0000000000009C9C00CEFFFF009CFFFF009CFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFF
      FF009CCEFF0063CECE000000000000000000000000007F7F7F00000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      FF00000080000000000000000000000000000000FF0000008000000000000000
      FF00000080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000080808000000000000000000000000000009C9C00CEFFFF00CEFFFF00CEFF
      FF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFF
      FF009CFFFF0063CECE0000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF000000000000000000FFFFFF00FFFF
      FF000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF0000008000000000000000FF000000FF000000FF000000FF000000
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000009C9C0063CECE0063CECE0063CE
      CE0063CECE0063CECE0063CECE0063CECE00009C9C00009C9C00009C9C00009C
      9C00009C9C00009C9C0000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000009C9C00F7F7F700CEFF
      FF00CEFFFF009CFFFF009CFFFF00009C9C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000009C9C00009C
      9C00009C9C00009C9C00009C9C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000006B6B6B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000006B8CFF0000639400000000006B6B6B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006B8C
      FF006B8CFF006B8CFF000063940000639400000000006B6B6B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF0000008000000000000000FF000000FF000000FF000000
      800000000000000000000000000000000000000000006B8CFF006B8CFF008CD6
      FF00006394006B8CFF00006394000063940000639400080808006B6B6B000000
      000000000000000000000000000000000000009C9C0063CECE0063CECE0063CE
      CE0063CECE0063CECE0063CECE0063CECE0063CECE0063CECE0063CECE0063CE
      CE0063CECE0063CECE000000000000000000009C9C0063CECE0063CECE0063CE
      CE0063CECE0063CECE0063CECE0063CECE0063CECE0063CECE0063CECE0063CE
      CE0063CECE0063CECE0000000000000000000000000000000000000000000000
      00000000FF00000080000000000000000000000000000000FF00000080000000
      000000000000000000000000000000000000000000006B8CFF00006394000063
      9400006394006B8CFF0000639400006394000063940000639400000000006B6B
      6B0000000000000000000000000000000000009C9C00CEFFFF009CCEFF009CFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF009CCEFF009CFFFF009CCEFF009CCE
      FF009CCEFF0063CECE000000000000000000009C9C00CEFFFF009CCEFF009CFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF009CCEFF009CFFFF009CCEFF009CCE
      FF009CCEFF0063CECE0000000000000000000000000000000000000000000000
      00000000FF00000080000000000000000000000000000000FF00000080000000
      000000000000000000000000000000000000000000006B8CFF00006394000031
      52006B8CFF006B8CFF008CD6FF00000000000063940000639400006394000000
      00006B6B6B00000000000000000000000000009C9C00CEFFFF009CFFFF000000
      0000000000000000000000000000000000000000000000000000000000009CCE
      FF009CCEFF0063CECE000000000000000000009C9C00CEFFFF009CFFFF009CFF
      FF009CFFFF00000000009CFFFF000000000000000000000000009CFFFF009CCE
      FF009CCEFF0063CECE0000000000000000000000000000000000000000000000
      00000000FF00000080000000000000000000000000000000FF00000080000000
      000000000000000000000000000000000000000000006B8CFF006B8CFF006B8C
      FF008CD6FF006B6B6B00ADADAD00000000000000000000639400006394000063
      9400000000006B6B6B000000000000000000009C9C00CEFFFF009CFFFF000000
      0000000000009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF00000000009CFF
      FF009CFFFF0063CECE000000000000000000009C9C00CEFFFF009CFFFF009CFF
      FF009CFFFF00000000009CFFFF00000000009CFFFF00000000009CFFFF009CFF
      FF009CFFFF0063CECE0000000000000000000000000000000000000000000000
      00000000FF000000800000000000000000000000FF000000FF00000080000000
      000000000000000000000000000000000000000000006B8CFF008CD6FF006B6B
      6B00ADADAD00CECECE00E7E7E700000000000000000000000000006394000063
      940000639400000000006B6B6B0000000000009C9C00CEFFFF009CFFFF009CFF
      FF009CFFFF0000000000000000009CFFFF009CFFFF009CFFFF009CFFFF009CFF
      FF009CCEFF0063CECE000000000000000000009C9C00CEFFFF009CFFFF000000
      000000000000000000009CFFFF000000000000000000000000009CFFFF009CFF
      FF009CCEFF0063CECE0000000000000000000000000000000000000000000000
      00000000FF0000008000000000000000FF000000FF000000FF00000080000000
      0000000000000000000000000000000000000000000000315200ADADAD00CECE
      CE00E7E7E700E7E7E700FFFFFF00000000000000000000000000000000000063
      940000639400006394000000000000000000009C9C00CEFFFF009CFFFF009CFF
      FF009CFFFF0000000000000000009CFFFF009CFFFF009CFFFF009CFFFF009CFF
      FF009CFFFF0063CECE000000000000000000009C9C00CEFFFF009CFFFF009CFF
      FF009CFFFF00000000009CFFFF00000000009CFFFF009CFFFF009CFFFF009CFF
      FF009CFFFF0063CECE0000000000000000000000000000000000000000000000
      00000000FF00000080000000FF000000FF00000080000000FF00000080000000
      0000000000000000000000000000000000000000000000000000FFFFFF00E7E7
      E700FFFFFF0039393900F7F7F700FFFFFF000000000000000000000000000000
      000000639400006394000000000000000000009C9C00CEFFFF009CFFFF000000
      0000000000009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF00000000009CFF
      FF009CFFFF0063CECE000000000000000000009C9C00CEFFFF009CFFFF009CFF
      FF009CFFFF00000000009CFFFF000000000000000000000000009CFFFF009CFF
      FF009CFFFF0063CECE0000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF0000008000000000000000FF00000080000000
      0000000000000000000000000000000000000000000000000000FFFFFF003939
      3900E7E7E700FFFFFF0039393900E7E7E700E7E7E70000000000000000000000
      000000000000006394000000000000000000009C9C00CEFFFF009CFFFF000000
      0000000000000000000000000000000000000000000000000000000000009CFF
      FF009CCEFF0063CECE000000000000000000009C9C00CEFFFF009CFFFF009CFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFF
      FF009CCEFF0063CECE0000000000000000000000000000000000000000000000
      00000000FF000000FF000000800000000000000000000000FF00000080000000
      00000000FF00000080000000000000000000000000000000000000000000FFFF
      FF0039393900E7E7E700F7F7F70039393900E7E7E700E7E7E700000000000000
      000000000000003152000000000000000000009C9C00CEFFFF00CEFFFF00CEFF
      FF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFF
      FF009CFFFF0063CECE000000000000000000009C9C00CEFFFF00CEFFFF00CEFF
      FF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFF
      FF009CFFFF0063CECE0000000000000000000000000000000000000000000000
      00000000FF00000080000000000000000000000000000000FF00000080000000
      00000000FF000000800000000000000000000000000000000000000000000000
      0000E7E7E70039393900E7E7E700E7E7E70039393900E7E7E700E7E7E7000000
      000000000000000000000000000000000000009C9C0063CECE0063CECE0063CE
      CE0063CECE0063CECE0063CECE0063CECE00009C9C00009C9C00009C9C00009C
      9C00009C9C00009C9C000000000000000000009C9C0063CECE0063CECE0063CE
      CE0063CECE0063CECE0063CECE0063CECE00009C9C00009C9C00009C9C00009C
      9C00009C9C00009C9C0000000000000000000000000000000000000000000000
      FF000000FF00000080000000000000000000000000000000FF00000080000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E7E7E70039393900E7E7E700F7F7F70039393900CECECE00E7E7
      E7000000000000000000000000000000000000000000009C9C00F7F7F700CEFF
      FF00CEFFFF009CFFFF009CFFFF00009C9C000000000000000000000000000000
      00000000000000000000000000000000000000000000009C9C00F7F7F700CEFF
      FF00CEFFFF009CFFFF009CFFFF00009C9C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF00000080000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E7E7E70039393900E7E7E700E7E7E700393939000000
      0000000000000000000000000000000000000000000000000000009C9C00009C
      9C00009C9C00009C9C00009C9C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000009C9C00009C
      9C00009C9C00009C9C00009C9C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF00000080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E7E7E7003939390000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF004242
      4200000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000042424200009C
      9C00009C9C00009C9C00009C9C00009C9C00009C9C00009C9C00009C9C00009C
      9C00009C9C00009C9C0000313100000000000000000000000000000000000000
      0000000000000000000000000000848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00B5B5B5000000
      0000424242000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F7F7F700A5A5A5000000
      00009CCEFF009CFFFF009CCEFF009CCEFF009CFFFF009CCEFF009CCEFF009CCE
      FF009CCEFF009CCEFF0000313100000000000000000000000000000000000000
      0000FF000000FF000000FF000000000000008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00B5B5B500B5B5
      B500000000004242420000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F7F700B5B5B500B5B5B500A5A5
      A500000000009CCEFF009CFFFF009CCEFF009CFFFF009CCEFF00000000009CCE
      FF009CCEFF009CCEFF0000313100000000000000000000000000000000000000
      0000FF000000FF000000FF000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00B5B5
      B500B5B5B5000000000042424200000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F7F7F700B5B5B500B5B5
      B500A5A5A500000000009CCEFF009CFFFF009CCEFF00633100009C6300009CCE
      FF009CCEFF009CCEFF0000313100000000000000000000000000000000000000
      000000000000FF000000FF000000000000000000000000000000000000008484
      840000000000FFFFFF0000008400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00B5B5B500B5B5B50000000000424242000000000000000000000000000000
      000000000000000000000000000000000000009C9C009CFFFF00F7F7F700B5B5
      B500B5B5B500A5A5A500000000000000000063310000CE9C00009C6300009CCE
      FF009CFFFF0063CECE0000313100000000000000000000000000000000000000
      00000000000000000000848484000000FF000000000000000000000000000000
      FF00FFFFFF0000008400848484000000000000000000FFFFFF00BDBDBD00BDBD
      BD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBDBD00FFFFFF00FFFFFF00FFFF
      FF00BDBDBD00BDBDBD00FFFFFF00000000000000000000000000000000000000
      0000FFFFFF00B5B5B500B5B5B500000000004242420000000000000000000000
      000000000000000000000000000000000000009C9C009CFFFF009CFFFF00F7F7
      F700B5B5B500B5B5B500A5A5A50000000000CE9C0000CE9C00009C6300009CCE
      FF009CFFFF00009C9C0000313100000000000000000000000000000000000000
      000000000000FF0000000000FF000000000000000000C6C6C600C6C6C600FFFF
      FF000000FF0084848400000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF000000FF00FFFFFF00FFFFFF00FFFFFF00BDBDBD00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF007B7B7B00000000000000000000000000000000000000
      000000000000FFFFFF00B5B5B500B5B5B5000000000042424200000000000000
      00000000000000000000CE9C000000000000F7F7F7009CFFFF009CCEFF009CFF
      FF00F7F7F700B5B5B500B5B5B500A5A5A50000000000CE9C00009C6300009CCE
      FF009CFFFF00C6C6C600C6C6C600000000000000000000000000000000000000
      000000000000FF000000FFFFFF00FFFFFF008484840000000000000000000000
      0000FFFFFF0084848400848484000000000000000000FFFFFF00FFFFFF000000
      FF000000FF000000FF00FFFFFF00FFFFFF00BDBDBD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00B5B5B500B5B5B50000000000424242000000
      000000000000CE9C0000CE9C000000000000F7F7F7009CFFFF009CFFFF009CFF
      FF009CFFFF00F7F7F700B5B5B500B5B5B50073737300CE9C0000000000009CFF
      FF0063CECE00C6C6C600C6C6C600000000000000000000000000000000000000
      0000000000000000000084848400FF0000000000000084848400848484000000
      0000C6C6C60000000000848484000000000000000000FFFFFF00FFFFFF00FFFF
      FF000000FF00FFFFFF00FFFFFF00FFFFFF0000000000BDBDBD00BDBDBD00BDBD
      BD00BDBDBD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00B5B5B500B5B5B500000000004242
      4200CE9C0000CE9C0000CE9C000000000000009C9C00009C9C00009C9C00009C
      9C00F7CEA500CE9C0000F7F7F70073737300CE9C0000CE9C000000000000009C
      9C00C6C6C600C6C6C60031310000000000000000000000000000000000000000
      0000000000000000000084848400FFFFFF00FF000000FF000000848484008484
      84000000000000000000848484000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000BDBDBD00BDBDBD00BDBD
      BD00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00B5B5B500B5B5B5000000
      000042424200CE9C0000CE9C0000000000000000000000848400009C9C00F7CE
      A500FFCE3100FFCE3100FFCE3100FFCE3100FFCE3100F7CEA500D6E7E700D6E7
      E700C6C6C60063CECE0031310000000000000000000000000000000000008484
      84000000000000000000FFFFFF00FF000000FFFFFF00FF000000FF0000008484
      8400000000000000000000000000000000007B7B7B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00B5B5B500B5B5
      B50000000000424242009C63000000000000000000000084840063310000F7CE
      A500F7CEA500F7CEA5006331000063310000633100009C310000F7F7F700C6C6
      C60063CECE000084840000000000000000000000000000000000FF000000FF00
      000084848400000000000000FF00FFFFFF00848484008484840084848400FFFF
      FF000000FF008484840000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF00000000000000FF000000FF000000
      FF00000000000000FF0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000063310000FFCE3100FFFFFF00B5B5
      B50073737300CE9C00009C6300000000000000000000008484009CFFFF0063CE
      CE00009C9C00D6E7E700F7F7F7009C310000F7F7F700F7F7F700C6C6C6000000
      0000000000000000000000000000000000000000000000000000FF000000FF00
      0000000000008484840000000000000084000000000000000000000000000000
      FF00848484000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000063310000FFCE3100FFCE3100CE9C0000B5B5
      B500CE9C0000FFCE310000000000000000000000000000000000008484000084
      84000084840000848400F7F7F700F7F7F700F7F7F700C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000FF000000FF00
      0000848484008484840084848400FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF0000000000000000000000
      00000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000063310000FFCE3100FFCE3100FFCE3100FFCE3100F7CE
      A500F7CEA5006331000000000000000000000000000000000000000000000000
      0000000000000000000000000000F7F7F700C6C6C60000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      0000FF000000FF000000FF000000FF000000FF00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000633100006331000063310000633100000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6C6C60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6C6C60000848400008484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6C6C60000848400008484000084
      8400008484000000000000000000000000000084840063CECE0063CECE0063CE
      CE0063CECE0063CECE0063CECE0063CECE0063CECE0063CECE0063CECE0063CE
      CE0063CECE0063CECE000000000000000000009C9C0063CECE0063CECE0063CE
      CE0063CECE0063CECE0063CECE0063CECE0063CECE0063CECE0063CECE0063CE
      CE0063CECE0063CECE000000000000000000000000000000000084848400FFFF
      FF00FFFFFF00C6C6C60000008400C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000084848400C6C6C60000848400008484000084
      84000084840000848400008484000000000000848400CEFFFF009CCEFF00FF31
      63006331000063310000633100009CFFFF006331000063310000633100006331
      00009CCEFF0063CECE000000000000000000009C9C00CEFFFF009CCEFF009CFF
      FF009CCEFF009CFFFF009CCEFF009CFFFF009CCEFF009CFFFF009CCEFF009CCE
      FF009CCEFF0063CECE000000000000000000000000000000000084848400FFFF
      FF00C6C6C600000084000000840000008400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000084848400C6C6C60000848400008484000084
      84000084840000848400008484000000000000848400CEFFFF009CFFFF009CFF
      FF00FF3163009C3131009CCEFF009CFFFF009CCEFF009C313100633100009CFF
      FF009CCEFF0063CECE000000000000000000009C9C00CEFFFF009CFFFF009CFF
      FF009CFFFF009CCEFF00FF0000009CCEFF00FF0000009CCEFF009CFFFF009CCE
      FF009CCEFF0063CECE000000000000000000000000000000000084848400FFFF
      FF0000008400000084008484840000008400C6C6C600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000084848400C6C6C60000848400008484000084
      84000084840000848400008484000000000000848400CEFFFF009CFFFF009CFF
      FF009CFFFF00FF3163009C3131009C3131009C3131009C313100633100009CCE
      FF009CCEFF0063CECE000000000000000000009C9C00CEFFFF009CFFFF009CFF
      FF009CFFFF009CFFFF009CFFFF00840000009CCEFF009CFFFF009CCEFF009CFF
      FF009CCEFF0063CECE000000000000000000000000000000000084848400FFFF
      FF0000008400FFFFFF00FFFFFF00C6C6C60000008400C6C6C600FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000FFFF00000000
      000000000000000000000000000000000000C6C6C60000000000000000000084
      84000084840000848400008484000000000000848400CEFFFF009CFFFF009CFF
      FF009CFFFF009CFFFF00FF316300633100009CFFFF009C313100633100009CFF
      FF009CFFFF0063CECE000000000000000000009C9C00CEFFFF009CFFFF009CFF
      FF009CFFFF00FF000000FF000000FF000000FF000000FF0000009CFFFF009CCE
      FF009CFFFF0063CECE000000000000000000000000000000000084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000008400C6C6C600FFFF
      FF00FFFFFF0000000000000000000000000000000000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000C6C6C60000848400008484000084
      84000084840000848400008484000000000000848400CEFFFF009CFFFF009CFF
      FF009CFFFF009CFFFF009CFFFF00FF316300633100009C313100633100009CCE
      FF009CCEFF0063CECE000000000000000000009C9C00CEFFFF009CFFFF009CFF
      FF009CFFFF009CFFFF009CFFFF00840000009CFFFF009CFFFF009CCEFF009CFF
      FF009CCEFF0063CECE000000000000000000000000000000000084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000008400C6C6
      C600FFFFFF00000000000000000000000000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000C6C6C60000848400008484000084
      84000084840000848400008484000000000000848400CEFFFF009CFFFF009CFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF00FF3163009C313100633100009CFF
      FF009CFFFF0063CECE000000000000000000009C9C00CEFFFF009CFFFF009CFF
      FF009CFFFF009CFFFF00FF0000009CFFFF00FF0000009CCEFF009CFFFF009CCE
      FF009CFFFF0063CECE000000000000000000000000000000000084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      8400FFFFFF0000000000000000000000000000000000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000C6C6C60000848400008484000084
      84000084840000848400008484000000000000848400CEFFFF009CFFFF009CFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF00FF316300633100009CFF
      FF009CCEFF0063CECE000000000000000000009C9C00CEFFFF009CFFFF009CFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFF
      FF009CCEFF0063CECE000000000000000000000000000000000084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000FFFF00000000
      000000000000000000000000000084848400C6C6C60000848400008484000084
      84000084840000848400008484000000000000848400CEFFFF00CEFFFF00CEFF
      FF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFF
      FF009CFFFF0063CECE000000000000000000009C9C00CEFFFF00CEFFFF00CEFF
      FF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFF
      FF009CFFFF0063CECE000000000000000000000000000000000084848400FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484008484840000000000C6C6C6000084
      8400008484000084840000848400000000000084840063CECE0063CECE0063CE
      CE0063CECE0063CECE0063CECE0063CECE000084840000848400008484000084
      840000848400008484000000000000000000009C9C0063CECE0063CECE0063CE
      CE0063CECE0063CECE0063CECE0063CECE00009C9C00009C9C00009C9C00009C
      9C00009C9C00009C9C0000000000000000000000000000000000000000008484
      8400848484008484840084848400848484008484840084848400000000008484
      8400848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484008484840084848400848484000000
      0000C6C6C6000084840000848400000000000000000000848400F7F7F700CEFF
      FF00CEFFFF009CFFFF009CFFFF00008484000000000000000000000000000000
      00000000000000000000000000000000000000000000009C9C00F7F7F700CEFF
      FF00CEFFFF009CFFFF009CFFFF00009C9C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF0084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484008484840084848400848484008484
      84008484840000000000C6C6C600000000000000000000000000008484000084
      8400008484000084840000848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000009C9C00009C
      9C00009C9C00009C9C00009C9C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C6008484840084848400848484008484840084848400C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C6000000000000000000000000000000
      0000000000000000000063633100525252005252520052525200525252005252
      5200525252006363310073737300000000007373730084848400848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484005252520000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400C6C6C600FFFFFF000000000000000000C6C6C600C6C6C600C6C6C600C6C6
      C600848400008400000084000000840000008400000084000000840000008484
      000084848400C6C6C600C6C6C600C6C6C6000000000000000000000000000000
      0000101010000000000052525200525252004242420010101000633131000000
      00000000000000000000000000000000000084848400FFFFFF00C6C6C600B5B5
      B500B5B5B500C6C6C600C6C6C600B5B5B500B5B5B500B5B5B500B5B5B500B5B5
      B500C6C6C6008484840052525200000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084848400C6C6
      C600FFFFFF00FFFFFF00FFFFFF0000000000C6C6C600C6C6C600C6C6C6008400
      000084000000FFFF0000FF000000FF00000084000000FF000000FFFF00008400
      00008400000084848400C6C6C600C6C6C60000000000000000009C9C9C000000
      0000000000000000000000000000000000000000000052525200636331000000
      00000000000000000000000000000000000084848400FFFFFF00C6C6C60000FF
      000031630000C6C6C600C6C6C600000000000000000000000000000000000000
      0000C6C6C600848484005252520000000000C6C6C60084848400848484008484
      840084848400FFFFFF00FFFFFF00C6C6C600C6C6C600FFFFFF00C6C6C600FFFF
      FF00FFFFFF00000000000000000000000000C6C6C600C6C6C600840000008484
      0000FF00000084848400C6C6C600C6C6C60084000000C6C6C600C6C6C600FF00
      0000848400008400000084848400C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000636331006363
      31001010100000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00848484005252520000000000FFFFFF0000000000848484008484
      8400FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6C600FFFFFF00C6C6C600FFFF
      FF00C6C6C600000000000000000000000000C6C6C6008400000084000000FF00
      000084848400C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600FF0000008400000084000000C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006363
      3100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840052525200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00C6C6
      C600C6C6C600C6C6C600C6C6C600000000008484840084000000FF0000008484
      8400C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600FF00000084000000848484000000000000000000000000000000
      000000000000639CCE00639CCE00424242000000000000000000000000000000
      0000000000000000000000000000000000000000000073737300848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      84007373730000000000525252000000000000000000C6C6C6000000000000FF
      FF0000FFFF0000FFFF0000FFFF00008484000084840000000000C6C6C600FFFF
      FF00FFFFFF00FFFFFF0000000000000000008484000084840000FF0000008484
      8400C6C6C600C6C6C600C6C6C600C6C6C60084000000C6C6C600C6C6C600C6C6
      C600C6C6C600FF00000084840000848400004242420000000000000000000000
      0000CEFFFF000000000042424200CEFFFF00CEFFFF0000000000000000000000
      0000000000000000000000000000000000000000000084848400C6C6C600B5B5
      B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5
      B500B5B5B500525252000000000000000000000000000000000000FFFF000000
      0000FFFFFF0000000000008484000084840000848400FFFFFF00848484000000
      00000000000000000000000000000000000084000000FFFF0000848484008484
      8400C6C6C600C6C6C600C6C6C600C6C6C60084000000C6C6C600C6C6C600C6C6
      C600C6C6C60084848400FFFF000084000000633131000000000000000000639C
      CE00737373009CCEFF00639CCE00639CCE00CEFFFF00639CCE00000000000000
      0000000000000000000000000000000000000000000084848400D6E7E700B5B5
      B5009C0031009C0031009C0031009C0031009C0031009C0031009C003100C6C6
      C600B5B5B500525252000000000000000000000000000000000000FFFF000000
      00008484840000000000000000000084840000FFFF0000FFFF00000000000000
      00000000000000000000000000000000000084000000FFFF0000FFFFFF008484
      8400C6C6C600C6C6C600C6C6C600C6C6C6008400000084848400C6C6C600C6C6
      C600C6C6C600FFFFFF00FFFF00008400000042424200000000000000000000FF
      FF009CCEFF006363310052525200F7FFFF00FFFFFF00CEFFFF00000000000000
      0000000000000000000000000000000000000000000084848400D6E7E700B5B5
      B50084000000FF000000CE313100FF000000CE313100CE3131009C003100C6C6
      C600B5B5B500525252000000000000000000FFFFFF00FFFFFF0000FFFF0000FF
      FF0000000000C6C6C6000000000000FFFF0000FFFF0000FFFF00FFFFFF000000
      00000000000000000000000000000000000084000000FFFF0000848484008484
      8400C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6008400000084848400C6C6
      C600C6C6C600C6C6C600FFFF0000840000000000000000000000000000009CCE
      FF00CEFFFF009C639C006331310000000000FFFFFF009CCEFF00000000000000
      0000000000000000000000000000000000000000000084848400D6E7E700B5B5
      B50084000000FF9C6300FF000000CE313100FF000000CE3131009C003100C6C6
      C600B5B5B500525252000000000000000000000000000000000000FFFF0000FF
      FF0000FFFF00000000000000000000FFFF0000FFFF0000000000C6C6C600FFFF
      FF00000000000000000000000000000000008484000084840000840000008484
      8400C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600840000008484
      8400C6C6C6008400000084840000848400000000000000000000633131002121
      2100CEFFFF00CEFFFF005252520000000000CEFFFF009C9C9C00000000000000
      0000000000000000000000000000000000000000000084848400D6E7E700B5B5
      B50084000000FFFF0000FF9C6300FF000000CE313100FF0000009C003100C6C6
      C600B5B5B50052525200000000000000000000000000FFFFFF00FFFFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00FFFFFF00000000000000
      000000000000000000000000000000000000C6C6C60084000000840000008484
      840084848400C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6008400
      00008484840084000000840000008484840000000000C6C6C60063313100FF9C
      9C009C9C9C0000FFFF00639CCE00639CCE009CCEFF0000000000000000000000
      0000101010000000000000000000000000000000000084848400D6E7E700B5B5
      B5008400000084000000840000008400000084000000840000009C003100C6C6
      C600B5B5B500525252000000000000000000000000000000000084848400FFFF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000000000FFFFFF00FFFFFF000000
      000000000000000000000000000000000000C6C6C60084000000840000008400
      00008484840084848400C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6008484
      8400840000008400000084000000C6C6C60000000000000000009C9C9C00CECE
      CE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400FFFFFF00D6E7
      E700D6E7E700D6E7E700D6E7E700D6E7E700D6E7E700D6E7E700D6E7E700D6E7
      E700B5B5B500525252000000000000000000000000000000000000000000FFFF
      FF008484840000FFFF000000000000000000FFFFFF0000000000000000000000
      000000000000000000000000000000000000C6C6C600C6C6C600840000008484
      0000840000008484840084848400848484008400000084848400848484008400
      00008484000084000000C6C6C600C6C6C6000000000000000000000000000000
      000010101000FFFFFF00CE636300633131000000000000000000737373000000
      000000000000000000000000000000000000000000000000000084848400C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C6008484840000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00000000000000000000000000FFFFFF00000000000000
      000000000000000000000000000000000000C6C6C600C6C6C600C6C6C6008400
      000084000000FFFF000084000000840000008400000084000000FFFF00008400
      000084000000C6C6C600C6C6C600C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6C6C600C6C6C600C6C6C600C6C6
      C600848400008400000084000000840000008400000084000000840000008484
      0000C6C6C600C6C6C600C6C6C600C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000DEDE0000DEDE0000BDBD00009494000073
      7300005252000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF00000000000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000DEDE0000DEDE0000BDBD00009494000073
      7300005252000000000000000000000000000000000000000000000000000000
      000000000000FF000000FF00000000000000FFFFFF0000000000FF0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B7B7B00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000021FFAD0000FFAD0000FFAD0000DE
      940000BD7B0000BD7B000094630000BD7B000094630000734A0000734A000052
      3100005252008484840000000000000000000000000000000000000000000000
      0000FF0000000000000000000000FFFFFF0000000000FFFFFF0000000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B7B7B00BDBDBD000000000000000000BDBDBD00BDBDBD00BDBD
      BD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004AFFBD0021FFAD00C6C6C6001818
      1800F7F7F7008484840000BD7B0000BD7B00F7F7F7004A4A4A00FFFFFF00CECE
      CE0000523100005252000000000000000000000000000000000000000000FF00
      00000000000000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF000000
      0000FF0000000000000000000000000000000000000000000000000000000000
      0000000000007B7B7B00BDBDBD000000000000000000BDBDBD00BDBDBD00BDBD
      BD00000000000000000000000000000000000000000000000000C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004AFFBD004AFFBD0021FFAD0000FF
      AD0000FFAD0000DE940000BD7B0000DE9400636363004A4A4A006B6B6B004A4A
      4A000052310000523100000000000000000000000000FF000000FF0000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF0000000000FF00000000000000000000000000000000000000000000000000
      0000000000007B7B7B00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00000000000000000000000000000000000000000000000000C6C6C600C6C6
      C60000000000C6C6C600C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000006BFFC6004AFFBD00C6C6C6001818
      1800F7F7F7008484840000DE940000FFAD0000DE940000BD7B00009463000094
      630000734A0000523100000000007B7B7B00FF0000000000000000000000FFFF
      FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF0000000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000008CFFD6006BFFC6004AFFBD004AFF
      BD0021FFAD0000FFAD0000FFAD0000FFAD00F7F7F7004A4A4A00FFFFFF00CECE
      CE000094630000734A0084848400949494000000000000000000FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF0000000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C60000000000C6C6C60000000000000000000000
      0000000000000000000000000000000000008CFFD6008CFFD600C6C6C6001818
      1800F7F7F7008484840000FFAD00C6C6C600DEDE0000BDBD0000949400007373
      0000525200007B7B7B0084848400ADADAD0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF0000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000000000000000000000000000000000000000000000000000C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000000000C6C6C600000000000000
      000000000000000000000000000000000000B5FFE7008CFFD6008CFFD6006BFF
      C6004AFFBD004AFFBD0021FFAD00CECECE00FFFF00006BFFFF004AFFFF0000DE
      DE00737300008484840084848400C6C6C6000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60000000000C6C6C6000000
      000000000000000000000000000000000000D6FFF700B5FFE700C6C6C6001818
      1800F7F7F700848484004AFFBD00DEDEDE00FFFF4A00B5FFFF006BFFFF004AFF
      FF00949400009494940084848400DEDEDE00000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFF
      FF0000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D6FFF700D6FFF700B5FFE7008CFF
      D6008CFFD6006BFFC6004AFFBD00F7F7F700FFFF8C00F7F7F700CECECE00C6C6
      C600BDBD00009C9C9C0084848400F7F7F7000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00D6FFF700D6FFF700B5FF
      E7008CFFD6008CFFD6006BFFC600FFFFFF00F7F7F700DEDEDE00CECECE00C6C6
      C600C6C6C600B5B5B50063636300000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000007B7B7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6C6C6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000021FF2100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C6C6C60000FF000000FF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000008400000084000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000008400000084000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000396B
      21004A7B31005A9442006BA552000000000000FF000021FF290039FF420052F7
      5A006BEF7B007BE7940000000000000000000000000000000000000000000000
      000000000000C6C6C60000FF000000FF000000FF000000FF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000840000008400000084000000840000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000840000008400000084000000840000000000000000
      00000000000000000000000000000000000000000000000000009CDEAD00315A
      18004273290052843900639C4A0000FF000010FF100029FF290042F74A0052F7
      63006BEF7B0084E79C009CDEB500000000000000000000000000000000000000
      000000000000C6C6C60000FF000000FF000000FF000000FF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000840000008400000084000000840000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000840000008400000084000000840000000000000000
      0000000000000000000000000000000000000000000084E79C0084E794002952
      1000396321004A7B31005A8C42000000000018FF180029FF310042F74A005AEF
      6B0073EF84008CE79C00A5DEBD00000000000000000000000000848484008484
      8400000000000000000000FF000000FF000000FF0000C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000848484008484
      8400000000000000000000840000008400000084000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484008484
      8400000000000000000000840000008400000084000000000000000000000000
      0000000000000000000000000000000000000000000073EF84006BEF7B000000
      0000000000000000000000000000000000000000000031FF3900000000000000
      00002142000021420000294A0000294A00000000000000000000000000000000
      0000000000000000000000000000C6C6C600C6C6C60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C6C6C600C6C6C60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005AEF6B005AF7630052F7630052F7
      6300000000004AF75A0000000000000000000000000000000000000000000000
      000000000000315A180039631800396321000000000000000000000000000000
      0000000000000000000000848400008484000084840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF0000FFFF00C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000848400008484000084840000000000000000000000
      0000000000000000000000000000000000004AF7520042F74A0042F74A0039FF
      420039FF420039FF420000000000000000000000000000000000000000000000
      0000427329004A7331004A7B31004A7B31000000000000000000000000000000
      0000000000000000000000848400008484000084840000848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C60000FFFF0000FFFF0000FFFF0000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000848400008484000084840000848400000000000000
      0000000000000000000000000000000000000000000029FF310029FF310029FF
      290021FF29000000000000000000000000000000000000000000000000000000
      00005A8C42005A8C42005A944200000000000000000000000000000000000000
      0000000000000000000000848400008484000084840000848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C60000FFFF0000FFFF0000FFFF0000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000848400008484000084840000848400000000000000
      00000000000000000000000000000000000018FF180018FF180010FF180010FF
      100010FF10000000000000000000000000000000000000000000000000000000
      00006BA552006BAD52006BAD5A00000000000000000000000000000000000000
      0000000000000000000000000000008484000084840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C6C6C60000FFFF0000FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000008484000084840000000000000000000000
      00000000000000000000000000000000000000FF000000FF000000FF000000FF
      0000000000000000000000000000000000000000000000000000000000005A94
      42000000000073B5630000000000000000000000000000000000000000000000
      0000000000000000000000000000000084000000840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000084000000840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C6C6C6000000FF000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FF000010FF1000000000000000000000000000000000004A7329005A8C
      42006BA552000000000000000000000000000000000000000000000000000000
      0000000000000000000000008400000084000000840000008400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000008400000084000000840000008400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C6000000FF000000FF000000FF000000FF00000000000000
      00000000000000000000000000000000000000000000000000000000000018FF
      210021FF290031FF390039FF42000000000000000000315A1000426B29005284
      3900639C4A0073B55A0000000000000000000000000000000000000000000000
      0000000000000000000000008400000084000000840000008400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000008400000084000000840000008400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C6000000FF000000FF000000FF000000FF00000000000000
      00000000000000000000000000000000000000000000000000000000000039FF
      420042F7520052F75A005AF76300000000002142000029521000396B21004A7B
      3100000000006BAD5A0000000000000000000000000000000000848484008484
      8400000000000000000000008400000084000000840000000000000000000000
      0000000000000000000000000000000000000000000000000000848484008484
      8400000000000000000000008400000084000000840000000000000000000000
      0000000000000000000000000000000000000000000000000000848484008484
      840000000000000000000000FF000000FF000000FF00C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000063EF73006BEF7B007BE78C0084E7940021420000294A0000396318000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C6C6C600C6C6C60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084E794008CE7A5009CDEAD00A5DEBD00A5DEBD0021420000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100100000100010000000000800800000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFF8000C001FFFFFFFF8000C000FFFF
      80018000D000800100018000E000000100010000F001000100010000F0010001
      00010000000100010001080000010001000100000001000100010000002F0001
      00010000000F000100010000001F000100030000001F000380FF0000001F80FF
      C1FF0000001FC1FFFFFF0000001FFFFF80008000FFFF800000000000FFFF4000
      400000007FFF000000000000FFFF000000000000E377000020000000DD770000
      00000000BF77000000000000BF6F000000000000BF0F000000000000BF770000
      00000000DD57000000000000A30F000000000000FFFF000000000000FFFF0000
      00000000FFFF000200000001FFFF0001FFFFFE7FFFFFFF00FFC7FC3FFFFF1F00
      900FF81FFFFF1F00800FF00F81FF8F00C00FE007FFDF8F07E00FC003879FC707
      E00F8001879FC007E00FF81FFF07E000E00FF81F879BE000E00FF81FFFDBF107
      C00FF81FFFDBF107C007F81F81FBF8008073F81FFFFBF800BFF3F81FFC07FC1F
      FFFFF81FFFFFFF1FFFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFEFFFC007FBCFC001
      83FFC007F33F803181FFC007F1FF8031803FC006F0FF8031800FC005F07F8001
      8007C003F03F80018001C007F03F80018007C007F03F8FF1800FC003F81F8FF1
      803FC00FF81F8FF1807FC007FC0F8FF183FFC007FC0F8FF18FFFC007FC0F8FF5
      9FFFFFFFFC3F8001FFFFFFFFFFFFFFFFE001E1C3FFFF8000C001EC9BFFFF8000
      8001EEBB8001C0008001E6B30001E0008001F0870001F0008001F80F0001F800
      8001FE3F0001FC008001FC1F0001FC008001FC0F0001FE008003F80F0001FF80
      8003F087000183C08003F1C7000183808003F1C7000383E08003F3E780FF83E0
      C007F7F7C1FF83E0E00FFFFFFFFFFF86FFFFF007F81FF8010FC000000000F801
      9FE100000000F801DFE300000000F801CFE3000000008001EFC7000000008001
      E007000000008001F78F000000008001F38F000000008001FB1F000000008001
      F91F000000008003FC3F000000008007FC3F00000000801FFE7F00000000801F
      FE7F87C0007F803FFFFFFFFFFFFF807FFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFF3
      800180018001C003000100010001C003000100010001C003000100010001C003
      000100010001CE73000100010001FE7F000100010001F00F000100010001F00F
      000100010001F00F000100010001F00F000300030003F00F80FF80FF80FFF00F
      C1FFC1FFC1FFF00FFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFF01FFFFFFFFFFFFFF
      03FF800180018001007F000100010001001F000100010001001F000100010001
      600F000100010001700F000100010001F00E000100010001F006000100010001
      F800000100010001FC00000100010001FF00000300030003FFC080FF80FF80FF
      FF80C1FFC1FFC1FFFF00FFFFFFFFFFFF8003F80FFC1FFC1F8003F007F007F007
      8003E003E003E0038003C001C001C00180038000C001C00180038000C001C001
      80038000C001C001800380004001C00180038000A003E00380038000C3C7F1C7
      800380000047F1C78003C001C1C7F1C78003E003A1C7F0078017F0076007F80F
      800FF80FE80FFC1F801FFFFFEC1FFFFFFFFFFFFFFFFFFFFFFFFFFC0FFFFF801F
      FFFFE1FF80010000C21FCFFF00010000E73F9FFF00010000E73F9FF700010000
      E73FDC0100010000E70FC80100010000E727E00100010000E727F80100018000
      E727FC0100018000E727FFF70001FC00C20FFFFF0003FC01FFFFFFFF80FFFC03
      FFFFFFFFC1FFFC07FFFFFFFFFFFFFFFFFCFFFFFFFFFFFFFFF07FFFFFFFFFFFFF
      C03F80018001E10F001F00010001F39F000F00010001F39F000700010001F39F
      000300010001F31F000100010001F21F000100010001F01F800100010001F09F
      C00100010001F193E00100010001F393F00300030003E39FF80780FF80FFFF9F
      FC1FC1FFC1FFFF87FE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFFFC001F8FFFFFF
      87FF8001F07FCFF383FF0001F0FD87E1C1FF8001F1090000E0FF0001FC010000
      F07D0001F1830000F8380001F0710001FC100001F8110003FE000001F8090007
      FF008001E80B000FFF818003C403FE8BFF01801F8207FFDFFE01C03F801FFF77
      FC03FE7FC03FFFDFFE1FFFFFF0FFFFFFFFFFFFFFFFFFFFFFE007FF3FFFFFFFFF
      C003FF0F80018001C003FF0300010001C003FC0000010001C003EC0000010001
      C003CC0000010001C003800000010001C003000000010001C003000000010001
      C003800000010001C003CC0000010001C003EC0000030003E007FC00807F80FF
      FC3FFC00C0FFC1FFFFFFFC00FFFFFFFF8003FFF30000FC010001FFE10000F01F
      000080000000C00F000000030000C00700000003000080078000000000008003
      80018001000000038001801F000000038001001F000000038001000F00008003
      80018007000080078001800F000080078001800F0000C00F8001C01F0000F01F
      C001E03F0000FFFFE003FCFF0000FFFFFFFFFFFFFFFFFFFFFE07FE3F8003FFFF
      FE07F81F0001FFFF0003F40F0001DFFF0003E0070001CFFF00038003000180FF
      000240010001807F000000000001803F000000000001C01F000080010001E01F
      0000C0030001F01F0000E00F0001FE010001F07F0001FE00FFFFF8FF0001FE00
      FFFFFFFF0001FFE7FFFFFFFF8003FFF3FC7FFC7FFC7FFFFFF83FF83FF83FFFBF
      F00FF00FF00FE103C007C007C007C001C003C003C00381018003800380039FB0
      F01FF01FF01F0BF8E007E007E00703F0C003C003C00387F180038003800307F1
      C003C003C0030FEBF00FF00FF00FF3C7C007C007C007E183C003C003C003E10B
      800380038003F01FF81FF81FF81FF03F00000000000000000000000000000000
      000000000000}
  end
  object UDPSocket: TfndUDPClientSocket
    LocalHost = '192.168.0.147'
    LocalPort = '5555'
    Host = '192.168.0.104'
    Port = '5555'
    OnError = UDPSocketError
    OnSendFailed = UDPSocketSendFailed
    OnDataAvailable = UDPSocketDataAvailable
    Left = 88
    Top = 88
  end
  object PopupMenu1: TPopupMenu
    OwnerDraw = True
    Left = 665
    Top = 313
    object N21: TMenuItem
      Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1089#1087#1080#1089#1086#1082' '#1072#1074#1090#1086#1087#1086#1089#1099#1083#1082#1080'...'
      ShortCut = 16460
      OnClick = N21Click
    end
    object N23: TMenuItem
      Caption = #1048#1084#1087#1086#1088#1090#1080#1088#1086#1074#1072#1090#1100' '#1089#1087#1080#1089#1086#1082' '#1072#1074#1090#1086#1087#1086#1089#1099#1083#1082#1080' '#1080#1079' '#1090#1077#1082#1089#1090#1086#1074#1086#1075#1086' '#1092#1072#1081#1083#1072
      OnClick = N23Click
    end
    object N20: TMenuItem
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1089#1087#1080#1089#1086#1082' '#1072#1074#1090#1086#1087#1086#1089#1099#1083#1082#1080'...'
      ShortCut = 16467
      OnClick = N20Click
    end
    object N19: TMenuItem
      Caption = '-'
    end
    object EditString: TMenuItem
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1089#1090#1088#1086#1082#1091
      OnClick = EditStringClick
    end
    object EditComment: TMenuItem
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1082#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081
      OnClick = EditCommentClick
    end
    object N18: TMenuItem
      Caption = '-'
    end
    object N11: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1090#1077#1082#1091#1097#1091#1102' '#1089#1090#1088#1086#1082#1091
      ShortCut = 16430
      OnClick = N11Click
    end
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '*.txt'
    Filter = 
      #1058#1077#1082#1089#1090#1086#1074#1099#1081' '#1092#1072#1081#1083'|*.TXT|'#1057#1087#1080#1089#1086#1082' '#1072#1074#1090#1086#1087#1086#1089#1099#1083#1082#1080'|*.ASL|'#1042#1093#1086#1076#1085#1086#1081' '#1073#1091#1092#1077#1088'|*.in' +
      '|'#1042#1099#1093#1086#1076#1085#1086#1081' '#1073#1091#1092#1077#1088'|*.out'
    Left = 385
    Top = 321
  end
  object SendTimer: TTimer
    Enabled = False
    OnTimer = SendTimerTimer
    Left = 556
    Top = 65534
  end
  object FindDialog1: TFindDialog
    OnFind = DoFindText
    Left = 534
    Top = 303
  end
  object nrBT1: TnrBT
    RadioIndex = 0
    DeviceEnum = [bteRemembered, bteConnected, bteAllRadios]
    DeviceEnumTimeout = 5
    TerminalUsage = tuBoth
    TerminalEcho = False
    Priority = tpNormal
    UseMainThread = False
    OnConnect = nrBT1Connect
    OnDisconnect = nrBT1Disconnect
    DeviceIndex = -1
    OnFatalError = nrBT1FatalError
    Active = False
    OnAfterReceive = nrBT1AfterReceive
    DataProcessor = nrDataProcessor1
    Left = 152
    Top = 96
  end
  object nrDataProcessor1: TnrDataProcessor
    Active = True
    DataPackets = <>
    Timeout = 1000
    Left = 590
    Top = 247
  end
  object PopupMenu2: TPopupMenu
    Images = ImageList1
    OwnerDraw = True
    Left = 630
    Top = 311
    object N41: TMenuItem
      Action = aCut
    end
    object N40: TMenuItem
      Action = aCopy
    end
    object N42: TMenuItem
      Action = aPaste
      Enabled = False
    end
    object N9: TMenuItem
      Caption = #1042#1099#1076#1077#1083#1103#1090#1100
      object mnuSelectNormal: TMenuItem
        AutoCheck = True
        Caption = #1054#1073#1099#1095#1085#1086
        Checked = True
        GroupIndex = 1
        RadioItem = True
        OnClick = mnuSelectLineClick
      end
      object mnuSelectColumn: TMenuItem
        AutoCheck = True
        Caption = #1057#1090#1086#1083#1073#1094#1099
        GroupIndex = 1
        RadioItem = True
        OnClick = mnuSelectLineClick
      end
      object mnuSelectLine: TMenuItem
        Caption = #1051#1080#1085#1080#1080
        GroupIndex = 1
        RadioItem = True
        OnClick = mnuSelectLineClick
      end
    end
    object N39: TMenuItem
      Caption = '-'
    end
    object N31: TMenuItem
      Action = aNewFile
    end
    object N30: TMenuItem
      Action = aLoadFile
    end
    object History1: TMenuItem
      Action = aSaveToHistory
    end
    object N32: TMenuItem
      Caption = '-'
    end
    object N27: TMenuItem
      Action = aFindText
    end
    object N33: TMenuItem
      Caption = '-'
    end
    object aFonts1: TMenuItem
      Action = aEditOptions
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080'...'
    end
    object cDarkMnu: TMenuItem
      Caption = #1058#1077#1084#1085#1072#1103' '#1090#1077#1084#1072
      OnClick = cDarkMnuClick
    end
  end
  object ReplaceDialog1: TReplaceDialog
    OnFind = DoFindText
    OnReplace = DoReplaceText
    Left = 208
    Top = 92
  end
  object SynEditOptionsDialog1: TSynEditOptionsDialog
    UseExtendedStrings = False
    Left = 886
    Top = 71
  end
  object KSPDDataTimer: THRTimer
    Enabled = False
    Interval = 10.000000000000000000
    OnTimer = KSPDDataTimerTimer
    Priority = tpTimeCritical
    Left = 456
    Top = 87
  end
  object SecondTimer: TTimer
    OnTimer = SecondTimerTimer
    Left = 630
    Top = 65535
  end
  object Tray: TRzTrayIcon
    HideOnMinimize = False
    Hint = 'Term2006 - '#1090#1077#1088#1084#1080#1085#1072#1083' '#13#1058#1041#1053' '#1069#1085#1077#1088#1075#1086#1089#1077#1088#1074#1080#1089' 2006..2014'
    PopupMenu = PopupMenu3
    Icons = ImageList2
    Interval = 200
    OnMinimizeApp = TrayMinimizeApp
    OnRestoreApp = TrayRestoreApp
    OnLButtonDblClick = TrayLButtonDblClick
    Left = 796
    Top = 80
  end
  object ImageList2: TImageList
    BkColor = clBlack
    Height = 32
    Width = 32
    Left = 384
    Top = 408
    Bitmap = {
      494C01010300040034002000200000000000FF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000800000002000000001002000000000000040
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000E089F000E089F000E089F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000E4910000E4910000E4910000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000E089F000E0FEF000E0FEF000E089F000E089F0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000E4910000E7A19000E7A19000E4910000E49100000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000E08
      9F000E0FEF000E0FEF000E0FEF000E0FEF000E089F000E089F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000E49
      10000E7A19000E7A19000E7A19000E7A19000E4910000E491000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EE00
      EE00C500C500C800C800F600F600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EE00
      EE00C500C500C800C800F600F600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000E0F
      EF000E0FEF000E0FEF000E0FEF000E0FEF000E0FEF000E089F00000000000000
      000000000000000000000000000000000000000000000000000000000000EE00
      EE00C500C500C800C800F600F600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000E7A
      19000E7A19000E7A19000E7A19000E7A19000E7A19000E491000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C500
      C5003D003D0046004600DD00DD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C500
      C5003D003D0046004600DD00DD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000E0F
      EF000E0FEF000E0FEF000E0FEF000E0FEF000E0FEF0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C500
      C5003D003D0046004600DD00DD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000E7A
      19000E7A19000E7A19000E7A19000E7A19000E7A190000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CB0C
      CB00382838001D261D0087068700CA00CA00F600F60000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F602
      FD00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CB0C
      CB00382838001D261D0087068700CA00CA00F600F60000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F602
      FD000E0FEF000E0FEF000E0FEF000E0FEF000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CB0C
      CB00382838001D261D0087068700CA00CA00F600F60000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F602
      FD000E7A19000E7A19000E7A19000E7A19000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF29
      FF00BC89BC00618161001E161E004B004B00DE00DE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF29
      FF00BC89BC00618161001E161E004B004B00DE00DE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000E0FEF000E0FEF00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF29
      FF00BC89BC00618161001E161E004B004B00DE00DE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000E7A19000E7A1900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EE00EE00C700C700C532
      C500E7BAE700AACDAA002E622E00251F25008B008B00C500C500E41FE400F934
      F900F934F900E421E400C204C200CA00CA00F600F60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EE00EE00C700C700C532
      C500E7BAE700AACDAA002E622E00251F25008B008B00C500C500E41FE400F934
      F900F934F900E421E400C204C200CA00CA00F600F60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EE00EE00C700C700C532
      C500E7BAE700AACDAA002E622E00251F25008B008B00C500C500E41FE400F934
      F900F934F900E421E400C204C200CA00CA00F600F60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C700C70044004400361E
      3600A69EA600D5DFD500AFBFAF006C6B6C00290029003A003A00A56BA500ECB2
      EC00ECB2EC00A371A300321032004B004B00DF00DF000000000000000000F602
      FD00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C700C70044004400361E
      3600A69EA600D5DFD500AFBFAF006C6B6C00290029003A003A00A56BA500ECB2
      EC00ECB2EC00A371A300321032004B004B00DF00DF000000000000000000F602
      FD00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C700C70044004400361E
      3600A69EA600D5DFD500AFBFAF006C6B6C00290029003A003A00A56BA500ECB2
      EC00ECB2EC00A371A300321032004B004B00DF00DF000000000000000000F602
      FD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C50CC5003C283C00275A
      270094A49400E4E0E400F2EEF200A9ADA9002E422E002742270092AD9200D8F3
      D800D8F3D80094B794002D602D002A272A008B068B00C900C900F600F6000000
      0000000000000000000000000000F602FD000000000000000000F602FD000000
      00000000000000000000000000000000000000000000C50CC5003C283C00275A
      270094A49400E4E0E400F2EEF200A9ADA9002E422E002742270092AD9200D8F3
      D800D8F3D80094B794002D602D002A272A008B068B00C900C900F600F6000000
      0000000000000000000000000000F602FD000000000000000000F602FD000000
      00000000000000000000000000000000000000000000C50CC5003C283C00275A
      270094A49400E4E0E400F2EEF200A9ADA9002E422E002742270092AD9200D8F3
      D800D8F3D80094B794002D602D002A272A008B068B00C900C900F600F6000000
      0000000000000000000000000000F602FD000000000000000000F602FD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E928E900B686B600A3C6
      A300BBC6BB00CDCCCD00D3D2D300BEBFBE00999F9900969F9600B6BFB600CBD4
      CB00C9D2C900C2CDC200BACABA007C837C002716270049004900DE00DE000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E928E900B686B600A3C6
      A300BBC6BB00CDCCCD00D3D2D300BEBFBE00999F9900969F9600B6BFB600CBD4
      CB00C9D2C900C2CDC200BACABA007C837C002716270049004900DE00DE000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E928E900B686B600A3C6
      A300BBC6BB00CDCCCD00D3D2D300BEBFBE00999F9900969F9600B6BFB600CBD4
      CB00C9D2C900C2CDC200BACABA007C837C002716270049004900DE00DE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E928E900B686B600A5C8
      A500C1CCC100CFCECF00C7C6C700CBCBCB00D8D8D800D8D8D800CBCBCB00C5C5
      C500C9C9C900C4C3C400BDBABD007E897E0027522700302C30008D088D00C900
      C900F600F6000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E928E900B686B600A5C8
      A500C1CCC100CFCECF00C7C6C700CBCBCB00D8D8D800D8D8D800CBCBCB00C5C5
      C500C9C9C900C4C3C400BDBABD007E897E0027522700302C30008D088D00C900
      C900F600F6000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E928E900B686B600A5C8
      A500C1CCC100CFCECF00C7C6C700CBCBCB00D8D8D800D8D8D800CBCBCB00C5C5
      C500C9C9C900C4C3C400BDBABD007E897E0027522700302C30008D088D00C900
      C900F600F6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C50CC5003C283C002D5F
      2D00A9B7A900EAE8EA00D1D0D100C6C6C600CBCBCB00CCCCCC00C8C8C800CBCB
      CB00D7D7D7009B9B9B0037363700303430008E9C8E008E968E002D1C2D004900
      4900DE00DE000000000000000000F602FD000000000000000000000000000000
      00000000000000000000000000000000000000000000C50CC5003C283C002D5F
      2D00A9B7A900EAE8EA00D1D0D100C6C6C600CBCBCB00CCCCCC00C8C8C800CBCB
      CB00D7D7D7009B9B9B0037363700303430008E9C8E008E968E002D1C2D004900
      4900DE00DE000000000000000000F602FD000000000000000000000000000000
      00000000000000000000000000000000000000000000C50CC5003C283C002D5F
      2D00A9B7A900EAE8EA00D1D0D100C6C6C600CBCBCB00CCCCCC00C8C8C800CBCB
      CB00D7D7D7009B9B9B0037363700303430008E9C8E008E968E002D1C2D004900
      4900DE00DE000000000000000000F602FD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C700C700440044002410
      24006B716B00AAB7AA00C4C7C400D2D1D200CAC9CA00C5C5C500C6C6C600CCCC
      CC00D8D8D80099999900303030002B2A2B008F8D8F00909C90002D592D00302C
      30008E088E00C700C700EE00EE0000000000000000000000000000000000F602
      FD000000000000000000F602FD000000000000000000C700C700440044002410
      24006B716B00AAB7AA00C4C7C400D2D1D200CAC9CA00C5C5C500C6C6C600CCCC
      CC00D8D8D80099999900303030002B2A2B008F8D8F00909C90002D592D00302C
      30008E088E00C700C700EE00EE0000000000000000000000000000000000F602
      FD000000000000000000F602FD000000000000000000C700C700440044002410
      24006B716B00AAB7AA00C4C7C400D2D1D200CAC9CA00C5C5C500C6C6C600CCCC
      CC00D8D8D80099999900303030002B2A2B008F8D8F00909C90002D592D00302C
      30008E088E00C700C700EE00EE0000000000000000000000000000000000F602
      FD000000000000000000F602FD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EE00EE00C700C7008A04
      8A00242124002E5A2E00A9B5A900EBE9EB00D2D1D200C4C4C400C5C5C500C8C8
      C800CBCBCB00BEBEBE00AAAAAA006E6D6E002928290036393600909E90008F96
      8F00301C300042004200C700C700000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EE00EE00C700C7008A04
      8A00242124002E5A2E00A9B5A900EBE9EB00D2D1D200C4C4C400C5C5C500C8C8
      C800CBCBCB00BEBEBE00AAAAAA006E6D6E002928290036393600909E90008F96
      8F00301C300042004200C700C700000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EE00EE00C700C7008A04
      8A00242124002E5A2E00A9B5A900EBE9EB00D2D1D200C4C4C400C5C5C500C8C8
      C800CBCBCB00BEBEBE00AAAAAA006E6D6E002928290036393600909E90008F96
      8F00301C300042004200C700C700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DF00
      DF004B004B00211021006A716A00A9B7A900C3C7C300D2D2D200CFCFCF00CCCC
      CC00CBCBCB00D9D9D900F2F2F200B3B3B3003D3D3D00302F30009694960093A1
      930027592700402E4000C60EC600000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DF00
      DF004B004B00211021006A716A00A9B7A900C3C7C300D2D2D200CFCFCF00CCCC
      CC00CBCBCB00D9D9D900F2F2F200B3B3B3003D3D3D00302F30009694960093A1
      930027592700402E4000C60EC600000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DF00
      DF004B004B00211021006A716A00A9B7A900C3C7C300D2D2D200CFCFCF00CCCC
      CC00CBCBCB00D9D9D900F2F2F200B3B3B3003D3D3D00302F30009694960093A1
      930027592700402E4000C60EC600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F600
      F600CA00CA0089048900242124002D5A2D00A7B5A700EDEDED00E1E1E100DBDB
      DB00DADADA00DFDFDF00E6E6E600D9D9D900C1C1C10083828300403F40003D49
      3D007BA07B00C799C700EF2EEF0000000000000000000000000000000000F602
      FD0000000000000000000000000000000000000000000000000000000000F600
      F600CA00CA0089048900242124002D5A2D00A7B5A700EDEDED00E1E1E100DBDB
      DB00DADADA00DFDFDF00E6E6E600D9D9D900C1C1C10083828300403F40003D49
      3D007BA07B00C799C700EF2EEF0000000000000000000000000000000000F602
      FD0000000000000000000000000000000000000000000000000000000000F600
      F600CA00CA0089048900242124002D5A2D00A7B5A700EDEDED00E1E1E100DBDB
      DB00DADADA00DFDFDF00E6E6E600D9D9D900C1C1C10083828300403F40003D49
      3D007BA07B00C799C700EF2EEF0000000000000000000000000000000000F602
      FD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DF00DF004B004B00231023006F716F00A3ACA300969F96009099
      9000909990009198910095979500A5A5A500BEBEBE007D7D7D00030303000209
      0200788D7800D799D700FA2EFA00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DF00DF004B004B00231023006F716F00A3ACA300969F96009099
      9000909990009198910095979500A5A5A500BEBEBE007D7D7D00030303000209
      0200788D7800D799D700FA2EFA00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DF00DF004B004B00231023006F716F00A3ACA300969F96009099
      9000909990009198910095979500A5A5A500BEBEBE007D7D7D00030303000209
      0200788D7800D799D700FA2EFA00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F600F600CA00CA008F048F003721370017321700142F1400122D
      1200122D1200182D1800262C2600313131003838380025252500000000000002
      0000242A24006E2E6E00E80EE800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F600F600CA00CA008F048F003721370017321700142F1400122D
      1200122D1200182D1800262C2600313131003838380025252500000000000002
      0000242A24006E2E6E00E80EE800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F600F600CA00CA008F048F003721370017321700142F1400122D
      1200122D1200182D1800262C2600313131003838380025252500000000000002
      0000242A24006E2E6E00E80EE800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E500E5005E005E0023002300240024002500
      2500250025001600160000000000000000000000000000000000000000000000
      000000000000120012008A008A00BC00BC00BC00BC00BC00BC00BC00BC00BC00
      BC00BC00BC00CD00CD00F700F700000000000000000000000000000000000000
      0000000000000000000000000000E500E5005E005E0023002300240024002500
      2500250025001600160000000000000000000000000000000000000000000000
      000000000000120012008A008A00BC00BC00BC00BC00BC00BC00BC00BC00BC00
      BC00BC00BC00CD00CD00F700F700000000000000000000000000000000000000
      0000000000000000000000000000E500E5005E005E0023002300240024002500
      2500250025001600160000000000000000000000000000000000000000000000
      000000000000120012008A008A00BC00BC00BC00BC00BC00BC00BC00BC00BC00
      BC00BC00BC00CD00CD00F700F700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F800F800CF00CF00BE00BE00BE00BE00BE00
      BE00BE00BE008B008B0011001100000000000000000000000000000000000000
      00000000000000000000100010001F001F001F001F001F001F001F001F001F00
      1F001F001F0058005800E100E100000000000000000000000000000000000000
      0000000000000000000000000000F800F800CF00CF00BE00BE00BE00BE00BE00
      BE00BE00BE008B008B0011001100000000000000000000000000000000000000
      00000000000000000000100010001F001F001F001F001F001F001F001F001F00
      1F001F001F0058005800E100E100000000000000000000000000000000000000
      0000000000000000000000000000F800F800CF00CF00BE00BE00BE00BE00BE00
      BE00BE00BE008B008B0011001100000000000000000000000000000000000000
      00000000000000000000100010001F001F001F001F001F001F001F001F001F00
      1F001F001F0058005800E100E100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E90FE90074347400434343004343430043434300434343004343
      4300434343003D433D002E432E00284328002843280028432800284328002843
      2800284328004C344C00A10FA100C500C5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E90FE90074347400434343004343430043434300434343004343
      4300434343003D433D002E432E00284328002843280028432800284328002843
      2800284328004C344C00A10FA100C500C5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E90FE90074347400434343004343430043434300434343004343
      4300434343003D433D002E432E00284328002843280028432800284328002843
      2800284328004C344C00A10FA100C500C5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF33FF00E9ADE900E0E0E000E0E0E000E0E0E000E0E0E000E0E0
      E000E0E0E000DEE0DE00D9E0D900D7E0D700D7E0D700D7E0D700D7E0D700D7E0
      D700D7E0D700B3ADB3005E335E003A003A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF33FF00E9ADE900E0E0E000E0E0E000E0E0E000E0E0E000E0E0
      E000E0E0E000DEE0DE00D9E0D900D7E0D700D7E0D700D7E0D700D7E0D700D7E0
      D700D7E0D700B3ADB3005E335E003A003A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF33FF00E9ADE900E0E0E000E0E0E000E0E0E000E0E0E000E0E0
      E000E0E0E000DEE0DE00D9E0D900D7E0D700D7E0D700D7E0D700D7E0D700D7E0
      D700D7E0D700B3ADB3005E335E003A003A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F633F600E0ADE000D7E0D700D7E0D700D7E0D700D7E0D700D7E0
      D700D7E0D700D9E0D900DFE0DF00E0DEE000DBDADB00D8DAD800D7DED700D7E0
      D700D7E0D7009EAD9E0015331500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F633F600E0ADE000D7E0D700D7E0D700D7E0D700D7E0D700D7E0
      D700D7E0D700D9E0D900DFE0DF00E0DEE000DBDADB00D8DAD800D7DED700D7E0
      D700D7E0D7009EAD9E0015331500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F633F600E0ADE000D7E0D700D7E0D700D7E0D700D7E0D700D7E0
      D700D7E0D700D9E0D900DFE0DF00E0DEE000DBDADB00D8DAD800D7DED700D7E0
      D700D7E0D7009EAD9E0015331500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CE0FCE0059345900284328002843280028432800284328002843
      2800284328002F432F003F433F00413D4100343034002A302A00283D28002843
      28002843280017341700000F0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CE0FCE0059345900284328002843280028432800284328002843
      2800284328002F432F003F433F00413D4100343034002A302A00283D28002843
      28002843280017341700000F0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CE0FCE0059345900284328002843280028432800284328002843
      2800284328002F432F003F433F00413D4100343034002A302A00283D28002843
      28002843280017341700000F0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CC00CC00520052001F001F001F001F001F001F001F001F001F00
      1F001F001F000E000E0000000000000000000713070022132200260026002600
      26002100210025002500340034003A003A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CC00CC00520052001F001F001F001F001F001F001F001F001F00
      1F001F001F000E000E0000000000000000000713070022132200260026002600
      26002100210025002500340034003A003A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CC00CC00520052001F001F001F001F001F001F001F001F001F00
      1F001F001F000E000E0000000000000000000713070022132200260026002600
      26002100210025002500340034003A003A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F000F000CB00CB00BC00BC00BC00BC00BC00BC00BC00BC00BC00
      BC00BC00BC008300830000000000002500006A906A00C390C300D225D200D100
      D100C200C200BE00BE00C300C300C500C5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F000F000CB00CB00BC00BC00BC00BC00BC00BC00BC00BC00BC00
      BC00BC00BC008300830000000000002500006A906A00C390C300D225D200D100
      D100C200C200BE00BE00C300C300C500C5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F000F000CB00CB00BC00BC00BC00BC00BC00BC00BC00BC00BC00
      BC00BC00BC008300830000000000002500006A906A00C390C300D225D200D100
      D100C200C200BE00BE00C300C300C500C5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E100E1005A005A003B2E3B0086998600CC99CC00DB2EDB00ED00
      ED00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E100E1005A005A003B2E3B0086998600CC99CC00DB2EDB00ED00
      ED00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E100E1005A005A003B2E3B0086998600CC99CC00DB2EDB00ED00
      ED00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F700F700CF00CF009D0E9D00512E51003D2E3D00410E41007000
      7000DB00DB000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F700F700CF00CF009D0E9D00512E51003D2E3D00410E41007000
      7000DB00DB000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F700F700CF00CF009D0E9D00512E51003D2E3D00410E41007000
      7000DB00DB000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C500C5003A003A0000000000000000003A00
      3A00C500C5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C500C5003A003A0000000000000000003A00
      3A00C500C5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C500C5003A003A0000000000000000003A00
      3A00C500C5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000080000000200000000100010000000000000200000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFF00000000
      FFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFFFFFFFFF8FFFFFFF8FF00000000
      FFFFFFFFFFFFF07FFFFFF07F00000000FFFFFFFFFFFFE03FFFFFE03F00000000
      E1FFFFFFE1FFE03FE1FFE03F00000000E1FFFFFFE1FFE07FE1FFE07F00000000
      E07FEFFFE07FE0FFE07FE0FF00000000E07FFFFFE07FF9FFE07FF9FF00000000
      80007FFF80007FFF80007FFF0000000080006FFF80006FFF80006FFF00000000
      80001EDF80001EDF80001EDF0000000080001FFF80001FFF80001FFF00000000
      800007FF800007FF800007FF00000000800006FF800006FF800006FF00000000
      800001ED800001ED800001ED00000000800001FF800001FF800001FF00000000
      E00001FFE00001FFE00001FF00000000E00001EFE00001EFE00001EF00000000
      F80001FFF80001FFF80001FF00000000F80001FFF80001FFF80001FF00000000
      FE000001FE000001FE00000100000000FE000001FE000001FE00000100000000
      FFF80000FFF80000FFF8000000000000FFF80000FFF80000FFF8000000000000
      FFF80000FFF80000FFF8000000000000FFF80000FFF80000FFF8000000000000
      FFF80000FFF80000FFF8000000000000FFF80000FFF80000FFF8000000000000
      FFFFF80FFFFFF80FFFFFF80F00000000FFFFF807FFFFF807FFFFF80700000000
      FFFFFE07FFFFFE07FFFFFE070000000000000000000000000000000000000000
      000000000000}
  end
  object TimerOffLed: TTimer
    Enabled = False
    OnTimer = TimerOffLedTimer
    Left = 590
    Top = 65535
  end
  object PopupMenu3: TPopupMenu
    Images = ImageList1
    OwnerDraw = True
    Left = 720
    Top = 265
    object N46: TMenuItem
      Action = aPortOpen
    end
    object N47: TMenuItem
      Action = aPortClose
    end
    object N51: TMenuItem
      Caption = '-'
    end
    object N53: TMenuItem
      Action = aExpand
    end
    object N52: TMenuItem
      Action = aCollapse
    end
    object N49: TMenuItem
      Caption = '-'
    end
    object N50: TMenuItem
      Action = aClearStatistic
    end
    object N48: TMenuItem
      Caption = '-'
    end
    object N43: TMenuItem
      Action = aAbout
    end
    object N44: TMenuItem
      Caption = '-'
    end
    object N45: TMenuItem
      Action = aFileClose
    end
  end
  object TCPDataTimer: THRTimer
    Enabled = False
    Interval = 10.000000000000000000
    OnTimer = TCPDataTimerTimer
    Priority = tpTimeCritical
    Left = 406
    Top = 87
  end
  object VCOMDataTimer: THRTimer
    Enabled = False
    Interval = 10.000000000000000000
    OnTimer = VCOMDataTimerTimer
    Priority = tpTimeCritical
    Left = 366
    Top = 87
  end
  object StartReopenTimer: TTimer
    Enabled = False
    Interval = 500
    OnTimer = StartReopenTimerTimer
    Left = 520
    Top = 65535
  end
  object OpenDialog2: TOpenDialog
    DefaultExt = '*.tmf'
    FileName = 'Term2006,tmf'
    Filter = 'TMF '#1084#1072#1082#1088#1086#1089#1099'|*.tmf'
    Title = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1084#1072#1082#1088#1086#1089#1099
    Left = 948
    Top = 84
  end
  object PopupMenu4: TPopupMenu
    Images = ImageList1
    OwnerDraw = True
    Left = 644
    Top = 220
    object N54: TMenuItem
      Action = aMacrosAddNew
      ShortCut = 16429
    end
    object N61: TMenuItem
      Action = aMacrosEdit
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100'...'
      ShortCut = 16499
    end
    object mnuEditMacros: TMenuItem
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      ShortCut = 113
      OnClick = mnuEditMacrosClick
    end
    object mnuCopyMacros: TMenuItem
      Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100
      ShortCut = 16451
      OnClick = mnuCopyMacrosClick
    end
    object mnuPasteMacros: TMenuItem
      Caption = #1042#1089#1090#1072#1074#1080#1090#1100
      ShortCut = 16470
      OnClick = mnuPasteMacrosClick
    end
    object N55: TMenuItem
      Action = aMacrosDelete
      ShortCut = 16430
    end
    object N58: TMenuItem
      Caption = '-'
    end
    object N59: TMenuItem
      Action = aMacrosLoad
      ShortCut = 49228
    end
    object N60: TMenuItem
      Caption = '-'
    end
    object N57: TMenuItem
      Action = aMacrosSaveAs
      ShortCut = 49235
    end
  end
  object SaveDialog2: TSaveDialog
    DefaultExt = '*.tmf'
    FileName = 'Term2006,tmf'
    Filter = 'TMF '#1084#1072#1082#1088#1086#1089#1099'|*.tmf'
    Title = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1084#1072#1082#1088#1086#1089#1099
    Left = 996
    Top = 84
  end
  object FormStorage2: TFormStorage
    IniFileName = 'Term2006x.ini'
    IniSection = 'Common'
    Options = []
    UseRegistry = False
    OnRestorePlacement = FormStorage2RestorePlacement
    StoredProps.Strings = (
      'cbTimeStamp.Checked'
      'CRLFMode.ItemIndex'
      'AutoListGroupBox.Height'
      'DopNastroyki_ByteTimeOut.Value'
      'DopNastroyki_TimeOut.Value'
      'AutoListChk.Checked'
      'cbMillisecond.Checked'
      'KM5BroadcastRequest.Enabled'
      'SetUpPanel.Visible'
      'chkHint.Checked'
      'labMakrosFileName.Caption'
      'labMakrosFileName.Visible'
      'chkDirectLabel.Checked'
      'FindDialog1.FindText'
      'MaxNonBufferised.Value'
      'chkLimit.Checked'
      'LimitEdt.Value'
      'nrDeviceBox1.Text'
      'nrBT1.DeviceIndex'
      'cbTBNBROKER_IP.Items'
      'cbTCPPort_IP.Items'
      'cbUDPPort_IP.Items'
      'AutoListGroupBox.Visible'
      'AddBtn.Enabled'
      'AddBtn.Visible'
      'PeriodRepeatEdt.Visible'
      'RepeatBtn.Visible'
      'xCRC16Btn.Enabled'
      'xCRC16MKTCBtn.Enabled'
      'xCRC16tBtn.Enabled'
      'xCRC32Btn.Enabled'
      'xCS1Btn.Enabled'
      'xCS2Btn.Enabled'
      'xKM5CRCBtn.Enabled'
      'xNo_CRCBtn.Enabled'
      'xSikonCRCBtn.Enabled'
      'xCRC16Btn.Down'
      'xCRC16MKTCBtn.Down'
      'xCRC16tBtn.Down'
      'xCRC32Btn.Down'
      'xCS1Btn.Down'
      'xCS2Btn.Down'
      'xKM5CRCBtn.Down'
      'xNo_CRCBtn.Down'
      'xSikonCRCBtn.Down'
      'btnCreateCRC.Down'
      'OutputBuf.Items'
      'cbWordWrap.Checked'
      'cbKM5NetAddr.Items'
      'serveractive.Checked'
      'ServerPortEdt.Value'
      'BottomPnl.Visible'
      'BottonPanelBtn.Down'
      'OutputBuf.ItemIndex'
      'cbBroker_KSPD_IP.ItemIndex'
      'cbBroker_KSPD_IP.Items'
      'PasswordEdt.Text'
      'chkNotWriteToLogWhenHidden.Checked'
      'chkHideToTray.Checked'
      'Tray.HideOnMinimize'
      'OutputBuf.Text'
      'CommentsEdt.Text'
      'SecondTimer.Tag'
      'FillEditBar.Max'
      'chkTCP_CON.Checked'
      'chkSpecialChars.Checked'
      'chkCOM_CON.Checked'
      'chkUSR_CON.Checked'
      'MacrosBox.Caption'
      'KM5NetAddr.Value'
      'AutoRunChk.Checked'
      'TerminalTypeGrp.ItemIndex'
      'aSignal.Checked'
      'tsSignal.TabVisible'
      'cbAlarm.ItemIndex'
      'HourAlarm.Value'
      'MinAlarm.Value'
      'SecAlarm.Value'
      'RxClock1.AlarmHour'
      'RxClock1.AlarmMinute'
      'RxClock1.AlarmSecond'
      'SystemSoundList.ItemIndex'
      'SystemSoundList.Text'
      'CmdEdt.Text'
      'SetUpPanel.Width'
      'SendTimer.Interval'
      'cbDest_Server_TCP.ItemIndex'
      'cbDest_Virtual_COM.ItemIndex'
      'cbDest_Virtual_KSPD.ItemIndex'
      'cbKM5NetAddr.ItemIndex'
      'cbKSPD_ID.ItemIndex'
      'cbTCPPort_IP.ItemIndex'
      'cbUDPPort_IP.ItemIndex'
      'chkRealIDBroker_KSPD.Checked'
      'xCRCSprut100Btn.Enabled'
      'xCRCSprut100Btn.Down'
      'xCRCMODBUSASCIIBtn.Down'
      'xCRCMODBUSASCIIBtn.Enabled'
      'xCRCLogikaBtn.Down'
      'xCRCLogikaBtn.Enabled'
      'InputBuf.Visible'
      'exInputBuffChk.Checked'
      'ComPort_Number.ItemIndex'
      'ComPort_Number.Text'
      'cbForceClosePortChangingDeviceMaps.Checked'
      'cbSyntax.ItemIndex'
      'eInputBuf.Highlighter'
      'cbEchoServer.Checked')
    StoredValues = <>
    Left = 776
    Top = 216
  end
  object SendCmdTimer: TTimer
    Enabled = False
    Interval = 10000
    OnTimer = SendCmdTimerTimer
    Left = 486
    Top = 65535
  end
  object RefreshPortStateTimer: TTimer
    Enabled = False
    OnTimer = RefreshPortStateTimerTimer
    Left = 726
    Top = 65535
  end
  object ClientDataTimer: TTimer
    Enabled = False
    Interval = 50
    OnTimer = ClientDataTimerTimer
    Left = 534
    Top = 118
  end
  object SynSQLSyn1: TSynSQLSyn
    Options.AutoDetectEnabled = False
    Options.AutoDetectLineLimit = 0
    Options.Visible = False
    CommentAttri.Foreground = clGreen
    CommentAttri.Style = [fsBold]
    NumberAttri.Foreground = clRed
    StringAttri.Foreground = clFuchsia
    SymbolAttri.Foreground = clTeal
    Left = 470
    Top = 208
  end
  object SynCppSyn1: TSynCppSyn
    Options.AutoDetectEnabled = False
    Options.AutoDetectLineLimit = 0
    Options.Visible = False
    CommentAttri.Foreground = clRed
    NumberAttri.Foreground = clBlue
    StringAttri.Foreground = clGreen
    SymbolAttri.Foreground = clNavy
    Left = 478
    Top = 256
  end
  object SynPasSyn1: TSynPasSyn
    Options.AutoDetectEnabled = False
    Options.AutoDetectLineLimit = 0
    Options.Visible = False
    CommentAttri.Foreground = clBlue
    NumberAttri.Foreground = clGreen
    StringAttri.Foreground = clTeal
    SymbolAttri.Foreground = clRed
    Left = 534
    Top = 216
  end
  object SynEditSearch1: TSynEditSearch
    Left = 982
    Top = 128
  end
  object SaveDialog3: TSaveDialog
    DefaultExt = '.xls'
    FileName = 'graph.xls'
    Title = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1075#1088#1072#1092#1080#1082
    Left = 726
    Top = 39
  end
  object OpenPortTimer: TTimer
    Enabled = False
    Interval = 300
    OnTimer = OpenPortTimerTimer
    Left = 872
    Top = 65534
  end
end
