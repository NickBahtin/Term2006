unit MonitorFrm;
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ADODB, StdCtrls, ComCtrls, ActnList,
  XPStyleActnCtrls, ActnMan, ImgList, ToolWin, ExtCtrls,
  Mask, ToolEdit, CurrEdit, Buttons, Placemnt,
  CheckLst,IniFiles,DateUtils, Spin, Menus, RXCtrls, MyChkLst, DBGridEh,DBGridEhImpExp,
  DBSumLst, PrnDbgeh, Series, TeeProcs, Chart, DBChart, TeEngine;

type
  TConstArray=array [0..14] of integer;
const
  StaticSeriesParam:TConstArray=(101,102,103,104,105,106,114,118,107,108,109,110,111,112,113);

type
  TMonitorForm = class(TForm)
    ActionManager1: TActionManager;
    Hour_PageControl: TPageControl;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    MonChart: TChart;
    Gm1Series: TLineSeries;
    Panel2: TPanel;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    StartDate: TDateTimePicker;
    StartTime: TDateTimePicker;
    GroupBox1: TGroupBox;
    CheckListBox1: TCheckListBox;
    Gm2Series: TLineSeries;
    Gm3Series: TLineSeries;
    Gv1Series: TLineSeries;
    Gv2Series: TLineSeries;
    GqSeries: TLineSeries;
    T1Series: TLineSeries;
    T2Series: TLineSeries;
    P1Series: TLineSeries;
    P2Series: TLineSeries;
    GrafCheckLB: TCheckListBox;
    RefreshBtn: TBitBtn;
    aMonitorDataSet: TADODataSet;
    aMonitorDataSetmon_time: TDateTimeField;
    aMonitorDataSetGm1: TFloatField;
    aMonitorDataSetGm2: TFloatField;
    aMonitorDataSetGm3: TFloatField;
    aMonitorDataSett1: TFloatField;
    aMonitorDataSett2: TFloatField;
    aMonitorDataSetth: TFloatField;
    aMonitorDataSetta: TFloatField;
    aMonitorDataSetp1: TFloatField;
    aMonitorDataSetp2: TFloatField;
    aMonitorDataSetp3: TFloatField;
    aMonitorDataSetW: TFloatField;
    aMonitorDataSett2PPS: TFloatField;
    aMonitorDataSetthPPS: TFloatField;
    aMonitorDataSettDev: TFloatField;
    aMonitorDataSetW2: TFloatField;
    aMonitorDataSetGv1: TFloatField;
    aMonitorDataSetGv2: TFloatField;
    aMonitorDataSetGv3: TFloatField;
    aMonitorDataSetM1: TFloatField;
    aMonitorDataSetM2: TFloatField;
    aMonitorDataSetM3: TFloatField;
    aMonitorDataSetV1: TFloatField;
    aMonitorDataSetV2: TFloatField;
    aMonitorDataSetQ: TFloatField;
    aMonitorDataSetQ2: TFloatField;
    aMonitorDataSetTwork: TFloatField;
    aMonitorDataSetstate1: TIntegerField;
    aMonitorDataSetstate2: TIntegerField;
    aMonitorDataSource: TDataSource;
    DataSource_Hour: TDataSource;
    DS_error: TDataSource;
    DSintegr: TDataSource;
    Series1: TLineSeries;
    Series2: TLineSeries;
    Series3: TLineSeries;
    Series4: TLineSeries;
    Series5: TLineSeries;
    TabControl1: TTabControl;
    Panel1: TPanel;
    Monitor_StateWord1: TMyCheckList;
    Monitor_StateWord2: TMyCheckList;
    CheckBox1: TCheckBox;
    HourGrid: TDBGridEh;
    PopupMenu1: TPopupMenu;
    aExportTo: TAction;
    SaveDialog1: TSaveDialog;
    N1: TMenuItem;
    DBSumList1: TDBSumList;
    PopupMenu2: TPopupMenu;
    aChartAutoMashtab: TAction;
    aChartMin: TAction;
    aChartMax: TAction;
    N2: TMenuItem;
    N1001: TMenuItem;
    N01: TMenuItem;
    pintegr: TADODataSet;
    PrintDBGridEh1: TPrintDBGridEh;
    APrintTable: TAction;
    N3: TMenuItem;
    Monitorread: TTimer;
    aMonitorDSappend: TADODataSet;
    AFitToScreen: TAction;
    ADayToScreen: TAction;
    ARewind: TAction;
    AForward: TAction;
    ADayForward: TAction;
    ADayBackward: TAction;
    ToolBar2: TToolBar;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton6: TToolButton;
    ToolButton5: TToolButton;
    RxSpeedButton3: TRxSpeedButton;
    RxSpeedButton4: TRxSpeedButton;
    ToolButton1: TToolButton;
    aMonitorDSappendGm1: TFloatField;
    aMonitorDSappendGm2: TFloatField;
    aMonitorDSappendGm3: TFloatField;
    aMonitorDSappendGv1: TFloatField;
    aMonitorDSappendGv2: TFloatField;
    aMonitorDSappendGv3: TFloatField;
    aMonitorDSappendW: TFloatField;
    aMonitorDSappendW2: TFloatField;
    aMonitorDSappendt1: TFloatField;
    aMonitorDSappendt2: TFloatField;
    aMonitorDSappendth: TFloatField;
    aMonitorDSappendta: TFloatField;
    aMonitorDSappendp1: TFloatField;
    aMonitorDSappendp2: TFloatField;
    aMonitorDSappendp3: TFloatField;
    aMonitorDSappendmon_time: TDateTimeField;
    aMonitorDSappendt2PPS: TFloatField;
    aMonitorDSappendthPPS: TFloatField;
    aMonitorDSappendtDev: TFloatField;
    aMonitorDSappendM1: TFloatField;
    aMonitorDSappendM2: TFloatField;
    aMonitorDSappendM3: TFloatField;
    aMonitorDSappendV1: TFloatField;
    aMonitorDSappendV2: TFloatField;
    aMonitorDSappendQ: TFloatField;
    aMonitorDSappendQ2: TFloatField;
    aMonitorDSappendTwork: TFloatField;
    aMonitorDSappendstate1: TIntegerField;
    aMonitorDSappendstate2: TIntegerField;
    aMonitorDataSetVi: TFloatField;
    aMonitorDSappendVi: TFloatField;
    N4: TMenuItem;
    N5: TMenuItem;
    Label2: TLabel;
    ToolButton2: TToolButton;
    Period: TSpinEdit;
    Label3: TLabel;
    Step: TSpinEdit;
    Label4: TLabel;
    EndDate: TDateTimePicker;
    EndTime: TDateTimePicker;
    EndPeriodCB: TCheckBox;
    CheckListBox3: TCheckListBox;
    aMonitorDataSettGvs: TFloatField;
    aMonitorDSappendtGvs: TFloatField;
    procedure CheckListBox1ClickCheck(Sender: TObject);
    procedure Hour_PageControlChange(Sender: TObject);
    procedure GrafCheckLBClickCheck(Sender: TObject);
    procedure RefreshBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TabControl1Change(Sender: TObject);
    procedure MonChartMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure MonChartAfterDraw(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure MonChartGetLegendText(Sender: TCustomAxisPanel;
      LegendStyle: TLegendStyle; Index: Integer; var LegendText: String);
    procedure aMonitorDataSetAfterScroll(DataSet: TDataSet);
    procedure GrafCheckLBClick(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure aExportToExecute(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure aChartAutoMashtabExecute(Sender: TObject);
    procedure aChartMinExecute(Sender: TObject);
    procedure aChartMaxExecute(Sender: TObject);
    procedure APrintTableExecute(Sender: TObject);
    procedure MonitorreadTimer(Sender: TObject);
    procedure AFitToScreenExecute(Sender: TObject);
    procedure ADayToScreenExecute(Sender: TObject);
    procedure AForwardExecute(Sender: TObject);
    procedure ADayForwardExecute(Sender: TObject);
    procedure ADayBackwardExecute(Sender: TObject);
    procedure ARewindExecute(Sender: TObject);
    procedure MonChartGetAxisLabel(Sender: TChartAxis;
      Series: TChartSeries; ValueIndex: Integer; var LabelText: String);
    procedure N5Click(Sender: TObject);
    procedure EndPeriodCBClick(Sender: TObject);
    procedure CheckListBox3ClickCheck(Sender: TObject);
  private
    { Private declarations }
    DataArr:array of single;
    StaticSeriesCount: byte;
  public
    Graph_X,Graph_Y:integer;//координаты курсора мыши
    PoslednVrem: TDateTime;
    OnlyParam: byte;
    SelAppend: string;
    model1: integer;
    Syst1: integer;
    Canal: byte;
    procedure RefreshDateSet;
    procedure RestoreSettings;
    procedure SaveSettings;
    procedure ClearDynamicSeries;
    procedure RestoreDynamicSeries;
    procedure ShowGraf(index: byte);
  end;


implementation

uses DModule, BaseFrm;

{$R *.dfm}

//var Edizm4summInfo: array[0..24] of String;
//var SummInfo: array[0..14] of String;
const namemonpar20:array[0..9] of string=('T','P','Ксжим','С кор','Gp','Gc','Vp','Vc','VpДС','ВНР');
EdIzmpar20:array[0..9] of string=('°С','атм','','','м3/ч','м3/ч','м3','м3','см3','ч');

namemonpar19:array[0..27] of string=(
'Iф1','Iф2','Iф3','Uф1','Uф2','Uф3','Угол12','Угол13','Угол23', //8
// 9                          14                  17
'Wа1','Wа2','Wа3','F','Wр1','Wр2','Wр3','Pпсумм','W1','W2','W3','Qпсумм', // 20
'Кw1','Кw2','Кw3','Кw','Eсброс','Eтек','Eвчера');
EdIzmpar19:array[0..27] of string=(
'А','A','А','В','В','В','','','','Вт','Вт','Вт','Гц','ВАр','ВАр','ВАр','кВт*ч',
'ВА','ВА','ВА','кВАр*ч','','','','','кВт*ч','кВт*ч','кВт*ч');
MaskFmt19:array[0..27] of byte=(3,3,3,2,2,2,2,2,2,2,2,2,2,2,2,2,3,2,2,2,3,3,3,3,3,3,3,3);
//                                    0  1  2  3  4  5  6  7  8  9  10 11 12 13 14 15 16 17 18 19 20 21 22 23 24
IndexGrap19:array[0..24] of shortint=(0 ,1 ,2 ,16,17,18,10,14,3 ,4 ,5 ,6 ,7 ,8 ,9 ,11,12,13,15,19,20,21,22,23,24);
MaskZn:array[0..4] of string=('#0','#0.0','#0.00','#0.000','#0.0000');

namepar25:array[0..12] of string=('t1','p1','p2','p3','Gm1','Gv1','t2','Gv2','Gv3','th','Gm2','Gm3','W');
namepar25o:array[0..12] of string=('T1','P1','P2','P3','Gm1','Gv1','v_1','v_2','v_3','u_1','u_2','u_3','W');
EdIzmpar25:array[0..12] of string=('°С','атм','атм','атм','т/ч','м3/ч','м/с','м/с','м/с','м/с','м/с','м/с','Гкал/ч');

procedure TMonitorForm.ShowGraf(index: byte);
//   Q  G1  G2  t1  t2  tхв  P1  P2  Pхв
//   3  4   5   6    7   8   9   10   11
var i,j: integer;
begin
  Hour_PageControl.ActivePageIndex:=1;
  TabControl1.TabIndex:=index;
  Hour_PageControlChange(Nil);
  TabControl1Change(Nil);
// Отключаем все мин и макс по этому параметру
  j:=CheckListBox3.Count;
  CheckListBox3.OnClickCheck:=Nil;
  for i:=0 to j-1 do
   begin
     CheckListBox3.Checked[i]:=false;
     MonChart.SeriesList[StaticSeriesCount+i].Active:=false;
   end;
  CalculateMaxAxis(TDBChart(MonChart),5);
  CheckListBox3.OnClickCheck:=CheckListBox3ClickCheck;
  case OnlyParam of
    3: begin
         GrafCheckLB.Checked[7]:=false; // Откл W2
       end;
    4,5: begin
         GrafCheckLB.Checked[2]:=false; // Откл Gm3
         GrafCheckLB.Checked[0]:=(OnlyParam=4);
         GrafCheckLB.Checked[1]:=(OnlyParam=5);
       end;
    6,7,8:  begin
              GrafCheckLB.Checked[11]:=false; // Откл Ta
              GrafCheckLB.Checked[8]:=(OnlyParam=6);
              GrafCheckLB.Checked[9]:=(OnlyParam=7);
              GrafCheckLB.Checked[10]:=(OnlyParam=8);
            end;
    9,10,11:  begin
              GrafCheckLB.Checked[12]:=(OnlyParam=9);
              GrafCheckLB.Checked[13]:=(OnlyParam=10);
              GrafCheckLB.Checked[14]:=(OnlyParam=11);
            end;
  end; // case
end;

procedure TMonitorForm.RefreshDateSet;
var i,j: integer;
    tmpD:Double;
begin
  MonitorRead.Enabled:=false;
  TabControl1Change(nil);
  CheckListBox1ClickCheck(Nil);
  GrafCheckLBClickCheck(Nil);
  aMonitorDataSet.Close;
  aMonitorDSappend.Close;
  aMonitorDataSet.CommandText:=Selappend+#61#39+FormatDateTime('yyyymmdd ',StartDate.Date)+FormatDateTime('hh:nn:ss',StartTime.Time)+#39;
  if EndPeriodCB.Checked then
   aMonitorDataSet.CommandText:=aMonitorDataSet.CommandText+' and mon_time<='#39+FormatDateTime('yyyymmdd ',EndDate.Date)+FormatDateTime('hh:nn:ss',EndTime.Time)+#39;
  aMonitorDataSet.Open;
  for i:=0 to StaticSeriesCount-1 do MonChart.Series[i].Clear;

  aMonitorDataSet.DisableControls;
  aMonitorDataSet.First;
  j:=0;
  while not aMonitorDataSet.Eof do
//  for  j:=0  to aMonitorDataSet.RecordCount-1 do
  begin
    tmpD:=aMonitorDataSet.FieldByName('mon_time').AsFloat;
// заполнение графиков
    case model1 of
     19,33: for i:=0 to StaticSeriesCount-1 do MonChart.Series[IndexGrap19[i]].AddXY(tmpD,aMonitorDataSet.Fields[i].AsFloat);
     20: begin
           MonChart.Series[0].AddXY(tmpD,aMonitorDataSet.Fields[8].AsFloat); // t1
           MonChart.Series[1].AddXY(tmpD,aMonitorDataSet.Fields[12].AsFloat); // p1
           MonChart.Series[2].AddXY(tmpD,aMonitorDataSet.Fields[15].AsFloat); // T2pps= K сжим
           MonChart.Series[3].AddXY(tmpD,aMonitorDataSet.Fields[16].AsFloat); // ThPPS= K коррекции
           MonChart.Series[4].AddXY(tmpD,aMonitorDataSet.Fields[3].AsFloat); // Gv1
           MonChart.Series[5].AddXY(tmpD,aMonitorDataSet.Fields[4].AsFloat); // Gv2
         end;
     24: if Canal>8 then begin // АП-9
           MonChart.Series[0].AddXY(tmpD,aMonitorDataSet.Fields[0].AsFloat); // I=Gm1
           MonChart.Series[1].AddXY(tmpD,aMonitorDataSet.Fields[8].AsFloat); // U=t1
           MonChart.Series[2].AddXY(tmpD,aMonitorDataSet.Fields[7].AsFloat); // P за 1с=W2
           MonChart.Series[3].AddXY(tmpD,aMonitorDataSet.Fields[26].AsFloat); // Pнагр=Q
         end;
     25: begin // КМ-5М
           MonChart.Series[0].AddXY(tmpD,aMonitorDataSet.Fields[8].AsFloat); // t1
           MonChart.Series[1].AddXY(tmpD,aMonitorDataSet.Fields[12].AsFloat); // p1
           MonChart.Series[2].AddXY(tmpD,aMonitorDataSet.Fields[13].AsFloat); // p2
           MonChart.Series[3].AddXY(tmpD,aMonitorDataSet.Fields[14].AsFloat); // p3
           MonChart.Series[4].AddXY(tmpD,aMonitorDataSet.Fields[0].AsFloat); //  Gm1
           MonChart.Series[5].AddXY(tmpD,aMonitorDataSet.Fields[3].AsFloat); // Gv1
           MonChart.Series[6].AddXY(tmpD,aMonitorDataSet.Fields[9].AsFloat); //   v_1 t2
           MonChart.Series[7].AddXY(tmpD,aMonitorDataSet.Fields[4].AsFloat); //   v_2 Gv2
           MonChart.Series[8].AddXY(tmpD,aMonitorDataSet.Fields[5].AsFloat); //   v_3 Gv3
           MonChart.Series[9].AddXY(tmpD,aMonitorDataSet.Fields[10].AsFloat); //   u_1 th
           MonChart.Series[10].AddXY(tmpD,aMonitorDataSet.Fields[1].AsFloat); //  u_2 Gm2
           MonChart.Series[11].AddXY(tmpD,aMonitorDataSet.Fields[2].AsFloat); //  u_3 Gm3
           MonChart.Series[12].AddXY(tmpD,aMonitorDataSet.Fields[6].AsFloat); // W
         end;
     38: begin
           for i:=0 to StaticSeriesCount-1 do
            begin
              if i=10 then MonChart.Series[i].AddXY(tmpD,aMonitorDataSet.Fields[15].AsFloat)
               else MonChart.Series[i].AddXY(tmpD,aMonitorDataSet.Fields[i].AsFloat);
            end;
         end;
    else
      for i:=0 to StaticSeriesCount-1 do MonChart.Series[i].AddXY(tmpD,aMonitorDataSet.Fields[i].AsFloat);
    end; // case
    aMonitorDataSet.Next;
  end;
  if (model1<8) or (model1=24) or (model1=38) then aMonitorDataSet.AfterScroll:=aMonitorDataSetAfterScroll;
  aMonitorDataSet.Last;
  aMonitorDataSet.EnableControls;
  PoslednVrem:=aMonitorDataSet.FieldByName('mon_time').AsDateTime;
  if not EndPeriodCB.Checked then MonitorRead.Enabled:=true;
// Заполнение массива SummInfo
(*    for i:=0 to GrafCheckLB.Items.Count-1 do
    SummInfo[i]:=Format('%s=%8.2f %s',[GrafCheckLB.Items.Strings[i],
         DBSumList1.SumCollection.Items[i].SumValue, Edizm4summInfo[i]]); *)

  CalculateMaxAxis(TDBChart(MonChart),5);
  //корректируем меню по осям
  aChartMax.tag:=Round(MonChart.LeftAxis.Maximum * 100);
  aChartMax.Caption:=Format(langList[701]+' = %f',[aChartMax.tag / 100]);
  aChartMin.tag:=Round(MonChart.LeftAxis.Minimum * 100);
  aChartMin.Caption:=Format(langList[702]+' = %f',[aChartMin.tag / 100]);
end;

procedure TMonitorForm.CheckListBox1ClickCheck(Sender: TObject);
var i,j:integer;
begin
  j:=CheckListBox1.Items.Count-1;
  for i := 1 to  j do
     HourGrid.Columns[i].Visible:=CheckListBox1.Checked[i-1];
  Panel1.Visible:=CheckListBox1.Checked[j];
end;

procedure TMonitorForm.RestoreSettings;
var i:integer;
    MyIni:TIniFile;
    j1,j: DWORD;
    s,s1:string;
    Date1,Date2: TDateTime;
    minS:TLineSeries;
begin
  aMonitorDataSet.AfterScroll:=Nil;
  if (Model1=19) or (Model1=33) or ((Model1>=25) and (Model1<=28)) then
   else HourGrid.Columns.Delete(16); // убираем tGVS из таблицы
  case model1 of
    20: begin // ВКГ3
     Panel1.Visible:=false;
     CheckListBox1.Clear;
     CheckListBox1.Items.BeginUpdate;
     HourGrid.Columns.Delete(29);
     HourGrid.Columns.Delete(28);
     HourGrid.Columns.Delete(26);
     HourGrid.Columns.Delete(25);
     HourGrid.Columns.Delete(21);
     HourGrid.Columns.Delete(20);
     HourGrid.Columns.Delete(19);
     HourGrid.Columns.Delete(18);
     HourGrid.Columns.Delete(15);
     HourGrid.Columns.Delete(14);
     HourGrid.Columns.Delete(11);
     HourGrid.Columns.Delete(10);
     HourGrid.Columns.Delete(9);
     HourGrid.Columns.Delete(7);
     HourGrid.Columns.Delete(6);
     HourGrid.Columns.Delete(5);
     HourGrid.Columns.Delete(3);
     HourGrid.Columns.Delete(2);
     HourGrid.Columns.Delete(1);
     StaticSeriesCount:=6;
     GrafCheckLB.Clear;
     for j:=0 to 9 do
      begin
        CheckListBox1.Items.Add(namemonpar20[j]);
        CheckListBox1.Checked[j]:=true;
        if EdIzmpar20[j]='' then s:=namemonpar20[j]
         else s:=namemonpar20[j]+', '+EdIzmpar20[j];
        HourGrid.Columns[j+1].Title.Caption:=s;
        if j< StaticSeriesCount then
         begin
           GrafCheckLB.Items.Add(namemonpar20[j]);
           MonChart.SeriesList[j].Title:=namemonpar20[j];
           MonChart.SeriesList[j].ValueFormat:=EdIzmpar20[j];
           GrafCheckLB.Checked[j]:=True;
         end;
      end;
     CheckListBox1.Items.Add('');
     CheckListBox1.Checked[10]:=false;
     CheckListBox1.ItemEnabled[10]:=false;
     CheckListBox1.Items.EndUpdate;
     TabControl1.Tabs[0]:='Температура';
     TabControl1.Tabs[1]:='Абсолютное давление';
     TabControl1.Tabs[2]:='Коэффициенты сжимаемости и коррекции';
     TabControl1.Tabs[3]:='Средний расход';
     TabControl1.Tabs.Delete(5);
     TabControl1.Tabs.Delete(4);
{     i:=CheckListBox1.Items.Count-1;
     j1:=0;
     MaskPar:=115447944;
     for j:=0 to i do
      begin
        if MaskPar and 1>0 then
         begin
           CheckListBox1.Items[j]:=namemonpar2[j1];
           CheckListBox1.Checked[j]:=true;
           if j<>i then
            begin
              if EdIzmpar2[j1]='' then s:=namemonpar2[j1]
               else s:=namemonpar2[j1]+', '+EdIzmpar2[j1];
              HourGrid.Columns[j+2].Title.Caption:=s;
            end;
           inc(j1);
         end else
         begin
           CheckListBox1.Items[j]:='';
//           CheckListBox1.EnabledItem[j]:=false;
           CheckListBox1.Checked[j]:=false;
         end;
        MaskPar:=MaskPar shr 1;
      end;
     }
    end; // 20 - ВКГ
   19,26,27,28,33: begin // 19 - Меркурий 230
         Panel1.Visible:=false;
         CheckListBox1.Items.Add('1'); // добавляем до 27
         i:=CheckListBox1.Items.Count-1;
// дополним графики -
           StaticSeriesCount:=25;
           for j:=15 to 24 do
            begin
              minS:=TLineSeries.Create(MonChart);
              minS.Clear;
              minS.LinePen.Width:=2;
              minS.HorizAxis:=aBottomAxis;
              minS.XValues.DateTime:=true;
              MonChart.AddSeries(minS);
              GrafCheckLB.Items.Add('1');
            end;
         CheckListBox1.Columns:=8;
         CheckListBox3.Visible:=false;
         Application.ProcessMessages;
         GrafCheckLB.Width:=435;
         GrafCheckLB.Columns:=8;
         for j:=0 to i-1 do
          begin
               CheckListBox1.Items[j]:=namemonpar19[j];
               CheckListBox1.Checked[j]:=true;
               if EdIzmpar19[j]='' then s:=namemonpar19[j]
                   else s:=namemonpar19[j]+', '+EdIzmpar19[j];
               HourGrid.Columns[j+1].Title.Caption:=s;
               s1:=MaskZn[MaskFmt19[j]];
               if j<StaticSeriesCount then
                begin
                  GrafCheckLB.Items[j]:=namemonpar19[j];
                  MonChart.SeriesList[j].Title:=namemonpar19[j];
                  MonChart.SeriesList[j].ValueFormat:=EdIzmpar19[j];
                  GrafCheckLB.Checked[j]:=True;
                end;
               (HourGrid.Columns[j+1].Field as TFloatField).DisplayFormat:=s1;
          end;
          CheckListBox1.Items[i]:='';
          CheckListBox1.ItemEnabled[i]:=false;
          CheckListBox1.Checked[i]:=false;
          if model1=33 then
           begin // отсутствует Q2,Tw
             for i:=16 to 20 do
              begin
                CheckListBox1.ItemEnabled[i]:=false;
                CheckListBox1.Checked[i]:=false;
                CheckListBox1.Items[i]:='';
              end;
             CheckListBox1.ItemEnabled[26]:=false;
             CheckListBox1.Checked[26]:=false;
             CheckListBox1.Items[26]:='';
             CheckListBox1.ItemEnabled[27]:=false;
             CheckListBox1.Checked[27]:=false;
             CheckListBox1.Items[27]:='';
           end;
//          TabSheet7.TabVisible:=False;
          TabControl1.Tabs[0]:='Ток';
          TabControl1.Tabs[1]:='Напряжение';
          TabControl1.Tabs[2]:='Углы между фазами';
          TabControl1.Tabs[3]:='Мощность активная';
          TabControl1.Tabs[4]:='Мощность реактивная';
          TabControl1.Tabs[5]:='Мощность полная';
          TabControl1.Tabs.Add('Коэффициент мощности');
       end; // 19 - Меркурий 230; 26,27,28
   24: begin // 24 - АП9
         Panel1.Visible:=false;
         CheckListBox3.Visible:=false;
         HourGrid.Columns.Delete(29); // state2
         HourGrid.Columns.Delete(28); // state1
         if Canal>8 then
          begin // Меркурий 200 в АП-9
             HourGrid.Columns.Delete(27);
             HourGrid.Columns.Delete(26);
             HourGrid.Columns.Delete(24); // Vi
             HourGrid.Columns.Delete(23); // V2

             HourGrid.Columns.Delete(18);
             HourGrid.Columns.Delete(17);
             HourGrid.Columns.Delete(16);

             HourGrid.Columns.Delete(14);
             HourGrid.Columns.Delete(13);
             HourGrid.Columns.Delete(12);
             for i:=10 downto 5 do HourGrid.Columns.Delete(i);
             HourGrid.Columns.Delete(3);
             HourGrid.Columns.Delete(2);

             HourGrid.Columns[3].Index:=9;
             HourGrid.Columns[7].Index:=4;
             HourGrid.Columns[8].Index:=4;
//             HourGrid.Columns[10].Index:=9;

             StaticSeriesCount:=4;
             CheckListBox1.Clear;
             CheckListBox1.Items.BeginUpdate;
             CheckListBox1.Columns:=4;
             CheckListBox1.Items.Add('I,A');
             CheckListBox1.Items.Add('U,В');
             CheckListBox1.Items.Add('P, ВА');
             CheckListBox1.Items.Add('Pн, кВт');
             CheckListBox1.Items.Add('E1,кВт*ч');
             CheckListBox1.Items.Add('E2,кВт*ч');
             CheckListBox1.Items.Add('E3,кВт*ч');
             CheckListBox1.Items.Add('E4,кВт*ч');
             CheckListBox1.Items.Add('Eсум,кВт*ч');
             for i:=0 to 8 do
              begin
                HourGrid.Columns[i+1].Title.Caption:=CheckListBox1.Items[i];
                CheckListBox1.Checked[i]:=true;
              end;
             TabControl1.Tabs[0]:='Ток';
             TabControl1.Tabs[1]:='Напряжение';
             TabControl1.Tabs[2]:='Мощность за 1 сек';
             TabControl1.Tabs[3]:='Мощность в нагрузке';
             TabControl1.Tabs.Delete(5);
             TabControl1.Tabs.Delete(4);
             GrafCheckLB.Clear;
             GrafCheckLB.Items.Add('I');
             GrafCheckLB.Items.Add('U');
             GrafCheckLB.Items.Add('P');
             GrafCheckLB.Items.Add('Pн');
             for i:=0 to 3 do
              begin
                MonChart.SeriesList[i].Title:=GrafCheckLB.Items[i];
                GrafCheckLB.Checked[i]:=true;
              end;
             MonChart.SeriesList[0].ValueFormat:='А';
             MonChart.SeriesList[1].ValueFormat:='В';
             MonChart.SeriesList[2].ValueFormat:='ВА';
             MonChart.SeriesList[3].ValueFormat:='кВт';

          end else // Меркурий 200 в АП-9
          begin
             HourGrid.Columns.Delete(26); // Q2
             HourGrid.Columns.Delete(25); // Q
             HourGrid.Columns.Delete(24); // Vi
             HourGrid.Columns.Delete(23); // V2
             for i:=18 downto 1 do HourGrid.Columns.Delete(i);
             HourGrid.Columns[4].Index:=1;
             TabSheet7.TabVisible:=false;
             StaticSeriesCount:=1;
             CheckListBox1.Clear;
             CheckListBox1.Items.BeginUpdate;
             if Syst1=8 then
              begin
               for i:=1 to 4 do
                begin
                  s:='E'+Chr($30+i);
                  CheckListBox1.Items.Add(s);
                  HourGrid.Columns[i].Title.Caption:=s+',кВт*ч'
                end;
              end
             else
               for i:=1 to 4 do
                begin
                  s:='v'+Chr($30+i);
                  CheckListBox1.Items.Add(s);
                  HourGrid.Columns[i].Title.Caption:=s+',м3'
                end;
              CheckListBox1.Items.Add('Тр');
              HourGrid.Columns[5].Title.Caption:='Траб,ч';
             for i:=1 to 5 do CheckListBox1.Checked[i-1]:=true;
             GrafCheckLB.Clear;
          end; // canal<=8
             i:=CheckListBox1.Items.Add('Состоян');
             CheckListBox1.Checked[i]:=true;
             CheckListBox1.ItemEnabled[i]:=true;
             CheckListBox1.Items.EndUpdate;
// битовые параметры
             Monitor_StateWord1.Items.Clear;
             Monitor_StateWord2.Items.Clear;
             Monitor_StateWord1.Items.BeginUpdate;
             Monitor_StateWord2.Items.BeginUpdate;
             Monitor_StateWord1.Items.Add('Низкий заряд батареи');
             Monitor_StateWord1.Items.Add('Корпус ОТКРЫТ');
             Monitor_StateWord1.Items.Add('Отсут. аппаратная защита');
             Monitor_StateWord1.Items.Add('Питание от БАТАРЕИ');
             Monitor_StateWord1.Items.Add('Неисправен FLASH');
             Monitor_StateWord1.Items.Add('Неисправны делители цепи НАМУР');
             Monitor_StateWord1.Items.EndUpdate;
             Monitor_StateWord2.Items.Add('Вход замкнут');
             Monitor_StateWord2.Items.Add('Наличие цепи НАМУР');
             Monitor_StateWord2.Items.Add('ОБРЫВ КАНАЛА');
             Monitor_StateWord2.Items.Add('КЗ канала');
             Monitor_StateWord2.Items.EndUpdate;
       end; // 24
    25: begin // 25 КМ-5М(погр)
          aMonitorDataSett2.DisplayFormat:='0.####';
          aMonitorDataSetth.DisplayFormat:='0.####';
          HourGrid.Columns.Delete(30); // State2
          HourGrid.Columns.Delete(29); // State1
          HourGrid.Columns.Delete(27); // Q2
          HourGrid.Columns.Delete(25); // Vi
          HourGrid.Columns[24].Title.Caption:='v_1*dt, м'; // V2
          HourGrid.Columns[24].Width:=64;
          HourGrid.Columns[21].Title.Caption:='v_2*dt, м'; // M2
          HourGrid.Columns[22].Title.Caption:='v_3*dt, м'; // M3
          HourGrid.Columns[19].Title.Caption:='v_3, м/с'; //Gv3
          HourGrid.Columns[18].Title.Caption:='v_2, м/с'; //Gv2
          HourGrid.Columns.Delete(16); // Tgvs
          HourGrid.Columns.Delete(15); // W2
          HourGrid.Columns.Delete(14); // Tdev
          HourGrid.Columns.Delete(13); // thpps
          HourGrid.Columns[12].Title.Caption:='T4, °C'; //t2pps
          HourGrid.Columns[12].Width:=45;
          HourGrid.Columns.Delete(7); // ta
          HourGrid.Columns[6].Title.Caption:='u_1, м/с'; //t3
          HourGrid.Columns[6].Width:=64;
          HourGrid.Columns[5].Title.Caption:='v_1, м/с'; //t2
          HourGrid.Columns[5].Width:=64;
          HourGrid.Columns[2].Title.Caption:='u_2, м/с'; //Gm2
          HourGrid.Columns[3].Title.Caption:='u_3, м/с'; //Gm3
// перетасуем столбцы для просмотра
          HourGrid.Columns[18].Index:=16;
          HourGrid.Columns[19].Index:=17;
          HourGrid.Columns[12].Index:=2;
          HourGrid.Columns[6].Index:=12;
          HourGrid.Columns[6].Index:=3;
          HourGrid.Columns[11].Index:=7;
          HourGrid.Columns[12].Index:=3;
          HourGrid.Columns[13].Index:=4;
          HourGrid.Columns[14].Index:=5;

          CheckListBox1.Items.BeginUpdate;
          CheckListBox1.Items.Clear;
          j:=HourGrid.Columns.Count-1;
          for i:=1 to j do
           begin
             j1:=CheckListBox1.Items.Add(HourGrid.Columns[i].Title.Caption);
             CheckListBox1.Checked[j1]:=true;
             CheckListBox1.ItemEnabled[j1]:=true;
           end;

          j1:=CheckListBox1.Items.Add('');
          CheckListBox1.Checked[j1]:=false;
          CheckListBox1.ItemEnabled[j1]:=false;
          CheckListBox1.Checked[9]:=false; // T4
          CheckListBox1.Checked[12]:=false; // P3
          CheckListBox1.Items.EndUpdate;
          for i:=0 to 2 do
           begin
              HourGrid.Columns[3+i].Title.Caption:='Локальная скорость|'+HourGrid.Columns[3+i].Title.Caption;
              HourGrid.Columns[6+i].Title.Caption:='Средняя скорость|'+HourGrid.Columns[6+i].Title.Caption;
              HourGrid.Columns[17+i].Title.Caption:='Интегратор лок.скорости|'+HourGrid.Columns[17+i].Title.Caption;
           end;
        TabControl1.Tabs[3]:='Расходы';
        TabControl1.Tabs[4]:='Локальные и средние скорости';

//namepar25:array[0..12] of string=('t1','p1','p2','p3','Gm1','Gv1','t2','Gv2','Gv3','th','Gm2','Gm3','W');
//namepar25o:array[0..12] of string=('T1','P1','P2','P3','Gm1','Gv1','v_1','v_2','v_3','u_1','u_2','u_3','W');
//EdIzmpar25:array[0..12] of string=('°С','атм','атм','атм','т/ч','м3/ч','м/с','м/с','м/с','м/с','м/с','м/с','Гкал/ч');

// графики  Темп, Давл, Расх Мас+Об, Скорости, Тепло
        StaticSeriesCount:=13;
        MonChart.SeriesList.Delete(14);
        MonChart.SeriesList.Delete(13);
        GrafCheckLB.Items.BeginUpdate;
        GrafCheckLB.Items.Clear;
        for i:=0 to 12 do
         begin
           GrafCheckLB.Items.Add(namepar25o[i]);
           MonChart.SeriesList[i].Title:=namepar25o[i];
           MonChart.SeriesList[i].ValueFormat:=EdIzmpar25[i];
           GrafCheckLB.Checked[i]:=True;
         end;
        GrafCheckLB.Items.EndUpdate;

        end // 25 КМ-5М(погр)
  else // case else
    case syst1 of
      8: begin // электричество - только 3 поля
           TabSheet7.TabVisible:=false; // Графиков нет
           CheckListBox3.Visible:=false;
           HourGrid.Columns.Delete(29);
           HourGrid.Columns.Delete(28);
           HourGrid.Columns.Delete(26);
           HourGrid.Columns.Delete(25);
           HourGrid.Columns.Delete(24);
           for i:=21 downto 1 do HourGrid.Columns.Delete(i);
           CheckListBox1.Items.BeginUpdate;
           CheckListBox1.Clear;
           CheckListBox1.Columns:=2;
           CheckListBox1.Items.Add('E1,кВт*ч');
           CheckListBox1.Items.Add('E2,кВт*ч');
           CheckListBox1.Items.Add('Тр,ч');
           CheckListBox1.Items.Add('Биты состояния');
           for i:=0 to 2 do CheckListBox1.Checked[i]:=true;
           HourGrid.Columns[1].Title.Caption:='E1,кВт*ч';
           HourGrid.Columns[2].Title.Caption:='E2,кВт*ч';
           CheckListBox1.Items.EndUpdate;
         end;
    else // else case syst1 of
      MyIni:=TIniFile.Create(ChangeFileExt(Application.ExeName,'.ini'));
      try
        for i := 0 to CheckListBox1.Items.Count-1 do
          CheckListBox1.Checked[i]:=MyIni.ReadBool('Mon','TablPar'+IntToStr(i+1),True);
        for i := 0 to GrafCheckLB.Items.Count-1 do
          GrafCheckLB.Checked[i]:=MyIni.ReadBool('Mon','GrafPar'+IntToStr(i+1),True);
      finally
        MyIni.Free;
      End;
    end; // case syst1 of
  end; // case

  case Model1 of
  7: begin  // РМ-5-битовые параметры
     Monitor_StateWord1.Items[0]:='Пустая труба РМ-5'; // 'Пустая труба КМ-5'
     Monitor_StateWord1.Items[1]:='-'; // 'Пустая труба ППС'
     Monitor_StateWord1.Items[3]:='-'; // '-G2min < G2 < G2min'
     Monitor_StateWord1.Items[5]:='-'; // 'G2 < -G2min'
     Monitor_StateWord1.Items[9]:='Неиспр. дат.темп. РМ5'; // 'G2 < -G2min'
     Monitor_StateWord1.Items[10]:='-'; // I кат. G2 < допуска
     Monitor_StateWord1.Items[11]:='-'; // I кат. G2 > допуска
     Monitor_StateWord1.Items[12]:='-'; // U кан. G2 > допуска
     Monitor_StateWord1.Items[13]:='-'; // Дат.темп. ППС ???
//
     Monitor_StateWord2.Items[5]:='-'; // 'нет связи КМ-5 с ППС'
     Monitor_StateWord2.Items[ 8]:='обрыв в цепи Р1 РМ-5'; // обрыв в цепи Р1 КМ-5
     Monitor_StateWord2.Items[ 9]:='-'; // обрыв в цепи Р2 КМ-5
     Monitor_StateWord2.Items[10]:='-'; // обрыв в цепи Р2 ППС
     Monitor_StateWord2.Items[11]:='-'; // обрыв в цепи Р3 ППС
     Monitor_StateWord2.Items[28]:='-'; // КМ-5-5 tгвс=t1
     Monitor_StateWord2.Items[31]:='-'; // отрицательный тепловой поток
     end;
    38: begin
             Monitor_StateWord1.Items.Clear;
             Monitor_StateWord1.Visible:=false;
             Monitor_StateWord2.Items.Clear;
             Monitor_StateWord2.Items.BeginUpdate;
             for i:=0 to 21 do
              Monitor_StateWord2.Items.Add(snameerrorSPT943[i]);
             Monitor_StateWord2.Items.EndUpdate;
// t2pps меняем на t3
             HourGrid.Columns[12].Title.Caption:='T3, °C'; //t2pps
             HourGrid.Columns[6].Title.Caption:='Tхв, °C'; //th
             HourGrid.Columns[7].Title.Caption:='Tнв, °C'; //tа
             CheckListBox1.Items[11]:='T3';
             CheckListBox1.Items[5]:='Tхв';
             CheckListBox1.Items[6]:='Tнв';
             GrafCheckLB.Items[11]:='Tнв';
             Gqseries.Title:='W';
             Series4.Title:='W2';
             Series3.Title:='Tнв';
//             GrafCheckLB.Items[10]:='Tхв';
//             Series2.Title:='Tхв';
// Вместо Тхв на график выводим Т3
             GrafCheckLB.Items[10]:='T3';
             Series2.Title:='T3';
        end; // 38
   end; // case
  SetLength(DataArr,StaticSeriesCount);
  CheckListBox1ClickCheck(nil);
  GrafCheckLBClickCheck(nil);
  CheckBox1.OnClick:=Nil;
  CheckBox1.Checked:=ReadPeriod(0,Tag,0,Date1,Date2);
  StartDate.Date:=trunc(Date1);
  StartTime.Time:=Frac(Date1);
  if CheckBox1.Checked then
   begin
     if Date2=0 then
      begin
        EndPeriodCB.Checked:=false;
      end else
      begin
        EndPeriodCB.Checked:=true;
        EndDate.Date:=trunc(Date2);
        EndTime.Time:=Frac(Date2);
      end;
   end else EndPeriodCB.Checked:=false;
  EndPeriodCBClick(Nil);
  s:=IntToStr(tag);
  Selappend:='select Gm1, Gm2, Gm3, Gv1, Gv2, Gv3, W, W2, t1, t2, th, ta, p1, p2, p3, mon_time, t2PPS, thPPS, tDev, tGvs, M1, M2, M3, V1, V2, Vi, Q, Q2, Twork, state1, state2 from t_monitor '+
   'where id_counter = '+s+' and mon_time>';
  pintegr.Close;
  pintegr.CommandText:='select * from ( select 1 as flag,t.n_param ,t.is_controlled,t.min_value,'+
  't.max_value from t_cnt_counter_param t, t_dsp_counter t1 where t1.id_counter='+s+
  'and t.id_dsp_counter=t1.id_dsp_counter union select 2 as flag,t2.n_param,t2.is_controlled,'+
  't2.min_value,t2.max_value from t_cnt_sys_param t2, t_dsp_counter t1 where t1.id_counter='+s+
  ' and (t2.counter_sys=t1.counter_sys or t2.counter_sys=t1.counter_sys1&4) union '+
  'select 3 as flag,t3.n_param,t3.is_controlled,t3.min_value,t3.max_value from t_cnt_param t3) a '+
  'where a.n_param > 100 and a.n_param < 112 order by 2,1';
  pintegr.Open;
  Monitorread.Interval:=Baseform.GetInterval(2); // Интервал мониторинга
  Baseform.RequestMonitorAnimateTimer.Interval:=Monitorread.Interval;
  CheckBox1.OnClick:=CheckBox1Click;
end;

procedure TMonitorForm.SaveSettings;
var i:integer;
    MyIni:TIniFile;
begin
  MyIni:=TIniFile.Create(ChangeFileExt(Application.ExeName,'.ini'));
  try
    for i := 0 to CheckListBox1.Items.Count-1 do
      MyIni.WriteBool('Mon','TablPar'+IntToStr(i+1),CheckListBox1.Checked[i]);
    for i := 0 to GrafCheckLB.Items.Count-1 do
      MyIni.WriteBool('Mon','GrafPar'+IntToStr(i+1),GrafCheckLB.Checked[i]);
  finally
    MyIni.Free;
  End;
end;

procedure TMonitorForm.Hour_PageControlChange(Sender: TObject);
begin
  CheckListBox1.Visible:=Hour_PageControl.ActivePageIndex=0;
  GrafCheckLB.Visible:=Hour_PageControl.ActivePageIndex=1;
  CheckListBox3.Visible:=Hour_PageControl.ActivePageIndex=1;
end;

procedure TMonitorForm.GrafCheckLBClickCheck(Sender: TObject);
var i:integer;
begin
  for i := 0 to MonChart.SeriesList.Count-1 do
  begin
    if i<GrafCheckLB.Items.Count then
     begin
       MonChart.Series[i].Active:=GrafCheckLB.Checked[i] and GrafCheckLB.ItemEnabled[i]
//       if GrafCheckLB.ItemEnabled[i] then
     end;
  end;
end;

procedure TMonitorForm.RefreshBtnClick(Sender: TObject);
begin
  RefreshBtn.Enabled:=False;
  RefreshDateSet;
  CheckBox1Click(Nil);
  RefreshBtn.Enabled:=True;
end;

procedure TMonitorForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  aMonitorDataSet.First;
  aMonitorDataSet.CancelUpdates;
  Monitorread.Enabled:=false;
  if ((model1<19) or (model1=38)) and (syst1<>8) then SaveSettings;
  Action:=caFree;
end;

procedure TMonitorForm.TabControl1Change(Sender: TObject);
var i:integer;
begin
  ClearDynamicSeries;
  case model1 of
   19,26,27,28,33:
   begin
      case TabControl1.TabIndex of
      0: begin
          MonChart.LeftAxis.Title.Caption:='А';
          for i := 0 to MonChart.SeriesList.Count-1 do
           if i<3 then GrafCheckLB.ItemEnabled[i]:=True
            else GrafCheckLB.ItemEnabled[i]:=false;
         end;
      1: begin
          MonChart.LeftAxis.Title.Caption:='В';
          for i := 0 to MonChart.SeriesList.Count-1 do
           if (i>2) and (i<6) then GrafCheckLB.ItemEnabled[i]:=True
            else GrafCheckLB.ItemEnabled[i]:=false;
         end;
      2: begin
          MonChart.LeftAxis.Title.Caption:='';
          for i := 0 to MonChart.SeriesList.Count-1 do
           if (i>5) and (i<9) then GrafCheckLB.ItemEnabled[i]:=True
            else GrafCheckLB.ItemEnabled[i]:=false;
         end;
      3: begin
          MonChart.LeftAxis.Title.Caption:='Вт';
          for i := 0 to MonChart.SeriesList.Count-1 do
           if (i>8) and (i<12) then GrafCheckLB.ItemEnabled[i]:=True
            else GrafCheckLB.ItemEnabled[i]:=false;
         end;
      4: begin
          MonChart.LeftAxis.Title.Caption:='ВАр';
          for i := 0 to MonChart.SeriesList.Count-1 do
           if (i>12) and (i<16) then GrafCheckLB.ItemEnabled[i]:=True
            else GrafCheckLB.ItemEnabled[i]:=false;
         end;
      5: begin
          MonChart.LeftAxis.Title.Caption:='ВА';
          for i := 0 to MonChart.SeriesList.Count-1 do
           if (i>16) and (i<20) then GrafCheckLB.ItemEnabled[i]:=True
            else GrafCheckLB.ItemEnabled[i]:=false;
         end;
      6: begin
          MonChart.LeftAxis.Title.Caption:='';
          for i := 0 to MonChart.SeriesList.Count-1 do
           if (i>20) and (i<25) then GrafCheckLB.ItemEnabled[i]:=True
            else GrafCheckLB.ItemEnabled[i]:=false;
         end;
      end; // case
   end;
  20: begin // VKG
          case TabControl1.TabIndex of
          0: begin //Температура
              MonChart.LeftAxis.Title.Caption:='°C';
              GrafCheckLB.ItemEnabled[0]:=true;
              for i := 1 to MonChart.SeriesList.Count-1 do
                GrafCheckLB.ItemEnabled[i]:=false;
             end;
          1: begin //Давление
               GrafCheckLB.ItemEnabled[0]:=false;
               GrafCheckLB.ItemEnabled[1]:=true;
               for i := 2 to MonChart.SeriesList.Count-1 do GrafCheckLB.ItemEnabled[i]:=False;
              MonChart.LeftAxis.Title.Caption:='атм';
             end;
          2: begin // Коэффициенты 2 шт
               for i := 0 to MonChart.SeriesList.Count-1 do
               if (i=2) or (i=3) then
                  GrafCheckLB.ItemEnabled[i]:=True
               else
                  GrafCheckLB.ItemEnabled[i]:=False;
               MonChart.LeftAxis.Title.Caption:='';
             end;
          3: begin// Средние расходы
               for i := 0 to MonChart.SeriesList.Count-1 do
               if (i=4) or (i=5) then
                  GrafCheckLB.ItemEnabled[i]:=True
               else
                  GrafCheckLB.ItemEnabled[i]:=False;
               MonChart.LeftAxis.Title.Caption:='м3/ч';
             end;
          end; // case
      end; // VKG
   24: begin
         if Canal<8 then exit;
         for i := 0 to 3 do
          GrafCheckLB.ItemEnabled[i]:=(i=TabControl1.TabIndex);
          case TabControl1.TabIndex of
            0: MonChart.LeftAxis.Title.Caption:='I, А';
            1: MonChart.LeftAxis.Title.Caption:='U, В';
            2: MonChart.LeftAxis.Title.Caption:='P, ВА';
            3:  MonChart.LeftAxis.Title.Caption:='Pн, кВт';
          end; // case
       end; // 24
   25: begin
          case TabControl1.TabIndex of
          0: begin // Все
               for i := 0 to MonChart.SeriesList.Count-1 do
                GrafCheckLB.ItemEnabled[i]:=True;
              MonChart.LeftAxis.Title.Caption:='°C, атм, т/ч, м3/ч, м/с, Гкал/ч';
             end;
          1: begin // темп
               GrafCheckLB.ItemEnabled[0]:=true;
               for i:=1 to MonChart.SeriesList.Count-1 do
                GrafCheckLB.ItemEnabled[i]:=false;
              MonChart.LeftAxis.Title.Caption:='°C';
             end;
          2: begin // давл
               GrafCheckLB.ItemEnabled[0]:=false;
               for i:=1 to MonChart.SeriesList.Count-1 do
                GrafCheckLB.ItemEnabled[i]:=(i<4);
              MonChart.LeftAxis.Title.Caption:='атм';
             end;
          3: begin // расходы
               for i:=0 to MonChart.SeriesList.Count-1 do
                GrafCheckLB.ItemEnabled[i]:=false;
               GrafCheckLB.ItemEnabled[4]:=true;
               GrafCheckLB.ItemEnabled[5]:=true;
              MonChart.LeftAxis.Title.Caption:='т/ч, м3/ч';
             end;
          4: begin // скорости
               for i:=0 to MonChart.SeriesList.Count-1 do
                GrafCheckLB.ItemEnabled[i]:=((i>5) and (i<12));
              MonChart.LeftAxis.Title.Caption:='м/c';
             end;
          5: begin // тепло
               for i:=0 to MonChart.SeriesList.Count-1 do
                GrafCheckLB.ItemEnabled[i]:=false;
               GrafCheckLB.ItemEnabled[12]:=true;
              MonChart.LeftAxis.Title.Caption:='Гкал/ч';
             end;

          end; // case TabControl1.TabIndex
       end;
  else // case
  case TabControl1.TabIndex of
  0: begin
      MonChart.LeftAxis.Title.Caption:=langList[1525];
      for i := 0 to MonChart.SeriesList.Count-1 do
        GrafCheckLB.ItemEnabled[i]:=True;
     end;
  1: begin //Температуры
       for i := 0 to MonChart.SeriesList.Count-1 do
       if i in [8..11] then
          GrafCheckLB.ItemEnabled[i]:=True
       else
          GrafCheckLB.ItemEnabled[i]:=False;
      MonChart.LeftAxis.Title.Caption:='°C';
     end;
  2: begin //Давления
       for i := 0 to MonChart.SeriesList.Count-1 do
       if i in [12..14] then
          GrafCheckLB.ItemEnabled[i]:=True
       else
          GrafCheckLB.ItemEnabled[i]:=False;
       MonChart.LeftAxis.Title.Caption:=langList[882];
     end;
  3: begin//Расходы массовые
       for i := 0 to MonChart.SeriesList.Count-1 do
       if i in [0..2] then
          GrafCheckLB.ItemEnabled[i]:=True
       else
          GrafCheckLB.ItemEnabled[i]:=False;
       MonChart.LeftAxis.Title.Caption:=Gm1Series.ValueFormat;
     end;
  4: begin//Расходы объемные
       for i := 0 to MonChart.SeriesList.Count-1 do
       if i in [3..5] then
          GrafCheckLB.ItemEnabled[i]:=True
       else
          GrafCheckLB.ItemEnabled[i]:=False;
       MonChart.LeftAxis.Title.Caption:=Gv1Series.ValueFormat;
     end;
  5: begin//Теплопотребление
       for i := 0 to MonChart.SeriesList.Count-1 do
       if i in [6..7] then
          GrafCheckLB.ItemEnabled[i]:=True
       else
          GrafCheckLB.ItemEnabled[i]:=False;
       MonChart.LeftAxis.Title.Caption:=GqSeries.ValueFormat;
     end;
  end; // case
  end; // case model1
  with TabControl1 do
    MonChart.LeftAxis.Title.Caption:=Tabs[TabIndex]+' ( '+MonChart.LeftAxis.Title.Caption+' )';
    GrafCheckLB.OnClickCheck(GrafCheckLB);
  if (TabControl1.TabIndex>0) then RestoreDynamicSeries;
  //корректируем меню по осям
  if not aChartMax.Enabled then
  begin
    CalculateMaxAxis(TDBChart(MonChart),5);
    aChartMax.tag:=Round(MonChart.LeftAxis.Maximum * 100);
    aChartMax.Caption:=Format(langList[701]+' = %f',[aChartMax.tag / 100]);
    aChartMin.tag:=Round(MonChart.LeftAxis.Minimum * 100);
    aChartMin.Caption:=Format(langList[702]+' = %f',[aChartMin.tag / 100]);
  end;
end;

procedure TMonitorForm.MonChartMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  Graph_X:=X;
  Graph_Y:=Y;
  MonChart.Invalidate;
end;

procedure TMonitorForm.MonChartAfterDraw(Sender: TObject);
var i,j:integer;
  tmpRect:TRect;
begin
  MonChart.Canvas.Brush.Color:=MonChart.Color;
  tmpRect:=Bounds(Monchart.ChartRect.Right+7,0,141,30);
  MonChart.Canvas.Frame3D(tmpRect,clWhite,clGray,2);
  MonChart.Canvas.Font.Size:=8;
  MonChart.Canvas.Font.Name:='Arial';
  MonChart.Canvas.Pen.Width:=3;
  MonChart.Canvas.TextOut(MonChart.ChartRect.Right+34,2,langList[951]);
  MonChart.Canvas.TextOut(MonChart.ChartRect.Right+29,14,CurrentDataYPerX(TDBChart(MonChart),Graph_X,DataArr));
  j:=0;
  for i :=0  to MonChart.SeriesList.Count-1  do
    {$IFDEF CHART_ITEMS}
    if MonChart.SeriesList.Items[i].Active then
    {$ELSE}
    if MonChart.SeriesList.Series[i].Active then
    {$ENDIF}
    begin
       MonChart.Canvas.Pen.Color:=MonChart.SeriesList[i].SeriesColor;
       MonChart.Canvas.MoveTo(MonChart.ChartRect.Right+10,38+j*12);
       MonChart.Canvas.LineTo(MonChart.ChartRect.Right+18,38+j*12);
       MonChart.Canvas.TextOut(MonChart.ChartRect.Right+22,31+j*12,
       Format('%s %8.3f %s',[MonChart.SeriesList[i].Title,DataArr[i],
        MonChart.SeriesList[i].ValueFormat] ));
       inc(j);
    end;
end;

procedure TMonitorForm.FormCreate(Sender: TObject);
var i: byte;
begin
Gm1Series.ValueFormat:=langList[883]+'/'+langList[946]; //'т/ч'
Gm2Series.ValueFormat:=Gm1Series.ValueFormat;
Gm3Series.ValueFormat:=Gm1Series.ValueFormat;
Gv1Series.ValueFormat:=langList[885]+'/'+langList[946]; //'м3/ч'
Gv2Series.ValueFormat:=Gv1Series.ValueFormat;
Series1.ValueFormat:=Gv1Series.ValueFormat;
GqSeries.ValueFormat:=langList[887]+'/'+langList[946]; //'Гкал/ч'
Series4.ValueFormat:=GqSeries.ValueFormat;
P1Series.ValueFormat:=langList[882]; //'Атм'

{  Edizm4summInfo[0]:=Gm1Series.ValueFormat;
  Edizm4summInfo[1]:=Edizm4summInfo[0];
  Edizm4summInfo[2]:=Edizm4summInfo[0];
  Edizm4summInfo[3]:=Gv1Series.ValueFormat;
  Edizm4summInfo[4]:=Edizm4summInfo[3];
  Edizm4summInfo[5]:=Edizm4summInfo[3];
  Edizm4summInfo[6]:=GqSeries.ValueFormat;
  Edizm4summInfo[7]:=Edizm4summInfo[6];
  Edizm4summInfo[8]:='°C';
  Edizm4summInfo[9]:=Edizm4summInfo[8];
  Edizm4summInfo[10]:=Edizm4summInfo[8];
  Edizm4summInfo[11]:=Edizm4summInfo[8];
  Edizm4summInfo[12]:=langList[882];
  Edizm4summInfo[13]:=Edizm4summInfo[12];
  Edizm4summInfo[14]:=Edizm4summInfo[12];
}
TabSheet6.Caption:=langList[866]; //'Таблица'
Monitor_StateWord1.Items[0]:=langList[1482]; // 'Пустая труба КМ-5'
Monitor_StateWord1.Items[1]:=langList[1483]; // 'Пустая труба ППС'
Monitor_StateWord1.Items[6]:=langList[1484]; // 'I кат. G1 < допуска'
Monitor_StateWord1.Items[7]:=langList[1485]; // 'I кат. G1 > допуска'
Monitor_StateWord1.Items[8]:=langList[1486]; // 'U кан. G1 > допуска'
Monitor_StateWord1.Items[9]:=langList[1487]; // 'Дат.темп. КМ5 ???'
Monitor_StateWord1.Items[10]:=langList[1488]; //'I кат. G2 < допуска'
Monitor_StateWord1.Items[11]:=langList[1489]; //'I кат. G2 > допуска'
Monitor_StateWord1.Items[12]:=langList[1490]; //'U кан. G2 > допуска'
Monitor_StateWord1.Items[13]:=langList[1491]; //'Дат.темп. ППС ???')
for i:=0 to 31 do Monitor_StateWord2.Items[i]:=langList[1492+i];
TabSheet7.Caption:=langList[869]; //'График'
for i:=0 to 5 do TabControl1.Tabs[i]:=langList[876+i];
P2Series.ValueFormat:=langList[882]; //'Атм'
Series5.ValueFormat:=langList[882]; //'Атм'
Label2.Caption:=langList[481]+', '+langList[947]; //'Период, сут '
Label3.Caption:=' '+langList[1476]+' '; //' Шаг, час '
GroupBox2.Caption:=' '+langList[1477]+' '; //' Диапазон мониторинга параметров '
Label1.Caption:=langList[861]; //'с'
Label4.Caption:=langList[862]; //'по'
RefreshBtn.Caption:=langList[863]; //'Обновить'
CheckBox1.Caption:=langList[864]; //'Запомнить период'
GroupBox1.Caption:=langList[1478]; //'Вывести значения измерительных каналов'
aExportTo.Caption:=langList[698]; //'Экспорт данных в...'
aChartAutoMashtab.Caption:=langList[700]; //'Автоматическое масштабирование'
aChartAutoMashtab.Hint:=langList[700]; //'Автоматическое масштабирование'
aChartMin.Caption:=langList[702]; //'Минимум'
aChartMin.Hint:=langList[702]; //'Минимальное значение'
aChartMax.Caption:=langList[701]; //'Максимум'
aChartMax.Hint:=langList[701]; //'Максимальное значение'
APrintTable.Caption:=langList[699]; //'Печать таблицы'
AFitToScreen.Caption:=langList[1479]; //'Вместить весь график'
AFitToScreen.Hint:=langList[1479]; //'Вместить весь график'
ADayToScreen.Caption:=langList[902]; //'Масштаб один день'
ADayToScreen.Hint:=langList[902]; //'Масштаб один день'
ARewind.Caption:=langList[1480]; //'Экран влево'
ARewind.Hint:=langList[1480]; //'Экран влево'
AForward.Caption:=langList[1481]; //'Экран вправо'
AForward.Hint:=langList[1481]; //'Экран вправо'
ADayForward.Caption:=langList[908]; //'Два часа вперед'
ADayForward.Hint:=langList[908]; //'Два часа вперед'
ADayBackward.Caption:=langList[909]; //'Два часа назад'
ADayBackward.Hint:=langList[909]; //'Два часа назад'

aMonitorDataSetGm1.DisplayLabel:='Gm1, '+Gm1Series.ValueFormat; //'Gm1, т/ч'
aMonitorDataSetGm2.DisplayLabel:='Gm2, '+Gm1Series.ValueFormat; //'Gm2, т/ч'
aMonitorDataSetGm3.DisplayLabel:='Gm3, '+Gm1Series.ValueFormat; //'Gm3, т/ч'
aMonitorDataSetGv1.DisplayLabel:='Gv1, '+Gv1Series.ValueFormat; //'Gv1, м3/ч'
aMonitorDataSetGv2.DisplayLabel:='Gv2, '+Gv1Series.ValueFormat; //'Gv2, м3/ч'
aMonitorDataSetGv3.DisplayLabel:='Gv3, '+Gv1Series.ValueFormat; //'Gv3, м3/ч'
aMonitorDataSetW.DisplayLabel :='W,  '+GqSeries.ValueFormat; //'W,  Гк/ч'
aMonitorDataSetW2.DisplayLabel:='W2, '+GqSeries.ValueFormat; //'W2, Гк/ч'
aMonitorDataSetp1.DisplayLabel:='P1, '+langList[1524]; //'P1, мПа'
aMonitorDataSetp2.DisplayLabel:='P2, '+langList[1524]; //'P2, мПа'
aMonitorDataSetp3.DisplayLabel:='P3, '+langList[1524]; //'P3, МПа'
aMonitorDataSetmon_time.DisplayLabel:=langList[1236]; //'Дата и время'
aMonitorDataSetM1.DisplayLabel:=langList[892]; //'M1, т'
aMonitorDataSetM2.DisplayLabel:=langList[893]; //'M2, т'
aMonitorDataSetM3.DisplayLabel:='M3, '+langList[883]; //'M3, т'
aMonitorDataSetV1.DisplayLabel:=langList[895]; //'V1, м3'
aMonitorDataSetV2.DisplayLabel:=langList[896]; //'V2, м3'
aMonitorDataSetVi.DisplayLabel:=langList[894]; //'Vи, м3'
aMonitorDataSetQ.DisplayLabel :=langList[891]; //'Q, Гкалл'
aMonitorDataSetQ2.DisplayLabel:='Q2, '+langList[887]; //'Q2, Гкалл'
aMonitorDataSetTwork.DisplayLabel:= langList[897]; //'Tр, час'
aMonitorDataSetstate1.DisplayLabel:=langList[727]; //'Состояние'
aMonitorDataSetstate2.DisplayLabel:=langList[727]; //'Состояние'

SaveDialog1.Title:=langList[697]; //'Экспорт данных'
N4.Caption:=langList[703]; //'Печатать графики'
N5.Caption:=langList[704]; //'Скопировать в буфер обмена'
aMonitorDSappendGm1.DisplayLabel:=aMonitorDataSetGm1.DisplayLabel; //'Gm1, т3/ч'
aMonitorDSappendGm2.DisplayLabel:=aMonitorDataSetGm2.DisplayLabel; //'Gm2, т3/ч'
aMonitorDSappendGm3.DisplayLabel:=aMonitorDataSetGm3.DisplayLabel; //'Gm3, т3/ч'
aMonitorDSappendGv1.DisplayLabel:=aMonitorDataSetGv1.DisplayLabel; //'Gv1, м3/ч'
aMonitorDSappendGv2.DisplayLabel:=aMonitorDataSetGv2.DisplayLabel; //'Gv2, м3/ч'
aMonitorDSappendGv3.DisplayLabel:=aMonitorDataSetGv3.DisplayLabel; //'Gv3, м3/ч'
aMonitorDSappendW.DisplayLabel :='W,  '+GqSeries.ValueFormat; //'W,  Гк/ч'
aMonitorDSappendW2.DisplayLabel:='W2, '+GqSeries.ValueFormat; //'W2, Гк/ч'
aMonitorDSappendp1.DisplayLabel:='P1, '+langList[1524]; //'P1, мПа'
aMonitorDSappendp2.DisplayLabel:='P2, '+langList[1524]; //'P2, мПа'
aMonitorDSappendp3.DisplayLabel:='P3, '+langList[1524]; //'P3, МПа'
aMonitorDSappendmon_time.DisplayLabel:=langList[1236]; //'Дата и время'
aMonitorDSappendM1.DisplayLabel:=langList[892]; //'M1, т'
aMonitorDSappendM2.DisplayLabel:=langList[893]; //'M2, т'
aMonitorDSappendM3.DisplayLabel:='M3, '+langList[883]; //'M3, т'
aMonitorDSappendV1.DisplayLabel:=langList[895]; //'V1, м3'
aMonitorDSappendV2.DisplayLabel:=langList[896]; //'V2, м3'
aMonitorDSappendVi.DisplayLabel:=langList[894]; //'Vи, м3'
aMonitorDSappendQ.DisplayLabel:=langList[891]; //'Q, Гкалл'
aMonitorDSappendQ2.DisplayLabel:='Q2, '+langList[887]; //'Q2, Гкалл'
aMonitorDSappendTwork.DisplayLabel :=langList[897]; //'Tр, час'
aMonitorDSappendstate1.DisplayLabel:=langList[727]; //'Состояние'
aMonitorDSappendstate2.DisplayLabel:=langList[727]; //'Состояние'
  StaticSeriesCount:=15;

end;

procedure TMonitorForm.MonChartGetLegendText(Sender: TCustomAxisPanel;
  LegendStyle: TLegendStyle; Index: Integer; var LegendText: String);
var i:integer;
begin
  for i := 0 to MonChart.SeriesList.Count-1 do
  begin
     if MonChart.SeriesList[i].Title=LegendText then
     begin
       LegendText:=Format('%s'+' %8.3f '+MonChart.SeriesList[i].ValueFormat,[MonChart.SeriesList[i].Title,DataArr[i]]);
       break
     end;
  end;
end;

procedure TMonitorForm.aMonitorDataSetAfterScroll(DataSet: TDataSet);
begin
  if (model1<8) or (model1=24) then
   begin
    if model1=24 then
   Monitor_StateWord1.LongMask:=aMonitorDataSet.FieldByName('state1').AsInteger
  else Monitor_StateWord1.LongMask:=aMonitorDataSet.FieldByName('state1').AsInteger shr 10;
  Monitor_StateWord2.LongMask:=aMonitorDataSet.FieldByName('state2').AsInteger;
   end;
  if model1=38 then
   Monitor_StateWord2.LongMask:=aMonitorDataSet.FieldByName('state1').AsInteger;
end;

procedure TMonitorForm.GrafCheckLBClick(Sender: TObject);
begin
//  CalculateMaxAxis(TDBChart(MonChart),5);
//  TabControl1Change(Sender);
end;

procedure TMonitorForm.CheckBox1Click(Sender: TObject);
begin
  if CheckBox1.Checked then
   begin
     if EndPeriodCB.Checked then
      SavePeriod(Trunc(StartDate.Date)+Frac(StartTime.Time),Trunc(EndDate.Date)+Frac(EndTime.Time),0,Tag,0)
       else SavePeriod(Trunc(StartDate.Date)+Frac(StartTime.Time),0,0,Tag,0);
   end
   else
      DelPeriod('mon',Tag,0);
end;

procedure TMonitorForm.aExportToExecute(Sender: TObject);
var ExpClass:TDBGridEhExportClass;
    Ext:String;
begin
  SaveDialog1.FileName := 'm'+Inttostr(Tag);
    if SaveDialog1.Execute then
    begin
      case SaveDialog1.FilterIndex of
        1: begin ExpClass := TDBGridEhExportAsText; Ext := 'txt'; end;
        2: begin ExpClass := TDBGridEhExportAsCSV; Ext := 'csv'; end;
        3: begin ExpClass := TDBGridEhExportAsHTML; Ext := 'htm'; end;
        4: begin ExpClass := TDBGridEhExportAsRTF; Ext := 'rtf'; end;
        5: begin ExpClass := TDBGridEhExportAsXLS; Ext := 'xls'; end;
      else
        ExpClass := nil; Ext := '';
      end;
      if ExpClass <> nil then
      begin
        if UpperCase(Copy(SaveDialog1.FileName,Length(SaveDialog1.FileName)-2,3)) <>
           UpperCase(Ext) then SaveDialog1.FileName := SaveDialog1.FileName + '.' + Ext;
        SaveDBGridEhToExportFile(ExpClass,HourGrid,SaveDialog1.FileName,True);
     end;
    end;
end;

procedure TMonitorForm.FormResize(Sender: TObject);
begin
  MonChart.MarginRight:=trunc(14800/MonChart.Width)+1;
end;

procedure TMonitorForm.aChartAutoMashtabExecute(Sender: TObject);
begin
  aChartMin.Enabled:=Not aChartAutoMashtab.Checked;
  aChartMax.Enabled:=Not aChartAutoMashtab.Checked;
  if aChartAutoMashtab.Checked then
  begin
    MonChart.LeftAxis.Automatic:=True;
  end
  else begin
    MonChart.LeftAxis.Automatic:=False;
    MonChart.LeftAxis.Minimum:=aChartMin.tag / 100;
    MonChart.LeftAxis.Maximum:=aChartMax.tag / 100;
  end;
end;

procedure TMonitorForm.aChartMinExecute(Sender: TObject);
var s:String;
    tmpF:single;
begin
  s:=Format('%f',[aChartMin.tag/100]);
  if MyInputQuery(langList[745],langList[747],s) then
  begin
     try
       tmpF:=StrToFloat(S);
       MonChart.LeftAxis.Minimum:=tmpF;
       aChartMin.tag:=Round(tmpF*100);
       aChartMin.Caption:=Format(langList[702]+' = %f',[tmpF]);
     except
     end;
  end;
end;

procedure TMonitorForm.aChartMaxExecute(Sender: TObject);
var s:String;
    tmpF:single;
begin
  s:=Format('%f',[aChartMax.tag/100]);
  if MyInputQuery(langList[745],langList[746],s) then
  begin
     try
       tmpF:=StrToFloat(S);
       MonChart.LeftAxis.Maximum:=tmpF;
       aChartMax.tag:=Round(tmpF*100);
       aChartMax.Caption:=Format(langList[701]+' = %f',[tmpF]);
     except
     end;
  end;
end;

procedure TMonitorForm.ClearDynamicSeries;
var i,j:integer;
begin
  CheckListBox3.Items.Clear;
  j:=MonChart.SeriesCount-1;
  for i := j downto StaticSeriesCount do
    MonChart.Series[i].Free;
end;


procedure TMonitorForm.RestoreDynamicSeries;
var i,j:integer;
    minS:TLineSeries;
    tmpF:single;
begin
  if model1>18 then exit;
  CheckListBox3.Items.BeginUpdate;
  CheckListBox3.OnClickCheck:=Nil;
  for i := 0 to StaticSeriesCount-1 do
  begin
    //пробегаемся по сериям - если находим видимую - то берем ее индекс и  ищем в массиве...
    if MonChart.Series[i].Active then
    begin
       // Ищем в наборе запись с таким индексом
       if pintegr.Locate('n_param',StaticSeriesParam[i],[]) then
       begin
          //Нашли параметр
          //Если по минимуму граница заполнена
          if not pintegr.FieldByName('min_value').IsNull then
          begin
             //Добавляем серию
             tmpF:=pintegr.FieldByName('min_value').AsFloat;
             minS:=TLineSeries.Create(MonChart);
             MonChart.AddSeries(minS);
             minS.Title:=MonChart.Series[i].Title+' Min';
             j:=CheckListBox3.Items.Add(minS.Title);
             CheckListBox3.Checked[j]:=true;
             minS.Clear;
             minS.ValueFormat:=MonChart.Series[i].ValueFormat;
             minS.LinePen.Width:=2;
             mins.HorizAxis:=aTopAxis;
             minS.AddXY(0,tmpF);
             minS.AddXY(10,tmpF);
//             for j :=0  to MonChart.Series[i].Count-1 do
//               minS.AddXY(MonChart.Series[i].XValue[j],tmpF);
             minS.Active:=True;
          end;

          //Если по макс граница заполнена
          if not pintegr.FieldByName('max_value').IsNull then
          begin
             //Добавляем серию
             tmpF:=pintegr.FieldByName('max_value').AsFloat;
             minS:=TLineSeries.Create(MonChart);
             MonChart.AddSeries(minS);
             minS.Title:=MonChart.Series[i].Title+' Max';
             j:=CheckListBox3.Items.Add(minS.Title);
             CheckListBox3.Checked[j]:=true;
             minS.Clear;
             minS.ValueFormat:=MonChart.Series[i].ValueFormat;
             minS.LinePen.Width:=2;
             mins.HorizAxis:=aTopAxis;
             minS.AddXY(0,tmpF);
             minS.AddXY(10,tmpF);
(*             for j :=0  to MonChart.Series[i].Count-1 do
               minS.AddXY(MonChart.Series[i].XValue[j],tmpF);*)
             minS.Active:=True;
          end;
       end;
    end;
  end;

  CheckListBox3.OnClickCheck:=CheckListBox3ClickCheck;
  CheckListBox3.Items.EndUpdate;

  SetLength(DataArr,MonChart.SeriesList.Count);
  CalculateMaxAxis(TDBChart(MonChart),5);
  //корректируем меню по осям
  aChartMax.tag:=Round(MonChart.LeftAxis.Maximum * 100);
  aChartMax.Caption:=Format(langList[701]+' = %f',[aChartMax.tag / 100]);
  aChartMin.tag:=Round(MonChart.LeftAxis.Minimum * 100);
  aChartMin.Caption:=Format(langList[702]+' = %f',[aChartMin.tag / 100]);
end;

procedure TMonitorForm.APrintTableExecute(Sender: TObject);
begin
  PrintDBGridEh1.Title.Clear;
  PrintDBGridEh1.Title.Add(Caption);
  PrintDBGridEh1.Preview;
end;

procedure TMonitorForm.MonitorreadTimer(Sender: TObject);
var i: byte;
begin
  if BaseForm.otpalSQL then exit;
  aMonitorDSappend.Close;
  aMonitorDSappend.CommandText:=SelAppend+
   #39+FormatDateTime('yyyymmdd hh:nn:ss',PoslednVrem)+#39;
  try
  aMonitorDSappend.Open;
  except
    exit;
  end;
  if aMonitorDSappend.RecordCount>0 then
   begin
     while not aMonitorDSappend.Eof do
      begin
         aMonitorDataSet.Append;
         for i:= 0 to aMonitorDataSet.FieldCount-1 do
         begin
          if (not aMonitorDSappend.Fields[i].IsNull) then aMonitorDataSet.Fields[i].Assign(aMonitorDSappend.Fields[i]);
          if i<StaticSeriesCount then
           if (model1 in [19,26,27,28,33]) then MonChart.Series[IndexGrap19[i]].AddXY(PoslednVrem,aMonitorDSappend.Fields[i].AsFloat)
            else
            if (Model1=38) and (i=10) then MonChart.Series[10].AddXY(PoslednVrem,aMonitorDSappend.Fields[15].AsFloat)
             else MonChart.Series[i].AddXY(PoslednVrem,aMonitorDSappend.Fields[i].AsFloat);
         end;
         aMonitorDataSet.Post;
         aMonitorDSappend.Next;
      end;
     PoslednVrem:=aMonitorDSappend.FieldByName('mon_time').AsDateTime;
   end;
end;

procedure TMonitorForm.AFitToScreenExecute(Sender: TObject);
begin
  MonChart.BottomAxis.Automatic:=True;
  AFitToScreen.Enabled:=False;
  AForward.Enabled:=False;
  ARewind.Enabled:=False;
  ADayForward.Enabled:=False;
  ADayBackward.Enabled:=False;
  ADayToScreen.Enabled:=True;
  Label2.Visible:=False;
  Label3.Visible:=False;
  Period.Visible:=False;
  Step.Visible:=False;
end;

procedure TMonitorForm.ADayToScreenExecute(Sender: TObject);
begin
  ADayToScreen.Enabled:=False;
  AFitToScreen.Enabled:=True;
  AForward.Enabled:=True;
  ARewind.Enabled:=True;
  ADayForward.Enabled:=True;
  ADayBackward.Enabled:=True;
  With MonChart do
  begin
    BottomAxis.Automatic:=False;
    if SeriesList.Count>0 then
    begin
      BottomAxis.Minimum:=0;
      BottomAxis.Maximum:=Series[0].XValues.MinValue+1;
      BottomAxis.Minimum:=Series[0].XValues.MinValue;
      StartDate.Date:=Trunc(BottomAxis.Minimum);
      StartTime.Time:=Frac(BottomAxis.Minimum);
    end;
  end;
  Label2.Visible:=True;
  Label3.Visible:=True;
  Period.Visible:=True;
  Step.Visible:=True;
end;

procedure TMonitorForm.AForwardExecute(Sender: TObject);
begin
  with MonChart do
  begin
    BottomAxis.Automatic:=False;
    if SeriesList.Count>0 then
    begin
      BottomAxis.Minimum:=0;
      BottomAxis.Maximum:=Series[0].XValues.MaxValue;
      BottomAxis.Minimum:=BottomAxis.Maximum-Period.Value;
    end;
  end;
end;

procedure TMonitorForm.ADayForwardExecute(Sender: TObject);
begin
  with MonChart do
  begin
    BottomAxis.Automatic:=False;
    if SeriesList.Count>0 then
    begin
      BottomAxis.Minimum:=0;
      BottomAxis.Maximum:=BottomAxis.Maximum+Step.Value/24;
      BottomAxis.Minimum:=BottomAxis.Maximum-Period.Value;
    end;
  end;
end;

procedure TMonitorForm.ADayBackwardExecute(Sender: TObject);
var D:TDateTime;
begin
// ADayBackward.Enabled:=False;
 with MonChart do
 begin
  BottomAxis.Automatic:=False;
  if SeriesList.Count>0 then
  begin
    if BottomAxis.Minimum<=Series[0].XValues.MinValue then
    begin
         D:=Trunc(StartDate.Date)+Frac(StartTime.Time);
         d:=d-Step.Value/24;
         StartDate.Date:=Trunc(D);
         StartTime.Time:=Frac(D);
         RefreshBtnClick(RefreshBtn);
         MonChart.Invalidate;
         BottomAxis.Minimum:=0;
         BottomAxis.Maximum:=D+Period.Value;
         BottomAxis.Minimum:=D;
    end
    else
      //Смещаемся на 2 часа влево графика
    begin
         BottomAxis.Minimum:=0;
         BottomAxis.Maximum:=BottomAxis.Maximum-Step.Value/24;
         BottomAxis.Minimum:=BottomAxis.Maximum-Period.Value;
    end;
  end;
 end;
// ADayBackward.Enabled:=True;
end;

procedure TMonitorForm.ARewindExecute(Sender: TObject);
var D:TDateTime;
begin
 ARewind.Enabled:=False;
 Application.ProcessMessages;
 with MonChart do
 begin
  BottomAxis.Automatic:=False;
  if SeriesList.Count>0 then
  begin
    if BottomAxis.Minimum<=Series[0].XValues.MinValue then
    begin
         D:=Trunc(StartDate.Date)+Frac(StartTime.Time);
         d:=d-1;
         StartDate.Date:=D;
         StartTime.Time:=D;
         RefreshBtnClick(RefreshBtn);
         BottomAxis.Minimum:=0;
         BottomAxis.Maximum:=D+1;
         BottomAxis.Minimum:=D;
    end
    else
      //Встаем на начало графика
      ADayToScreenExecute(ADayToScreen);
  end;
 end;
 ARewind.Enabled:=True;
end;

procedure TMonitorForm.MonChartGetAxisLabel(Sender: TChartAxis;
  Series: TChartSeries; ValueIndex: Integer; var LabelText: String);
begin
  if Sender=MonChart.BottomAxis then
   begin
   if copy(LabelText,10,5)='00:00' then
    begin
      Sender.LabelsFont.Color:=clBlack;
      LabelText:=copy(LabelText,0,8)
    end
    else
    begin
    Sender.LabelsFont.Color:=clBlue;
    LabelText:=copy(LabelText,10,5);
    end;
  end;

end;

procedure TMonitorForm.N5Click(Sender: TObject);
begin
  if (Sender as TMenuItem).Tag=0 then //печать
     PrintChart(TChart(PopupMenu2.PopupComponent))
   else TChart(PopupMenu2.PopupComponent).CopyToClipboardBitmap;
end;

procedure TMonitorForm.EndPeriodCBClick(Sender: TObject);
begin
  Label4.Enabled:=EndPeriodCB.Checked;
  EndDate.Enabled:=EndPeriodCB.Checked;
  EndTime.Enabled:=EndPeriodCB.Checked;
end;

procedure TMonitorForm.CheckListBox3ClickCheck(Sender: TObject);
var i,j: integer;
begin
  j:=CheckListBox3.Count;
  for i:=0 to j-1 do MonChart.SeriesList[StaticSeriesCount+i].Active:=CheckListBox3.Checked[i];
  CalculateMaxAxis(TDBChart(MonChart),5);
//
end;

end.
