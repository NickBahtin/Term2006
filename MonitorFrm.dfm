object MonitorForm: TMonitorForm
  Left = 322
  Top = 48
  Width = 754
  Height = 646
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object Hour_PageControl: TPageControl
    Left = 0
    Top = 0
    Width = 738
    Height = 534
    ActivePage = TabSheet7
    Align = alClient
    MultiLine = True
    TabOrder = 0
    OnChange = Hour_PageControlChange
    object TabSheet6: TTabSheet
      Caption = #1058#1072#1073#1083#1080#1094#1072
      object Panel1: TPanel
        Left = 536
        Top = 0
        Width = 194
        Height = 506
        Align = alRight
        TabOrder = 0
        object Monitor_StateWord1: TMyCheckList
          Left = 1
          Top = 1
          Width = 192
          Height = 154
          Align = alTop
          BorderStyle = bsNone
          Color = clMenu
          Enabled = False
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Serif'
          Font.Style = []
          ItemHeight = 11
          Items.Strings = (
            #1055#1091#1089#1090#1072#1103' '#1090#1088#1091#1073#1072' '#1050#1052'-5'
            #1055#1091#1089#1090#1072#1103' '#1090#1088#1091#1073#1072' '#1055#1055#1057
            '-G1min < G1 < G1min'
            '-G2min < G2 < G2min'
            'G1 < -G1min'
            'G2 < -G2min'
            'I '#1082#1072#1090'. G1 < '#1076#1086#1087#1091#1089#1082#1072
            'I '#1082#1072#1090'. G1 > '#1076#1086#1087#1091#1089#1082#1072
            'U '#1082#1072#1085'. G1 > '#1076#1086#1087#1091#1089#1082#1072
            #1044#1072#1090'.'#1090#1077#1084#1087'. '#1050#1052'5 ???'
            'I '#1082#1072#1090'. G2 < '#1076#1086#1087#1091#1089#1082#1072
            'I '#1082#1072#1090'. G2 > '#1076#1086#1087#1091#1089#1082#1072
            'U '#1082#1072#1085'. G2 > '#1076#1086#1087#1091#1089#1082#1072
            #1044#1072#1090'.'#1090#1077#1084#1087'. '#1055#1055#1057' ???')
          ParentFont = False
          TabOrder = 0
          IndexOfItem = 1
          Checked = cbUnchecked
          Caption = #1055#1091#1089#1090#1072#1103' '#1090#1088#1091#1073#1072' '#1050#1052'-5'
          LongMask = 0
        end
        object Monitor_StateWord2: TMyCheckList
          Left = 1
          Top = 155
          Width = 192
          Height = 350
          Align = alClient
          BorderStyle = bsNone
          Color = clMenu
          Enabled = False
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Serif'
          Font.Style = []
          ItemHeight = 11
          Items.Strings = (
            #1079#1072#1087#1088#1077#1090' '#1085#1072#1083#1072#1076#1082#1080' ('#1074#1085#1091#1090#1088'. )'
            #1079#1072#1087#1088#1077#1090' '#1085#1072#1083#1072#1076#1082#1080' ('#1087#1083#1072#1090#1092'.)'
            #1088#1077#1078#1080#1084' '#1086#1089#1090#1072#1085#1086#1074#1072' '#1089#1095#1077#1090#1072
            #1089#1095#1077#1090' '#1086#1089#1090#1072#1085#1086#1074#1083#1077#1085' '#1087#1088#1080' '#1086#1096#1080#1073#1082#1072#1093
            #1087#1088#1086#1087#1091#1089#1082' '#1085#1072#1095#1072#1083#1100#1085#1099#1093' '#1080#1079#1084#1077#1088#1077#1085#1080#1081
            #1085#1077#1090' '#1089#1074#1103#1079#1080' '#1050#1052'-5 '#1089' '#1055#1055#1057
            #1089#1090#1072#1088#1090' SS '#1088#1072#1079#1088#1077#1096#1077#1085
            #1087#1088#1086#1075#1088#1072#1084#1084#1085#1086#1077' '#1079#1085#1072#1095#1077#1085#1080#1077' t'#1093#1086#1083'.'#1074#1086#1076#1099
            #1086#1073#1088#1099#1074' '#1074' '#1094#1077#1087#1080' '#1056'1 '#1050#1052'-5'
            #1086#1073#1088#1099#1074' '#1074' '#1094#1077#1087#1080' '#1056'2 '#1050#1052'-5'
            #1086#1073#1088#1099#1074' '#1074' '#1094#1077#1087#1080' '#1056'2 '#1055#1055#1057
            #1086#1073#1088#1099#1074' '#1074' '#1094#1077#1087#1080' '#1056'3 '#1055#1055#1057
            #1086#1096#1080#1073#1082#1080' '#1095#1090#1077#1085#1080#1103' EEPROM'
            #1086#1096#1080#1073#1082#1080' '#1079#1072#1087#1080#1089#1080' EEPROM'
            #1086#1096#1080#1073#1082#1080' '#1095#1090#1077#1085#1080#1103' RT'#1057
            #1086#1096#1080#1073#1082#1080' '#1079#1072#1087#1080#1089#1080' RT'#1057
            #1088#1072#1089#1093#1086#1076' '#1087#1086' '#1087#1086#1083#1080#1085#1086#1084#1091
            #1080#1076#1077#1090' '#1085#1072#1082#1086#1087#1083#1077#1085#1080#1077' '#1087#1086' SS'
            #1086#1090#1086#1073#1088#1072#1078#1077#1085#1080#1077' '#1089#1080#1089#1090#1077#1084#1099' '#1077#1076#1080#1085#1080#1094
            #1077#1076#1080#1085#1080#1094#1072' '#1072#1088#1093#1080#1074#1072#1094#1080#1080' "'#1084#1072#1089#1089#1072'"'
            #1055#1083#1086#1093#1086#1077' '#1054#1047#1059' '#1087#1088#1086#1094#1077#1089#1089#1086#1088#1072
            #1076#1072#1090#1095'.'#1090#1077#1084#1087'. (1,3851)'
            #1088#1072#1089#1093#1086#1076' '#1073#1077#1079' '#1086#1089#1088#1077#1076#1085#1077#1085#1080#1103
            #1085#1077' '#1089#1086#1074#1087#1072#1083#1072' '#1082#1086#1085#1090#1088'. '#1089#1091#1084#1084#1072' '#1055#1047#1059' - '
            #1089#1074#1103#1079#1100' '#1089' '#1084#1086#1076#1091#1083#1077#1084' LON'
            #1088#1072#1073#1086#1090#1072' '#1089' '#1087#1086#1075#1088#1091#1078#1085#1099#1084' '#1055#1056
            #1088#1072#1089#1095'. '#1087#1086#1087#1088#1072#1074#1082#1080' alfa '#1076#1083#1103' '#1087#1086#1075#1088#1091#1078#1085'. '#1055#1056
            #1086#1089#1090#1072#1085#1086#1074' '#1080#1085#1090#1077#1075#1088'. '#1089#1080#1085#1093#1088#1086#1085#1085#1099#1081
            #1050#1052'-5-5 t'#1075#1074#1089'=t1'
            #1089#1095#1077#1090' '#1088#1077#1074#1077#1088#1089#1072' '#1074' '#1086#1076#1085#1086#1087#1086#1090#1086#1095#1085#1086#1084
            #1088#1072#1073#1086#1090#1072' '#1089' '#1087#1072#1088#1086#1074#1099#1084' '#1055#1056' '#1057#1040#1043
            #1086#1090#1088#1080#1094#1072#1090#1077#1083#1100#1085#1099#1081'  '#1090#1077#1087#1083#1086#1074#1086#1081' '#1087#1086#1090#1086#1082)
          ParentFont = False
          TabOrder = 1
          IndexOfItem = 1
          Checked = cbUnchecked
          Caption = #1079#1072#1087#1088#1077#1090' '#1085#1072#1083#1072#1076#1082#1080' ('#1074#1085#1091#1090#1088'. )'
          LongMask = 0
        end
      end
      object HourGrid: TDBGridEh
        Left = 0
        Top = 0
        Width = 536
        Height = 506
        Align = alClient
        AllowedOperations = []
        DataSource = aMonitorDataSource
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clYellow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = [fsBold]
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        PopupMenu = PopupMenu1
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        TitleHeight = 26
        TitleLines = 2
        UseMultiTitle = True
        VertScrollBar.Tracking = True
        Columns = <
          item
            EditButtons = <>
            FieldName = 'mon_time'
            Footer.ValueType = fvtStaticText
            Footers = <>
            Width = 107
          end
          item
            EditButtons = <>
            FieldName = 'Gm1'
            Footer.ValueType = fvtAvg
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Gm2'
            Footer.ValueType = fvtAvg
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Gm3'
            Footer.ValueType = fvtAvg
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 't1'
            Footer.ValueType = fvtAvg
            Footers = <>
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 't2'
            Footer.ValueType = fvtAvg
            Footers = <>
            Width = 44
          end
          item
            EditButtons = <>
            FieldName = 'th'
            Footer.ValueType = fvtAvg
            Footers = <>
            Width = 42
          end
          item
            EditButtons = <>
            FieldName = 'ta'
            Footer.ValueType = fvtAvg
            Footers = <>
            Width = 42
          end
          item
            EditButtons = <>
            FieldName = 'p1'
            Footer.ValueType = fvtAvg
            Footers = <>
            Title.Caption = 'P1, '#1072#1090#1084
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'p2'
            Footer.ValueType = fvtAvg
            Footers = <>
            Title.Caption = 'P2, '#1072#1090#1084
            Width = 57
          end
          item
            EditButtons = <>
            FieldName = 'p3'
            Footer.ValueType = fvtAvg
            Footers = <>
            Title.Caption = 'P3, '#1072#1090#1084
            Width = 57
          end
          item
            EditButtons = <>
            FieldName = 'W'
            Footer.ValueType = fvtAvg
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 't2PPS'
            Footer.ValueType = fvtAvg
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'thPPS'
            Footer.ValueType = fvtAvg
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'tDev'
            Footer.ValueType = fvtAvg
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'W2'
            Footer.ValueType = fvtAvg
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'tGvs'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Gv1'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Gv2'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Gv3'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'M1'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'M2'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'M3'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'V1'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'V2'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Vi'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Q'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Q2'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Twork'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'state1'
            Footers = <>
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'state2'
            Footers = <>
            Visible = False
          end>
      end
    end
    object TabSheet7: TTabSheet
      Caption = #1043#1088#1072#1092#1080#1082
      ImageIndex = 1
      object TabControl1: TTabControl
        Left = 0
        Top = 24
        Width = 730
        Height = 482
        Align = alClient
        TabOrder = 0
        Tabs.Strings = (
          #1054#1073#1097#1080#1081
          #1058#1077#1084#1087#1077#1088#1072#1090#1091#1088#1099
          #1044#1072#1074#1083#1077#1085#1080#1103
          #1056#1072#1089#1093#1086#1076#1099' '#1084#1072#1089#1089#1086#1074#1099#1077
          #1056#1072#1089#1093#1086#1076#1099' '#1086#1073#1098#1077#1084#1085#1099#1077
          #1058#1077#1087#1083#1086#1087#1086#1090#1088#1077#1073#1083#1077#1085#1080#1103)
        TabIndex = 0
        OnChange = TabControl1Change
        object MonChart: TChart
          Left = 4
          Top = 24
          Width = 722
          Height = 454
          BackWall.Brush.Color = clWhite
          BackWall.Brush.Style = bsClear
          MarginBottom = 0
          MarginLeft = 0
          MarginTop = 1
          Title.AdjustFrame = False
          Title.Text.Strings = (
            'TDBChart')
          Title.Visible = False
          BottomAxis.DateTimeFormat = 'dd.mm.yy hh:mm'
          LeftAxis.Automatic = False
          LeftAxis.AutomaticMaximum = False
          LeftAxis.AutomaticMinimum = False
          Legend.LegendStyle = lsSeries
          Legend.Visible = False
          TopAxis.Automatic = False
          TopAxis.AutomaticMaximum = False
          TopAxis.AutomaticMinimum = False
          TopAxis.ExactDateTime = False
          TopAxis.Increment = 0.000010000000000000
          TopAxis.Labels = False
          TopAxis.Maximum = 1.000000000000000000
          TopAxis.TickOnLabelsOnly = False
          TopAxis.Visible = False
          View3D = False
          View3DWalls = False
          OnAfterDraw = MonChartAfterDraw
          OnGetAxisLabel = MonChartGetAxisLabel
          OnGetLegendText = MonChartGetLegendText
          Align = alClient
          BevelOuter = bvNone
          PopupMenu = PopupMenu2
          TabOrder = 0
          Locked = True
          OnMouseMove = MonChartMouseMove
          object Gm1Series: TLineSeries
            Active = False
            Marks.ArrowLength = 8
            Marks.Frame.Width = 2
            Marks.Visible = False
            SeriesColor = 16777088
            Title = 'Gm1'
            ValueFormat = #1090'/'#1095
            LinePen.Width = 3
            Pointer.InflateMargins = True
            Pointer.Style = psRectangle
            Pointer.Visible = False
            XValues.DateTime = True
            XValues.Name = 'X'
            XValues.Multiplier = 1.000000000000000000
            XValues.Order = loAscending
            XValues.ValueSource = 'mon_time'
            YValues.DateTime = False
            YValues.Name = 'Y'
            YValues.Multiplier = 1.000000000000000000
            YValues.Order = loNone
            YValues.ValueSource = 'Gm1'
          end
          object Gm2Series: TLineSeries
            Active = False
            Marks.ArrowLength = 8
            Marks.Visible = False
            SeriesColor = 8404992
            Title = 'Gm2'
            ValueFormat = #1090'/'#1095
            LinePen.Width = 3
            Pointer.InflateMargins = True
            Pointer.Style = psRectangle
            Pointer.Visible = False
            XValues.DateTime = True
            XValues.Name = 'X'
            XValues.Multiplier = 1.000000000000000000
            XValues.Order = loAscending
            XValues.ValueSource = 'mon_time'
            YValues.DateTime = False
            YValues.Name = 'Y'
            YValues.Multiplier = 1.000000000000000000
            YValues.Order = loNone
            YValues.ValueSource = 'Gm2'
          end
          object Gm3Series: TLineSeries
            Active = False
            Marks.ArrowLength = 8
            Marks.Visible = False
            SeriesColor = clBlue
            Title = 'Gm3'
            ValueFormat = #1090'/'#1095
            LinePen.Width = 3
            Pointer.InflateMargins = True
            Pointer.Style = psRectangle
            Pointer.Visible = False
            XValues.DateTime = True
            XValues.Name = 'X'
            XValues.Multiplier = 1.000000000000000000
            XValues.Order = loAscending
            XValues.ValueSource = 'mon_time'
            YValues.DateTime = False
            YValues.Name = 'Y'
            YValues.Multiplier = 1.000000000000000000
            YValues.Order = loNone
            YValues.ValueSource = 'Gm3'
          end
          object Gv1Series: TLineSeries
            Active = False
            Marks.ArrowLength = 8
            Marks.Visible = False
            SeriesColor = clLime
            Title = 'Gv1'
            ValueFormat = #1084'3/'#1095
            LinePen.Width = 3
            Pointer.InflateMargins = True
            Pointer.Style = psRectangle
            Pointer.Visible = False
            XValues.DateTime = True
            XValues.Name = 'X'
            XValues.Multiplier = 1.000000000000000000
            XValues.Order = loAscending
            XValues.ValueSource = 'mon_time'
            YValues.DateTime = False
            YValues.Name = 'Y'
            YValues.Multiplier = 1.000000000000000000
            YValues.Order = loNone
            YValues.ValueSource = 'Gv1'
          end
          object Gv2Series: TLineSeries
            Active = False
            Marks.ArrowLength = 8
            Marks.Visible = False
            SeriesColor = clGreen
            Title = 'Gv2'
            ValueFormat = #1084'3/'#1095
            LinePen.Width = 3
            Pointer.InflateMargins = True
            Pointer.Style = psRectangle
            Pointer.Visible = False
            XValues.DateTime = True
            XValues.Name = 'X'
            XValues.Multiplier = 1.000000000000000000
            XValues.Order = loAscending
            XValues.ValueSource = 'mon_time'
            YValues.DateTime = False
            YValues.Name = 'Y'
            YValues.Multiplier = 1.000000000000000000
            YValues.Order = loNone
            YValues.ValueSource = 'Gv2'
          end
          object Series1: TLineSeries
            Active = False
            Marks.ArrowLength = 8
            Marks.Visible = False
            SeriesColor = 16384
            Title = 'Gv3'
            ValueFormat = #1084'3/'#1095
            LinePen.Width = 3
            Pointer.InflateMargins = True
            Pointer.Style = psRectangle
            Pointer.Visible = False
            XValues.DateTime = True
            XValues.Name = 'X'
            XValues.Multiplier = 1.000000000000000000
            XValues.Order = loAscending
            XValues.ValueSource = 'mon_time'
            YValues.DateTime = False
            YValues.Name = 'Y'
            YValues.Multiplier = 1.000000000000000000
            YValues.Order = loNone
            YValues.ValueSource = 'Gv3'
          end
          object GqSeries: TLineSeries
            Active = False
            Marks.ArrowLength = 8
            Marks.Visible = False
            SeriesColor = clRed
            Title = 'Gq'
            ValueFormat = #1043#1082#1072#1083'/'#1095
            LinePen.Width = 3
            Pointer.InflateMargins = True
            Pointer.Style = psRectangle
            Pointer.Visible = False
            XValues.DateTime = True
            XValues.Name = 'X'
            XValues.Multiplier = 1.000000000000000000
            XValues.Order = loAscending
            XValues.ValueSource = 'mon_time'
            YValues.DateTime = False
            YValues.Name = 'Y'
            YValues.Multiplier = 1.000000000000000000
            YValues.Order = loNone
            YValues.ValueSource = 'W'
          end
          object Series4: TLineSeries
            Active = False
            Marks.ArrowLength = 8
            Marks.Visible = False
            SeriesColor = 8421631
            Title = 'Gq2'
            ValueFormat = #1043#1082#1072#1083'/'#1095
            LinePen.Width = 3
            Pointer.InflateMargins = True
            Pointer.Style = psRectangle
            Pointer.Visible = False
            XValues.DateTime = True
            XValues.Name = 'X'
            XValues.Multiplier = 1.000000000000000000
            XValues.Order = loAscending
            XValues.ValueSource = 'mon_time'
            YValues.DateTime = False
            YValues.Name = 'Y'
            YValues.Multiplier = 1.000000000000000000
            YValues.Order = loNone
            YValues.ValueSource = 'W2'
          end
          object T1Series: TLineSeries
            Active = False
            Marks.ArrowLength = 8
            Marks.Visible = False
            SeriesColor = 33023
            Title = 'T1'
            ValueFormat = #176#1057
            LinePen.Width = 3
            Pointer.InflateMargins = True
            Pointer.Style = psRectangle
            Pointer.Visible = False
            XValues.DateTime = True
            XValues.Name = 'X'
            XValues.Multiplier = 1.000000000000000000
            XValues.Order = loAscending
            XValues.ValueSource = 'mon_time'
            YValues.DateTime = False
            YValues.Name = 'Y'
            YValues.Multiplier = 1.000000000000000000
            YValues.Order = loNone
            YValues.ValueSource = 't1'
          end
          object T2Series: TLineSeries
            Active = False
            Marks.ArrowLength = 8
            Marks.Visible = False
            SeriesColor = 16512
            Title = 'T2'
            ValueFormat = #176#1057
            LinePen.Width = 3
            Pointer.InflateMargins = True
            Pointer.Style = psRectangle
            Pointer.Visible = False
            XValues.DateTime = True
            XValues.Name = 'X'
            XValues.Multiplier = 1.000000000000000000
            XValues.Order = loAscending
            XValues.ValueSource = 'mon_time'
            YValues.DateTime = False
            YValues.Name = 'Y'
            YValues.Multiplier = 1.000000000000000000
            YValues.Order = loNone
            YValues.ValueSource = 't2'
          end
          object Series2: TLineSeries
            Active = False
            Marks.ArrowLength = 8
            Marks.Visible = False
            SeriesColor = clOlive
            Title = 'Th'
            ValueFormat = #176#1057
            LinePen.Width = 3
            Pointer.InflateMargins = True
            Pointer.Style = psRectangle
            Pointer.Visible = False
            XValues.DateTime = True
            XValues.Name = 'X'
            XValues.Multiplier = 1.000000000000000000
            XValues.Order = loAscending
            XValues.ValueSource = 'mon_time'
            YValues.DateTime = False
            YValues.Name = 'Y'
            YValues.Multiplier = 1.000000000000000000
            YValues.Order = loNone
            YValues.ValueSource = 'th'
          end
          object Series3: TLineSeries
            Active = False
            Marks.ArrowLength = 8
            Marks.Visible = False
            SeriesColor = 8454143
            Title = 'Ta'
            ValueFormat = #176#1057
            LinePen.Width = 3
            Pointer.InflateMargins = True
            Pointer.Style = psRectangle
            Pointer.Visible = False
            XValues.DateTime = True
            XValues.Name = 'X'
            XValues.Multiplier = 1.000000000000000000
            XValues.Order = loAscending
            XValues.ValueSource = 'mon_time'
            YValues.DateTime = False
            YValues.Name = 'Y'
            YValues.Multiplier = 1.000000000000000000
            YValues.Order = loNone
            YValues.ValueSource = 'ta'
          end
          object P1Series: TLineSeries
            Active = False
            Marks.ArrowLength = 8
            Marks.Visible = False
            SeriesColor = 16744703
            Title = 'P1'
            ValueFormat = #1040#1090#1084
            LinePen.Width = 3
            Pointer.InflateMargins = True
            Pointer.Style = psRectangle
            Pointer.Visible = False
            XValues.DateTime = True
            XValues.Name = 'X'
            XValues.Multiplier = 1.000000000000000000
            XValues.Order = loAscending
            XValues.ValueSource = 'mon_time'
            YValues.DateTime = False
            YValues.Name = 'Y'
            YValues.Multiplier = 1.000000000000000000
            YValues.Order = loNone
            YValues.ValueSource = 'p1'
          end
          object P2Series: TLineSeries
            Active = False
            Marks.ArrowLength = 8
            Marks.Visible = False
            SeriesColor = 8388863
            Title = 'P2'
            ValueFormat = #1040#1090#1084
            LinePen.Width = 3
            Pointer.InflateMargins = True
            Pointer.Style = psRectangle
            Pointer.Visible = False
            XValues.DateTime = True
            XValues.Name = 'X'
            XValues.Multiplier = 1.000000000000000000
            XValues.Order = loAscending
            XValues.ValueSource = 'mon_time'
            YValues.DateTime = False
            YValues.Name = 'Y'
            YValues.Multiplier = 1.000000000000000000
            YValues.Order = loNone
            YValues.ValueSource = 'p2'
          end
          object Series5: TLineSeries
            Active = False
            Marks.ArrowLength = 8
            Marks.Visible = False
            SeriesColor = clFuchsia
            Title = 'P3'
            ValueFormat = #1040#1090#1084
            LinePen.Width = 3
            Pointer.InflateMargins = True
            Pointer.Style = psRectangle
            Pointer.Visible = False
            XValues.DateTime = True
            XValues.Name = 'X'
            XValues.Multiplier = 1.000000000000000000
            XValues.Order = loAscending
            XValues.ValueSource = 'mon_time'
            YValues.DateTime = False
            YValues.Name = 'Y'
            YValues.Multiplier = 1.000000000000000000
            YValues.Order = loNone
            YValues.ValueSource = 'p3'
          end
        end
      end
      object ToolBar2: TToolBar
        Left = 0
        Top = 0
        Width = 730
        Height = 24
        Caption = 'ToolBar2'
        Flat = True
        Images = BaseForm.ImageList1
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        object ToolButton3: TToolButton
          Left = 0
          Top = 0
          Action = AFitToScreen
        end
        object ToolButton4: TToolButton
          Left = 23
          Top = 0
          Action = ADayToScreen
        end
        object ToolButton6: TToolButton
          Left = 46
          Top = 0
          Width = 8
          Caption = 'ToolButton6'
          ImageIndex = 60
          Style = tbsSeparator
        end
        object ToolButton5: TToolButton
          Left = 54
          Top = 0
          Action = ARewind
        end
        object RxSpeedButton3: TRxSpeedButton
          Left = 77
          Top = 0
          Width = 25
          Height = 22
          Action = ADayBackward
          AllowTimer = True
          Flat = True
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            04000000000080000000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFF7FFFFF7FFFFFFFF70FFFF70FFFFFF7700FF77
            00FFFFF70000F70000FFFF700000700000FFF7000000000000FFFF7000007000
            00FFFFF70000F70000FFFFFF7000FF7000FFFFFFF700FFF700FFFFFFFF70FFFF
            70FFFFFFFFF8FFFFF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          Layout = blGlyphLeft
          Margin = 0
          Spacing = 3
        end
        object RxSpeedButton4: TRxSpeedButton
          Left = 102
          Top = 0
          Width = 25
          Height = 22
          Action = ADayForward
          AllowTimer = True
          Flat = True
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            04000000000080000000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFF8FFFFF8FFFFFFFFF07FFFF07FFFFFFFF007FFF007F
            FFFFFF0007FF0007FFFFFF00007F00007FFFFF000007000007FFFF0000000000
            007FFF000007000007FFFF00007F00007FFFFF0077FF0077FFFFFF07FFFF07FF
            FFFFFF7FFFFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          Layout = blGlyphLeft
          Margin = 0
          Spacing = 3
        end
        object ToolButton1: TToolButton
          Left = 127
          Top = 0
          Action = AForward
        end
        object ToolButton2: TToolButton
          Left = 150
          Top = 0
          Width = 8
          Caption = 'ToolButton2'
          ImageIndex = 60
          Style = tbsSeparator
        end
        object Label2: TLabel
          Left = 158
          Top = 0
          Width = 63
          Height = 22
          BiDiMode = bdLeftToRight
          Caption = #1055#1077#1088#1080#1086#1076', '#1089#1091#1090' '
          ParentBiDiMode = False
          Layout = tlCenter
          Visible = False
        end
        object Period: TSpinEdit
          Left = 221
          Top = 0
          Width = 56
          Height = 22
          MaxValue = 10
          MinValue = 1
          TabOrder = 0
          Value = 1
          Visible = False
        end
        object Label3: TLabel
          Left = 277
          Top = 0
          Width = 49
          Height = 22
          BiDiMode = bdLeftToRight
          Caption = ' '#1064#1072#1075', '#1095#1072#1089' '
          ParentBiDiMode = False
          Layout = tlCenter
          Visible = False
        end
        object Step: TSpinEdit
          Left = 326
          Top = 0
          Width = 56
          Height = 22
          MaxValue = 24
          MinValue = 1
          TabOrder = 1
          Value = 2
          Visible = False
        end
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 534
    Width = 738
    Height = 74
    Align = alBottom
    TabOrder = 1
    object GroupBox2: TGroupBox
      Left = 1
      Top = 1
      Width = 304
      Height = 72
      Align = alLeft
      Caption = ' '#1044#1080#1072#1087#1072#1079#1086#1085' '#1084#1086#1085#1080#1090#1086#1088#1080#1085#1075#1072' '#1087#1072#1088#1072#1084#1077#1090#1088#1086#1074' '
      TabOrder = 0
      object Label1: TLabel
        Left = 21
        Top = 18
        Width = 6
        Height = 13
        Alignment = taCenter
        Caption = #1089
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 21
        Top = 38
        Width = 12
        Height = 13
        Alignment = taCenter
        Caption = #1087#1086
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object StartDate: TDateTimePicker
        Left = 39
        Top = 14
        Width = 125
        Height = 20
        Date = 37331.736175833340000000
        Time = 37331.736175833340000000
        DateFormat = dfLong
        TabOrder = 0
      end
      object StartTime: TDateTimePicker
        Left = 165
        Top = 14
        Width = 70
        Height = 20
        Date = 37331.736175833340000000
        Time = 37331.736175833340000000
        DateFormat = dfLong
        Kind = dtkTime
        TabOrder = 1
      end
      object RefreshBtn: TBitBtn
        Left = 240
        Top = 12
        Width = 58
        Height = 41
        Caption = #1054#1073#1085#1086#1074#1080#1090#1100
        TabOrder = 2
        OnClick = RefreshBtnClick
        Kind = bkRetry
        Layout = blGlyphTop
      end
      object CheckBox1: TCheckBox
        Left = 176
        Top = 55
        Width = 120
        Height = 13
        Caption = #1047#1072#1087#1086#1084#1085#1080#1090#1100' '#1087#1077#1088#1080#1086#1076
        TabOrder = 3
        OnClick = CheckBox1Click
      end
      object EndDate: TDateTimePicker
        Left = 39
        Top = 34
        Width = 125
        Height = 20
        Date = 38062.000000000000000000
        Time = 38062.000000000000000000
        DateFormat = dfLong
        TabOrder = 4
      end
      object EndTime: TDateTimePicker
        Left = 165
        Top = 34
        Width = 70
        Height = 20
        Date = 38062.736175833340000000
        Time = 38062.736175833340000000
        DateFormat = dfLong
        Kind = dtkTime
        TabOrder = 5
      end
      object EndPeriodCB: TCheckBox
        Left = 5
        Top = 37
        Width = 14
        Height = 17
        TabOrder = 6
        OnClick = EndPeriodCBClick
      end
    end
    object GroupBox1: TGroupBox
      Left = 305
      Top = 1
      Width = 432
      Height = 72
      Align = alClient
      Caption = #1042#1099#1074#1077#1089#1090#1080' '#1079#1085#1072#1095#1077#1085#1080#1103' '#1080#1079#1084#1077#1088#1080#1090#1077#1083#1100#1085#1099#1093' '#1082#1072#1085#1072#1083#1086#1074
      Color = clBtnFace
      ParentColor = False
      TabOrder = 1
      object CheckListBox1: TCheckListBox
        Left = 302
        Top = 15
        Width = 128
        Height = 55
        OnClickCheck = CheckListBox1ClickCheck
        Align = alClient
        BevelInner = bvNone
        BorderStyle = bsNone
        Color = clBtnFace
        Columns = 7
        ItemHeight = 13
        Items.Strings = (
          'Gm1'
          'Gm2'
          'Gm3'
          'T1'
          'T2'
          'Th'
          'Ta'
          'P1'
          'P2'
          'P3'
          'W'
          't2PPS'
          'thPPS'
          'tDev'
          'W2'
          'Gv1'
          'Gv2'
          'Gv3'
          'M1'
          'M2'
          'M3'
          'V1'
          'V2'
          'Vi'
          'Q'
          'Q2'
          'Twork'
          'State')
        TabOrder = 0
      end
      object GrafCheckLB: TCheckListBox
        Left = 2
        Top = 15
        Width = 300
        Height = 55
        OnClickCheck = GrafCheckLBClickCheck
        Align = alLeft
        BevelInner = bvNone
        BorderStyle = bsNone
        Color = clBtnFace
        Columns = 4
        ItemHeight = 13
        Items.Strings = (
          'Gm1'
          'Gm2'
          'Gm3'
          'Gv1'
          'Gv2'
          'Gv3'
          'W'
          'W2'
          'T1'
          'T2'
          'Th'
          'Ta'
          'P1'
          'P2'
          'P3')
        TabOrder = 1
        Visible = False
        OnClick = GrafCheckLBClick
      end
      object CheckListBox3: TCheckListBox
        Left = 302
        Top = 15
        Width = 128
        Height = 55
        OnClickCheck = CheckListBox3ClickCheck
        Align = alClient
        BorderStyle = bsNone
        Color = clBtnFace
        Columns = 2
        ItemHeight = 13
        TabOrder = 2
        Visible = False
      end
    end
  end
  object ActionManager1: TActionManager
    Images = BaseForm.ImageList1
    Left = 376
    Top = 120
    StyleName = 'XP Style'
    object aExportTo: TAction
      Caption = #1069#1082#1089#1087#1086#1088#1090' '#1076#1072#1085#1085#1099#1093' '#1074'...'
      ImageIndex = 43
      OnExecute = aExportToExecute
    end
    object aChartAutoMashtab: TAction
      AutoCheck = True
      Caption = #1040#1074#1090#1086#1084#1072#1090#1080#1095#1077#1089#1082#1086#1077' '#1084#1072#1089#1096#1090#1072#1073#1080#1088#1086#1074#1072#1085#1080#1077
      Checked = True
      Hint = #1040#1074#1090#1086#1084#1072#1090#1080#1095#1077#1089#1082#1086#1077' '#1084#1072#1089#1096#1090#1072#1073#1080#1088#1086#1074#1072#1085#1080#1077
      ImageIndex = 44
      OnExecute = aChartAutoMashtabExecute
    end
    object aChartMin: TAction
      Caption = #1052#1080#1085#1080#1084#1091#1084
      Enabled = False
      Hint = #1052#1080#1085#1080#1084#1072#1083#1100#1085#1086#1077' '#1079#1085#1072#1095#1077#1085#1080#1077
      ImageIndex = 46
      OnExecute = aChartMinExecute
    end
    object aChartMax: TAction
      Caption = #1052#1072#1082#1089#1080#1084#1091#1084
      Enabled = False
      Hint = #1052#1072#1082#1089#1080#1084#1072#1083#1100#1085#1086#1077' '#1079#1085#1072#1095#1077#1085#1080#1077
      ImageIndex = 45
      OnExecute = aChartMaxExecute
    end
    object APrintTable: TAction
      Caption = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099
      ImageIndex = 19
      OnExecute = APrintTableExecute
    end
    object AFitToScreen: TAction
      Category = #1055#1077#1088#1077#1084#1077#1097#1077#1085#1080#1077' '#1087#1086' '#1075#1088#1072#1092#1080#1082#1091
      Caption = #1042#1084#1077#1089#1090#1080#1090#1100' '#1074#1077#1089#1100' '#1075#1088#1072#1092#1080#1082
      Enabled = False
      Hint = #1042#1084#1077#1089#1090#1080#1090#1100' '#1074#1077#1089#1100' '#1075#1088#1072#1092#1080#1082
      ImageIndex = 57
      OnExecute = AFitToScreenExecute
    end
    object ADayToScreen: TAction
      Category = #1055#1077#1088#1077#1084#1077#1097#1077#1085#1080#1077' '#1087#1086' '#1075#1088#1072#1092#1080#1082#1091
      Caption = #1052#1072#1089#1096#1090#1072#1073' '#1086#1076#1080#1085' '#1076#1077#1085#1100
      Hint = #1052#1072#1089#1096#1090#1072#1073' '#1086#1076#1080#1085' '#1076#1077#1085#1100
      ImageIndex = 58
      OnExecute = ADayToScreenExecute
    end
    object ARewind: TAction
      Category = #1055#1077#1088#1077#1084#1077#1097#1077#1085#1080#1077' '#1087#1086' '#1075#1088#1072#1092#1080#1082#1091
      Caption = #1069#1082#1088#1072#1085' '#1074#1083#1077#1074#1086
      Enabled = False
      Hint = #1069#1082#1088#1072#1085' '#1074#1083#1077#1074#1086
      ImageIndex = 60
      OnExecute = ARewindExecute
    end
    object AForward: TAction
      Category = #1055#1077#1088#1077#1084#1077#1097#1077#1085#1080#1077' '#1087#1086' '#1075#1088#1072#1092#1080#1082#1091
      Caption = #1069#1082#1088#1072#1085' '#1074#1087#1088#1072#1074#1086
      Enabled = False
      Hint = #1069#1082#1088#1072#1085' '#1074#1087#1088#1072#1074#1086
      ImageIndex = 59
      OnExecute = AForwardExecute
    end
    object ADayForward: TAction
      Category = #1055#1077#1088#1077#1084#1077#1097#1077#1085#1080#1077' '#1087#1086' '#1075#1088#1072#1092#1080#1082#1091
      Caption = #1044#1074#1072' '#1095#1072#1089#1072' '#1074#1087#1077#1088#1077#1076
      Enabled = False
      Hint = #1044#1074#1072' '#1095#1072#1089#1072' '#1074#1087#1077#1088#1077#1076
      ImageIndex = 65
      OnExecute = ADayForwardExecute
    end
    object ADayBackward: TAction
      Category = #1055#1077#1088#1077#1084#1077#1097#1077#1085#1080#1077' '#1087#1086' '#1075#1088#1072#1092#1080#1082#1091
      Caption = #1044#1074#1072' '#1095#1072#1089#1072' '#1085#1072#1079#1072#1076
      Enabled = False
      Hint = #1044#1074#1072' '#1095#1072#1089#1072' '#1085#1072#1079#1072#1076
      ImageIndex = 64
      OnExecute = ADayBackwardExecute
    end
  end
  object aMonitorDataSet: TADODataSet
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    MarshalOptions = moMarshalModifiedOnly
    CommandText = 
      'select Gm1, Gm2, Gm3, Gv1, Gv2, Gv3, W, W2, t1, t2, th, ta, p1, ' +
      'p2, p3, mon_time, t2PPS, thPPS, tDev, tGvs, M1, M2, M3, V1, V2, ' +
      'Vi, Q, Q2, Twork, state1, state2 from t_monitor'
    Parameters = <>
    Left = 408
    Top = 88
    object aMonitorDataSetGm1: TFloatField
      DisplayLabel = 'Gm1, '#1090'3/'#1095
      FieldName = 'Gm1'
      DisplayFormat = '0.####'
    end
    object aMonitorDataSetGm2: TFloatField
      DisplayLabel = 'Gm2, '#1090'3/'#1095
      FieldName = 'Gm2'
      DisplayFormat = '0.####'
    end
    object aMonitorDataSetGm3: TFloatField
      DisplayLabel = 'Gm3, '#1090'3/'#1095
      FieldName = 'Gm3'
      DisplayFormat = '0.####'
    end
    object aMonitorDataSetGv1: TFloatField
      DisplayLabel = 'Gv1, '#1084'3/'#1095
      FieldName = 'Gv1'
      DisplayFormat = '0.####'
    end
    object aMonitorDataSetGv2: TFloatField
      DisplayLabel = 'Gv2, '#1084'3/'#1095
      FieldName = 'Gv2'
      DisplayFormat = '0.####'
    end
    object aMonitorDataSetGv3: TFloatField
      DisplayLabel = 'Gv3, '#1084'3/'#1095
      FieldName = 'Gv3'
      DisplayFormat = '0.####'
    end
    object aMonitorDataSetW: TFloatField
      DisplayLabel = 'W, '#1043#1082'/'#1095
      FieldName = 'W'
      DisplayFormat = '0.#####'
    end
    object aMonitorDataSetW2: TFloatField
      DisplayLabel = 'W2, '#1043#1082'/'#1095
      FieldName = 'W2'
      DisplayFormat = '0.#####'
    end
    object aMonitorDataSett1: TFloatField
      DisplayLabel = 'T1, '#176#1057
      FieldName = 't1'
      DisplayFormat = '0.## '
    end
    object aMonitorDataSett2: TFloatField
      DisplayLabel = 'T2, '#176#1057
      FieldName = 't2'
      DisplayFormat = '0.## '
    end
    object aMonitorDataSetth: TFloatField
      DisplayLabel = 'Th, '#176#1057
      FieldName = 'th'
      DisplayFormat = '0.## '
    end
    object aMonitorDataSetta: TFloatField
      DisplayLabel = 'Ta, '#176#1057
      FieldName = 'ta'
      DisplayFormat = '0.## '
    end
    object aMonitorDataSetp1: TFloatField
      DisplayLabel = 'P1, '#1084#1055#1072
      FieldName = 'p1'
      DisplayFormat = '0.### '
    end
    object aMonitorDataSetp2: TFloatField
      DisplayLabel = 'P2, '#1084#1055#1072
      FieldName = 'p2'
      DisplayFormat = '0.### '
    end
    object aMonitorDataSetp3: TFloatField
      DisplayLabel = 'P3, '#1084#1055#1072
      FieldName = 'p3'
      DisplayFormat = '0.### '
    end
    object aMonitorDataSett2PPS: TFloatField
      DisplayLabel = 't2PPS, '#176#1057
      FieldName = 't2PPS'
      DisplayFormat = '0.###'
    end
    object aMonitorDataSetthPPS: TFloatField
      DisplayLabel = 'thPPS, '#176#1057
      FieldName = 'thPPS'
      DisplayFormat = '0.###'
    end
    object aMonitorDataSettDev: TFloatField
      DisplayLabel = 'tDev, '#176#1057
      FieldName = 'tDev'
      DisplayFormat = '0.###'
    end
    object aMonitorDataSettGvs: TFloatField
      FieldName = 'tGvs'
    end
    object aMonitorDataSetM1: TFloatField
      DisplayLabel = 'M1, '#1090
      FieldName = 'M1'
      DisplayFormat = '0.#####'
    end
    object aMonitorDataSetM2: TFloatField
      DisplayLabel = 'M2, '#1090
      FieldName = 'M2'
      DisplayFormat = '0.#####'
    end
    object aMonitorDataSetM3: TFloatField
      DisplayLabel = 'M3, '#1090
      FieldName = 'M3'
      DisplayFormat = '0.#####'
    end
    object aMonitorDataSetV1: TFloatField
      DisplayLabel = 'V1, '#1084'3'
      FieldName = 'V1'
      DisplayFormat = '0.#####'
    end
    object aMonitorDataSetV2: TFloatField
      DisplayLabel = 'V2, '#1084'3'
      FieldName = 'V2'
      DisplayFormat = '0.#####'
    end
    object aMonitorDataSetVi: TFloatField
      DisplayLabel = 'V'#1080', '#1084'3'
      FieldName = 'Vi'
      DisplayFormat = '0.#####'
    end
    object aMonitorDataSetQ: TFloatField
      DisplayLabel = 'Q, '#1043#1082#1072#1083#1083
      FieldName = 'Q'
      DisplayFormat = '0.#####'
    end
    object aMonitorDataSetQ2: TFloatField
      DisplayLabel = 'Q2, '#1043#1082#1072#1083#1083
      FieldName = 'Q2'
      DisplayFormat = '0.#####'
    end
    object aMonitorDataSetTwork: TFloatField
      DisplayLabel = 'T'#1088', '#1095#1072#1089
      FieldName = 'Twork'
      DisplayFormat = '0.###'
    end
    object aMonitorDataSetstate1: TIntegerField
      DisplayLabel = #1057#1086#1089#1090#1086#1103#1085#1080#1077
      FieldName = 'state1'
      Visible = False
    end
    object aMonitorDataSetstate2: TIntegerField
      DisplayLabel = #1057#1086#1089#1090#1086#1103#1085#1080#1077
      FieldName = 'state2'
      Visible = False
    end
    object aMonitorDataSetmon_time: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072' '#1080' '#1074#1088#1077#1084#1103
      DisplayWidth = 22
      FieldName = 'mon_time'
    end
  end
  object aMonitorDataSource: TDataSource
    DataSet = aMonitorDataSet
    Left = 416
    Top = 120
  end
  object DataSource_Hour: TDataSource
    AutoEdit = False
    Left = 752
    Top = 285
  end
  object DS_error: TDataSource
    AutoEdit = False
    Left = 784
    Top = 280
  end
  object DSintegr: TDataSource
    Left = 824
    Top = 240
  end
  object PopupMenu1: TPopupMenu
    Images = BaseForm.ImageList1
    Left = 324
    Top = 384
    object N1: TMenuItem
      Action = aExportTo
    end
    object N3: TMenuItem
      Action = APrintTable
    end
  end
  object SaveDialog1: TSaveDialog
    Filter = 
      'Text files (*.txt)|*.TXT|Comma separated values (*.csv)|*.CSV|HT' +
      'ML file (*.htm)|*.HTM|Rich Text Format (*.rtf)|*.RTF|Microsoft E' +
      'xcel Workbook (*.xls)|*.XLS'
    FilterIndex = 5
    Title = #1069#1082#1089#1087#1086#1088#1090' '#1076#1072#1085#1085#1099#1093
    Left = 172
    Top = 96
  end
  object DBSumList1: TDBSumList
    Active = False
    DataSet = aMonitorDataSet
    ExternalRecalc = False
    SumCollection = <
      item
        FieldName = 'Gm1'
        GroupOperation = goAvg
      end
      item
        FieldName = 'Gm2'
        GroupOperation = goAvg
      end
      item
        FieldName = 'Gm3'
        GroupOperation = goAvg
      end
      item
        FieldName = 'Gv1'
        GroupOperation = goAvg
      end
      item
        FieldName = 'Gv2'
        GroupOperation = goAvg
      end
      item
        FieldName = 'Gv3'
        GroupOperation = goAvg
      end
      item
        FieldName = 'W'
        GroupOperation = goAvg
      end
      item
        FieldName = 'W2'
        GroupOperation = goAvg
      end
      item
        FieldName = 'T1'
        GroupOperation = goAvg
      end
      item
        FieldName = 'T2'
        GroupOperation = goAvg
      end
      item
        FieldName = 'Th'
        GroupOperation = goAvg
      end
      item
        FieldName = 'Ta'
        GroupOperation = goAvg
      end
      item
        FieldName = 'P1'
        GroupOperation = goAvg
      end
      item
        FieldName = 'P2'
        GroupOperation = goAvg
      end
      item
        FieldName = 'P3'
        GroupOperation = goAvg
      end>
    VirtualRecords = False
    Left = 372
    Top = 88
  end
  object PopupMenu2: TPopupMenu
    Images = BaseForm.ImageList1
    Left = 616
    Top = 176
    object N2: TMenuItem
      Action = aChartAutoMashtab
      AutoCheck = True
    end
    object N1001: TMenuItem
      Action = aChartMax
    end
    object N01: TMenuItem
      Action = aChartMin
    end
    object N4: TMenuItem
      Caption = #1055#1077#1095#1072#1090#1072#1090#1100' '#1075#1088#1072#1092#1080#1082#1080
      ImageIndex = 19
      OnClick = N5Click
    end
    object N5: TMenuItem
      Tag = 1
      Caption = #1057#1082#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1074' '#1073#1091#1092#1077#1088' '#1086#1073#1084#1077#1085#1072
      ImageIndex = 23
      OnClick = N5Click
    end
  end
  object pintegr: TADODataSet
    CursorType = ctStatic
    MarshalOptions = moMarshalModifiedOnly
    Parameters = <>
    Left = 488
    Top = 248
  end
  object PrintDBGridEh1: TPrintDBGridEh
    DBGridEh = HourGrid
    Options = []
    PageFooter.Font.Charset = DEFAULT_CHARSET
    PageFooter.Font.Color = clWindowText
    PageFooter.Font.Height = -11
    PageFooter.Font.Name = 'MS Sans Serif'
    PageFooter.Font.Style = []
    PageHeader.Font.Charset = DEFAULT_CHARSET
    PageHeader.Font.Color = clWindowText
    PageHeader.Font.Height = -11
    PageHeader.Font.Name = 'MS Sans Serif'
    PageHeader.Font.Style = []
    Units = MM
    Left = 508
    Top = 187
  end
  object Monitorread: TTimer
    Enabled = False
    OnTimer = MonitorreadTimer
    Left = 388
    Top = 168
  end
  object aMonitorDSappend: TADODataSet
    CursorType = ctStatic
    Parameters = <>
    Left = 440
    Top = 88
    object aMonitorDSappendGm1: TFloatField
      DisplayLabel = 'Gm1, '#1090'3/'#1095
      FieldName = 'Gm1'
      DisplayFormat = '0.####'
    end
    object aMonitorDSappendGm2: TFloatField
      DisplayLabel = 'Gm2, '#1090'3/'#1095
      FieldName = 'Gm2'
      DisplayFormat = '0.####'
    end
    object aMonitorDSappendGm3: TFloatField
      DisplayLabel = 'Gm3, '#1090'3/'#1095
      FieldName = 'Gm3'
      DisplayFormat = '0.####'
    end
    object aMonitorDSappendGv1: TFloatField
      DisplayLabel = 'Gv1, '#1084'3/'#1095
      FieldName = 'Gv1'
      DisplayFormat = '0.####'
    end
    object aMonitorDSappendGv2: TFloatField
      DisplayLabel = 'Gv2, '#1084'3/'#1095
      FieldName = 'Gv2'
      DisplayFormat = '0.####'
    end
    object aMonitorDSappendGv3: TFloatField
      DisplayLabel = 'Gv3, '#1084'3/'#1095
      FieldName = 'Gv3'
      DisplayFormat = '0.####'
    end
    object aMonitorDSappendW: TFloatField
      DisplayLabel = 'W, '#1043#1082'/'#1095
      FieldName = 'W'
      DisplayFormat = '0.#####'
    end
    object aMonitorDSappendW2: TFloatField
      DisplayLabel = 'W2, '#1043#1082'/'#1095
      FieldName = 'W2'
      DisplayFormat = '0.#####'
    end
    object aMonitorDSappendt1: TFloatField
      DisplayLabel = 'T1, '#176#1057
      FieldName = 't1'
      DisplayFormat = '0.## '
    end
    object aMonitorDSappendt2: TFloatField
      DisplayLabel = 'T2, '#176#1057
      FieldName = 't2'
      DisplayFormat = '0.## '
    end
    object aMonitorDSappendth: TFloatField
      DisplayLabel = 'Th, '#176#1057
      FieldName = 'th'
      DisplayFormat = '0.## '
    end
    object aMonitorDSappendta: TFloatField
      DisplayLabel = 'Ta, '#176#1057
      FieldName = 'ta'
      DisplayFormat = '0.## '
    end
    object aMonitorDSappendp1: TFloatField
      DisplayLabel = 'P1, '#1084#1055#1072
      FieldName = 'p1'
      DisplayFormat = '0.### '
    end
    object aMonitorDSappendp2: TFloatField
      DisplayLabel = 'P2, '#1084#1055#1072
      FieldName = 'p2'
      DisplayFormat = '0.### '
    end
    object aMonitorDSappendp3: TFloatField
      DisplayLabel = 'P3, '#1084#1055#1072
      FieldName = 'p3'
      DisplayFormat = '0.### '
    end
    object aMonitorDSappendt2PPS: TFloatField
      DisplayLabel = 't2PPS, '#176#1057
      FieldName = 't2PPS'
      DisplayFormat = '0.###'
    end
    object aMonitorDSappendthPPS: TFloatField
      DisplayLabel = 'thPPS, '#176#1057
      FieldName = 'thPPS'
      DisplayFormat = '0.###'
    end
    object aMonitorDSappendtDev: TFloatField
      DisplayLabel = 'tDev, '#176#1057
      FieldName = 'tDev'
      DisplayFormat = '0.###'
    end
    object aMonitorDSappendtGvs: TFloatField
      FieldName = 'tGvs'
    end
    object aMonitorDSappendM1: TFloatField
      DisplayLabel = 'M1, '#1090
      FieldName = 'M1'
      DisplayFormat = '0.#####'
    end
    object aMonitorDSappendM2: TFloatField
      DisplayLabel = 'M2, '#1090
      FieldName = 'M2'
      DisplayFormat = '0.#####'
    end
    object aMonitorDSappendM3: TFloatField
      DisplayLabel = 'M3, '#1090
      FieldName = 'M3'
      DisplayFormat = '0.#####'
    end
    object aMonitorDSappendV1: TFloatField
      DisplayLabel = 'V1, '#1084'3'
      FieldName = 'V1'
      DisplayFormat = '0.#####'
    end
    object aMonitorDSappendV2: TFloatField
      DisplayLabel = 'V2, '#1084'3'
      FieldName = 'V2'
      DisplayFormat = '0.#####'
    end
    object aMonitorDSappendVi: TFloatField
      DisplayLabel = 'V'#1080', '#1084'3'
      FieldName = 'Vi'
      DisplayFormat = '0.#####'
    end
    object aMonitorDSappendQ: TFloatField
      DisplayLabel = 'Q, '#1043#1082#1072#1083#1083
      FieldName = 'Q'
      DisplayFormat = '0.#####'
    end
    object aMonitorDSappendQ2: TFloatField
      DisplayLabel = 'Q2, '#1043#1082#1072#1083#1083
      FieldName = 'Q2'
      DisplayFormat = '0.#####'
    end
    object aMonitorDSappendTwork: TFloatField
      DisplayLabel = 'T'#1088', '#1095#1072#1089
      FieldName = 'Twork'
      DisplayFormat = '0.###'
    end
    object aMonitorDSappendstate1: TIntegerField
      DisplayLabel = #1057#1086#1089#1090#1086#1103#1085#1080#1077
      FieldName = 'state1'
      Visible = False
    end
    object aMonitorDSappendstate2: TIntegerField
      DisplayLabel = #1057#1086#1089#1090#1086#1103#1085#1080#1077
      FieldName = 'state2'
      Visible = False
    end
    object aMonitorDSappendmon_time: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072' '#1080' '#1074#1088#1077#1084#1103
      DisplayWidth = 22
      FieldName = 'mon_time'
    end
  end
end
