unit BaseFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Helper, SynEditMiscClasses, SynEditSearch, SynHighlighterPas,
  SynHighlighterCpp, SynEditHighlighter, SynHighlighterSQL, RzTray,
  HRTimer, SynEditOptionsDialog, 
  Dialogs, ActnList, ComCtrls, ImgList, Menus,DateUtils,
  XPStyleActnCtrls, ActnMan, ToolWin, StdCtrls, ExtCtrls, AppEvnts, Buttons,SynUnicode,
  cWindows, cSockets, cSocketsUDP,WinSock, cTCPServer,
  cTCPClient, rxPlacemnt, RXCtrls, Mask, rxToolEdit, rxCurrEdit, RXSpin,
  {nrcommbox, nrclasses, nrbt, nrdataproc, nrsemaphore, }CPort,
  IniFiles, SynEdit,SynEditTypes,
  SynMemo, CheckLed,
  ScktComp,IdTCPServer,VSPortLib_TLB,
  TeeProcs, TeEngine, Chart, Series, RXClock,MMSystem, Registry,
  Spin, AcedContainers,
  Ex_Grid,
  HexEdits, nrclasses, nrdataproc, nrbt, nrcommbox,
  nrsemaphore;
const
  //cDarkColor=$001E1E1E;
  cDarkColor=$003d3d3d;
  mel:array[0..4] of char=('-','\','|','/','*');
  DBT_DEVICECHANGE = $0007;
  DBT_DEVICEARRIVAL = $8000;
  DBT_DEVICEREMOVECOMPLETE = $8004;
  DBTF_Remove = $0000;
  DBT_DevTyp_Volume = $0002;
  cCRStr='<CR>';
   ClientMax=54;
  KSPDPortName:array[0..3] of string=('RS485','RS232','Ethernet','CONSOLE');
  cServerPanelIdx=1;
  cCurVer='V1.33 from 18.11.24';
  cTerminalMacroFile='# Terminal macro file';
  //27.06.14 - ���������� ��������� ������ �� Idle ���������� � �����. ������
  //10.06.14 - ��������� ������� CREATEFILE,READFILE'
  //11.06.14 - ��������� ������� PTESTBRK,SHUTDOWNSYSTEM,REBOOTSYSTEM,COMMENTS,QUIT
  //16.06.14 - ������������������ �����, ����������� ���� � ����
  //17.06.14 - ��� ������ ����������� � �������������� ������� ������������ ������� ����������
  //24.06.14 - � ���������� ���������� �������� ����������� �������
  //25.06.14 - ��� ������� ����� �������� �������� �������� � �� ���������� ���������� ����������������� �����
  //27.06.14 - ���������� ������ TCP ������� - ���
  //30.06.14 - ���������� ������ �� ������ � ����������� ������� Copy4InBuff
  //15.07.14 - ����� ��� ��� �� 32000 �����
  //17.07.14 - ��������������� ������������ ���� ��� ���������� �����, �������������� 41 ������� � ����������� ���� ����� �������� ������
  //04.09.14 - ����������� �������� ��������
  //08.09.14 - �������������  ������ �� ���� ������ ������� ������� � ������
  //09.09.14 - ��������� �� ASCII ������ ��� �������������
  //10.09.14 - �������������� �������� ������ ������
  //25.09.14 - ����������� ��������� - ������ �������� � ����� ������� �������
  //29.09.14 - ������ � ��������
  //29.10.14 - �������� ������ ��� ���� ������
  //12.11.14 - DragMode ��� OutputBuf �� ��������� dmManual - ��� ����������� Shift � ���������� ������� "�����" � OutputBuf - �������� �������� �� dmAutomatic
  //13.11.14 - ����������� �������� ���������� ��������, �� �������� ���������� ���� �������� (���� ����� ���������������� �����)
  //         - ��������� ������������� ������������ - ������� �����������, ������� ������������
  //14.11.14 - ���� ������������ ��� �� � ����������� �� ������ ����������� ���������� ����������
  //19.11.14 - ��������� ������ ��������
  //21.11.14 - ��������� ������ ������� � �������
  //01.12.14 - ����������������� ������ ��� ���-�
  //03.12.14 - �������������� ������� ���������� ��������� (����� ��������� �������� � ��������� ������)
  //22.01.15 - �������������,��� ����������� ������ �����, ������������ ������
  //08.04.15 - �������������� ��������� �������������
  //25.05.15 - ������ ������ ���� ���������� ���������
  //05.06.15 - ���������� ��������� �������������� ��������
  //09.06.15 - ���������� ������� ��� ����� ������ ��5
  //01.07.15 - ����������� ��������� ��������
  //02.07.15 - ������������ �����
  //06.07.15 - ���������� ������� �������� �� ����� y
  //08.07.15 - ��������� ��������������� ����� ��� ���-7
  //09.07.15 - ������ � �������� �� ������� "������"
  //10.07.15 - ��������� ����� ������� � ������
  //27.07.15 - ������������ ���������������� ����
  //30.07.15 - ������������� �������� �������� ��������������� �����
  //24.08.15 - try ���� � SynHighlighterCpp.DirectiveProc;
  //01.09.15 - �������� SetUpPanel,��������� ������ �������� ������
  //02.10.15 - �������������� �������� ��������� ������ ���������
  //27.10.15 - ������������� �������� �������� ������ �� ����������������� �����
  //22.11.15 - ��������� ����������� ���������� ����� �������� ��������������� �� ��������� ��������� �� ������ ��������
  //05.12.15 - ������������� ������ ������� �������, ������ �������������, (����) �������������� ���������� ������ ������ � ����
  //06.12.15 - ������ �������� ������� �� ������� ������, ��������� �������� "���������"
  //07.12.15 - Copy,Paste,Edit(F2) � ��������
  //16.12.15 - ����� "���������" � ���������� - ��������� �������� ������ ����� (����� TBNBroker) � ���� ��������� ���������
  //29.02.16 - �������� �������� �����, ����� ���������� �������
  //17.03.16 - ��� �������� ����� ��������� ������� ������ �������
  //18.03.16 - ��������� ��������, ����� ��� ������ �������� � �������
  //18.05.16 - � "������" ��������� ����������� �������� ������� � ������������ ����� - ��. ����� "��������" - "��������� �������"
  //19.05.16 - ����������� ����������� �������� ������� �� ������� (��� ������, ��� ������, ������� �������)
//  - ��������� ������ ������ ������ �����������, ������ ����������� ����������
//����
  //08.06.16 - ��������� ������ ������������ ����������� ����� MODBUS ASCII
  //03.08.16 - ������ ���������� � ��������� �������, ���� ������ ������
  //22.12.16 - ���������� ��������� WaitAnswer � �� ��� �������� ��� ���� ��������
  //22.02.17 - �������� ������� �� ������ �������� ��� ������� T��-104
  //28.02.17 - ����� CPORT ������ 4.11
  //07.03.17 - ������� � ������ �����
  //25.04.17 - ��� ��������� ����� USB ��������� ����������� ���� �����
  //31.05.17 - ����� ���������� ������������ ���������
  //02.06.17 - ��������� � ������� xInputBuf
  //13.06.17 - �������������� ����� ��������� ������
  //15.06.17 - ���������������� ����������������� �������
  //16.06.17 - ������������� ������ � ����� ������
  //05.07.17 - ���������� ������������� UDP
  //21.08.17 - ��������� �������� �������� �� 3 ������� ������ ��� ��� � ����
  //13.09.17 - ����� ����������� �� ���� ������ ��5
  //03.11.17 - ���������� ����� ���
  //24.11.17 - ���������� �������� ������ ��� ������������� ������� ��������������� ����������� ������ ���������
  //21.12.17 - ������� ����������� ����� CRC32 ��� �������� ����� - pfgbcm d ;ehyfk
  //19.05.18 - ����  ����� �� �������
  //23.05.18 - ������ ��� �������� 200
  //24.05.18 - ��������� ���������� � �����������
  //22.08.18 - �������� Microchip 32 float
  //17.10.18 - �������� ���������
  //17.10.18 - �������� ��������� Microchip
  //03.12.18 - ��������� ������� ��� �������� 23x
  //17.01.19 - ���������� ����� ��� ����� ���������� � �� ������ ��� ������������� �����
  //22.01.19 - ������ ����������� �� ������������ ����
  //12.02.19 - ������ ����������� � �������� ����������� ����� ASCII ModBus
  //27.03.19 - �������� �������� ��� �������� � ������� �� �������
  //12.04.19 - �������� ����������� ��������, ����� ���������� ��� ���������� ������
  //16.04.19 - ����������� �������� ������������� � �������� ������,ClientDataTimer ������ 50 (��� 5)
  //29.04.19 - �������� ������� �������� � Excel
  //29.05.19 - Dark Theme
  //30.05.19 - ������������ � TRxCheckListBox
  //30.09.19 - ������� ������ �����, �� ������������ ������ ��� ��������� ������ USB
  //29.11.19 - InTray ������������������� � false
  //03.12.19 - ��� ���������� ������� NOWTIME ������������� ������� ����� � ������� ��:��:��
  //         - ��� ���������� ������� NOWDATE ������������� ������� ���� � ������� DD.��.YY
  //13.01.20 - ���������� ������ � UDP �������
  //04.03.20 - ���������� ������ � �������� ������ � ������� ��������� ��������
  //07.12.20 - �������� double
  //08.12.20 - ���������� �� ������-8
  //09.12.20 - ����� Tahoma
  //21.01.21 - ������������� �� ����
  //21.04.16 - ���� �������� ����� ����� ��������� ���������
  //21.04.19 - �������������� UTF 2 ANSI
  //21.08.24 - ����������� � ������� '//'
  //21.10.11 - ����������� ���������
  //26.10.21 - �� ����������� ��������� ����� ��� �������� ����������
  //28.01.22 - ���������� ������� Single
  //02.02.22 - ����� ��������� Bluetooth
  //08.02.22 - ���� ����� �� �������������� � ���������� ��������
  //12.04.22 - ���������� ��������
  //11.10.23 - ���������� charset RUSSIAN_CHARSET
  //02.08.24 - ��������� ��������������� �����
  //14.11.24 - ��������� �������� ����� ��� ����������/���������� �������� ������
  //18.11.24 - ���������� ����������� TListBox

CRCtable:  ARRAY[0..255] OF LongWord =
($00000000, $77073096, $EE0E612C, $990951BA,
$076DC419, $706AF48F, $E963A535, $9E6495A3,
$0EDB8832, $79DCB8A4, $E0D5E91E, $97D2D988,
$09B64C2B, $7EB17CBD, $E7B82D07, $90BF1D91,
$1DB71064, $6AB020F2, $F3B97148, $84BE41DE,
$1ADAD47D, $6DDDE4EB, $F4D4B551, $83D385C7,
$136C9856, $646BA8C0, $FD62F97A, $8A65C9EC,
$14015C4F, $63066CD9, $FA0F3D63, $8D080DF5,
$3B6E20C8, $4C69105E, $D56041E4, $A2677172,
$3C03E4D1, $4B04D447, $D20D85FD, $A50AB56B,
$35B5A8FA, $42B2986C, $DBBBC9D6, $ACBCF940,
$32D86CE3, $45DF5C75, $DCD60DCF, $ABD13D59,
$26D930AC, $51DE003A, $C8D75180, $BFD06116,
$21B4F4B5, $56B3C423, $CFBA9599, $B8BDA50F,
$2802B89E, $5F058808, $C60CD9B2, $B10BE924,
$2F6F7C87, $58684C11, $C1611DAB, $B6662D3D,
$76DC4190, $01DB7106, $98D220BC, $EFD5102A,
$71B18589, $06B6B51F, $9FBFE4A5, $E8B8D433,
$7807C9A2, $0F00F934, $9609A88E, $E10E9818,
$7F6A0DBB, $086D3D2D, $91646C97, $E6635C01,
$6B6B51F4, $1C6C6162, $856530D8, $F262004E,
$6C0695ED, $1B01A57B, $8208F4C1, $F50FC457,
$65B0D9C6, $12B7E950, $8BBEB8EA, $FCB9887C,
$62DD1DDF, $15DA2D49, $8CD37CF3, $FBD44C65,
$4DB26158, $3AB551CE, $A3BC0074, $D4BB30E2,
$4ADFA541, $3DD895D7, $A4D1C46D, $D3D6F4FB,
$4369E96A, $346ED9FC, $AD678846, $DA60B8D0,
$44042D73, $33031DE5, $AA0A4C5F, $DD0D7CC9,
$5005713C, $270241AA, $BE0B1010, $C90C2086,
$5768B525, $206F85B3, $B966D409, $CE61E49F,
$5EDEF90E, $29D9C998, $B0D09822, $C7D7A8B4,
$59B33D17, $2EB40D81, $B7BD5C3B, $C0BA6CAD,
$EDB88320, $9ABFB3B6, $03B6E20C, $74B1D29A,
$EAD54739, $9DD277AF, $04DB2615, $73DC1683,
$E3630B12, $94643B84, $0D6D6A3E, $7A6A5AA8,
$E40ECF0B, $9309FF9D, $0A00AE27, $7D079EB1,
$F00F9344, $8708A3D2, $1E01F268, $6906C2FE,
$F762575D, $806567CB, $196C3671, $6E6B06E7,
$FED41B76, $89D32BE0, $10DA7A5A, $67DD4ACC,
$F9B9DF6F, $8EBEEFF9, $17B7BE43, $60B08ED5,
$D6D6A3E8, $A1D1937E, $38D8C2C4, $4FDFF252,
$D1BB67F1, $A6BC5767, $3FB506DD, $48B2364B,
$D80D2BDA, $AF0A1B4C, $36034AF6, $41047A60,
$DF60EFC3, $A867DF55, $316E8EEF, $4669BE79,
$CB61B38C, $BC66831A, $256FD2A0, $5268E236,
$CC0C7795, $BB0B4703, $220216B9, $5505262F,
$C5BA3BBE, $B2BD0B28, $2BB45A92, $5CB36A04,
$C2D7FFA7, $B5D0CF31, $2CD99E8B, $5BDEAE1D,
$9B64C2B0, $EC63F226, $756AA39C, $026D930A,
$9C0906A9, $EB0E363F, $72076785, $05005713,
$95BF4A82, $E2B87A14, $7BB12BAE, $0CB61B38,
$92D28E9B, $E5D5BE0D, $7CDCEFB7, $0BDBDF21,
$86D3D2D4, $F1D4E242, $68DDB3F8, $1FDA836E,
$81BE16CD, $F6B9265B, $6FB077E1, $18B74777,
$88085AE6, $FF0F6A70, $66063BCA, $11010B5C,
$8F659EFF, $F862AE69, $616BFFD3, $166CCF45,
$A00AE278, $D70DD2EE, $4E048354, $3903B3C2,
$A7672661, $D06016F7, $4969474D, $3E6E77DB,
$AED16A4A, $D9D65ADC, $40DF0B66, $37D83BF0,
$A9BCAE53, $DEBB9EC5, $47B2CF7F, $30B5FFE9,
$BDBDF21C, $CABAC28A, $53B39330, $24B4A3A6,
$BAD03605, $CDD70693, $54DE5729, $23D967BF,
$B3667A2E, $C4614AB8, $5D681B02, $2A6F2B94,
$B40BBE37, $C30C8EA1, $5A05DF1B, $2D02EF8D);


  cCommentDelimiter='//';
  cMaxBuff=4096;
  DirectStr:array[0..6] of String=('[PORT >>] ','[ TCP >>] ','[KSPD >>] ','[VCOM >>] ','[<< USER] ','[TERM >>] ','[  FREE ] ');
  NameTSocketState:array[TSocketState] of String = ('Closed', 'Resolving', 'Resolved', 'Connecting',
                  'Negotiating', 'Connected', 'Listening');

//  cItemsFile='Term2006.txt';
  cASLItemsFile='Term2006.asl';
  cErrSyntax='��������� ��������� ������!';
  cCRLF=#13#10;
  cF1='Float %8.8f';
  cF='%8.8f ';
  cF2=' SA94 Float %f';
  cFL=' Logika Float %f';
  cM32='Microchip 32 Float %e';
  cF3='TDateTime %s';
  cD='Dec %d  Hex %x  int %d';
  cClosed='������';
  cOpened='������';
  cAddrIn='�����:';
  cNumber='����:';
  cSpeed='��������:';
  cBitsCount='���������� ���:';
  cParity='��������:';
  //cState='���������:';
  cTimeOut='�������� ������,����:';
  cTimeOutByte='�������� �����,����:';
  cCR='��� ������� ����������:';

type
  PQA=^TQA;
  TQA=record
        Answer: string;
        Comment: string;
        active:boolean;//��������
        binary:boolean;//�������� �������
        crlf:boolean;//����� c ��������� �������
      end;
 TBinArray=array [1..4] of char;
 TFloatFormat=(ffHitech_24,ffIEEE754_32,ffMicrochip_32,ffMicrochip_24);
 PDevBroadcastHdr = ^TDevBroadcastHdr;
  TDevBroadcastHdr = packed record
    dbcd_size: DWORD;
    dbcd_devicetype: DWORD;
    dbcd_reserved: DWORD;
  end;
  PDevBroadcastVolume = ^TDevBroadcastVolume;
  TDevBroadcastVolume = packed record
    dbcv_size: DWORD;
    dbcv_devicetype: DWORD;
    dbcv_reserved: DWORD;
    dbcv_unitmask: DWORD;
    dbcv_flags: Word;
  end;

  TCONSOLEADDR = (cadrCLIENT, cadrTCPSERVER, cadrVKSPD, cadrVCOM, cadrUSER,cadrCONSOLE,cadrEMUL,cadrFREE);
  TActionProcs = procedure (Sender: TObject) of Object;
  PBytePrt=^byte;
  TBuffRec=packed record
    BodyBuff:array[0..cMaxBuff] of byte;
    case Modify:boolean of
    True:(Addr:byte;
          Cmd:byte;
          hardware_id:longword;
          Count:word;
          KMDPort:byte;
          KMDSPEED:byte;
          Buff:array[0..cMaxBuff -10] of byte);
    False:
          (OutBuff:array[0..cMaxBuff] of byte);
  end;


  TBaseForm = class(TForm)
    ToolBar1: TToolBar;
    ActionManager1: TActionManager;
    MainMenu1: TMainMenu;
    Status: TStatusBar;
    aAbout: TAction;
    ToolButton1: TToolButton;
    N1: TMenuItem;
    ApplicationEvents1: TApplicationEvents;
    Label1: TLabel;
    aPortOpen: TAction;
    aPortClose: TAction;
    aPortSendData: TAction;
    WorkPanel: TPanel;
    TerminalTypeGrp: TRadioGroup;
    btnSaveToHistory: TBitBtn;
    N2: TMenuItem;
    aFileSave: TAction;
    SaveDialog1: TSaveDialog;
    N3: TMenuItem;
    aFileClose: TAction;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    ToolButton2: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ProgressBar1: TProgressBar;
    FormStorage1: TFormStorage;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    ImageList1: TImageList;
    aCS1: TAction;
    xCS1Btn: TToolButton;
    aCRC16: TAction;
    xCRC16Btn: TToolButton;
    aCRC16t: TAction;
    xCRC16tBtn: TToolButton;
    SetUpPanel: TPanel;
    UDPSocket: TfndUDPClientSocket;
    PopupMenu1: TPopupMenu;
    N11: TMenuItem;
    aKM5CRC: TAction;
    xKM5CRCBtn: TToolButton;
    aLoadFile: TAction;
    aNewFile: TAction;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    OpenDialog1: TOpenDialog;
    ToolButton12: TToolButton;
    ToolButton13: TToolButton;
    RTS: TCheckBox;
    DTR: TCheckBox;
    BottomPnl: TGroupBox;
    GroupBox4: TGroupBox;
    GroupBox3: TGroupBox;
    HiMemo: TMemo;
    aSikonCRC: TAction;
    xSikonCRCBtn: TToolButton;
    AutoDTR: TCheckBox;
    Memo1: TRxCheckListBox;
    AddBtn: TBitBtn;
    RepeatBtn: TBitBtn;
    RepeatChk: TCheckBox;
    PeriodRepeatEdt: TCurrencyEdit;
    SendTimer: TTimer;
    aHistory: TAction;
    Panel5: TPanel;
    AutoListGroupBox: TGroupBox;
    N15: TMenuItem;
    aPackSikon: TAction;
    aUnPackSikon: TAction;
    N10: TMenuItem;
    N16: TMenuItem;
    EditString: TMenuItem;
    EditComment: TMenuItem;
    N17: TMenuItem;
    S3N1: TMenuItem;
    N18: TMenuItem;
    N19: TMenuItem;
    N20: TMenuItem;
    N21: TMenuItem;
    ToolButton16: TToolButton;
    aCRC32: TAction;
    xCRC32Btn: TToolButton;
    CRLFMode: TRadioGroup;
    OutputBuf: TComboBox;
    cbTimeStamp: TCheckBox;
    RepeatCount: TSpinEdit;
    RepeatLabel: TRxLabel;
    N23: TMenuItem;
    chClearOutputBuf: TCheckBox;
    chkScroll: TCheckBox;
    xCS2Btn: TToolButton;
    aCS2: TAction;
    N24: TMenuItem;
    N25: TMenuItem;
    N26: TMenuItem;
    UDPPort_GrpBox: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    ComPort_GrpBox: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    ComPort_Number: TComboBox;
    ComPort_Baud: TComboBox;
    ComPort_EvenBit: TComboBox;
    UDPPort_IP: TEdit;
    UDPPort_Number: TSpinEdit;
    ComPort_State: TLabel;
    UDPPort_State: TLabel;
    ComPort_BitsCount: TSpinEdit;
    TCPPort_GrpBox: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label14: TLabel;
    TCPPort_State: TLabel;
    TCPPort_Number: TSpinEdit;
    KSPDPort_GrpBox: TGroupBox;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    KSPD_State: TLabel;
    TBNBROKER_IP: TEdit;
    TBNBROKER_Port: TSpinEdit;
    TCPPort_IP: TEdit;
    Label19: TLabel;
    KSPD_ID: TEdit;
    Label20: TLabel;
    KSPD_Baud: TComboBox;
    Label21: TLabel;
    KSPD_Port: TComboBox;
    GroupBox12: TGroupBox;
    Label22: TLabel;
    DopNastroyki_TimeOut: TSpinEdit;
    Label23: TLabel;
    DopNastroyki_ByteTimeOut: TSpinEdit;
    AutoListChk: TCheckBox;
    tbAutoComList: TCheckBox;
    cbMillisecond: TCheckBox;
    KM5BroadcastRequest: TMenuItem;
    ToolButton20: TToolButton;
    chkHint: TCheckBox;
    ToolButton21: TToolButton;
    labMakrosFileName: TLabel;
    MultiStrings: TCheckBox;
    BigOutputBuf: TMemo;
    chkDirectLabel: TCheckBox;
    FindDialog1: TFindDialog;
    aFindText: TAction;
    MacrosBox: TGroupBox;
    ListBox1: TListBox;
    BroadcastRequestMnu: TMenuItem;
    AP9BroadcastRequest: TMenuItem;
    BufferisedLabel: TLabel;
    MaxNonBufferised: TSpinEdit;
    chkLimit: TCheckBox;
    LimitLabel: TLabel;
    LimitEdt: TSpinEdit;
    aCRC16MKTC: TAction;
    xCRC16MKTCBtn: TToolButton;
    MKTCBroadcastRequest: TMenuItem;
    Bluetooth_GrpBox: TGroupBox;
    Label25: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Bluetooth_State: TLabel;
    cbBluetooth_mode: TCheckBox;
    nrDeviceBox1: TnrDeviceBox;
    nrBT1: TnrBT;
    Bluetooth_ParamBox: TGroupBox;
    chAuthenticated: TCheckBox;
    chRemembered: TCheckBox;
    chUnknown: TCheckBox;
    chConnected: TCheckBox;
    chInquiry: TCheckBox;
    Button2: TButton;
    Button3: TButton;
    chForceAuth: TCheckBox;
    chAddWiz: TCheckBox;
    chSkipServices: TCheckBox;
    Bluetooth_ConfigBtn: TButton;
    nrDataProcessor1: TnrDataProcessor;
    nrSemaphore1: TnrSemaphore;
    TabSheet2: TTabSheet;
    CheckBox2: TCheckBox;
    cbTBNBROKER_IP: TComboBox;
    cbUDPPort_IP: TComboBox;
    cbTCPPort_IP: TComboBox;
    xNo_CRCBtn: TToolButton;
    aNO_CRC: TAction;
    NKM5x: TMenuItem;
    labkm5: TLabel;
    N29: TMenuItem;
    km5Function: TAction;
    ToolButton7: TToolButton;
    KM5FunctionBtn: TToolButton;
    cbWordWrap: TCheckBox;
    cbKSPD_ID: TComboBox;
    btnCreateCRC: TToolButton;
    PopupMenu2: TPopupMenu;
    N27: TMenuItem;
    N30: TMenuItem;
    N31: TMenuItem;
    N32: TMenuItem;
    N33: TMenuItem;
    aFonts1: TMenuItem;
    aFileSaveAs: TAction;
    aSaveToHistory: TAction;
    History1: TMenuItem;
    LoMemo: TMemo;
    ReplaceDialog1: TReplaceDialog;
    lblSearchResult: TLabel;
    SynEditOptionsDialog1: TSynEditOptionsDialog;
    N34: TMenuItem;
    aEditOptions: TAction;
    N35: TMenuItem;
    SystemMemo: TMemo;
    GroupBox6: TGroupBox;
    Panel4: TPanel;
    aEditDopSetUp: TAction;
    aEditDopSetUp1: TMenuItem;
    ToolButton6: TToolButton;
    ToolButton10: TToolButton;
    ledCTS: TCheckLED;
    ledDSR: TCheckLED;
    ledRING: TCheckLED;
    ClientDataTimer: TTimer;
    aHexASCII: TAction;
    HexBtn: TSpeedButton;
    cbKM5NetAddr: TComboBox;
    N39: TMenuItem;
    aCut: TAction;
    aCopy: TAction;
    aPaste: TAction;
    N40: TMenuItem;
    N41: TMenuItem;
    N42: TMenuItem;
    gbServerTCP: TGroupBox;
    Label26: TLabel;
    ServerPortEdt: TSpinEdit;
    serveractive: TCheckBox;
    Label27: TLabel;
    ServerStateLab: TLabel;
    xCRCLogikaBtn: TToolButton;
    aCRCLogika: TAction;
    BottonPanelBtn: TToolButton;
    GroupBox7: TGroupBox;
    ToolButton8: TToolButton;
    ToolButton14: TToolButton;
    gbVirtualKSPD: TGroupBox;
    Label28: TLabel;
    Broker_KSPD_State: TLabel;
    chkBroker_KSPD: TCheckBox;
    Label32: TLabel;
    seBroker_KSPD_Port: TSpinEdit;
    Label33: TLabel;
    Broker_KSPD_IP: TEdit;
    cbBroker_KSPD_IP: TComboBox;
    TabSheet1: TTabSheet;
    Label31: TLabel;
    seID_Broker_KSPD: TSpinEdit;
    Label35: TLabel;
    seHARDNUM_KSPD: TSpinEdit;
    KSPDDataTimer: THRTimer;
    SecondTimer: TTimer;
    Label34: TLabel;
    PasswordEdt: TEdit;
    chkNotWriteToLogWhenHidden: TCheckBox;
    Label36: TLabel;
    chkHideToTray: TCheckBox;
    Tray: TRzTrayIcon;
    ImageList2: TImageList;
    TimerOffLed: TTimer;
    PopupMenu3: TPopupMenu;
    N43: TMenuItem;
    N44: TMenuItem;
    N45: TMenuItem;
    N46: TMenuItem;
    N47: TMenuItem;
    N48: TMenuItem;
    aClearStatistic: TAction;
    N49: TMenuItem;
    N50: TMenuItem;
    Label37: TLabel;
    CommentsEdt: TEdit;
    aExpand: TAction;
    aCollapse: TAction;
    N51: TMenuItem;
    N52: TMenuItem;
    N53: TMenuItem;
    gbVirtualComPort: TGroupBox;
    VirtualComPort_Number: TComboBox;
    Label38: TLabel;
    chkVirtualComPort: TCheckBox;
    Label39: TLabel;
    VirtualComPort_State: TLabel;
    FillEditBar: TProgressBar;
    PageControl2: TPageControl;
    TabSheet6: TTabSheet;
    tsSystemJournal: TTabSheet;
    Panel3: TPanel;
    Panel6: TPanel;
    GroupBox5: TGroupBox;
    TCPDataTimer: THRTimer;
    chkTCP_CON: TCheckBox;
    chkSpecialChars: TCheckBox;
    VCOMDataTimer: THRTimer;
    chkCOM_CON: TCheckBox;
    chkUSR_CON: TCheckBox;
    StartReopenTimer: TTimer;
    Label40: TLabel;
    OpenDialog2: TOpenDialog;
    PopupMenu4: TPopupMenu;
    N54: TMenuItem;
    N55: TMenuItem;
    N57: TMenuItem;
    N58: TMenuItem;
    N59: TMenuItem;
    N60: TMenuItem;
    N61: TMenuItem;
    aMacrosAddNew: TAction;
    aMacrosEdit: TAction;
    aMacrosDelete: TAction;
    aMacrosLoad: TAction;
    aMacrosSave: TAction;
    aMacrosSaveAs: TAction;
    SaveDialog2: TSaveDialog;
    ToolBar2: TToolBar;
    AutoScrollBtn: TToolButton;
    WordWrapBtn: TToolButton;
    xcharsBtn: TToolButton;
    ToolButton9: TToolButton;
    FindTextBtn: TToolButton;
    StampDirectBtn: TToolButton;
    ToolButton17: TToolButton;
    TimeShtampBtn: TToolButton;
    MillisecondsBtn: TToolButton;
    BuffHintBtn: TToolButton;
    ToolBar3: TToolBar;
    CRLFModeBtn: TToolButton;
    KM5NetAddr: THexEdit;
    gbKM5: TPanel;
    ToolButton15: TToolButton;
    FontsBtn: TToolButton;
    ToolBar4: TToolBar;
    ToolButton18: TToolButton;
    ToolButton19: TToolButton;
    ToolButton22: TToolButton;
    ToolButton23: TToolButton;
    ToolButton24: TToolButton;
    ToolButton25: TToolButton;
    Modbus1: TMenuItem;
    cbDest_Server_TCP: TComboBox;
    Label2: TLabel;
    Label24: TLabel;
    cbDest_Virtual_KSPD: TComboBox;
    Label41: TLabel;
    cbDest_Virtual_COM: TComboBox;
    AutoRunChk: TCheckBox;
    MacrosLabel: TPanel;
    VTD_V: TMenuItem;
    Label42: TLabel;
    VCOM_I_Edt: TEdit;
    VCOM_O_Edt: TEdit;
    Label43: TLabel;
    KSPD_I_Edt: TEdit;
    KSPD_O_Edt: TEdit;
    Label44: TLabel;
    TCP_I_Edt: TEdit;
    TCP_O_Edt: TEdit;
    GroupBox10: TGroupBox;
    Label45: TLabel;
    CLI_I_Edt: TEdit;
    CLI_O_Edt: TEdit;
    FormStorage2: TFormStorage;
    chkRealIDBroker_KSPD: TCheckBox;
    xCRCSprut100Btn: TToolButton;
    aCRCSprut100: TAction;
    DispUnitsBtn: TToolButton;
    tsSignal: TTabSheet;
    aSignal: TAction;
    ToolButton26: TToolButton;
    Panel7: TPanel;
    GroupBox13: TGroupBox;
    N22: TMenuItem;
    N62: TMenuItem;
    Chart1: TChart;
    Margin_UP_DOWN_Btn: TSpeedButton;
    Margin_NOMINAL_Btn: TSpeedButton;
    Margin_DOWN_UP_Btn: TSpeedButton;
    Series1: TFastLineSeries;
    Series2: TFastLineSeries;
    Margin_DOWN_DOWN_Btn: TSpeedButton;
    Margin_UP_UP_Btn: TSpeedButton;
    VisibleS1: TCheckBox;
    VisibleS2: TCheckBox;
    VisibleS3: TCheckBox;
    VisibleS4: TCheckBox;
    cbAutoAxis: TCheckBox;
    Series3: TFastLineSeries;
    Series4: TFastLineSeries;
    Panel2: TPanel;
    VKT71: TMenuItem;
    MaxValue: TSpinEdit;
    MinValue: TSpinEdit;
    TabSheet3: TTabSheet;
    GroupBox14: TGroupBox;
    RxClock1: TRxClock;
    chkAlarm: TCheckBox;
    cbAlarm: TComboBox;
    Label46: TLabel;
    Label47: TLabel;
    HourAlarm: TSpinEdit;
    MinAlarm: TSpinEdit;
    SecAlarm: TSpinEdit;
    Label48: TLabel;
    PlaySoundBtn: TButton;
    SystemSoundList: TComboBox;
    CmdEdt: TEdit;
    Label49: TLabel;
    ExecCmdBtn: TButton;
    Splitter1: TSplitter;
    tcMacros: TTabControl;
    ToolButton28: TToolButton;
    ToolButton27: TToolButton;
    aMacrosAddFileToControl: TAction;
    ToolButton29: TToolButton;
    aMacrosDeleteFileFromControl: TAction;
    aListOfCommamds: TAction;
    ToolButton30: TToolButton;
    tbHistoryOfCommands: TTabSheet;
    mListOfCommands: TMemo;
    aListsSyncro: TAction;
    ToolButton31: TToolButton;
    ToolButton32: TToolButton;
    aClearOutputBuf: TAction;
    aCmdHist2MAcro: TAction;
    ToolButton33: TToolButton;
    mnuCopyMacros: TMenuItem;
    mnuPasteMacros: TMenuItem;
    MacrosEdit: TEdit;
    mnuEditMacros: TMenuItem;
    TransportChk: TCheckBox;
    SaveOutBuffToMacroBtn: TBitBtn;
    Panel8: TPanel;
    aSystemJournal: TAction;
    ToolButton34: TToolButton;
    cbSystemJournal: TCheckBox;
    ScrollBox3: TScrollBox;
    TimerPageControl: TPageControl;
    TabSheet7: TTabSheet;
    Label50: TLabel;
    SendCmdPeriodEdt: TCurrencyEdit;
    TabSheet8: TTabSheet;
    TabSheet9: TTabSheet;
    SendSTARTCmdChk: TCheckBox;
    SendFINISHCmdChk: TCheckBox;
    SendCmdTimerStartBtn: TBitBtn;
    SendCmdStartEdt: TEdit;
    SendCmdFinishEdt: TEdit;
    TabSheet10: TTabSheet;
    GroupBox15: TGroupBox;
    Label51: TLabel;
    RepeatSentCmdChk: TCheckBox;
    SendCmdPauseEdt: TCurrencyEdit;
    SendCmdTimer: TTimer;
    AutoSendBtn: TToolButton;
    aAutoSendList: TAction;
    xCRCMODBUSASCIIBtn: TToolButton;
    aCRCMODBUSASCII: TAction;
    RefreshPortStateTimer: TTimer;
    cDarkMnu: TMenuItem;
    TEM104_1Mnu: TMenuItem;
    cbOldStyleDialog: TCheckBox;
    InputBuf: TMemo;
    exInputBuffChk: TCheckBox;
    AutoIncModeChk: TCheckBox;
    AutoIncMaskEdt: TEdit;
    AutoIncCounter: TSpinEdit;
    N110: TMenuItem;
    N210: TMenuItem;
    N310: TMenuItem;
    N111: TMenuItem;
    N211: TMenuItem;
    N311: TMenuItem;
    N91001201301: TMenuItem;
    N01: TMenuItem;
    N112: TMenuItem;
    N212: TMenuItem;
    xCSN1Btn: TToolButton;
    aCSN: TAction;
    N2001: TMenuItem;
    tsEmulator: TTabSheet;
    gwEmulator: TGridView;
    Panel10: TPanel;
    Label52: TLabel;
    EmulatorFilenameEdit: TFilenameEdit;
    cbEmulatorViewInASCII: TCheckBox;
    GroupBox16: TGroupBox;
    cbEmulatorActive: TCheckBox;
    EmulationActiveBtn: TToolButton;
    GroupBox17: TGroupBox;
    Label54: TLabel;
    Label55: TLabel;
    edtEmulatorInASCII: TEdit;
    edtEmulatorOutASCII: TEdit;
    edtEmulatorCRChar: TEdit;
    GroupBox18: TGroupBox;
    Label57: TLabel;
    Label58: TLabel;
    edtEmulatorInHEX: TEdit;
    edtEmulatorOutHEX: TEdit;
    cbEmulatorCRLF: TCheckBox;
    edtEmulatorCRCharValue: TSpinEdit;
    cbEmulatorAddNew: TCheckBox;
    SaveEmulatorBtn: TSpeedButton;
    btnAddItemToEmulator: TSpeedButton;
    btnDeleteItemFromEmulator: TSpeedButton;
    N23x1: TMenuItem;
    cMainDarkMnu: TMenuItem;
    cbForceClosePortChangingDeviceMaps: TCheckBox;
    Splitter2: TSplitter;
    cbSignalTypeProtocol: TComboBox;
    Label53: TLabel;
    Panel9: TPanel;
    Splitter3: TSplitter;
    Label56: TLabel;
    seSignalPos: TSpinEdit;
    setSignalSize: TSpinEdit;
    seStartSymbol: TSpinEdit;
    eInputBuf: TSynEdit;
    SynSQLSyn1: TSynSQLSyn;
    SynCppSyn1: TSynCppSyn;
    SynPasSyn1: TSynPasSyn;
    Label59: TLabel;
    cbSyntax: TComboBox;
    Label60: TLabel;
    cbLimit: TComboBox;
    N9: TMenuItem;
    mnuSelectNormal: TMenuItem;
    mnuSelectColumn: TMenuItem;
    mnuSelectLine: TMenuItem;
    SynEditSearch1: TSynEditSearch;
    StoreDataToExecMnu: TMenuItem;
    PageControl3: TPageControl;
    TabSheet11: TTabSheet;
    TabSheet12: TTabSheet;
    gvGraph: TGridView;
    SaveDialog3: TSaveDialog;
    Splitter4: TSplitter;
    PageControl4: TPageControl;
    TabSheet4: TTabSheet;
    Label61: TLabel;
    Label62: TLabel;
    UDPLocalPort_IP: TEdit;
    UDPLocalPort_Number: TSpinEdit;
    aCRC16Corall: TAction;
    xCRC16CorallBtn: TToolButton;
    N56: TMenuItem;
    OpenPortTimer: TTimer;
    cbOEM: TComboBox;
    PageControl1: TPageControl;
    tsConnect: TTabSheet;
    PageControl5: TPageControl;
    tsTCPServer: TTabSheet;
    tsVirtualKSPD: TTabSheet;
    tsVirtualCOM: TTabSheet;
    tsVemulator: TTabSheet;
    PageControl6: TPageControl;
    tsObmen: TTabSheet;
    tsSetupHeader: TTabSheet;
    tsEditor: TTabSheet;
    tsOther: TTabSheet;
    tsConsole: TTabSheet;
    pcTypeOfConnect: TPageControl;
    TabSheet5: TTabSheet;
    TabSheet13: TTabSheet;
    TabSheet14: TTabSheet;
    TabSheet15: TTabSheet;
    TabSheet16: TTabSheet;
    GroupBox9: TGroupBox;
    Label18: TLabel;
    GroupBox8: TGroupBox;
    cbEchoServer: TCheckBox;
    cbForceOpenPort: TCheckBox;
    procedure aAboutExecute(Sender: TObject);
    procedure aFileSaveExecute(Sender: TObject);
    procedure aFileCloseExecute(Sender: TObject);
    procedure toSystemLog(AValue:String);
    procedure aPortOpenExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ComPort1RxChar(Sender: TObject; Count: Integer);
    procedure aPortCloseExecute(Sender: TObject);
    procedure aPortSendDataExecute(Sender: TObject);
    procedure TerminalTypeGrpClick(Sender: TObject);
    procedure Panel1CanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure aCS1Execute(Sender: TObject);
    procedure aCRC16Execute(Sender: TObject);
    procedure OutputBufMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure eInputBufMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure OutputBufMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure eInputBufMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure aCRC16tExecute(Sender: TObject);
    procedure UDPSocketDataAvailable(Sender: AUDPSocket);
    procedure UDPSocketError(Sender: ASocket);
    procedure Label2Click(Sender: TObject);
    procedure SpinButton1DownClick(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure aKM5CRCExecute(Sender: TObject);
    procedure aLoadFileExecute(Sender: TObject);
    procedure aNewFileExecute(Sender: TObject);
    procedure DataClientDataAvailable(Sender: ATCPClient);
    procedure RTSClick(Sender: TObject);
    procedure DTRClick(Sender: TObject);
    procedure aSikonCRCExecute(Sender: TObject);
    procedure ComPort1TxEmpty(Sender: TObject);
    procedure AutoDTRClick(Sender: TObject);
    procedure AddBtnClick(Sender: TObject);
    procedure RepeatBtnClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Memo1Click(Sender: TObject);
    procedure PeriodRepeatEdtChange(Sender: TObject);
    procedure SendTimerTimer(Sender: TObject);
    procedure Memo1DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure Memo1DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure xportClose(Sender: ATCPClient);
    procedure xportTCPClientConnected(Sender: ATCPClient);
    procedure xportConnectFailed(Sender: ATCPClient);
    procedure xportSocketStateChange(Sender: ATCPClient; OldState,
      State: TSocketState);
    procedure xportStateChange(Sender: ATCPClient; OldState,
      State: TTCPClientState);
    procedure xportSyncClose(Sender: ATCPClient);
    procedure xportSyncConnected(Sender: ATCPClient);
    procedure xportSyncConnectFailed(Sender: ATCPClient);
    procedure xportSyncDataAvailable(Sender: ATCPClient);
    procedure xportSyncNegotiating(Sender: ATCPClient);
    procedure xportSyncSocketStateChange(Sender: ATCPClient;
      OldState, State: TSocketState);
    procedure xportThreadRun(Sender: ATCPClient);
    procedure xportThreadRunComplete(Sender: ATCPClient);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Memo1DblClick(Sender: TObject);
    procedure aHistoryExecute(Sender: TObject);
    procedure ClientDataTimerTimer(Sender: TObject);
    procedure aPackSikonExecute(Sender: TObject);
    procedure aUnPackSikonExecute(Sender: TObject);
    procedure EditStringClick(Sender: TObject);
    procedure EditCommentClick(Sender: TObject);
    procedure OutputBufDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure OutputBufDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure StartReopenTimerTimer(Sender: TObject);
    procedure N20Click(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure aCRC32Execute(Sender: TObject);
    procedure OutputBufKeyPress(Sender: TObject; var Key: Char);
    procedure RepeatChkClick(Sender: TObject);
    procedure N23Click(Sender: TObject);
    procedure aCS2Execute(Sender: TObject);
    procedure N25Click(Sender: TObject);
    procedure N26Click(Sender: TObject);
    procedure tbAutoComListClick(Sender: TObject);
    procedure AutoListChkClick(Sender: TObject);
    procedure KM5BroadcastRequestClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ComPort_BaudChange(Sender: TObject);
    procedure ComPort_BitsCountChange(Sender: TObject);
    procedure ComPort_EvenBitChange(Sender: TObject);
    procedure chkHintClick(Sender: TObject);
    procedure ListBox1DblClick(Sender: TObject);
    procedure ListBox1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ListBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MultiStringsClick(Sender: TObject);
    procedure FormStorage1RestorePlacement(Sender: TObject);
    procedure eInputBufKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DoFindText(Sender: TObject);
    procedure DoReplaceText(Sender: TObject);
    procedure aFindTextExecute(Sender: TObject);
    procedure AP9BroadcastRequestClick(Sender: TObject);
    procedure chkLimitClick(Sender: TObject);
    procedure GroupBox7EndDock(Sender, Target: TObject; X, Y: Integer);
    procedure aCRC16MKTCExecute(Sender: TObject);
    procedure MKTCBroadcastRequestClick(Sender: TObject);
    procedure Bluetooth_ConfigBtnClick(Sender: TObject);
    procedure nrBT1FatalError(Sender: TObject; ErrorCode, Detail: Cardinal;
      ErrorMsg: String; var RaiseException: Boolean);
    procedure nrBT1Connect(Sender: TObject);
    procedure nrBT1Disconnect(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure nrBT1AfterReceive(Com: TObject; Buffer: Pointer;
      Received: Cardinal);
    procedure ComPort1Error(Sender: TObject; Errors: TComErrors);
    procedure CheckBox2Click(Sender: TObject);
    procedure TBNBROKER_IPChange(Sender: TObject);
    procedure cbTBNBROKER_IPChange(Sender: TObject);
    procedure UDPPort_IPChange(Sender: TObject);
    procedure cbUDPPort_IPChange(Sender: TObject);
    procedure cbTCPPort_IPChange(Sender: TObject);
    procedure TCPPort_IPChange(Sender: TObject);
    procedure TBNBROKER_IPKeyPress(Sender: TObject; var Key: Char);
    procedure TCPPort_IPKeyPress(Sender: TObject; var Key: Char);
    procedure UDPPort_IPKeyPress(Sender: TObject; var Key: Char);
    procedure aNO_CRCExecute(Sender: TObject);
    procedure xCS1BtnClick(Sender: TObject);
    procedure xCS2BtnClick(Sender: TObject);
    procedure xCRC16BtnClick(Sender: TObject);
    procedure xCRC16tBtnClick(Sender: TObject);
    procedure xCRC16MKTCBtnClick(Sender: TObject);
    procedure xKM5CRCBtnClick(Sender: TObject);
    procedure xSikonCRCBtnClick(Sender: TObject);
    procedure xCRC32BtnClick(Sender: TObject);
    procedure xNo_CRCBtnClick(Sender: TObject);
    procedure km5FunctionExecute(Sender: TObject);
    procedure cbWordWrapClick(Sender: TObject);
    procedure cbKSPD_IDChange(Sender: TObject);
    procedure KSPD_IDKeyPress(Sender: TObject; var Key: Char);
    procedure KSPD_IDChange(Sender: TObject);
    procedure btnCreateCRCClick(Sender: TObject);
    procedure aFileSaveAsExecute(Sender: TObject);
    procedure aSaveToHistoryExecute(Sender: TObject);
    procedure aEditOptionsExecute(Sender: TObject);
    procedure aEditDopSetUpExecute(Sender: TObject);
    procedure ComPort1CTSChange(Sender: TObject; OnOff: Boolean);
    procedure ComPort1DSRChange(Sender: TObject; OnOff: Boolean);
    procedure ComPort1Ring(Sender: TObject);
    procedure ComPort1AfterClose(Sender: TObject);
    procedure HexBtnClick(Sender: TObject);
    procedure cbKM5NetAddrChange(Sender: TObject);
    procedure KM5NetAddrKeyPress(Sender: TObject; var Key: Char);
    procedure KM5NetAddrChange(Sender: TObject);
    procedure aCutExecute(Sender: TObject);
    procedure aCopyExecute(Sender: TObject);
    procedure aPasteExecute(Sender: TObject);
    procedure serveractiveClick(Sender: TObject);
    procedure ServerSocket1ClientRead(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure xCRCLogikaBtnClick(Sender: TObject);
    procedure aCRCLogikaExecute(Sender: TObject);
    procedure ServerSocket1Connect(AThread: TIdPeerThread);
    procedure ServerSocket1Disconnect(AThread: TIdPeerThread);
    procedure ServerSocket1Exception(AThread: TIdPeerThread;
      AException: Exception);
    procedure ServerSocket1Execute(AThread: TIdPeerThread);
    procedure aBottomPnlExecute(Sender: TObject);
    procedure SystemMemoChange(Sender: TObject);
    procedure OutputBufChange(Sender: TObject);
    procedure Broker_KSPD_IPChange(Sender: TObject);
    procedure Broker_KSPD_IPKeyPress(Sender: TObject; var Key: Char);
    procedure cbBroker_KSPD_IPChange(Sender: TObject);
    procedure chkBroker_KSPDClick(Sender: TObject);
    procedure KSPDDataTimerTimer(Sender: TObject);
    procedure SecondTimerTimer(Sender: TObject);
    procedure chkHideToTrayClick(Sender: TObject);
    procedure TimerOffLedTimer(Sender: TObject);
    procedure aClearStatisticExecute(Sender: TObject);
    procedure CommentsEdtChange(Sender: TObject);
    procedure aExpandExecute(Sender: TObject);
    procedure aCollapseExecute(Sender: TObject);
    procedure chkVirtualComPortClick(Sender: TObject);
    procedure LimitEdtChange(Sender: TObject);
    procedure TCPDataTimerTimer(Sender: TObject);
    procedure chkSpecialCharsClick(Sender: TObject);
    procedure VCOMDataTimerTimer(Sender: TObject);
    procedure TrayLButtonDblClick(Sender: TObject);
    procedure TrayMinimizeApp(Sender: TObject);
    procedure TrayRestoreApp(Sender: TObject);
    procedure aMacrosLoadExecute(Sender: TObject);
    procedure aMacrosDeleteExecute(Sender: TObject);
    procedure aMacrosEditExecute(Sender: TObject);
    procedure aMacrosAddNewExecute(Sender: TObject);
    procedure aMacrosSaveExecute(Sender: TObject);
    procedure aMacrosSaveAsExecute(Sender: TObject);
    procedure ListBox1DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure ListBox1DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure AutoScrollBtnClick(Sender: TObject);
    procedure chkScrollClick(Sender: TObject);
    procedure WordWrapBtnClick(Sender: TObject);
    procedure xcharsBtnClick(Sender: TObject);
    procedure StampDirectBtnClick(Sender: TObject);
    procedure chkDirectLabelClick(Sender: TObject);
    procedure TimeShtampBtnClick(Sender: TObject);
    procedure cbTimeStampClick(Sender: TObject);
    procedure MillisecondsBtnClick(Sender: TObject);
    procedure cbMillisecondClick(Sender: TObject);
    procedure BuffHintBtnClick(Sender: TObject);
    procedure CRLFModeBtnClick(Sender: TObject);
    procedure CRLFModeClick(Sender: TObject);
    procedure GroupBox1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure AutoRunChkClick(Sender: TObject);
    procedure VTD_VClick(Sender: TObject);
    procedure FormStorage2RestorePlacement(Sender: TObject);
    procedure aCRCSprut100Execute(Sender: TObject);
    procedure xCRCSprut100BtnClick(Sender: TObject);
    procedure DispUnitsBtnClick(Sender: TObject);
    procedure aSignalExecute(Sender: TObject);
    procedure eInputBufChange(Sender: TObject);
    procedure VisibleS1Click(Sender: TObject);
    procedure Chart1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Margin_DOWN_UP_BtnClick(Sender: TObject);
    procedure Margin_NOMINAL_BtnClick(Sender: TObject);
    procedure Margin_UP_DOWN_BtnClick(Sender: TObject);
    procedure cbAutoAxisClick(Sender: TObject);
    procedure MaxValueChange(Sender: TObject);
    procedure MinValueChange(Sender: TObject);
    procedure Margin_DOWN_DOWN_BtnClick(Sender: TObject);
    procedure Margin_UP_UP_BtnClick(Sender: TObject);
    procedure VKT71Click(Sender: TObject);
    procedure chkAlarmClick(Sender: TObject);
    procedure HourAlarmChange(Sender: TObject);
    procedure MinAlarmChange(Sender: TObject);
    procedure SecAlarmChange(Sender: TObject);
    procedure RxClock1Alarm(Sender: TObject);
    procedure PlaySoundBtnClick(Sender: TObject);
    procedure cbAlarmChange(Sender: TObject);
    procedure ExecCmdBtnClick(Sender: TObject);
    procedure WMDeviceChange(var Msg: TMessage); message WM_DeviceChange;
    procedure DopNastroyki_TimeOutChange(Sender: TObject);
    procedure Splitter1CanResize(Sender: TObject; var NewSize: Integer;
      var Accept: Boolean);
    procedure tcMacrosChange(Sender: TObject);
    procedure aMacrosAddFileToControlExecute(Sender: TObject);
    procedure aMacrosDeleteFileFromControlExecute(Sender: TObject);
    procedure aListsSyncroExecute(Sender: TObject);
    procedure aListOfCommamdsExecute(Sender: TObject);
    procedure aClearOutputBufExecute(Sender: TObject);
    procedure aCmdHist2MAcroExecute(Sender: TObject);
    procedure mnuCopyMacrosClick(Sender: TObject);
    procedure mnuPasteMacrosClick(Sender: TObject);
    procedure mnuEditMacrosClick(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
    procedure MacrosEditKeyPress(Sender: TObject; var Key: Char);
    procedure SaveOutBuffToMacroBtnClick(Sender: TObject);
    procedure aSystemJournalExecute(Sender: TObject);
    procedure SendCmdTimerStartBtnClick(Sender: TObject);
    procedure SendSTARTCmdChkClick(Sender: TObject);
    procedure SendCmdTimerTimer(Sender: TObject);
    procedure aAutoSendListExecute(Sender: TObject);
    procedure AutoSendBtnClick(Sender: TObject);
    procedure xCRCMODBUSASCIIBtnClick(Sender: TObject);
    procedure aCRCMODBUSASCIIExecute(Sender: TObject);
    procedure RefreshPortStateTimerTimer(Sender: TObject);
    procedure cDarkMnuClick(Sender: TObject);
    procedure GroupBox7Click(Sender: TObject);
    procedure cbOldStyleDialogClick(Sender: TObject);
    procedure exInputBuffChkClick(Sender: TObject);
    procedure N110Click(Sender: TObject);
    procedure N210Click(Sender: TObject);
    procedure N310Click(Sender: TObject);
    procedure N111Click(Sender: TObject);
    procedure N211Click(Sender: TObject);
    procedure N311Click(Sender: TObject);
    procedure N01Click(Sender: TObject);
    procedure N112Click(Sender: TObject);
    procedure N212Click(Sender: TObject);
    procedure aCSNExecute(Sender: TObject);
    procedure xCSN1BtnClick(Sender: TObject);
    procedure Label8Click(Sender: TObject);
    procedure N2001Click(Sender: TObject);
    procedure cbEmulatorActiveClick(Sender: TObject);
    procedure EmulatorFilenameEditChange(Sender: TObject);
    procedure EmulationActiveBtnClick(Sender: TObject);
    procedure gwEmulatorGetCellText(Sender: TObject; Cell: TGridCell;
      var Value: String);
    procedure cbEmulatorViewInASCIIClick(Sender: TObject);
    procedure edtEmulatorCRCharValueChange(Sender: TObject);
    procedure cbEmulatorCRLFClick(Sender: TObject);
    procedure SaveEmulatorBtnClick(Sender: TObject);
    procedure gwEmulatorSetEditText(Sender: TObject; Cell: TGridCell;
      var Value: String);
    procedure gwEmulatorGetEditText(Sender: TObject; Cell: TGridCell;
      var Value: String);
    procedure gwEmulatorCellClick(Sender: TObject; Cell: TGridCell;
      Shift: TShiftState; X, Y: Integer);
    procedure gwEmulatorGetCellColors(Sender: TObject; Cell: TGridCell;
      Canvas: TCanvas);
    procedure btnAddItemToEmulatorClick(Sender: TObject);
    procedure btnDeleteItemFromEmulatorClick(Sender: TObject);
    procedure N23x1Click(Sender: TObject);
    procedure gwEmulatorCheckClick(Sender: TObject; Cell: TGridCell);
    procedure gwEmulatorGetCheckState(Sender: TObject; Cell: TGridCell;
      var CheckState: TCheckBoxState);
    procedure cbSyntaxChange(Sender: TObject);
    procedure mnuSelectLineClick(Sender: TObject);
    procedure eInputBufDropFiles(Sender: TObject; X, Y: Integer;
      AFiles: TUnicodeStrings);
    procedure gvGraphGetCellText(Sender: TObject; Cell: TGridCell;
      var Value: String);
    procedure StoreDataToExecMnuClick(Sender: TObject);
    procedure xCRC16CorallBtnClick(Sender: TObject);
    procedure aCRC16CorallExecute(Sender: TObject);
    procedure N56Click(Sender: TObject);
    procedure OpenPortTimerTimer(Sender: TObject);
    procedure pcTypeOfConnectChange(Sender: TObject);
    procedure pcTypeOfConnectChanging(Sender: TObject;
      var AllowChange: Boolean);
    procedure UDPSocketSendFailed(Sender: AUDPSocket; ErrorCode: Integer;
      Addr: in_addr; PortNum: Word; Host, Port: String; const Data;
      DataSize: Integer);
    procedure ApplicationEvents1Exception(Sender: TObject; E: Exception);
  private
    notComPort1Errors:boolean;
    FComputerName,FUserName,FCPU:string;
    FClientInBuff: String;
    FDataReceived: boolean;
    FCurByteTick: longword;
    FRemoteComPortConnected: boolean;
    FRemoteStatusBar: String;
    FRemoteCMD: String;
    FxportConnected: boolean;
    FxportTCPClientPort: string;
    FxportTCPClientHost: string;
    FListBoxKey: word;
    FFunc: byte;
    FSubFunc: byte;
    FKSPDConnected: boolean;
    FKSPDRegistered: boolean;
    FKSPDInBuff: String;
    FKSPDCurByteTick: longword;
    FKSPDDataReceived: boolean;
    FPWD: String;
    FReceived: longword;
    FSended: longword;
    FFirsActivate: boolean;
    FPTESTBRK: integer;
    FBaseStateString: String;
    FSecondStateString: String;
    FVP: TVSPortAx;
    FServerSocket: TidTCPServer;
    FTCPCurByteTick: longword;
    FTCPDataReceived: boolean;
    FTCPInBuff: String;
    FCOMCurByteTick: longword;
    FCOMDataReceived: boolean;
    FCOMInBuff: String;
    FInTray: boolean;
    FMacrosFileName: String;
    FTerminated: boolean;
    FAxisWidth: single;
    FComPort1: TComPort;
    originalPanelWindowProc : TWndMethod;
    FStoredMacros: String;
    FSelectedMAcros: integer;
    FStartTime: longword;
    procedure WMMouseWheel(var Msg: TWMMouseWheel); message WM_MOUSEWHEEL;
    procedure RefreshPortState;
    function State2Str(AState: boolean): String;
    procedure DataToTerminalWindow(S: string; Direct: byte; comment:String='');
    procedure SetInBuff(const Value: String);
    procedure WaitAnswer;
    procedure RefreshEditState;
    procedure SetListBoxKey(const Value: word);
    function DecodeSMS(ASelText:string): string;
    procedure FindText(AMemo: TMemo; Find: string;FromBegin:boolean);
    procedure Copy2ClientInBuff(Value: string);
    procedure ApplyCheckBoxes;
    procedure RefreshBluetoothState;
    function ComPort1Connected: boolean;
    procedure ResizeAddBtn;
    procedure RestoreDownBtn;
    procedure SetcurProc(const Value: TActionProcs);
    procedure SetUpcurProc(km5Proc:boolean);
    procedure FillKM5Addr(F,SF:byte);
    procedure SetFunc(const Value: byte);
    procedure SetSubFunc(const Value: byte);
    procedure aKM5CRCX;
    procedure RestoreInputBuf;
    function getcurrentdir: String;
    procedure OutBinToClient(S: String;aFrom:byte);
    function GetLastClientIdx: integer;
    procedure SendDataToClient(s: String;aPort:integer);
    procedure SetKSPDConnected(const Value: boolean);
    procedure CreateKSPDTCPClient;
    procedure KSPDTCPClientConnected(Sender: ATCPClient);
    procedure KSPDDataClientDataAvailable(Sender: ATCPClient);
    procedure KSPDSocketStateChange(Sender: ATCPClient; OldState,
      State: TSocketState);
    procedure KSPDStateChange(Sender: ATCPClient; OldState,
      State: TTCPClientState);
    procedure SetKSPDRegistered(const Value: boolean);
    procedure SetKSPDInBuff(const Value: String);
    function GetBroker_KSPD_State: String;
    procedure SetBroker_KSPD_State(const Value: String);
    procedure StrToBroker(AStr: String);
    procedure Copy2KSPDInBuff(Value: string);
    procedure SetKSPDCurByteTick(const Value: longword);
    procedure SetKSPDDataReceived(const Value: boolean);
    procedure KSPDResponceToLog;
    procedure DestroyKSPDTCPClient;
    procedure OutStrViaKSPD(tmpS: string);
    function ExecuteFile(const FileName:string;ShowCmd: Integer): THandle;
    procedure SetPWD(const Value: String);
    function CheckAccessEnabled: boolean;
    procedure SetReceived(const Value: longword);
    procedure SetSended(const Value: longword);
    procedure CorrectTray;
    procedure SetFirsActivate(const Value: boolean);
    procedure SetPTESTBRK(const Value: integer);
    procedure KSPDRegistration;
    function MyExitWindows(RebootParam: Longword): Boolean;
    function GetWinVersion: string;
    procedure ShutDown;
    procedure SetBaseStateString(const Value: String);
    procedure SetSecondStateString(const Value: String);
    procedure SetVP(const Value: TVSPortAx);
    function CreateCOMPort(PortName: String): boolean;
    procedure DestroyCOMPort1;
    procedure VSPortAx1RxChar(ASender: TObject; Count: Integer);
    procedure VSPortAx1BaudRate(ASender: TObject; Baudrate: Integer);
    procedure VSPortAx1OpenClose(ASender: TObject; Opened: WordBool);
    procedure SetServerSocket(const Value: TidTCPServer);
    procedure Copy3InBuff(Value: string);
    procedure SetTCPCurByteTick(const Value: longword);
    procedure SetTCPDataReceived(const Value: boolean);
    function CheckConsoleCmd(s:String;typeofconsole:byte): boolean;
    procedure TCPResponceToLog;
    procedure SetTCPInBuff(const Value: String);
    procedure SetCOMCurByteTick(const Value: longword);
    procedure SetCOMDataReceived(const Value: boolean);
    procedure COMResponceToLog;
    procedure SetCOMInBuff(const Value: String);
    procedure SpecSymbolsCheck;
    procedure SetInTray(const Value: boolean);
    procedure RefreshClientBroker(Active: boolean);
    procedure RefreshVirtualKSPD(Active: boolean);
    procedure Copy4InBuff(Value: string);
    procedure MacrosExecute(s:String;comment:String='');
    procedure SetMacrosFileName(const Value: String);
    function HexToStrHex(aStr: String): String;
    procedure RestoreState;
    procedure OutBinToTCPServer(s: string;aFrom:byte);
    procedure OutBinToVKSPD(s: string; aFrom: byte);
    procedure OutBinToVCOM(s: string; aFrom: byte);
    procedure SendDataFromClient(s: String; APort: integer);
    procedure SetTerminated(const Value: boolean);
    procedure Autorun(Flag: boolean; NameParam, Path: String);
    procedure InputBufToChart(StrIdx: Integer);
    procedure SystemSoundPlayerLoadList;
    procedure SetComPort1(const Value: TComPort);
    procedure ComPort1ExceptionEvent(Sender: TObject;
      TComException: TComExceptions; ComportMessage: String;
      WinError: Int64; WinMessage: String);
    procedure ComPort1PrepareClose;
    function CheckComPortList:boolean;
    procedure SetStoredMacros(const Value: String);
    procedure SetSelectedMAcros(const Value: integer);
    function GetPortConnected: boolean;
    procedure SetStartTime(const Value: longword);
    function HexStr2Bin(aStr: String): String;
    function Str2HEXStr(S: String): String;
    procedure SetUpTheme(adark: boolean);
    procedure DestroyVPCOMPort;
    procedure ClearMyLog;
    procedure ProtocolToChart(StrIdx: Integer);
    procedure PaintToolButton(Button: TToolButton);
    procedure ToolBar1DrawItem(Sender: TObject; Button: TToolButton;
      Index: Integer; var R: TRect; var DefaultDraw: Boolean);
   public
    procedure OnF2b(var binar:array of byte; tmpF: Single; m_FloatFormat: TFloatFormat);
    function OnB2f(longw:longword; m_FloatFormat: TFloatFormat):single;
    function Pascal2Str(S: String): string;
    function C2Str(S: String): string;
    function Str2Pascal(S: String): String;
    function Str2C(S: String): String;
    procedure SetDataReceived(const Value: boolean);
    procedure SetCurByteTick(const Value: longword);
    function GetSelHint(ASelText: String;ADirect:boolean): string;
    procedure HardwareInfo;
    procedure StringFromMemo;
    procedure AddStringToMemo(tmpS,Comment:String);
    procedure SetRemoteComPortConnected(const Value: boolean);
    function Get42_2Answer:String;
    procedure PanelWindowProc (var Msg : TMessage) ;
    procedure PanelImageDrop (var Msg : TWMDROPFILES) ;
public
    MyLog:TStringAssociationList;
    Graph_X,Graph_Y:integer;//���������� ������� ����
    procedure OutDataToClient(tmpS: string;aFrom:byte;comment:String='');
    function Str2HEX(S: String): String;
    function HEX2Str(S: String): string;
    procedure SetStatusBar(AStatus: String;Idx:byte);
    procedure DisassembleClientData;
    function Bin2Str(aStr: String): String;
    function Str2Bin(aStr: String): String;
    function Bin2PSikon(tmpS:String): String;
    function PSikon2Bin(tmpS: String): String;
//    procedure StrToLogOut(S: string; Direct: byte);
    procedure CreateXPort;
    procedure SetxportConnected(const Value: boolean);
    procedure SetxportTCPClientHost(const Value: string);
    procedure SetxportTCPClientPort(const Value: string);
    procedure CreateBrokerPort;
    procedure StrToKSPDBroker(AStr: String);
    function Getsa94Float(s: string): single;
    function GetLogikaFloat(s: string): single;
    procedure EnableCRCBtn(AEnable:boolean);
    procedure IncStatistics_I(aFrom:byte;aLen:integer);
    procedure IncStatistics_O(aFrom:byte;aLen:integer);
    procedure ClearStatistics();
    { Private declarations }
  public
    //������ ��� ������� ������� � ��������������� ����
    FromLastToTCPServer,FromLastToVKSPD,FromLastToVCOM,FromLastToClient:TCONSOLEADDR;
    ClientLastTime:longword;//����� ���������� ������� � �������
    //
    ONLINESEK:byte;                            //������� ������ � ������ ������
    ONLINEMIN:byte;                            //������� ����� � ������ ������
    ONLINEhour:byte;                           //������� ����� � ������ ������
    ONLINEDAYS:word;                           //������� �����
    GPRS_Con,Client_Con,CntHW,bigKSPD,bigkl,bigklcont: dword; // ���-�� �������� ����������
    tbigKSPD,tbigkl,tbigklcont: TDateTime;
    CheckHW: boolean;
    maxclient,maxGPRS,debuglevel,savestatbool: dword;
    RestoredTopOfPanel3:integer;
  //
    InputBufCnt:TSynEditorOptionsContainer;
    InB,OutB,KSPDInB,KSPDOutB:TBuffRec;//������ ��� ����
    xportTCPClient: TfndTCPClient;
    KSPDTCPClient: TfndTCPClient;
    OX,IX:integer;
    FcurProc:TActionProcs;
    remainPTESTBRK:integer;//�������� ������� �� �����
    curProcStr:String;
    { Public declarations }
    property InBuff:String read FClientInBuff write SetInBuff;
    property KSPDInBuff:String read FKSPDInBuff write SetKSPDInBuff;
    property TCPInBuff:String read FTCPInBuff write SetTCPInBuff;
    property COMInBuff:String read FCOMInBuff write SetCOMInBuff;
    property DataReceived:boolean read FDataReceived write SetDataReceived;
    property KSPDDataReceived:boolean read FKSPDDataReceived write SetKSPDDataReceived;
    property TCPDataReceived:boolean read FTCPDataReceived write SetTCPDataReceived;
    property COMDataReceived:boolean read FCOMDataReceived write SetCOMDataReceived;
    property FinishTime:longword read FCurByteTick write SetCurByteTick;
    property StartTime:longword read FStartTime write SetStartTime;
    property TCPCurByteTick:longword read FTCPCurByteTick write SetTCPCurByteTick;
    property COMCurByteTick:longword read FCOMCurByteTick write SetCOMCurByteTick;
    property KSPDCurByteTick:longword read FKSPDCurByteTick write SetKSPDCurByteTick;
    property xportConnected:boolean read FxportConnected write SetxportConnected;
    property xportTCPClientPort:string read FxportTCPClientPort write SetxportTCPClientPort;
    property xportTCPClientHost:string read FxportTCPClientHost write SetxportTCPClientHost;
    property ListBoxKey:word read FListBoxKey write SetListBoxKey;
    property curProc:TActionProcs read FcurProc write SetcurProc;
    property Func:byte read FFunc write SetFunc;
    property SubFunc:byte read FSubFunc write SetSubFunc;
    property LastCliemtIdx:integer read GetLastClientIdx;
    property KSPDConnected:boolean read FKSPDConnected write SetKSPDConnected;
    property KSPDRegistered:boolean read FKSPDRegistered write SetKSPDRegistered;
    property BrokerKSPDState:String read GetBroker_KSPD_State write SetBroker_KSPD_State;
    property PWD:String read FPWD write SetPWD;
    property Received:longword read FReceived write SetReceived;
    property Sended:longword read FSended write SetSended;
    property FirsActivate:boolean read FFirsActivate write SetFirsActivate;
    property PTESTBRK:integer read FPTESTBRK write SetPTESTBRK;
    property FirstStateString:String read FBaseStateString write SetBaseStateString;
    property SecondStateString:String read FSecondStateString write SetSecondStateString;
    property VP:TVSPortAx read FVP write SetVP;          //����������� ����
    property ServerSocket:TidTCPServer read FServerSocket write SetServerSocket;
    property InTray:boolean read FInTray write SetInTray;
    property MacrosFileName:String read FMacrosFileName write SetMacrosFileName;
    property Terminated:boolean read FTerminated write SetTerminated;
    property ComPort1:TComPort read FComPort1 write SetComPort1;
    property StoredMacros:String read FStoredMacros write SetStoredMacros;
    property SelectedMAcros:integer read FSelectedMAcros write SetSelectedMAcros;
    property PortConnected:boolean read GetPortConnected;

end;

  function DateP2DateTime(AValue:DWord):TDateTime;
  function DateKMD2DateTime(AValue:DWord):TDateTime;
  function CTimetoDateTime(const AValue: longword): TDateTime;

var
  opc_socket: array[1..ClientMax] of TIdPeerThread;
  opc_lasttime: array[1..ClientMax] of DWORD;
  Term2006Number:integer;
  BaseForm: TBaseForm;
  B2HStr:String[2];//������ ��� �������������� byte � Hex

implementation

uses ActiveX, VerHiFrm, cTCPStream , strutils, ShellAPI, math,
  AddEmulatorFrm,Excel;

{$R *.dfm}

function GetDrive(pDBVol: PDevBroadcastVolume): string;
var
  i: Byte;
  Maske: DWORD;
begin
  if (pDBVol^.dbcv_flags and DBTF_Remove) = DBTF_Remove then
  begin
    Maske := pDBVol^.dbcv_unitmask;
    for i := 0 to 25 do
    begin
      if (Maske and 1) = 1 then
        Result := Char(i + Ord('A'));
      Maske := Maske shr 1;
    end;
  end;
end;

function CRC32(AStr:String):longword;
 var CRCvalue:longword;
     i:integer;
begin
        CRCValue := $FFFFFFFF;
        for   i := 1 to Length(Astr) do
        CRCvalue := (CRCvalue SHR 8)  XOR CRCTable[ Ord(Astr[i]) XOR (CRCvalue AND $000000FF) ];
        result:=CRCvalue;
end;


function DateP2DateTime(AValue:DWord):TDateTime;
begin
  result:=(AValue/86400.0)+29221.0;
end;

function DateKMD2DateTime(AValue:DWord):TDateTime;
begin
  result:=(AValue/86400.0)+36526.0;
end;

{ ======================================= }
{ �������������� �������� HexString � Int64 }
{ ���������: ��������� ������ ����� ���� 'H' ��� Hex  }
{        �.�. '00123h' ��� '00123H'    }
{ � ������ ������������ HexString ����� ��������� 0 }
{ ======================================= }

function HexToInt(HexStr : string) : Int64;
var RetVar : Int64;
    i : byte;
begin
  HexStr := UpperCase(HexStr);
  if HexStr[length(HexStr)] = 'H' then
     Delete(HexStr,length(HexStr),1);
  RetVar := 0;

  for i := 1 to length(HexStr) do begin
      RetVar := RetVar shl 4;
      if HexStr[i] in ['0'..'9'] then
         RetVar := RetVar + (byte(HexStr[i]) - 48)
      else
         if HexStr[i] in ['A'..'F'] then
            RetVar := RetVar + (byte(HexStr[i]) - 55)
         else begin
            Retvar := 0;
            break;
         end;
  end;

  Result := RetVar;
end;

{ ============================================== }
{ �������������� �������� Int64 � �������� ������ }
{ NumBits ����� ���� 64,32,16,8 ��� ��������  }
{ ������������� ������������� �������� (Int64,DWord,Word }
{ ��� Byte) (�� ��������� = 64) }
{ ������ NumBits ��������� ������ ��� �������������   }
{ ������� �������� }
{ ============================================== }

function IntToBin(IValue : Int64; NumBits : word = 64) : string;
var RetVar : string;
begin
  RetVar := '';

  case NumBits of
      32 : IValue := dword(IValue);
      16 : IValue := word(IValue);
      8  : IValue := byte(IValue);
  end;

  while IValue <> 0 do begin
     Retvar := char(48 + (IValue and 1)) + RetVar;
     IValue := IValue shr 1;
  end;

  if RetVar = '' then Retvar := '0';
  Result := RetVar;
end;


{ ============================================== }
{ �������������� �������� ������ � �������� Int64 }
{ ���������: ��������� ������ ����� ���� 'B' ��� Binary  }
{        �.�. '001011b' ��� '001011B'   }
{ � ������ ������������ �������� ������ ����� ��������� 0  }
{ ============================================== }

function BinToInt(BinStr : string) : Int64;
var i : byte;
    RetVar : Int64;
begin
   BinStr := UpperCase(BinStr);
   if BinStr[length(BinStr)] = 'B' then Delete(BinStr,length(BinStr),1);
   RetVar := 0;
   for i := 1 to length(BinStr) do begin
     if not (BinStr[i] in ['0','1']) then begin
        RetVar := 0;
        Break;
     end;
     RetVar := (RetVar shl 1) + (byte(BinStr[i]) and 1) ;
   end;
   
   Result := RetVar;
end;

 




//�������������� 32-������� ������ � �������� �����:
function Base10(Base2:Integer) : Integer; assembler;
asm
  cmp    eax,100000000            // ��������� ������� ������
  jb     @1                        // ok
  mov    eax,-1                    // ���� ������
  jmp    @exit                    // ������� � -1
@1:
  push    ebx                      // ��������� ��������
  push   esi
  xor    esi,esi                  // ��������� = 0
  mov    ebx,10                    // ����� �� ��������� 10
  mov    ecx,8
@2:
  mov    edx,0
  div    ebx
  add    esi,edx
  ror    esi,4
  loop @2
  mov    eax,esi                  // ��������� �������
  pop    esi                      // ��������������� ��������
  pop    ebx
@exit:
end;
function ucs2(s: string): string;
var i,k: integer;
begin
for i:=1 to length(s) do begin
  k:= ord(s[i]);
  if k>=192 then k:= k + 1040 - 192;
  result:= result + inttohex(k,4)
end
end;

function Encode7bit(Src:String):String;
var Dst:String;
    i:Integer;
    CurS,NextS:Byte;
    TStr:String;
begin
  for i:=1 to Length(Src) do begin
    if (i mod 8)=0 then Continue;
    TStr:=Copy(Src,i,1);
    CurS:=Ord(TStr[1]);
    if (i mod 8)>1 then
      CurS:=(CurS shr ((i mod 8)-1) );
    if i<Length(Src) then begin
      TStr:=Copy(Src,i+1,1);
      NextS:=Ord(TStr[1]);
    end else
      NextS:=0;
    NextS:=(NextS shl (8-(i mod 8)));
    Dst:=Dst+IntToHex(CurS+NextS,2);
  end;
  Result:=Dst;
end;

(*
function CheckCRC(S:String):boolean;
var W:word;
    B:array[1..2]of byte absolute W;
    len:integer;
begin
  if S<>'' then
  begin
    len:=Length(s);
    W:=GetCRC(s,len-2);
    result:=(B[1] = Ord(S[len-1])) and (B[2] = Ord(S[len]));
  end
  else result:=False;
end;
*)

//
//  ������� ���������� ��� ��� ����������� � ����
//
function GetCheckBoxString(ACode:boolean;AStr:String):String;
var i:integer;
begin
  result:='';
  i:=pos(cCommentDelimiter,AStr);
  if i>0 then
  begin
    if ACode then
    begin
      //���� ���������� ���
      result:=copy(AStr,1,i-1);
    end
    else begin
      //���� ���������� �����������
      result:=copy(AStr,i+2,Length(AStr)-(i+1));
    end;
  end
  else begin
    if ACode then  result:=AStr;
  end;
end;

function GetKM5CRC(S:String;Len:integer):word;
var CRC:word;
    aCRC:array[1..2]of byte absolute CRC;
    i:integer;
begin
  CRC:=0;
  for i := 1 to Len do
  begin
    aCRC[1]:=aCRC[1] xor Ord(s[i]);
    aCRC[2]:=aCRC[2] + Ord(s[i]);
  end;
  result:=CRC;
end;


function GetSIKONCRC(S:String;Len:integer):word;
var CRC:word;
    aCRC:array[1..2]of byte absolute CRC;
    i,j:integer;
    over:boolean;
begin
  CRC:=0;
  for i := 1 to Len do
  begin
    aCRC[2]:=Ord(s[i]) xor aCRC[2];
    for j:=1 to 8 do
    begin
        over:=CRC >= $8000;
        CRC:=CRC shl 1;
        if over then CRC:=CRC xor $1021;
    end;
  end;
  CRC:=CRC or $8080;
  result:=CRC;
end;




function GetCRC(S:String;len:integer):word;
var W:word;
    B:array[1..2]of byte absolute W;
    i,j:integer;

begin
  W:=$FFFF;
  for i := 1 to Len do
  begin
     W:=(W div 256)*256+((W mod 256) xor ord(s[i]));
     for j := 0 to 7 do
     begin
         if (W and 1) = 1 then
            W:=(W shr 1) xor $a001
         else
            W:=W shr 1;
     end;
  end;
  result:=W;
end;

procedure SetCRC16toBuff(ptrBuf:Pointer;len:integer);
var W:word;
    B:array[1..2]of byte absolute W;
    i,j:integer;
    p:PBytePrt;

begin
  W:=$FFFF;
  p:=ptrBuf;
  for i := 1 to Len do
  begin
     W:=(W div 256)*256+((W mod 256) xor p^);
     Inc(p);
     for j := 0 to 7 do
     begin
         if (W and 1) = 1 then
            W:=(W shr 1) xor $a001
         else
            W:=W shr 1;
     end;
  end;
  p^:=Lo(W);Inc(p);
  p^:=Hi(W);
end;


function CheckCRC16(ptrBuf:Pointer;len:integer):boolean;
var W:word;
    B:array[1..2]of byte absolute W;
    i,j:integer;
    p:PBytePrt;

begin
  W:=$FFFF;
  p:=ptrBuf;
  for i := 1 to Len do
  begin
     W:=(W div 256)*256+((W mod 256) xor p^);
     Inc(p);
     for j := 0 to 7 do
     begin
         if (W and 1) = 1 then
            W:=(W shr 1) xor $a001
         else
            W:=W shr 1;
     end;
  end;
  result:=(W=$0000);
end;


(*
void crc_16(uchar Data, unsigned short *crc)
{
  *crc = ((*crc) >> 8) ^ crc16_table[((*crc) ^ Data) & 0xff];
}
u16 crc16(u16 crc, u8 const *buffer, size_t len)
 {
         while (len--)
                 crc = crc16_byte(crc, *buffer++);
         return crc;
 }
*)
type TCRC16Table=array[0..$FF] of word;

function CRC16(S:String;len:integer):word;
const
 crc16_table:TCRC16Table = ($0000, $C0C1, $C181, $0140, $C301, $03C0, $0280, $C241,
          $C601, $06C0, $0780, $C741, $0500, $C5C1, $C481, $0440,
          $CC01, $0CC0, $0D80, $CD41, $0F00, $CFC1, $CE81, $0E40,
          $0A00, $CAC1, $CB81, $0B40, $C901, $09C0, $0880, $C841,
          $D801, $18C0, $1980, $D941, $1B00, $DBC1, $DA81, $1A40,
          $1E00, $DEC1, $DF81, $1F40, $DD01, $1DC0, $1C80, $DC41,
          $1400, $D4C1, $D581, $1540, $D701, $17C0, $1680, $D641,
          $D201, $12C0, $1380, $D341, $1100, $D1C1, $D081, $1040,
          $F001, $30C0, $3180, $F141, $3300, $F3C1, $F281, $3240,
          $3600, $F6C1, $F781, $3740, $F501, $35C0, $3480, $F441,
          $3C00, $FCC1, $FD81, $3D40, $FF01, $3FC0, $3E80, $FE41,
          $FA01, $3AC0, $3B80, $FB41, $3900, $F9C1, $F881, $3840,
          $2800, $E8C1, $E981, $2940, $EB01, $2BC0, $2A80, $EA41,
          $EE01, $2EC0, $2F80, $EF41, $2D00, $EDC1, $EC81, $2C40,
          $E401, $24C0, $2580, $E541, $2700, $E7C1, $E681, $2640,
          $2200, $E2C1, $E381, $2340, $E101, $21C0, $2080, $E041,
          $A001, $60C0, $6180, $A141, $6300, $A3C1, $A281, $6240,
          $6600, $A6C1, $A781, $6740, $A501, $65C0, $6480, $A441,
          $6C00, $ACC1, $AD81, $6D40, $AF01, $6FC0, $6E80, $AE41,
          $AA01, $6AC0, $6B80, $AB41, $6900, $A9C1, $A881, $6840,
          $7800, $B8C1, $B981, $7940, $BB01, $7BC0, $7A80, $BA41,
          $BE01, $7EC0, $7F80, $BF41, $7D00, $BDC1, $BC81, $7C40,
          $B401, $74C0, $7580, $B541, $7700, $B7C1, $B681, $7640,
          $7200, $B2C1, $B381, $7340, $B101, $71C0, $7080, $B041,
          $5000, $90C1, $9181, $5140, $9301, $53C0, $5280, $9241,
          $9601, $56C0, $5780, $9741, $5500, $95C1, $9481, $5440,
          $9C01, $5CC0, $5D80, $9D41, $5F00, $9FC1, $9E81, $5E40,
          $5A00, $9AC1, $9B81, $5B40, $9901, $59C0, $5880, $9841,
          $8801, $48C0, $4980, $8941, $4B00, $8BC1, $8A81, $4A40,
          $4E00, $8EC1, $8F81, $4F40, $8D01, $4DC0, $4C80, $8C41,
          $4400, $84C1, $8581, $4540, $8701, $47C0, $4680, $8641,
          $8201, $42C0, $4380, $8341, $4100, $81C1, $8081, $4040);

procedure CRC_16(var CRC:word;Data:byte);
begin
 //crc = ((*crc) >> 8) ^ crc16_table[((*crc) ^ Data) & 0xff];
 CRC:=(CRC shr 8) xor crc16_table[(crc xor Data) and $ff];
end;
var i:integer;
begin
  result:=0;
  for i := 1 to Len do
     CRC_16(result,ord(s[i]));
end;


function BaudRate2Int(ABaud:TBaudRate):integer;
begin
  case ABaud of
  br110:   result:=110;
  br300:   result:=300;
  br600:   result:=600;
  br1200:  result:=1200;
  br2400:  result:=2400;
  br4800:  result:=4800;
  br9600:  result:=9600;
  br14400: result:=14400;
  br19200: result:=19200;
  br38400: result:=38400;
  br56000: result:=56000;
  br57600: result:=57600;
  br115200:result:=115200;
  br128000:result:=128000;
  br256000:result:=256000;
  else result:=0;
  end;
end;


function TBaseForm.State2Str(AState:boolean):String;
begin
  if tag=1 then result:='��������...' else
  if tag=3 then result:='������ ��������!' else
  if tag=4 then result:='�������...' else
  if tag=2 then result:='��������...'
  else
  case AState of
  True: result:='����� � ������';
  False: result:=cClosed;
  end;
end;


function Int2DataBit(AData:integer):TDataBits;
begin
   case AData of
   5: result:=dbFive;
   6: result:=dbSix;
   7: result:=dbSeven;
   else result:= dbEight;
   end;
end;


function DataBit2Int(AData:TDataBits):integer;
begin
   case AData of
   dbFive: result:=5;
   dbSix: result:=6;
   dbSeven: result:=7;
   else result:= 8;
   end;
end;


function IntToBaudRate(ABaud:integer):TBaudRate;
begin
  case ABaud of
  110:   result:=br110;
  300:   result:=br300;
  600:   result:=br600;
  1200:  result:=br1200;
  2400:  result:=br2400;
  4800:  result:=br4800;
  9600:  result:=br9600;
  14400: result:=br14400;
  19200: result:=br19200;
  38400: result:=br38400;
  56000: result:=br56000;
  57600: result:=br57600;
  115200:result:=br115200;
  128000:result:=br128000;
  256000:result:=br256000;
  else result:=br9600;
  end;
end;


procedure TBaseForm.HardwareInfo;
var Size         : cardinal;
    PRes         : PChar;
    BRes         : boolean;
    lpSystemInfo : TSystemInfo;
begin
  // ��� ����������
  Size := MAX_COMPUTERNAME_LENGTH + 1;
  PRes := StrAlloc(Size);
  BRes := GetComputerName(PRes, Size);
  if BRes then  FComputerName := UpperCASE(StrPas(PRes));
  // ��� ������������
  Size := MAX_COMPUTERNAME_LENGTH + 1;
  PRes := StrAlloc(Size);
  BRes := Windows.GetUserName(PRes, Size);
  if BRes then FUserName := StrPas(PRes);
  // ���������
  GetSystemInfo(lpSystemInfo);
  FCPU := '������ x' + IntToStr(lpSystemInfo.dwProcessorType);
end;

function GetIPAddress(Name:String): string;
const
 WINSOCK_VERSION=$0101;
var
  WSAData : TWSAData;
  p : PHostEnt;
begin

  WSAStartup(WINSOCK_VERSION, WSAData);
  p := GetHostByName(PChar(Name));
  Result := inet_ntoa(PInAddr(p.h_addr_list^)^);
  WSACleanup;
end;

procedure TBaseForm.aAboutExecute(Sender: TObject);
begin
(*  MessageDlg('Term2006 - ������������� �������� ��� ����������� ����������� � ��������:'+cCRLF+
             '����������������� �����,������� TCP ��� UDP,Bluetooth � ������� TBN ������, '+cCRLF+
             '� ��� �� ����������� �������: TCP,������������ ���� ��� ����������������� �����.'+cCRLF+
             '  (���������� �������� ����������� ���������� ����� ����� ����� �������)'+cCRLF+
             '                                    � "��� ��� ������������" - '+cCurVer, mtInformation, [mbOk],0)*)
    MessageBox(0,'������������� �������� ��� ����������� ����������� � ��������: '+//cCRLF+
             '����������������� �����,������� TCP ��� UDP, Bluetooth � ������� TBN ������, '+//cCRLF+
             '� ��� �� ����������� �������: TCP, ������������ ���� ��� ����������������� �����.'+//cCRLF+
             ' (���������� �������� ����������� ���������� ����� ����� ����� �������)'+//cCRLF+
             '� "��� ��� ������������" - '+cCurVer, '�erm2006', MB_ICONINFORMATION or MB_OK);
end;

procedure TBaseForm.RefreshPortState;
begin
  ComPort_GrpBox.Visible:=pcTypeOfConnect.ActivePageIndex=0;
  UDPPort_GrpBox.Visible:=pcTypeOfConnect.ActivePageIndex=1;
  TCPPort_GrpBox.Visible:=pcTypeOfConnect.ActivePageIndex=2;
  KSPDPort_GrpBox.Visible:=pcTypeOfConnect.ActivePageIndex=3;
  Bluetooth_GrpBox.Visible:=pcTypeOfConnect.ActivePageIndex=4;
  case pcTypeOfConnect.ActivePageIndex of
    0:begin
        if Assigned(ComPort1) then
        begin
          ComPort_State.Caption:=State2Str(ComPort1.Connected);
          FirstStateString:=ComPort1.Port+':'+IntToStr(BaudRate2Int(ComPort1.BaudRate))+' '+ComPort_State.Caption;
        end
        else begin
          ComPort_State.Caption:=State2Str(false);
          FirstStateString:=ComPort_Number.Text+':'+ComPort_Baud.Text+' '+ComPort_State.Caption;
        end
      end;
    1:begin UDPPort_state.Caption:=State2Str(UDPSocket.Bound);
           FirstStateString:='UDP '+UDPSocket.LocalHost+':'+UDPSocket.LocalPort+' '+UDPPort_state.Caption;
      end;
    2:begin
             if Assigned(xportTCPClient) and assigned(xportTCPClient.Socket) then
             begin
               if xportTCPClient.Socket.Connected then
                 TCPPort_state.Caption:=cOpened
               else begin
                 TCPPort_state.Caption:=cClosed;
                if aPortClose.Enabled then aPortCloseExecute(aPortClose);
               end;
             end
             else begin
                 TCPPort_state.Caption:=cClosed;
                 if aPortClose.Enabled then aPortCloseExecute(aPortClose);
             end;
            FirstStateString:='TCP '+TCPPort_IP.text+':'+IntToStr(TCPPort_Number.Value)+' '+TCPPort_state.Caption;
      end;
    3:begin
             if Assigned(xportTCPClient) and assigned(xportTCPClient.Socket) then
             begin
               if xportTCPClient.Socket.Connected then
               begin
                 KSPD_state.Caption:=cOpened
               end
               else begin
                 KSPD_state.Caption:=cClosed;
                 if aPortClose.Enabled then aPortCloseExecute(aPortClose);
               end
             end
             else begin
                 KSPD_state.Caption:=cClosed;
                 if aPortClose.Enabled then aPortCloseExecute(aPortClose);
             end;
            FirstStateString:='������ '+TBNBROKER_IP.Text+' ID KSPD:'+KSPD_ID.Text+' '+KSPD_state.Caption;
      end;
     4:      begin
                FirstStateString:='������ '+Bluetooth_State.Caption;
             end;
  end;
  SecondStateString:='';
  if serveractive.Checked or chkBroker_KSPD.checked or chkVirtualComPort.Checked then
  begin
     if serveractive.Checked then
          SecondStateString:=SecondStateString+' TCP '+GetIPAddress(FComputerName)+':'+IntToStr(ServerPortEdt.Value)+' '+ServerStateLab.Caption;
     if chkBroker_KSPD.Checked then begin
          if chkRealIDBroker_KSPD.Checked then
            SecondStateString:=SecondStateString+' ���� '+Broker_KSPD_IP.Text+':'+IntToStr(seID_Broker_KSPD.Value)+' '+Broker_KSPD_State.Caption
          else
            SecondStateString:=SecondStateString+' ���� '+Broker_KSPD_IP.Text+':'+IntToStr(seID_Broker_KSPD.Value+1000000000)+' '+Broker_KSPD_State.Caption;
     end;
     if chkVirtualComPort.Checked then
          SecondStateString:=SecondStateString+' VCOM '+VirtualComPort_Number.Text+' '+VirtualComPort_State.Caption;
  end
  else
     SecondStateString:='��������';
  CorrectTray;
end;

procedure TBaseForm.aFileSaveExecute(Sender: TObject);
var fileOk:boolean;
begin
  if assigned(Sender) then
  begin
    fileOk:=FileExists(SaveDialog1.FileName);
    if fileOk then RenameFile(SaveDialog1.FileName,
       changeFileExt(SaveDialog1.FileName,'.BAK'));
    fileOk:=True;
  end
  else
    fileOk:=False;
  if FileOk or SaveDialog1.Execute then
  begin
     if exInputBuffChk.Checked then
       eInputBuf.Lines.SaveToFile(SaveDialog1.FileName)
     else
       InputBuf.Lines.SaveToFile(SaveDialog1.FileName);
     OpenDialog1.FileName:=SaveDialog1.FileName;
  end;
end;

procedure TBaseForm.aFileCloseExecute(Sender: TObject);
begin
  if MessageDlg('�� ������������� ������ ��������� ������?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    Close;
end;

procedure TBaseForm.toSystemLog(AValue:String);
begin
  if aSystemJournal.Checked and Assigned(SystemMemo) then
  begin
     SystemMemo.lines.BeginUpdate;
     SystemMemo.lines.add(AValue);
     SystemMemo.lines.EndUpdate;
  end

end;

procedure TBaseForm.SetStatusBar(AStatus:String;Idx:byte);
begin
  if AStatus='' then Exit;
  if assigned(Status) and (Status.Panels.Count>Idx) then
     Status.panels[Idx].Text:=AStatus;
  if chkNotWriteToLogWhenHidden.Checked and InTray then Exit;
  if idx in [0,2] then
     toSystemLog(AStatus);
end;

procedure TBaseForm.CreateXPort;
begin
  xportTCPClient:=TfndTCPClient.CreateEx(TCPPort_IP.Text,IntToStr(TCPPort_Number.Value));
  xportTCPClient.OnConnected:=xportTCPClientConnected;
  xportTCPClient.OnDataAvailable:=DataClientDataAvailable;
  xportTCPClient.OnSocketStateChange:=xportSocketStateChange;
  xportTCPClient.OnStateChange:=xportStateChange;
end;

procedure TBaseForm.CreateBrokerPort;
begin
  xportTCPClient:=TfndTCPClient.CreateEx(TBNBROKER_IP.Text,IntToStr(TBNBROKER_PORT.Value));
  xportTCPClient.OnConnected:=xportTCPClientConnected;
  xportTCPClient.OnDataAvailable:=DataClientDataAvailable;
  xportTCPClient.OnSocketStateChange:=xportSocketStateChange;
  xportTCPClient.OnStateChange:=xportStateChange;
end;

procedure TBaseForm.DestroyKSPDTCPClient;
begin
      RefreshVirtualKSPD(False);
      KSPDTCPClient.Active:=False;
      KSPDTCPClient.FreeOnRelease;
      KSPDTCPClient:=nil;
      KSPDConnected:=False;
      FKSPDRegistered:=False;
      BrokerKSPDState:='��������';
end;

procedure TBaseForm.KSPDRegistration;
var
  T:longword;
  hardnum,hardware_id:longword;
  tmpS:String;
  hardnumbody:array[1..4] of char absolute hardnum;
  hardware_idbody:array[1..4] of char absolute hardware_id;
begin
    if assigned(KSPDTCPClient) and Assigned(KSPDTCPClient.Socket) then begin
       KSPDConnected:=KSPDTCPClient.Socket.Connected;
    end;
    if KSPDConnected then
    begin
         BrokerKSPDState:='�����������...';
         KSPDRegistered:=False;
         FKSPDInBuff:='';//���������� �����
//         Application.ProcessMessages;
//         sleep(50);
         hardnum:=seHARDNUM_KSPD.Value;
          if chkRealIDBroker_KSPD.Checked then
             hardware_id:=seID_Broker_KSPD.Value
          else
             hardware_id:=seID_Broker_KSPD.Value+1000000000;
         if assigned(KSPDTCPClient.Socket) then begin
            tmpS:='TBN'+#0+hardware_idbody[1]+
                           hardware_idbody[2]+
                           hardware_idbody[3]+
                           hardware_idbody[4]+
                           hardnumbody[1]+
                           hardnumbody[2]+
                           hardnumbody[3]+
                           hardnumbody[4];
            KSPDTCPClient.Socket.SendStr(tmpS);
            Sended:=FSended+Length(tmpS);
            IncStatistics_O(ord(cadrVKSPD),Length(tmpS));
            T:=GetTickCount+10000;
            while GetTickCount<T do begin
               Application.ProcessMessages;
               if Terminated then break;
               if KSPDRegistered then break;
            end;
            if KSPDRegistered then
               BrokerKSPDState:='���������'
            else
               DestroyKSPDTCPClient;
         end;
    end
    else begin
         BrokerKSPDState:='������ �����������';
         DestroyKSPDTCPClient;
    end;
end;


procedure TBaseForm.RefreshVirtualKSPD(Active:boolean);
begin
  Broker_KSPD_IP.Enabled:=not Active;
  cbBroker_KSPD_IP.Enabled:=not Active;
  seID_Broker_KSPD.Enabled:=not Active;
  seHARDNUM_KSPD.Enabled:=not Active;
  seBroker_KSPD_Port.Enabled:=not Active;
end;

procedure TBaseForm.CreateKSPDTCPClient;
var
  T:longword;

begin
  //������� ������
  btnCreateCRC.Down:=True;//��� �������� ���� ��������� ��� ����������� �����
  btnCreateCRCClick(nil);
  if not Assigned(KSPDTCPClient) then
  try
    BrokerKSPDState:='�������������...';
    KSPDTCPClient:=TfndTCPClient.CreateEx(Broker_KSPD_IP.Text,IntToStr(seBroker_KSPD_Port.Value));
    KSPDTCPClient.OnConnected:=KSPDTCPClientConnected;
    KSPDTCPClient.OnDataAvailable:=KSPDDataClientDataAvailable;
    KSPDTCPClient.OnSocketStateChange:=KSPDSocketStateChange;
    KSPDTCPClient.OnStateChange:=KSPDStateChange;
    Application.ProcessMessages;
    sleep(500);
    BrokerKSPDState:='�����������...';
    Application.ProcessMessages;
    //���������� ������� ����������� � �������
    try
      if Assigned(KSPDTCPClient) then
      begin
        KSPDTCPClient.Active:=True;
        T:=GetTickCount+10000;
        while GetTickCount<T do begin
           Application.ProcessMessages;
           if Terminated then break;
           if KSPDConnected then break;
        end;
      end;
      RefreshVirtualKSPD(True);
    except
      on e:exception do
      begin
         chkBroker_KSPD.checked:=False;
         BrokerKSPDState:='������:'+e.Message;
         Application.ProcessMessages;
         sleep(1000);
         Exit;
      end;
    end;
    KSPDRegistration;
  finally
    chkBroker_KSPD.Enabled:=True;
  end;
end;

procedure TBaseForm.DestroyComPort1;
begin
      if Assigned(ComPort1) then
      begin
        try
          ComPort1.Destroy;
          ComPort1.Free;
          ComPort1:=nil;
        except

        end;
      end;
end;

procedure TBaseForm.aPortOpenExecute(Sender: TObject);
var T:longword;
begin
 try
  SetStatusBar(' ',0);
  aPortOpen.Enabled:=False;
  Application.ProcessMessages;
  RefreshPortStateTimer.Enabled:=True;
  case pcTypeOfConnect.ActivePageIndex of
    0: begin
          notComPort1Errors:=True;
          //��������� - ���� �� ����� ������� � ������ ���������
          DestroyComPort1;
          ComPort1:=TComPort.Create(nil);
          if Assigned(ComPort1) then
          begin
            ComPort1.OnAfterClose:=ComPort1AfterClose;
            ComPort1.OnCTSChange:=ComPort1CTSChange;
            ComPort1.OnDSRChange:=ComPort1DSRChange;
            ComPort1.OnError:=ComPort1Error;
            ComPort1.OnRing:=ComPort1Ring;
            ComPort1.OnRxChar:=ComPort1RxChar;
            ComPort1.OnTxEmpty:=ComPort1TxEmpty;
            ComPort1.OnException:=ComPort1ExceptionEvent;

            if (ComPort_Baud.Text='') then Exit;
            if (ComPort_EvenBit.Text='') then Exit;
            ComPort1.Port:=ComPort_Number.Text;
            ComPort1.BaudRate:=StrToBaudRate(ComPort_Baud.Text);//��������
            ComPort1.DataBits:=StrToDataBits(IntToStr(ComPort_BitsCount.value));//����� ���
            ComPort1.Parity.Bits:=StrToParity(ComPort_EvenBit.Text);//��������
            try
              ComPort1.Open;
            except
              DestroyComPort1;
            end;
            if Assigned(ComPort1) then
            begin
              if ComPort1.Connected then
                 SetStatusBar('���� ������!',0)
              else
                 SetStatusBar('�� ���� �������� ����.',0);
            end
            else  SetStatusBar('�� ���� �������� ����.',0);
            RTS.Enabled:=ComPort1Connected;
            AutoDTR.Enabled:=ComPort1Connected;
            DTR.Enabled:=ComPort1Connected and (not AutoDTR.Checked);
            notComPort1Errors:=ComPort1Connected;
          end;
       end;//0
    1: begin
        UDPSocket.Host:=UDPPort_IP.Text;
        UDPSocket.Port:=IntToStr(UDPPort_Number.Value);
        UDPSocket.LocalHost:=UDPLocalPort_IP.Text;
        UDPSocket.LocalPort:=IntToStr(UDPLocalPort_Number.Value);
        UDPSocket.Bind;
       end;
    2: begin
          //xportTCPClient.Active:=False;
          CreateXPort;
          sleep(0);
          Application.ProcessMessages;
          if Assigned(xportTCPClient) then
          begin
            xportTCPClient.Active:=True;
            T:=GetTickCount+10000;
            while GetTickCount<T do begin
               if Terminated then break;
               Application.ProcessMessages;
               if xportConnected then break;
            end;
          end;
       end;//2
    3: begin
          //xportTCPClient.Active:=False;
          CreateBrokerPort;
          sleep(1);
          Application.ProcessMessages;
          if Assigned(xportTCPClient) then
          begin
            xportTCPClient.Active:=True;
            T:=GetTickCount+10000;
            while GetTickCount<T do begin
               if Terminated then break;
               Application.ProcessMessages;
               if xportConnected then break;
            end;
          end;
          RefreshClientBroker(xportTCPClient.Active);
       end;//3
    4: begin
        try
          nrBT1.Active := True;
        except
          raise;
        end;
       end;
  end;//case
  ProgressBar1.Position:=0;
  Tag:=0;
  RefreshEditState;
 except
  on e:exception do
  begin
    toSystemLog(e.Message);
    aPortOpen.Enabled:=True;
  end;
 end;
  if aPortClose.Enabled then
    aPortOpen.Tag:=1
  else
    aPortOpen.Tag:=0;

end;

procedure TBaseForm.RefreshClientBroker(Active:boolean);
begin
 cbTBNBROKER_IP.Enabled:=not Active;
 TBNBROKER_IP.Enabled:=not Active;
end;

procedure TBaseForm.RefreshEditState;
var Connected:boolean;
begin
 try
  Connected:=False;
  case pcTypeOfConnect.ActivePageIndex of
    0: Connected:=notComPort1Errors and ComPort1Connected;//0
    1: Connected:=UDPSocket.Bound;
    2: Connected:=xportConnected;
    3: Connected:=xportConnected;
    4: Connected:=nrBT1.Active;
  end;//case
  aPortSendData.Enabled:=Connected;
//  OutputBuf.Enabled:=Connected;
  aPortClose.Enabled:=Connected;
  aPortOpen.Enabled:=not Connected;
  RepeatBtn.Enabled:=Connected;
  ComPort_Number.Enabled:=NOT Connected;
  UDPPort_GrpBox.Enabled:=NOT Connected;
  TBNBROKER_IP.Enabled:=NOT Connected;
  TBNBROKER_Port.Enabled:=NOT Connected;
  TCPPort_IP.Enabled:=NOT Connected;
  TCPPort_Number.Enabled:=NOT Connected;
  nrDeviceBox1.Enabled:=NOT Connected;
  Bluetooth_ParamBox.Enabled:=NOT Connected;
 except
 end 
end;


function TBaseForm.getcurrentdir:String;
begin
  result:=ExtractFilePath(Application.ExeName);
end;


procedure TBaseForm.FormCreate(Sender: TObject);
vaR I:integer;
begin
  Screen.MenuFont.Name := 'Tahoma';
  Screen.MenuFont.Charset:=RUSSIAN_CHARSET;
  SetCodePage(1049);
  MyLog:=TStringAssociationList.Create(false,1000);
  StoreDataToExecMnu.Visible:=CheckExcelInstall;
  OpenDialog1.InitialDir:=ExtractFilePath(Application.ExeName);
  OpenDialog2.InitialDir:=OpenDialog1.InitialDir;
  SaveDialog1.InitialDir:=OpenDialog1.InitialDir;
  SaveDialog2.InitialDir:=OpenDialog1.InitialDir;
  SystemSoundPlayerLoadList;
  originalPanelWindowProc := MacrosBox.WindowProc;
  MacrosBox.WindowProc := PanelWindowProc;
  DragAcceptFiles(MacrosBox.Handle,true);
  tbAutoComListClick(Sender);
  PageControl2.ActivePageIndex:=0;
  FormStorage1.IniFileName:=changefileext(Application.ExeName,'.ini');
  FormStorage1.IniSection:='Common';
  FormStorage1.Active:=True;
  FormStorage2.IniFileName:=changefileext(Application.ExeName,'x.ini');
  FormStorage2.IniSection:='Store '+IntToStr(Term2006Number);
  FormStorage2.Active:=True;
  FTerminated := False;
  FromLastToTCPServer:=cadrFREE;
  FromLastToVKSPD:=cadrFREE;
  FromLastToVCOM:=cadrFREE;
  FromLastToClient:=cadrFREE;
  //������ ��������� ����������� ��5
  FFunc := $7c;
  FSubFunc := 1;
  FInTray:=False;
  chkBroker_KSPD.OnClick:=nil;
  chkVirtualComPort.OnClick:=nil;
  serveractive.OnClick:=nil;
  FFirsActivate :=True;
//  CreateFile('CONIN$', GENERIC_READ, 0, nil, OPEN_EXISTING, 0, 0);
//  GetStdHandle(STD_INPUT_HANDLE);  ONLINESEK:=0;                            //������� ������ � ������ ������
  SecondTimer.Tag:=300;//PTESTBRK
  ONLINEMIN:=0;                            //������� ����� � ������ ������
  ONLINEhour:=0;                           //������� ����� � ������ ������
  ONLINEDAYS:=0;                           //������� �����
  maxclient:=50;
  FKSPDRegistered:=False;
  curProc:=aNO_CRCExecute;
  aNo_CRC.Checked:=True;
  BaseForm.ImageList1.GetBitmap(3,RepeatBtn.Glyph);//�������
  if FileExists(cASLItemsFile) then
    Memo1.Items.LoadFromFile(cASLItemsFile);
  ProgressBar1.Parent:=Status;
  ProgressBar1.Left:=302;
  ProgressBar1.Width:=198;
  ProgressBar1.Top:=2;
  pcTypeOfConnect.ActivePageIndex:=0;
  ForceDirectories(getcurrentdir+'\history');
  eInputBuf.SearchEngine := TSynEditSearch.Create( eInputBuf );
  InputBufCnt:=TSynEditorOptionsContainer.Create(eInputBuf);
  Received:=0;
  Sended:=0;
//  for i:=0 to ComponentCount-1 do
//    if Components[i] is TToolBar then
//       TToolBar(Components[i]).OnDrawItem:=PaintToolButton;

end;

(*
 ������ ������ � ������� � �� �� ����������
*)
procedure TBaseForm.DisassembleClientData;
var s:String;
    len:integer;
    OutBuff:array[0..2048] of byte;
begin
  s:='';
  if Length(FClientInBuff)>0 then
      //���� ������ - ����������� � ������ �� ������� ��� ������
      if pcTypeOfConnect.ActivePageIndex=3 then
      begin
         InB.Modify:=True;
         InB.Count:=Length(FClientInBuff);
         if InB.Count>=1 then
         begin
           CopyMemory(@InB.OutBuff[0],@FClientInBuff[1],InB.Count);
           if CheckCRC16(@InB.OutBuff[0],InB.Count+12) then
           begin
              if TransportChk.Checked then
              begin
                setlength(s,InB.Count+12);
                copymemory(@s[1],@InB.OutBuff[0],InB.Count+12);
                toSystemLog('������ >> ['+Str2Hex(s)+']');
              end;
              SetLength(FClientInBuff,InB.Count);
              CopyMemory(@FClientInBuff[1],@InB.Buff[0],InB.Count);
              if (InB.Cmd and $80) <> $80 then
              begin
                 SetStatusBar('������ >> ['+IntToStr(Length(FClientInBuff))+']',2);
                 //���� ���� ����������� ������� - ������������ ����� ����
                 SendDataFromClient(FClientInBuff,ord(cadrCLIENT));
//                 s:=FClientInBuff;
//                 DataToTerminalWindow(FClientInBuff,2);//��������� �������� ��������� ������
                 KSPD_State.Caption:='����� �������';
              end
              else begin
                SetStatusBar('������:���� �� ������...',2);
                KSPD_State.Caption:='���� �� ������';
              end;
           end
         else begin
            SetStatusBar('������ >> ������ CRC ������ ['+IntToStr(Length(FClientInBuff))+' ����]',2);
            KSPD_State.Caption:='������ >> ������ CRC ������';
         end;
         end;
      end
      else begin
         case pcTypeOfConnect.ActivePageIndex of
         0: SetStatusBar(ComPort_Number.Text+' >> ('+IntToStr(Length(FClientInBuff))+') ����',2);
         1: SetStatusBar('UDP '+UDPPort_IP.Text+' >> ('+IntToStr(Length(FClientInBuff))+') ����',2);
         2: SetStatusBar('TCP '+TCPPort_IP.Text+':'+IntToStr(TCPPort_Number.Value)+' >> ('+IntToStr(Length(FClientInBuff))+') ����',2);
         end;
         //���� ���� ����������� ������� - ������������ ����� ����
         SendDataFromClient(FClientInBuff,ord(cadrCLIENT));
//         s:=FClientInBuff;
//         DataToTerminalWindow(FClientInBuff,2);//��������� �������� ��������� ������
      end;
      FClientInBuff:='';
end;

function TBaseForm.ExecuteFile(const FileName:string;ShowCmd: Integer): THandle;
var

zFileName: array[0..200] of Char;

begin

  Result := ShellExecute(Application.MainForm.Handle, 'open',
  StrPCopy(zFileName, FileName), nil, nil, ShowCmd);
end;

function TBaseForm.CheckAccessEnabled:boolean;
var s:string;
    ok:boolean;
    i,lenpwd:integer;
begin
  s:=PasswordEdt.text;
  ok:=true;
  lenpwd:=length(PWD);
  for i:=1 to Length(s) do
   if (lenpwd<i) or (s[i]<>FPWD[i]) then
   begin
     ok:=False;
     break;
   end;
  result:=((ok) or (FPWD='MABUKA'));
end;

//typeofconsole - ������������ 0 - �CP 1 - ���� 2- VCOM 3
function TBaseForm.CheckConsoleCmd(s:String;typeofconsole:byte):boolean;
var olds,fn:String;
    F: TextFile;
    i:integer;
begin
    olds:=s;
    s:=Trim(UpperCase(s));
    result:=True;
    if s='STATE' then
      s:=Get42_2Answer()
    else if s='CLEARPWD' then
    begin
      s:='PASSWORD CLEARED';
      PWD:='';
    end
    else if s='VER' then
      s:='Term2006.exe '+cCurVer
    else if (pos('PASSWORD ',s)=1) then
    begin
        if CheckAccessEnabled and (Length(s)>9) then
        begin
          PasswordEdt.Text:=copy(s,9,length(s)-8);
          s:='New Password installed!';
        end
        else begin
           PWD:=copy(s,10,length(s)-9);
           if CheckAccessEnabled then
              s:='access granted!'
           else
              s:='access denied!';
        end;
    end
    else if (pos('PTESTBRK',s)=1) then
    begin
        if Length(s)>9 then
           s:=copy(s,10,Length(s)-9)
        else
           s:='';
        if s<>'' then
        begin
          if CheckAccessEnabled then
          begin
            PTESTBRK:=StrToIntDef(s,300);
          end
          else
             s:='access denied!';
        end
        else s:=IntToStr(PTESTBRK);
    end
    else if (pos('COMMENTS',s)=1) then
    begin
        if Length(s)>9 then
           s:=copy(s,10,Length(s)-9)
        else
           s:='';
        if s<>'' then
        begin
          if CheckAccessEnabled then
          begin
            CommentsEdt.text:=s;
          end
          else
             s:='access denied!';
        end
        else s:=CommentsEdt.text;
    end
    else if (pos('SHUTDOWNSYSTEM',s)=1) then
    begin
        if CheckAccessEnabled then
        begin
          s:='Computer will be SHUTDOWN';
          Application.ProcessMessages;
          sleep(200);
          ShutDown;
        end
        else
          s:='access denied!';
    end
    else if (pos('TYPEOFPORT',s)=1) then
    begin
        if Length(s)>11 then
           s:=copy(s,12,Length(s)-11)
        else
           s:='';
        if s<>'' then
        begin
          if CheckAccessEnabled then
          begin
            i:=StrToIntDef(s,0);
            if i in [0..4] then
               pcTypeOfConnect.ActivePageIndex:=i;
          end
          else
            s:='access denied!';
        end;
        if pcTypeOfConnect.ActivePageIndex>=0 then
             s:=intToStr(pcTypeOfConnect.ActivePageIndex)+'('+pcTypeOfConnect.ActivePage.Caption+')';
    end
    else if (pos('OPENPORT',s)=1) then
    begin
        if CheckAccessEnabled then
        begin
          if aPortOpen.Enabled then
             aPortOpenExecute(nil)
          else
            s:='port was opened!';
        end
        else
          s:='access denied!';
    end
    else if (pos('CLOSEPORT',s)=1) then
    begin
        if CheckAccessEnabled then
        begin
          if aPortClose.Enabled then
             aPortCloseExecute(nil)
          else
            s:='port was closed!';
        end
        else
          s:='access denied!';
    end
    else if (pos('REBOOTSYSTEM',s)=1) then
    begin
        if CheckAccessEnabled then
        begin
          s:='Computer will be REBOOT';
          Application.ProcessMessages;
          sleep(200);
          MyExitWindows(EWX_REBOOT or EWX_FORCE);
        end
        else
          s:='access denied!';
    end
    else if (pos('QUIT',s)=1) then
    begin
        if CheckAccessEnabled then
        begin
          s:='Term2006 will be close';
          Application.ProcessMessages;
          sleep(200);
          Application.Terminate;
        end
        else
          s:='access denied!';
    end
    else if (pos('EXEC ',s)=1) and (Length(s)>5) then
    begin
      if CheckAccessEnabled then
      begin
        s:=copy(s,6,length(s)-5);
        try
          executeFile(s,SW_SHOWNORMAL);
          s:='cmd executed';
        except
          on e:exception do
            s:=e.Message;
        end;
      end
      else
        s:='access denied!';
    end
    else if (pos('CREATEFILE ',s)=1) and (Length(s)>12) then
    begin
      if CheckAccessEnabled then
      begin
        s:=copy(s,12,length(s)-11);
        //�������� ���
        fn:='';
        for i:=1 to Length(s) do
        begin
           if s[i] in ['a'..'z','A'..'Z','0'..'9',':','\','.'] then
              fn:=fn+s[i]
           else
              break;
        end;
        s:=copy(s,i+1,length(s)-(i-1));
        try
          AssignFile(F, fn);
          Rewrite(F);
          Writeln(F, s);
          CloseFile(F);
          if FileExists(fn) then
             s:='file '+fn+' created succeful!'
          else
             s:='file not created';
        except
          on e:exception do
            s:=e.Message;
        end;
      end
      else
        s:='access denied!';
    end
    else if (pos('READFILE ',s)=1) and (Length(s)>10) then
    begin
      if CheckAccessEnabled then
      begin
        s:=copy(s,10,length(s)-9);
        //�������� ���
        fn:='';
        for i:=1 to Length(s) do
        begin
           if s[i] in ['a'..'z','A'..'Z','0'..'9',':','\','.'] then
              fn:=fn+s[i]
           else
              break;
        end;
        try
          AssignFile(F, fn);
          Reset(F);
          s:='';
          olds:='';
          while not eof(F) do
          begin
            Readln(F, fn);
            if fn<>'' then begin
              SetLength(s, Length(fn));
              OemToChar(PChar(fn), PChar(s));
            end
            else s:='';
            //��� ������� ����� ���������������� ������ ����� ������ ���������� ������ ���������
            SendDataToClient(s,typeofconsole);
            Application.ProcessMessages;
            sleep(200);
          end;
          //��� ������� ��������������� ������ � ���������� ��
          if typeofconsole = 0  then s:=olds;

          CloseFile(F);
          s:='';
        except
          on e:exception do
            s:=e.Message;
        end;
      end
      else
        s:='access denied!';
    end
    else if (s='HELP') then
      s:=#13+#10+
         'HELP              : This information'+#13+#10+
         'VER               : Get current version'+#13+#10+
         'EXEC              : Execute DOS command'+#13+#10+
         'CREATEFILE        : Create file CREATEFILE 123.txt ���� �����'+#13+#10+
         'READFILE          : Read selected file - READFILE 123.txt'+#13+#10+
         'STATE             : Get\Set CONTROLLER STATE'+#13+#10+
         'CLEARPWD          : Reset entered pasword'+#13+#10+
         'PASSWORD          : Get\Set PASSWORD'+#13+#10+
         'TYPEOFPORT        : Get\Set type of target port'+#13+#10+
         'OPENPORT          : Open target port'+#13+#10+
         'CLOSEPORT         : Close target port'+#13+#10+
         'SHUTDOWNSYSTEM    : Computer will be SHUTDOWN'+#13+#10+
         'REBOOTSYSTEM      : Computer will be REBOOT'+#13+#10+
         'QUIT              : Term2006r will be close'
    else begin
     s:=olds;
     result:=false;
    end;
end;

function WithoutCR(s:String):String;
var i,len:integer;
begin
  result:='';
  len:=Length(s);
  for i:=1 to len do
  begin
    if (s[i]<>#$0d) and (s[i]<>#$0a) then
    result:=result+s[i];
  end;

end;


function CheckCRAndReplace(s:String):String;
var i,len:integer;
begin
  result:='';
  len:=Length(s);
  i:=1;
  while (i<len) do
  begin
    if (len-i)>=3 then
    begin
       if s[i]='<' then
       begin
          if (s[i+1]='C') and (s[i+2]='R') and (s[i+3]='>') then
          begin
             result:=result+#$D;Inc(i,4);
          end
          else if (s[i+1]='L') and (s[i+2]='F') and (s[i+3]='>') then
          begin
             result:=result+#$A;Inc(i,4);
          end
          else begin
             result:=result+s[i];Inc(i);
          end;
       end
       else begin
          result:=result+s[i];Inc(i);
       end;
    end
    else begin
      result:=result+s[i];Inc(i);
    end;
  end;
end;



procedure TBaseForm.TCPResponceToLog;
var s,ans:String;
    ptr:Pointer;
    PSLoraMdm: PQA;
    foundCRLF:boolean;
begin
  //��������� ���������� � ���� ����� - (������������ ����� �������� 12 ����)
  if Length(FTCPInBuff)>=0 then
  begin
      //��������� ���������� �������
      s:=FTCPInBuff;
      FTCPInBuff:='';
      //������� ������ � ������������ ����
      IncStatistics_I(ord(cadrTCPSERVER),Length(s));
      DataToTerminalWindow(s,ord(cadrTCPSERVER));
      if cbEmulatorActive.Checked then
      begin
         ans:=WithoutCR(s);
         ptr:=MyLog.Items[ans];
         if Assigned(ptr) then
         begin
           ans:=CheckCRAndReplace(PQA(ptr)^.Answer);
           if PQA(ptr)^.crlf then
              ans:=ans+#$0d;
           OutBinToTCPServer(ans,ord(cadrEMUL));
         end
         else begin
           //��������� ����, ��� ����� ����� �����
           if cbEmulatorAddNew.Checked then
           begin
             New(PSLoraMdm);
             PSLoraMdm^.Answer:='';
             PSLoraMdm^.Comment:='';
             PSLoraMdm^.crlf:=s[length(s)]=#$0d;
             MyLog.Add(ans,PSLoraMdm);
             gwEmulator.Rows.Count:=gwEmulator.Rows.Count+1;
             gwEmulator.Invalidate;
             Application.ProcessMessages;
           end;
         end;
      end
      else begin
        if chkTCP_CON.Checked and CheckConsoleCmd(s,ord(cadrTCPSERVER)) then
        begin
          //��������
          SendDataToClient(s,ord(cadrTCPSERVER));
        end
        else begin
          case TCONSOLEADDR(cbDest_Server_TCP.ItemIndex) of
          cadrCLIENT:   OutBinToClient(s,ord(cadrTCPSERVER));
          cadrVKSPD: OutBinToVKSPD(s,ord(cadrTCPSERVER));
          cadrVCOM:OutBinToVCOM(s,ord(cadrTCPSERVER));
          end;
        end
      end;
  end;
end;

procedure TBaseForm.COMResponceToLog;
var s,ans:String;
    ptr:Pointer;
    PSLoraMdm: PQA;
    foundCRLF:boolean;
begin
  //��������� ���������� � ���� ����� - (������������ ����� �������� 12 ����)
  if Length(FCOMInBuff)>=0 then
  begin
      //��������� ���������� �������
      s:=FCOMInBuff;
      FCOMInBuff:='';
      IncStatistics_I(ord(cadrVCOM),Length(s));
      //������� ������ � ������������ ����
      DataToTerminalWindow(s,ord(cadrVCOM));
      if cbEmulatorActive.Checked then
      begin
         ans:=WithoutCR(s);
         ptr:=MyLog.Items[ans];
         if Assigned(ptr) then
         begin
           ans:=CheckCRAndReplace(PQA(ptr)^.Answer);
           if PQA(ptr)^.crlf then
              ans:=ans+#$0d;
           OutBinToVCOM(ans,ord(cadrEMUL));
         end
         else begin
           //��������� ����, ��� ����� ����� �����
           if cbEmulatorAddNew.Checked then
           begin
             New(PSLoraMdm);
             PSLoraMdm^.Answer:='';
             PSLoraMdm^.Comment:='';
             PSLoraMdm^.crlf:=s[length(s)]=#$0d;
             MyLog.Add(ans,PSLoraMdm);
             gwEmulator.Rows.Count:=gwEmulator.Rows.Count+1;
             gwEmulator.Invalidate;
             Application.ProcessMessages;
           end;
         end;
      end
      else begin
        if chkCOM_CON.Checked and CheckConsoleCmd(s,ord(cadrVCOM)) then
        begin
          //��������
          SendDataToClient(s,ord(cadrVCOM));
        end
        else begin
          case TCONSOLEADDR(cbDest_Virtual_COM.ItemIndex) of
          cadrCLIENT:   begin
               //�������� ��������, �� ������� ������ ������
               //� ������������� �� �� ���������������� �����
                if Assigned(VP) then
                begin
                   if (pcTypeOfConnect.ActivePageIndex in [2,3]) then
                   begin
                     case VP.Baudrate of
                     2400: KSPD_Baud.ItemIndex:=0;
                     4800: KSPD_Baud.ItemIndex:=1;
                     9600: KSPD_Baud.ItemIndex:=2;
                     19200: KSPD_Baud.ItemIndex:=3;
                     38400: KSPD_Baud.ItemIndex:=4;
                     57600: KSPD_Baud.ItemIndex:=5;
                     115200: KSPD_Baud.ItemIndex:=6;
                     256000: KSPD_Baud.ItemIndex:=7;
                     end
                   end
                   else if (pcTypeOfConnect.ActivePageIndex =0) then
                   begin
                       case VP.Baudrate of
                       1200: ComPort_Baud.ItemIndex:=0;
                       2400: ComPort_Baud.ItemIndex:=1;
                       4800: ComPort_Baud.ItemIndex:=2;
                       9600: ComPort_Baud.ItemIndex:=3;
                       14400: ComPort_Baud.ItemIndex:=4;
                       19200: ComPort_Baud.ItemIndex:=5;
                       38400: ComPort_Baud.ItemIndex:=6;
                       56000: ComPort_Baud.ItemIndex:=7;
                       57600: ComPort_Baud.ItemIndex:=8;
                       115200: ComPort_Baud.ItemIndex:=9;
                       256000: ComPort_Baud.ItemIndex:=10;
                       end;
                       ComPort_BaudChange( Nil);
                   end;
               end;
               OutBinToClient(s,ord(cadrVCOM));

            end;
          cadrTCPSERVER:OutBinToTCPServer(s,ord(cadrVCOM));
          cadrVKSPD: begin
               //�������� ��������, �� ������� ������ ������
               //� ������������� �� �� ����������� ����
               OutBinToVKSPD(s,ord(cadrVCOM));
          end;
          end;
        end
      end;

  end;
end;



procedure TBaseForm.KSPDResponceToLog;
var s,fn:String;
    F: TextFile;
    i:integer;
procedure SendToPort(ABaudrate:byte);
var fbaud:byte;
begin
    //���� ���� �����������
    if not aPortOpen.Enabled then
    begin
      //������� ������ � ������������ ����
      DataToTerminalWindow(s,ord(cadrVKSPD));
      case TCONSOLEADDR(cbDest_Virtual_KSPD.ItemIndex) of
      cadrCLIENT:   begin
          case ABaudrate of
          0: fbaud:=1;//2400  1
          1: fbaud:=2;//4800  2
          2: fbaud:=3;//9600  3
          3: fbaud:=5;//19200  5
          4: fbaud:=6;//38400   6
          5: fbaud:=8;//57600   8
          6: fbaud:=9;//115200  9
          7: fbaud:=10;//256000  10
          end;
          ComPort_Baud.ItemIndex:=fbaud;
          ComPort_BaudChange(nil);
          OutBinToClient(FKSPDInBuff,ord(cadrVKSPD));
      end;
      cadrTCPSERVER:OutBinToTCPServer(FKSPDInBuff,ord(cadrVKSPD));
      cadrVCOM:OutBinToVCOM(FKSPDInBuff,ord(cadrVKSPD));
      end;
    end
    else begin
      aPortOpen.Execute;
    end;
end;
begin
  //��������� ���������� � ���� ����� - (������������ ����� �������� 12 ����)
  if Length(FKSPDInBuff)>=12 then
  begin
     KSPDInB.Modify:=True;
     CopyMemory(@KSPDInB.OutBuff[0],@FKSPDInBuff[1],Length(FKSPDInBuff));
     if CheckCRC16(@KSPDInB.OutBuff[0],KSPDInB.Count+12) then
     begin
        BrokerKSPDState:='������ >> ����('+IntToStr(KSPDInB.Count)+') ����';
        IncStatistics_I(ord(cadrVKSPD),KSPDInB.Count+12);
          //��������� ������� - ���� ���� � �������
        if (KSPDInB.Cmd and $80) <> $80 then
        begin
            if KSPDInB.Cmd in [$41,$42] then
            begin
              if KSPDInB.Cmd = $42 then
              begin
                 KSPDInB.Count:=5;
                 (*RS485,RS232,Ethernet,CONSOLE*)
                 KSPDInB.KMDPort:=3;//�������
                 FKSPDInBuff:='STATE';
              end
              else begin
                 SetLength(FKSPDInBuff,KSPDInB.Count);
                 CopyMemory(@FKSPDInBuff[1],@KSPDInB.Buff[0],KSPDInB.Count);
              end;
              SetStatusBar('������ �� ���� ['+IntToStr(Length(FKSPDInBuff))+' ����] � ���� '+KSPDPortName[KSPDInB.KMDPort and 7],2);
             //���� ���� ����������� ������� - ������������ ����� ����
              s:=FKSPDInBuff;
              if (KSPDInB.KMDPort AND 7)= 3 then
              begin
                s:=Trim(UpperCase(FKSPDInBuff));
                //��������� ���������� �������
                BrokerKSPDState:='������� ��� ����:'+s;
                if CheckConsoleCmd(s,ord(cadrVKSPD)) then
                begin
                   //������� ������ � ������������ ����
                   DataToTerminalWindow(s,ord(cadrVKSPD));
                   StrToKSPDBroker(s);
                end
                else begin
                   SendToPort(KSPDInB.KMDSPEED);
                end;

              end
              else begin
                 SendToPort(KSPDInB.KMDSPEED);
              end;
            end//if KSPDInB.Cmd in [41,42] then
            else begin
              SetStatusBar('����:����������� �������',2);
              BrokerKSPDState:='����������� �������';
            end;
        end
        else begin
            SetStatusBar('������:���� �� ������...',2);
            BrokerKSPDState:='���� �� ������';
        end;

     end;//if CheckCRC16(@KSPDInB.OutBuff[0],KSPDInB.Count+12) then
  end;
  FKSPDInBuff:='';
end;


procedure TBaseForm.WaitAnswer;
var waitTime,curTime:longword;
    tagbyte:byte;
begin
  FDataReceived := False;
  if pcTypeOfConnect.ActivePageIndex=3 then
    waitTime:=DopNastroyki_TimeOut.Value+3000
  else
    waitTime:=DopNastroyki_TimeOut.Value;
  //��������� ������������ �����
  FinishTime := waitTime+StartTime;
  //������ ������������ ����� �� ����� ������������
  ProgressBar1.Max:=waitTime;

  Tag:=2;
  RefreshPortState;
  ClientDataTimer.Interval:=DopNastroyki_ByteTimeOut.Value;
  ClientDataTimer.Enabled:=True;
  Application.ProcessMessages;

  while True do
  begin
    if aPortOpen.Enabled then break;
    if Terminated then break;
    Application.ProcessMessages;
    sleep(1);
    curTime:=GetTickCount;

    //���� ������� ����� ����� ��������
    if curTime<FinishTime then
        ProgressBar1.Position:=(waitTime+curTime)-FinishTime
    else
        break;//����� �������

    //���� ������ �������� - �������
    if DataReceived then
    begin
        Tag:=3;
        RefreshPortState;
        Application.ProcessMessages;
        tagbyte:=4;
        SetStatusBar(mel[tagbyte],7);
        break;
    end
    else begin
      tagbyte:=(tagbyte+1) mod 4;
      SetStatusBar(mel[tagbyte],7);
    end;
  end;
  //ClientDataTimer.Enabled:=False;
  ProgressBar1.Position:=0;
  RefreshPortState;
  Application.ProcessMessages;
  Tag:=0;
end;

function GetSyncVisibleLineCount(Memo: TSynEdit): Integer;
var
  DC: HDC;
  SaveFont: HFONT;
  TextMetric: TTextMetric;
  EditRect: TRect;
begin
  DC := GetDC(0);
  SaveFont := SelectObject(DC, Memo.Handle);
  GetTextMetrics(DC, TextMetric);
  SelectObject(DC, SaveFont);
  ReleaseDC(0, DC);

  Memo.Perform(EM_GETRECT, 0, LPARAM(@EditRect));
  Result := (EditRect.Bottom - EditRect.Top) div TextMetric.tmHeight;
end;

function GetMemoVisibleLineCount(Memo: TMemo): Integer;
var
  DC: HDC;
  SaveFont: HFONT;
  TextMetric: TTextMetric;
  EditRect: TRect;
begin
  DC := GetDC(0);
  SaveFont := SelectObject(DC, Memo.Handle);
  GetTextMetrics(DC, TextMetric);
  SelectObject(DC, SaveFont);
  ReleaseDC(0, DC);

  Memo.Perform(EM_GETRECT, 0, LPARAM(@EditRect));
  Result := (EditRect.Bottom - EditRect.Top) div TextMetric.tmHeight;
end;
(*
  ����������� � ��������� ������ ������
*)

procedure TBaseForm.DataToTerminalWindow(S:string;Direct:byte; comment:String='');
var tmps,tmpS1,tmpS2:String;
    msek,InputBufLinesCount:integer;
    cnt,i:integer;
    foundcr:boolean;
    LineCount, TopLine: Integer;

begin
  if not chkScroll.Checked then
  begin
     if exInputBuffChk.Checked then
     begin
        eInputBuf.Visible:=false;
     end
     else begin
        InputBuf.Visible:=false;
     end;
  end;



   if exInputBuffChk.Checked then
   begin
    LineCount := eInputBuf.Lines.Count;
    TopLine := eInputBuf.Perform(EM_GETFIRSTVISIBLELINE, 0, 0);
   end
   else begin
    LineCount := InputBuf.Lines.Count;
    TopLine := InputBuf.Perform(EM_GETFIRSTVISIBLELINE, 0, 0);
   end;

  InBuff:='';
  Tray.IconIndex:=Direct;
  TimerOffLed.Enabled:=True;
  //���� ���������� ����� �� ������ ���, ����� ������� - ������
  if chkNotWriteToLogWhenHidden.Checked and InTray then Exit;

  if cbTimeStamp.Checked then
  begin
     tmpS:=TimeToStr(Time);
     if cbMillisecond.Checked then
     begin
       msek:=MilliSecondOf(Time);
       if msek>=100 then
          tmpS:=tmpS+Format('.%d',[msek])
       else
          if msek>=10 then
             tmpS:=tmpS+Format('.0%d',[msek])
          else
             tmpS:=tmpS+Format('.00%d',[msek])
     end;
  end
  else
     tmpS:='';
  if chkDirectLabel.Checked then
     tmpS:= tmpS + DirectStr[Direct]
  else
     tmpS:= tmpS + ' ';

  if TerminalTypeGrp.ItemIndex<>0 then
     tmpS:=tmpS+Bin2Str(s)
  else
     tmpS:=tmpS+s;

  if s<>'' then begin
  (*��� ���..
OEM2ANSI
OEM2CHAR
CHAR2OEM
CHAR2ANSI
*)
      SetLength(tmpS2, Length(tmpS));
      if  not cbOEM.ItemIndex in [0..4] then cbOEM.ItemIndex:=0;
      case cbOEM.ItemIndex of
      0: tmpS2:=tmpS;
      1: begin
          tmpS2:=utf8toansi(tmpS);
         end;
      2:begin
          //���������� ������
          OemToAnsi(PChar(tmpS),PChar(tmpS2));
        end;
      3:begin
          //���������� ������
          OemToChar(PChar(tmpS),PChar(tmpS2));
        end;
      4:begin
          //���������� ������
          CharToOem(PChar(tmpS),PChar(tmpS2));
        end;
      end;
      tmpS:=tmpS2;


      tmpS1:='';
      //���� ASCII
      if TerminalTypeGrp.ItemIndex=0 then
      begin
        foundcr:=false;
        for i:=1 to Length(tmpS) do
        begin
          if (tmpS[i]=#10) then continue;
          //������������� - ���� �� ������� �������
          foundcr:=(tmpS[i]=#13);
          if foundcr and (tmpS<>'') then
          begin
             if exInputBuffChk.Checked then
             begin
               if not chkScroll.Checked then eInputBuf.BeginUpdate;
               eInputBuf.Lines.Add(tmpS1+' '+Comment);
               eInputBuf.OnChange(eInputBuf);
               eInputBuf.EndUpdate;
             end
             else begin
               if not chkScroll.Checked then InputBuf.Lines.BeginUpdate;
               InputBuf.Lines.Add(tmpS1+' '+Comment);
               InputBuf.OnChange(InputBuf);
               InputBuf.Lines.EndUpdate;
             end;
             tmpS1:='';
          end
          else
            tmpS1:=tmpS1+tmpS[i];
        end;//for
        if tmpS1<>'' then
        begin
             if exInputBuffChk.Checked then
             begin
               if not chkScroll.Checked then eInputBuf.BeginUpdate;
               eInputBuf.Lines.Add(tmpS1+' '+Comment);
               eInputBuf.OnChange(eInputBuf);
               eInputBuf.EndUpdate;
             end
             else begin
               if not chkScroll.Checked then InputBuf.Lines.BeginUpdate;
               InputBuf.Lines.Add(tmpS1+' '+Comment);
               InputBuf.OnChange(InputBuf);
               InputBuf.Lines.EndUpdate;
             end;
        end;
      end
      else begin
             if exInputBuffChk.Checked then
             begin
               if not chkScroll.Checked then eInputBuf.BeginUpdate;
               eInputBuf.Lines.Add(tmpS+' '+comment);
               eInputBuf.OnChange(eInputBuf);
               eInputBuf.EndUpdate;
             end
             else begin
               if not chkScroll.Checked then InputBuf.Lines.BeginUpdate;
               InputBuf.Lines.Add(tmpS+' '+comment);
               InputBuf.OnChange(InputBuf);
               InputBuf.Lines.EndUpdate;
             end;
      end;
  end;
  if exInputBuffChk.Checked then
     InputBufLinesCount:=eInputBuf.Lines.Count
  else
     InputBufLinesCount:=InputBuf.Lines.Count;

  if chkLimit.Checked and (InputBufLinesCount>LimitEdt.Value) then
  begin
       if cbLimit.ItemIndex=0 then
       begin
         for i:=1 to (LimitEdt.Value div 100) do
         begin
              if exInputBuffChk.Checked then
              begin
                if not chkScroll.Checked then eInputBuf.BeginUpdate;
                eInputBuf.Lines.Delete(0);
                eInputBuf.EndUpdate;
              end
              else begin
                if not chkScroll.Checked then InputBuf.Lines.BeginUpdate;
                InputBuf.Lines.Delete(0);
                InputBuf.Lines.EndUpdate;
              end;

             if aSignal.Checked then
             begin
               if Series1.Count>(LimitEdt.Value div 100) then
                  Series1.Delete(0);
               if Series2.Count>(LimitEdt.Value div 100) then
                  Series2.Delete(0);
               if Series3.Count>(LimitEdt.Value div 100) then
                  Series3.Delete(0);
               if Series4.Count>(LimitEdt.Value div 100) then
                  Series4.Delete(0);
             end;
         end;
       end
       else begin
        aSaveToHistoryExecute(nil);

       end;

  end;

  (*
  if CRLFMode.ItemIndex>0 then
  begin
     if exInputBuffChk.Checked then
     begin
         if not chkScroll.Checked then eInputBuf.BeginUpdate;
         eInputBuf.Lines.Add('');
         eInputBuf.EndUpdate;
     end
     else begin
         if not chkScroll.Checked then xInputBuf.Lines.BeginUpdate;
         xInputBuf.Lines.Add('');
         xInputBuf.Lines.EndUpdate;
     end;
  end;
    *)
  if chkScroll.Checked then
  begin
     if exInputBuffChk.Checked then
     begin
        eInputBuf.TopLine:=eInputBuf.Lines.Count;
     end
     else begin
      if (TopLine + GetMemoVisibleLineCount(InputBuf)) >= LineCount then
        SendMessage(InputBuf.Handle, EM_LINESCROLL, 0, LineCount);
     end;
  end
  else begin
     if exInputBuffChk.Checked then
     begin
        eInputBuf.Visible:=true;
     end
     else begin
        InputBuf.Visible:=true;
     end;
  end;

  FillEditBar.Position:=InputBufLinesCount;
//  Application.ProcessMessages;
end;

(*procedure TBaseForm.StrToLogOut(S:string;Direct:byte);
var tmps:String;
begin
  if cbTimeStamp.Checked then
     tmpS:=TimeToStr(Time)
  else
     tmpS:='';
  if chkDirectLabel.Checked then tmpS:= tmpS + DirectStr[Direct]
                            else tmpS:= tmpS + #13#10;
  if Direct<>3 then
     tmpS:=tmpS+Bin2Str(s)
  else
     tmpS:=tmpS+s;
end;
*)

procedure TBaseForm.ComPort1ExceptionEvent(Sender:TObject;
                          TComException:TComExceptions; ComportMessage:String;
                          WinError:Int64; WinMessage:String);
begin
    SetStatusBar(Format('����������� ������ ��� ������ � ���������������� ������ -  %s WinMessage %s',[ComportMessage,WinMessage]),0);
    ComPort1PrepareClose;
    notComPort1Errors:=False;  
    ComPort1:=nil;
end;


procedure TBaseForm.ComPort1RxChar(Sender: TObject; Count: Integer);
var buf:string;
begin
  ComPort1.ReadStr(buf,Count);
  toSystemLog(ComPort_Number.Text+' += ('+IntToStr(Count)+')');
  Copy2ClientInBuff(buf);
end;

(*
���������� �������� ������ � ������� � ��� �����
����� ������ ����� ������� �������� ClientDataTimer
*)
procedure TBaseForm.Copy2ClientInBuff(Value:string);
begin
  FinishTime := GetTickCount+DopNastroyki_ByteTimeOut.Value;
  FClientInBuff:=FClientInBuff+Value;
  ClientDataTimer.Enabled:=True;
end;

procedure TBaseForm.Copy3InBuff(Value:string);
var found:boolean;
    i,Count:integer;
    Str:String;
begin
  TCPCurByteTick := DopNastroyki_ByteTimeOut.Value;//DopNastroyki_ByteTimeOut.Value div 10;
  if TCPCurByteTick=0 then TCPCurByteTick:=1;
  FTCPInBuff:=FTCPInBuff+Value;
  TCPDataTimer.Enabled:=True;
end;


procedure TBaseForm.Copy4InBuff(Value:string);
var found:boolean;
    i,Count:integer;
    Str:String;
begin
//  COMCurByteTick := DopNastroyki_ByteTimeOut.Value div 10;
  COMCurByteTick := DopNastroyki_ByteTimeOut.Value;
  if COMCurByteTick=0 then COMCurByteTick:=1;
  FCOMInBuff:=FCOMInBuff+Value;
  VCOMDataTimer.Enabled:=True;
end;


procedure TBaseForm.Copy2KSPDInBuff(Value:string);
var found:boolean;
    i,Count:integer;
    Str:String;
begin
  //������ ������ � ������� - ���� �������� �� � �������� ����
  //��� ������ �� ������ ���������� � FKSPDInBuff
  KSPDCurByteTick := DopNastroyki_ByteTimeOut.Value;
  if KSPDCurByteTick=0 then KSPDCurByteTick:=1;
  FKSPDInBuff:=FKSPDInBuff+Value;
  KSPDDataTimer.Enabled:=True;
end;


procedure TBaseForm.SetInBuff(const Value: String);
begin
  FClientInBuff := Value;
end;

function TBaseForm.ComPort1Connected:boolean;
begin
  if Assigned(ComPort1) then
    result:=notComPort1Errors and ComPort1.Connected
  else
    result:=false;
end;
procedure TBaseForm.aPortCloseExecute(Sender: TObject);
begin
 try
  RepeatChk.Checked:=False;
  RepeatLabel.Tag:=0;
  RepeatLabel.Caption:='��������:'+IntToStr(RepeatLabel.Tag);
  case pcTypeOfConnect.ActivePageIndex of
    0:   begin
            try
              if Assigned(ComPort1) then
                 ComPort1.Close;
            except
              notComPort1Errors:=False;
            end;
         end;
    1:   if Assigned(UDPSocket) then
            UDPSocket.Close;
    2,3: if Assigned(xportTCPClient) then
         begin
            if  Assigned(xportTCPClient.Socket) then
            if xportTCPClient.Socket.Connected then
            begin
              xportTCPClient.Active:=False;
              Application.ProcessMessages;
            end;
            xportTCPClient.FreeOnRelease;
            xportTCPClient:=nil;
            xportConnected:=False;
            RefreshClientBroker(False);
         end;
    4:begin
        if Assigned(nrBT1) then
           nrBT1.Active := False;
      end;
  end;//case
 except
    on e:exception do
    begin
      toSystemLog(e.Message);
    end;
 end;
  SetStatusBar('���� ������!',0);
  RefreshEditState;
  if aPortClose.Enabled then
    aPortOpen.Tag:=1
  else
    aPortOpen.Tag:=0;
 ClientDataTimer.Enabled:=False;
 RefreshPortStateTimer.Enabled:=False;
end;



procedure TBaseForm.StrToBroker(AStr:String);
var s:String;
begin
  OutB.Modify:=True;
  OutB.Addr:=1;
  OutB.Cmd:=$41;
  OutB.hardware_id:=StrToIntDef(KSPD_ID.Text,0);
  OutB.Count:=Length(AStr);
  OutB.KMDPort:=KSPD_Port.ItemIndex;
  OutB.KMDSPEED:=KSPD_Baud.ItemIndex;
  KSPD_State.Caption:='������ << ('+intToStr(OutB.Count)+') ����';
  copymemory(@OutB.Buff[0],@AStr[1],OutB.Count);
  SetCRC16toBuff(@OutB.OutBuff[0],OutB.Count+10);
  if TransportChk.Checked then
  begin
    setlength(s,OutB.Count+12);
    copymemory(@s[1],@OutB.OutBuff,OutB.Count+12);
    toSystemLog('������ << ['+Str2Hex(s)+']');
  end;
  xportTCPClient.Socket.Send(OutB.OutBuff,OutB.Count+12);
  Sended:=FSended+OutB.Count+12;
  KSPD_State.Caption:='����� ���������';
end;

procedure TBaseForm.StrToKSPDBroker(AStr:String);
begin
  if (AStr<>'') and Assigned(KSPDTCPClient) and Assigned(KSPDTCPClient.Socket) and KSPDTCPClient.Socket.Connected then
  begin
    KSPDOutB.Modify:=True;
    KSPDOutB.Addr:=KSPDInB.Addr;
    KSPDOutB.Cmd:=KSPDInB.Cmd;
    KSPDInB.Cmd:=$41;
    if chkRealIDBroker_KSPD.Checked then
      KSPDOutB.hardware_id:=seID_Broker_KSPD.Value
    else
      KSPDOutB.hardware_id:=seID_Broker_KSPD.Value+1000000000;
    KSPDOutB.Count:=Length(AStr);
    KSPDOutB.KMDPort:=KSPDInB.KMDPort;
    KSPDOutB.KMDSPEED:=KSPDInB.KMDSPEED;
    BrokerKSPDState:='������ << ('+IntToStr(KSPDOutB.Count)+') ����';
    copymemory(@KSPDOutB.Buff[0],@AStr[1],KSPDOutB.Count);
    SetCRC16toBuff(@KSPDOutB.OutBuff[0],KSPDOutB.Count+10);
    KSPDTCPClient.Socket.Send(KSPDOutB.OutBuff,KSPDOutB.Count+12);
    IncStatistics_O(ord(cadrVKSPD),KSPDOutB.Count+12);
    Sended:=FSended+KSPDOutB.Count+12;
    BrokerKSPDState:='���������';
  end;
end;



procedure TBaseForm.OutDataToClient(tmpS:string;aFrom:byte;comment:String='');
begin
  if not PortConnected then Exit;
  if (TerminalTypeGrp.ItemIndex>0) or ((TerminalTypeGrp.ItemIndex=0) and (xCRCMODBUSASCIIBtn.Down)) then
  begin
    curProcStr:=tmpS;
    curProc(nil);
    tmpS:=curProcStr;
  end;
  case pcTypeOfConnect.ActivePageIndex of
    0: if not ComPort1Connected then begin
        SetStatusBar('���� �� ������...',2);
        Exit;
       end;
    1: if not UDPSocket.Bound then begin
        SetStatusBar('���� �� ������...',2);
        Exit;
       end;
    2,3:   if assigned(xportTCPClient) and assigned(xportTCPClient.Socket) then
           begin
              if not xportTCPClient.Socket.Connected then begin
                SetStatusBar('���� �� ������...',2);
                Exit;
              end;
           end
           else Exit;
    4:     begin
            if not nrBT1.Active then
            begin
              SetStatusBar('���� �� ������...',2);
            end
           end;
  end;//case
  if (aFrom=ord(cadrUSER)) then
     DataToTerminalWindow(tmpS,ord(cadrUSER),comment);
  //����������� O � ������� - �.�. ���� �������� ������ � �����

  //� ����������� I � ����� aFrom - �.�. ������ ���� ������� � ����

  //� ������ �������� ���� ��������� ����������� ������, ������������ � ��������� - ��� ���������� ��� ������
//  if TypeOfServerGrp.Enabled then
  SetStatusBar('�������� ������ � ����',0);
  //��������� ��������� ����� ��� ����� ��������
  StartTime:=GetTickCount;
  Memo1.Tag:=Memo1.Items.Count-1;
  case pcTypeOfConnect.ActivePageIndex of
    0:   begin
          if Assigned(ComPort1) then
          begin
            try
             if AutoDTR.Checked  then  begin
              ComPort1.SetDTR(False);
             end;
             Application.ProcessMessages;
             sleep(1);
             ComPort1.WriteStr(tmpS);
             //ComPort1.SafeWriteStr(tmpS,DopNastroyki_TimeOut.Value);
            except
             on e:exception do
             begin
                SetStatusBar('������ �������� ������ '+E.Message,0);
                aPortCloseExecute(nil);
             end;
            end;
          end;
         end;
    1:   UDPSocket.Send(tmpS,Length(tmpS));
    2:   if assigned(xportTCPClient) and assigned(xportTCPClient.Socket) then xportTCPClient.Socket.SendStr(tmpS);
    3:   if assigned(xportTCPClient) and assigned(xportTCPClient.Socket) then StrToBroker(tmpS);
    4:   if nrBT1.Active then nrBT1.SendString(tmpS);
  end;//case
  Sended:=FSended+Length(tmpS);
  SetStatusBar('������ ��������� ['+IntToStr(Length(tmpS))+' ����]',2);
  //����������� ������� �������� ������ � �������
  IncStatistics_O(ord(cadrCLIENT),Length(tmpS));
  SetStatusBar('���� �����...',0);
  WaitAnswer;
end;

procedure TBaseForm.OutStrViaKSPD(tmpS:string);
begin
  if assigned(KSPDTCPClient) and assigned(KSPDTCPClient.Socket) then
  begin
    if not KSPDTCPClient.Socket.Connected then begin
      SetStatusBar('����:��� ������ �� �������...',2);
      Exit;
    end;
  end
    else Exit;
  SetStatusBar('����:����� ��������� ['+IntToStr(Length(tmpS))+' ����]',2);
  DataToTerminalWindow(tmpS,1);
  SetStatusBar('������ << V����',0);
  Memo1.Tag:=Memo1.Items.Count-1;
  if assigned(KSPDTCPClient.Socket) then StrToKSPDBroker(tmpS);
end;


procedure TBaseForm.OutBinToClient(S:String;aFrom:byte);
var tmpS:String;
begin
  if aPortOpen.Enabled then Exit;
  FromLastToClient:=TCONSOLEADDR(aFrom);
  ClientLastTime:=GetTickCount;

  tmpS:=S;
  try
     if tmpS<>'' then
     begin
          case CRLFMode.ItemIndex of
          1: tmpS:=tmpS+#$0D;
          2: tmpS:=tmpS+#$0D+#$0A;
          end;
          OutDataToClient(tmpS,aFrom);
     end;
     N11.Enabled:=Memo1.Items.Count>0;
  except
    on e:exception do
    begin
      toSystemLog(e.Message);
    end;
  end;
end;

procedure TBaseForm.aPortSendDataExecute(Sender: TObject);
var tmpS,tmpS1:String;
    i:integer;
    found:boolean;
begin
  try
   InTray := False;
   InBuff:='';
   if MultiStrings.Checked then
   begin
     tmpS:=Str2Bin(BigOutputBuf.Text);
   end
   else begin
     found:=False;
     for i:=0 to OutputBuf.Items.Count-1 do
       if OutputBuf.Items[i]=Trim(OutputBuf.Text) then
       begin
         found:=True;
         break;
       end;
     if not found then
     begin
      try
        OutputBuf.Items.Add(Trim(OutputBuf.Text));
        mListOfCommands.Lines.Add(Trim(OutputBuf.Text));
      except
        on e:exception do
          showMessage('������:'+e.Message);
      end;
     end;
     tmpS:=Str2Bin(OutputBuf.Text);
   end;
   tmpS1:=tmpS;
   if chkUSR_CON.Checked and CheckConsoleCmd(tmpS,ord(cadrUSER)) then
   begin
      DataToTerminalWindow(tmpS1,ord(cadrUSER));
      DataToTerminalWindow(tmpS,ord(cadrCONSOLE));
   end
   else begin
      if cbEchoServer.Checked then
      begin
         //TODO ���������� �� ����� ������
         OutBinToTCPServer(tmpS,ord(cadrUSER))
      end
      else
         OutBinToClient(tmpS,ord(cadrUSER));
   end;
   if chClearOutputBuf.Checked then OutputBuf.text:='';
  except
   on e:exception do
      SetStatusBar('������ �������� ������:'+e.Message,2);
  end;
end;

procedure TBaseForm.AddStringToMemo(tmpS,Comment:String);
var  s:String;
begin
   s:=Str2Hex(tmpS);
   if Comment<>'' then  s:=s+cCommentDelimiter+Comment;
   Memo1.Items.Add(S);
end;

procedure TBaseForm.TerminalTypeGrpClick(Sender: TObject);
var s:String;
begin
  s:=Str2Bin(OutputBuf.text);
  TerminalTypeGrp.tag:=TerminalTypeGrp.ItemIndex;

  BroadcastRequestMnu.Enabled:=TerminalTypeGrp.ItemIndex>0;
  NKM5x.Enabled:=(TerminalTypeGrp.ItemIndex>0) and KM5NetAddr.Enabled;
  OutputBuf.text:=Bin2Str(s);
  EnableCRCBtn(TerminalTypeGrp.ItemIndex>0);
  HexBtn.Down:=TerminalTypeGrp.ItemIndex>0;
  SpecSymbolsCheck;
end;


function TBaseForm.Pascal2Str(S:String):string;
var tmpS:string;
    i,j:integer;
begin
      tmpS:='';
      j:=pos('$',s);
      while j>0 do
      begin
        i:=Length(s);
        if (j+2)<=i then
        begin
          try
            tmpS:=tmpS+chr(StrToInt('$'+copy(s,j+1,2)));
            delete(s,j,3);
            j:=pos('$',s);
          except
            break;
          end;
        end
        else begin
          Status.Panels[0].Text:=cErrSyntax;
          tmpS:=S;
          break;
        end;
      end;
      result:=tmpS;
end;


function TBaseForm.C2Str(S: String): string;
var tmpS:string;
    i,j:integer;
begin
      tmpS:='';
      j:=pos('0x',s);
      while j>0 do
      begin
        i:=Length(s);
        if (j+3)<=i then
        begin
          try
            tmpS:=tmpS+chr(StrToInt('0x'+copy(s,j+2,2)));
            delete(s,j,4);
            j:=pos('0x',s);
          except
            break;
          end;
        end
        else begin
          Status.Panels[0].Text:=cErrSyntax;
          tmpS:=S;
          break;
        end;
      end;
      result:=tmpS;
end;

function TBaseForm.HEX2Str(S:String):string;
var tmpS,resS:string;
    i,j:integer;
begin
    tmpS:='';resS:='';
    i:=length(s);
    for j:=1 to i do
    begin
      if not (s[j] in [' ','_']) then
      begin
         tmpS:=tmpS+s[j];
         if Length(tmpS)=2 then
         begin
            try
               if tmpS<>'' then
               begin
                resS:=resS+chr(StrToInt('$'+tmpS));
                tmpS:='';
               end;
            except
               Status.Panels[0].Text:=cErrSyntax;
               tmpS:=S;
               break;
            end;//try
         end;
      end
      else begin
         try
           if tmpS<>'' then
           begin
            resS:=resS+chr(StrToInt('$'+tmpS));
            tmpS:='';
           end;
         except
           Status.Panels[0].Text:=cErrSyntax;
           tmpS:=S;
           break;
         end;//try
      end;//else
    end;//for
    try
    if length(tmpS)=2 then resS:=resS+chr(StrToInt('$'+tmpS));
    except
    end;
    result:=resS;
end;



function TBaseForm.Str2Pascal(S:String):String;
var i:integer;
    tmpS:String;
begin
       tmpS:='';
       for i:=1 to Length(s) do
          tmpS:=tmpS+'$'+IntToHex(ord(s[i]),2)+' ';
       result:=tmpS;

end;

function TBaseForm.Str2C(S:String):String;
var i:integer;
    tmpS:String;
begin
       tmpS:='';
       for i:=1 to Length(s) do
          tmpS:=tmpS+'0x'+IntToHex(ord(s[i]),2)+' ';
       result:=tmpS;
end;

function TBaseForm.Str2HEX(S:String):String;
var i:integer;
    tmpS:String;
begin
       tmpS:='';
       for i:=1 to Length(s) do
          tmpS:=tmpS+IntToHex(ord(s[i]),2)+' ';
       result:=tmpS;
end;
function TBaseForm.Str2HEXStr(S:String):String;
var i:integer;
    tmpS:String;
begin
       tmpS:='';
       for i:=1 to Length(s) do
      if s[i] <> ':' then
          tmpS:=tmpS+IntToHex(ord(s[i]),2)
      else
          tmpS:=tmpS+s[i];
      result:=tmpS;
end;

procedure TBaseForm.ResizeAddBtn;
begin
  Panel8.Left:=GroupBox1.Width-Panel8.Width-5;
  OutputBuf.Width:=GroupBox1.Width-Panel8.Width-10;
  BigOutputBuf.Width:=OutputBuf.Width;
end;

procedure TBaseForm.Panel1CanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
  if NewWidth<532 then NewWidth:=532;
  OutputBuf.Width:=NewWidth-183;//(532-349);
  ResizeAddBtn;
end;

procedure TBaseForm.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
   if NewHeight<450 then  NewHeight:=450;
  if not SetUpPanel.Visible then
  begin
     if NewWidth<840 then  NewWidth:=840;
  end
  else
     if NewWidth<989 then  NewWidth:=989;
  GroupBox4.Width:=BottomPnl.Width div 2;
  ResizeAddBtn;
end;

procedure TBaseForm.SetDataReceived(const Value: boolean);
begin
  FDataReceived := Value;
end;

procedure TBaseForm.SetCurByteTick(const Value: longword);
begin
  FCurByteTick := Value;
end;


procedure TBaseForm.aCS1Execute(Sender: TObject);
var tmpS:String;
    i:integer;
    Ch:char;
begin
 tmpS:=curProcStr;//Str2Bin(OutputBuf.Text);
 if tmpS='' then Exit;
 ch:=#0;
 for i := 1 to Length(tmpS) do
   ch:=chr(ord(ch)+ord(tmps[i]));
 tmpS:=tmpS+Ch;
 curProcStr:=tmps;
 //OutputBuf.text:=Bin2Str(tmps);
end;

procedure TBaseForm.aCRC16Execute(Sender: TObject);
var tmpS:String;
    CS:Word;
begin
 //tmpS:=Str2Bin(OutputBuf.Text);
 tmpS:=curProcStr;
 if tmpS='' then Exit;
 CS:=GetCRC(tmpS,Length(tmpS));
 tmpS:=tmpS+chr(CS and $FF)+chr(CS shr 8);
 curProcStr:=tmps;
end;


function CTimetoDateTime(const AValue: longword): TDateTime;
begin
  Result := AValue/86400.0+25569;
end;

function TBaseForm.GetLogikaFloat(s:string):single;
var
  tmpF:Single;
  tmpF1:array[1..4] of byte absolute tmpF;
  j:byte;
begin
  tmpF1[1]:=ord(s[1]);
  tmpF1[2]:=ord(s[2]);
  tmpF1[3]:=ord(s[3]);
  tmpF1[4]:=ord(s[4]);
  j:=tmpF1[3];
  if (tmpF1[4] and 1)=1 then tmpF1[3]:=tmpF1[3] or $80 // ie. aeo ii?yaea ia?aiinei
  else tmpF1[3]:=tmpF1[3] and $7F;
  tmpF1[4]:=tmpF1[4] shr 1;
  if (j and $80)=$80 then tmpF1[4]:=tmpF1[4] or $80;
  result:=tmpF;
end;

function TBaseForm.Getsa94Float(s:string):single;
var pBuff:integer;
    SAF_Param:single;
    F_Body:array[1..4] of byte;
    SAF_Body:array[1..4] of byte absolute SAF_Param;
    i:integer;
    tmps:string;
begin
      pBuff:=1;
      F_Body[1]:=Ord(S[pBuff]);Inc(pBuff);
      F_Body[2]:=Ord(S[pBuff]);Inc(pBuff);
      F_Body[3]:=Ord(S[pBuff]);Inc(pBuff);
      F_Body[4]:=Ord(S[pBuff]);
      SAF_Body[1]:=F_Body[4];
      SAF_Body[2]:=F_Body[3];
      if (F_Body[1] and 1) = 1 then//e0
          SAF_Body[3]:=F_Body[2] or $80
      else
          SAF_Body[3]:=F_Body[2] and $7F;

      if (F_Body[1] and $Fe) <> 0 then F_Body[1]:=F_Body[1]-2;
      F_Body[1]:=F_Body[1] shr 1;

      if (F_Body[2] and $80) = $80 then//s
          SAF_Body[4]:=F_Body[1]  or $80
      else
          SAF_Body[4]:=F_Body[1] and $7F;

      result:=SAF_Param;
end;

function MyHexToByte(HiCh,LoCh:byte;var res:byte):boolean;
var
  tmp:byte;
begin
   result:=True;
   if HiCh in [ord('0')..ord('9')] then
      tmp:=HiCh-ord('0')
   else if HiCh in [ord('A')..ord('F')] then
      tmp:=(HiCh-ord('A'))+10
   else begin
      tmp:=0;
      result:=False;
   end;
   res:=tmp shl 4;
   if LoCh in [ord('0')..ord('9')] then
      tmp:=LoCh-ord('0')
   else if LoCh in [ord('A')..ord('F')] then
      tmp:=(LoCh-ord('A'))+10
   else begin
      tmp:=0;
      result:=False;
   end;
   res:=res+tmp;
end;


function TBaseForm.DecodeSMS(ASelText:string):string;
var nextcopy:boolean;
    s2,s3,s32,prewS,s4:byte;
    ps,psw,len:integer;
    res:string;
    latin:boolean;
begin
    result:='';
    len:=Length(ASelText);
    ps:=1;
    pSW:=0;
    nextcopy:=false;
    latin:=not ((ASelText[1]='0') and ((ASelText[2]='4')or(ASelText[2]='5')or(ASelText[2]='0')));
    while ps<len do
    begin
        s3:=ord(ASelText[ps]);
        s32:=ord(ASelText[ps+1]);
        if MyHexToByte(s3,s32,s2) then
        begin
          Inc(ps,2);
          if latin then
          begin
            result:=result+chr(s2);
            inc(psw);
          end
          else begin
            if nextcopy then
            begin
               if prewS=4 then
                  s2:=(s2-$10)+ord('�');
               result:=result+chr(s2);
               inc(psw);
            end;
            nextcopy:=(s2=0) or (s2=4);
            if nextCopy then
               prewS:=s2;
          end;
        end
        else break;
    end;
end;

function ConvertDateTime(packDt1: DWORD):TDateTime;
begin
  try
    result:=EncodeDateTime(2000+(packDt1 shr 26),(packDt1 shr 22) and $F,
    (packDt1 shr 17) and $1F,(packDt1 shr 12) and $1F,
    (packDt1 shr 6) and $3F,packDt1 and $3F,0)
  except
  end;
end;


function TBaseForm.GetSelHint(ASelText:String;ADirect:boolean):string;
var tmpS,tmpS1,tmpS2:String;
    ptmpS:PChar;
    ptmpS2:PWideChar;
    len,i:integer;
    tmpF3,tmpF,tmpF2,tmpFL:single;
    Farr:TBinArray absolute tmpF;
    tmpI:longword;
    Iarr:array[1..4]of char absolute tmpI;
    tmpWI:smallint absolute tmpI;
    tmpLI:longint absolute tmpI;
    tmpD:double;
    tmpDarr:array[1..8]of char absolute tmpD;
    tmpR:real48;
    Rarr:array[1..6]of char absolute tmpR;
    PackSikonStr:boolean;
begin
  result:='';tmpF:=0;tmpI:=0;
  tmpS:=Str2Bin(ASelText);
  len:=Length(tmpS);


  case len of
  1: begin
       result:=Format(cD,[ord(tmpS[1]),ord(tmpS[1]),shortint(ord(tmpS[1]))]);
     end;
  2: begin
       if Adirect then
       begin
          IArr[1]:=tmpS[1];IArr[2]:=tmpS[2]
       end
       else begin
          IArr[2]:=tmpS[1];IArr[1]:=tmpS[2];
       end;
       result:=result+Format(cD,[tmpI,tmpI,tmpWI]);
     end;
  3: begin
       if Adirect then begin
          IArr[1]:=tmpS[1];IArr[2]:=tmpS[2];IArr[3]:=tmpS[3]
       end
       else begin
          IArr[3]:=tmpS[1];IArr[2]:=tmpS[2];IArr[1]:=tmpS[3];
       end;
       result:=Format(cD,[tmpI,tmpI,tmpLI]);
     end;//3
  4: begin
       if Adirect then begin
           IArr[1]:=tmpS[1];IArr[2]:=tmpS[2];IArr[3]:=tmpS[3];IArr[4]:=tmpS[4];
       end
       else begin
           IArr[4]:=tmpS[1];IArr[3]:=tmpS[2];IArr[2]:=tmpS[3];IArr[1]:=tmpS[4];
       end;
       if Adirect then begin
          FArr[1]:=tmpS[1];FArr[2]:=tmpS[2];FArr[3]:=tmpS[3];FArr[4]:=tmpS[4];
          tmpS2:=tmpS[1]+tmpS[2]+tmpS[3]+tmpS[4];
          tmpF2:=Getsa94Float(tmpS2);
          tmpFL:=GetLogikaFloat(tmpS2);
          tmpF3:=OnB2f(tmpI,ffMicrochip_32);
       end
       else begin
          FArr[4]:=tmpS[1];FArr[3]:=tmpS[2];FArr[2]:=tmpS[3];FArr[1]:=tmpS[4];
          //tmpL:=
          tmpS2:=tmpS[4]+tmpS[3]+tmpS[2]+tmpS[1];
          tmpF2:=Getsa94Float(tmpS2);
          tmpFL:=GetLogikaFloat(tmpS2);
          tmpF3:=OnB2f(tmpI,ffMicrochip_32);
       end;

       result:=Format(cD,[tmpI,tmpI,tmpLI])+cCRLF;
       try
        result:=result+Format(cF1,[tmpF]);
       except
        on e:exception do
        result:=result+'Float error:'+e.Message;
       end;
       try
        result:=result+Format(cF2,[tmpF2]);
       except
        on e:exception do
        result:=result+'SA Float error:'+e.Message;
       end;
       try
        result:=result+Format(cFL,[tmpFL]);
       except
        on e:exception do
        result:=result+'Logika Float error:'+e.Message;
       end;

       try
        result:=result+cCRLF+Format(cM32,[tmpF3]);
       except
        on e:exception do
          result:=result+'Microchip32 Float error:'+e.Message;
       end;

       result:=result+cCRLF+'CDate: '+DateTimeToStr(CTimetoDateTime(tmpI))+cCRLF;
       result:=result+'PrktDate: '+DateTimeToStr(DateP2DateTime(tmpI))+cCRLF;
       result:=result+'��� ����: '+DateTimeToStr(DateKMD2DateTime(tmpI))+cCRLF;
       result:=result+'���� ����: '+DateTimeToStr(ConvertDateTime(tmpI))+cCRLF;
       try
        result:=result+Format(cF3,[DateTimeToStr(tmpF)]);
       except
        on e:exception do
        result:=result+'DateTime error:'+e.Message;
       end;


     end;//4
  6: begin
       if Adirect then begin
           RArr[1]:=tmpS[1];RArr[2]:=tmpS[2];RArr[3]:=tmpS[3];RArr[4]:=tmpS[4];
           RArr[5]:=tmpS[5];RArr[6]:=tmpS[6];
       end
       else begin
           RArr[6]:=tmpS[1];RArr[5]:=tmpS[2];RArr[4]:=tmpS[3];RArr[3]:=tmpS[4];
           RArr[2]:=tmpS[5];RArr[1]:=tmpS[6];
       end;
       result:=result+'real 48: '+FloatToStr(tmpR)+cCRLF;
     end;//6
  8: begin
       if Adirect then begin
           tmpDarr[1]:=tmpS[1];tmpDarr[2]:=tmpS[2];tmpDarr[3]:=tmpS[3];tmpDarr[4]:=tmpS[4];
           tmpDarr[5]:=tmpS[5];tmpDarr[6]:=tmpS[6];tmpDarr[7]:=tmpS[7];tmpDarr[8]:=tmpS[8];
       end
       else begin
           tmpDarr[8]:=tmpS[1];tmpDarr[7]:=tmpS[2];tmpDarr[6]:=tmpS[3];tmpDarr[5]:=tmpS[4];
           tmpDarr[4]:=tmpS[5];tmpDarr[3]:=tmpS[6];tmpDarr[2]:=tmpS[7];tmpDarr[1]:=tmpS[8];
       end;
       result:=result+'Double: '+FloatToStr(tmpD)+cCRLF;
     end;//6
     else begin
         if ASelText<>'' then
         begin
         result:='PDU2Text:'+DecodeSMS(ASelText);
         end;
     end;
  end;

   if (Len>=8) and ((Len mod 4)=0) then
   begin
      result:=result+#13+#10+'Single Array:['+#13+#10;
      for i := 0 to (Len div 4)-1 do
      begin
         if Adirect then begin
            FArr[1]:=tmpS[1+I*4];FArr[2]:=tmpS[2+I*4];FArr[3]:=tmpS[3+I*4];FArr[4]:=tmpS[4+I*4];
         end
         else begin
            FArr[4]:=tmpS[1+I*4];FArr[3]:=tmpS[2+I*4];FArr[2]:=tmpS[3+I*4];FArr[1]:=tmpS[4+I*4];
         end;
         result:=result+Format(cF,[tmpF]);
      end;
      result:=result+#13+#10+']';
   end;


   PackSikonStr:=True;
   result:=result+#13+#10+'������: ';
   len:=Length(tmpS);
   for i:=1 to len do
   begin
      if ((ord(tmpS[i])<ord('!')) or (tmpS[i]='#')) and (tmpS[i]<>' ') then result:=result+'#'+IntToStr(ord(tmpS[i]))
      else result:=result+tmpS[i];
   end;
   tmpS1:=tmpS;
   OemToAnsi(@tmpS[1],@tmpS1[1]);
   result:=result+#13+#10+'[OEM]'+tmpS1;




   if len>1 then
   begin
   PackSikonStr:=True;
   for i := 1 to len do
   begin
       if ord(tmpS[i]) < $80 then begin
          PackSikonStr:=False;
          break;
       end;
   end;
   if PackSikonStr then  result:=result+#13+#10+'[US] '+Bin2Str(PSikon2Bin(
     tmpS));
   end;


end;


procedure TBaseForm.OutputBufMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  OutputBuf.Hint:=GetSelHint(OutputBuf.SelText,OutputBuf.Tag=1);
  HiMemo.Text:=OutputBuf.Hint;
end;

procedure TBaseForm.eInputBufMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
(*  if Sender=InputBuf then
  begin*)
     if exInputBuffChk.Checked then
     begin
       eInputBuf.Hint:=GetSelHint(eInputBuf.SelText,eInputBuf.Tag=1);
       HiMemo.Text:=GetSelHint(eInputBuf.SelText,eInputBuf.Tag=1);
       LoMemo.Text:=GetSelHint(eInputBuf.SelText,eInputBuf.Tag<>1);
     end
     else begin
       InputBuf.Hint:=GetSelHint(InputBuf.SelText,eInputBuf.Tag=1);
       HiMemo.Text:=GetSelHint(InputBuf.SelText,eInputBuf.Tag=1);
       LoMemo.Text:=GetSelHint(InputBuf.SelText,eInputBuf.Tag<>1);
     end;
(*  end
  else begin
//     OutBuf.Hint:=GetSelHint(OutBuf.SelText,OutBuf.Tag=1);
     HiMemo.Text:=GetSelHint(OutBuf.SelText,OutBuf.Tag=1);
     LoMemo.Text:=GetSelHint(OutBuf.SelText,OutBuf.Tag<>1);
  end;*)
end;

procedure TBaseForm.OutputBufMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 if X>OX then OutputBuf.tag:=1
         else OutputBuf.tag:=0;
 OX:=X;
end;

procedure TBaseForm.eInputBufMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 if X>IX then eInputBuf.tag:=1
         else eInputBuf.tag:=0;
 IX:=X;
end;

procedure TBaseForm.aCRC16tExecute(Sender: TObject);
var tmpS:String;
    i:integer;
    CS:Word;
begin
 tmpS:=curProcStr;
 if tmpS='' then Exit;
 CS:=CRC16(tmpS,Length(tmpS));
 tmpS:=tmpS+chr(CS and $FF)+chr(CS shr 8);
 curProcStr:=tmps;
end;

procedure TBaseForm.UDPSocketDataAvailable(Sender: AUDPSocket);
var Buf : String;
    Address : TSockAddr;
begin
  Sender.ReadPacket (Buf, Address);
  Received:=FReceived+Length(Buf);
  Copy2ClientInBuff(buf);
end;

procedure TBaseForm.UDPSocketError(Sender: ASocket);
begin
  SetStatusBar('������: ' + Sender.ErrorMessage,0);
end;

procedure TBaseForm.Label2Click(Sender: TObject);
begin
 showMessage(
 '��������� UDP �������'+cCRLF+
 'LocalHost:'+UDPSocket.LocalHost+cCRLF+
 'LocalPort:'+UDPSocket.LocalPort+cCRLF+
 'Host:'+UDPSocket.Host+cCRLF+
 'Port:'+UDPSocket.Port);
end;

procedure TBaseForm.StringFromMemo;
var s,ss:String;
    i:integer;
begin
  s:='';
  if (Memo1.Tag<Memo1.Items.Count) and (Memo1.Tag>=0) then
  begin
    s:=GetCheckBoxString(True,Memo1.Items[Memo1.tag]);
    s:=Hex2Str(s);
  end;
  if AutoIncModeChk.Checked then
  begin
    if (TerminalTypeGrp.ItemIndex=0) then
    begin
      //ASCII
      //���� ������������� HEx �������� � ASCII
      ss:=AutoIncMaskEdt.Text;
    end
    else begin
      //HEX
      ss:=Char(StrToInt('$'+AutoIncMaskEdt.Text));
    end;
    i:=pos(ss,s);
    delete(s,i,1);//������� �����
    insert(IntToStr(Round(AutoIncCounter.Value)),s,i);
  end;
  OutputBuf.text:=Bin2Str(s);
end;


procedure TBaseForm.SpinButton1DownClick(Sender: TObject);
begin
  if Memo1.Tag<Memo1.Items.Count-1 then
     Memo1.Tag:=Memo1.Tag+1
  else
     Exit;
  if Memo1.Tag=Memo1.Items.Count-1 then beep;
  StringFromMemo;
end;

procedure TBaseForm.N11Click(Sender: TObject);
begin
  if (Memo1.Tag<Memo1.Items.Count) and (Memo1.Tag>=0) then
  begin
      Memo1.Items.Delete(Memo1.Tag);
      Memo1.Tag:=Memo1.Items.Count-1;
      N11.Enabled:=Memo1.Items.Count>0;
  end;
  N11.Enabled:=Memo1.Items.Count>0;
end;

procedure TBaseForm.aKM5CRCExecute(Sender: TObject);
var tmpS:String;
    i:integer;
    CS:Word;
//��������� CRC ��� ��5
begin
 //tmpS:=Str2Bin(OutputBuf.Text);
 tmpS:=curProcStr;
 if tmpS='' then Exit;
 CS:=GetKM5CRC(tmpS,Length(tmpS));
 tmpS:=tmpS+chr(CS and $FF)+chr(CS shr 8);
 //OutputBuf.text:=Bin2Str(tmps);
 curProcStr:=tmps;
end;

procedure TBaseForm.aLoadFileExecute(Sender: TObject);
var xxx,len:longword;
begin
   if OpenDialog1.Execute then
   begin
     if exInputBuffChk.Checked then
     begin
       eInputBuf.Lines.Clear;
       eInputBuf.Lines.LoadFromFile(OpenDialog1.FileName);
       eInputBuf.GotoLineAndCenter(eInputBuf.Lines.Count-1);
       SaveDialog1.FileName:=OpenDialog1.FileName;
       FillEditBar.Position:=eInputBuf.Lines.Count;
       xxx:=CRC32(eInputBuf.Text);
       toSystemLog(Format('�������� ����:%s CRC32=0x%8x/%d',[OpenDialog1.FileName,xxx,xxx]))
     end
     else begin
       InputBuf.Lines.Clear;
       InputBuf.Lines.LoadFromFile(OpenDialog1.FileName);
       //eInputBuf.GotoLineAndCenter(InputBuf.Lines.Count-1);
       SaveDialog1.FileName:=OpenDialog1.FileName;
       FillEditBar.Position:=InputBuf.Lines.Count;
       xxx:=CRC32(InputBuf.Text);
       toSystemLog(Format('�������� ����:%s CRC32=0x%8x/%d',[OpenDialog1.FileName,xxx,xxx]))
     end;
   end;
end;

procedure TBaseForm.aNewFileExecute(Sender: TObject);
begin
  eInputBuf.Lines.Clear;
  InputBuf.Lines.Clear;
  SystemMemo.Lines.Clear;
  ClearStatistics;
  FillEditBar.Position:=0;
  Series1.Clear;
  Series2.Clear;
  Series3.Clear;
  Series4.Clear;
  gvGraph.Rows.Count:=0;
end;

procedure TBaseForm.SetRemoteComPortConnected(const Value: boolean);
begin
  FRemoteComPortConnected := Value;
end;


procedure TBaseForm.DataClientDataAvailable(Sender: ATCPClient);
var Buf : String;
begin
     Buf:=Sender.Socket.ReadAvailable;
     Received:=FReceived+Length(Buf);
     Copy2ClientInBuff(buf);
end;

procedure TBaseForm.KSPDDataClientDataAvailable(Sender: ATCPClient);
var Buf : String;
    dd,mm,yy,h,m,s:word;
    tmpDT:TDateTime;
begin
     Buf:=Sender.Socket.ReadAvailable;
     Received:=FReceived+Length(Buf);
     //            T  B  N  DD MM YY hh mm ss
     //����������� 54 42 4E 05 06 0E 0F 16 0A
     if KSPDRegistered then
     begin
        BrokerKSPDState:='������ >> ('+IntToStr(Length(Buf))+') ����';
        Copy2KSPDInBuff(buf);
     end
     else begin
       //��� �����������
       BrokerKSPDState:='������ (R) >> ('+IntToStr(Length(Buf))+') ����';
       FKSPDInBuff:=FKSPDInBuff+Buf;//���������� �����
       if (Length(FKSPDInBuff)=9) and (FKSPDInBuff[1]='T') and (FKSPDInBuff[2]='B') and (FKSPDInBuff[3]='N') then
       begin
          dd:=ord(FKSPDInBuff[4]);
          mm:=ord(FKSPDInBuff[5]);
          yy:=ord(FKSPDInBuff[6])+2000;
          h:=ord(FKSPDInBuff[7]);
          m:=ord(FKSPDInBuff[8]);
          s:=ord(FKSPDInBuff[9]);
          if dd<>0 then
          begin
            //�������� �����������
            try
              tmpDT:=encodedatetime(yy,mm,dd,h,m,s,0);
              BrokerKSPDState:='Term2006 ��������������� ������� � '+DateTimeToStr(tmpDT);
              KSPDRegistered:=True;
              remainPTESTBRK:=PTESTBRK;
              FKSPDInBuff:='';
            except
              on e:Exception do
              BrokerKSPDState:='��. ���:'+e.Message;
            end;
          end
          else begin
            //����������
              BrokerKSPDState:='����������� ���������';
          end;

       end;
     end;
end;

procedure TBaseForm.RTSClick(Sender: TObject);
begin
  if Assigned(ComPort1) then
    ComPort1.SetRTS(RTS.Checked);
end;

procedure TBaseForm.DTRClick(Sender: TObject);
begin
  if Assigned(ComPort1) then
     ComPort1.SetDTR(DTR.Checked);
end;

procedure TBaseForm.aSikonCRCExecute(Sender: TObject);
var tmpS:String;
    i:integer;
    CS:Word;
//��������� CRC ��� �����
begin
 tmpS:=curProcStr;
 //tmpS:=Str2Bin(OutputBuf.Text);
 if tmpS='' then Exit;
 CS:=GetSikonCRC(tmpS,Length(tmpS));
 tmpS:=tmpS+chr(CS and $FF)+chr(CS shr 8);
 curProcStr:=tmps;
// OutputBuf.text:=Bin2Str(tmps);
end;

procedure TBaseForm.ComPort1TxEmpty(Sender: TObject);
var  i,i2:Int64;
     tmpI:longword;
begin
 if AutoDTR.Checked then
 begin
   tmpI:=GetTickCount;
   QueryPerformanceCounter(i);
   i:=i+13000;
   while True do
   begin
     QueryPerformanceCounter(i2);
     if i2>i then break;
   end;
   tmpI:=GetTickCount-tmpI;
   ComPort1.SetDTR(True);
 end;
end;

procedure TBaseForm.AutoDTRClick(Sender: TObject);
begin
  DTR.Enabled:=not AutoDTR.checked;
end;

procedure TBaseForm.AddBtnClick(Sender: TObject);
var tmpS,Comment:String;
begin
 InBuff:='';
 FinishTime := 0;
 tmpS:=Str2Bin(OutputBuf.Text);
 if tmpS<>'' then
 begin
        case CRLFMode.ItemIndex of
        1: tmpS:=tmpS+#$0D;
        2: tmpS:=tmpS+#$0D+#$0A;
        end;
      Comment:='';
      InputQuery('��������','�����������',Comment);
      AddStringToMemo(tmpS,Comment);
      Memo1.Tag:=Memo1.Items.Count-1;
 end;
  N11.Enabled:=Memo1.Items.Count>0;
end;

procedure TBaseForm.RepeatBtnClick(Sender: TObject);
begin
  RepeatBtn.Glyph.Canvas.FillRect(RepeatBtn.Glyph.Canvas.ClipRect);
  SendTimer.Enabled:=not SendTimer.Enabled;
  if SendTimer.Enabled then
  begin
     SetStatusBar('������ �������� ������...',0);
     BaseForm.ImageList1.GetBitmap(29,RepeatBtn.Glyph);//�������
     RepeatLabel.Tag:=round(repeatCount.value);
     RepeatLabel.Caption:='��������:'+IntToStr(RepeatLabel.Tag);
  end
  else begin
     SetStatusBar('������� �������� ������...',0);
     BaseForm.ImageList1.GetBitmap(3,RepeatBtn.Glyph);//�������
  end;
end;

procedure TBaseForm.FormDestroy(Sender: TObject);
var s:String;
begin
  try
    if KSPDRegistered then DestroyKSPDTCPClient;
    s:=ExtractFilePath(Application.exename)+cASLItemsFile;
    Memo1.Items.SaveToFile(s);
    if exInputBuffChk.Checked then
      eInputBuf.Lines.SaveToFile(ChangeFileExt(Application.ExeName,Format('_%d.log',[Term2006Number+1])))
    else
      InputBuf.Lines.SaveToFile(ChangeFileExt(Application.ExeName,Format('_%d.log',[Term2006Number+1])))
  except
  
  end;
end;

procedure TBaseForm.Memo1Click(Sender: TObject);
var i:integer;
begin
  for i := 0 to Memo1.Items.Count-1  do
    if Memo1.Selected[i] then
    begin
      Memo1.Tag:=i;
      break;
    end;

end;

procedure TBaseForm.PeriodRepeatEdtChange(Sender: TObject);
begin
  SendTimer.Interval:=Round(PeriodRepeatEdt.Value);
end;

procedure TBaseForm.SendTimerTimer(Sender: TObject);
var i:integer;
    Found:boolean;
procedure TerminateRepeat;
begin

     if not RepeatChk.Checked then
     begin
        RepeatBtn.Glyph.Canvas.FillRect(RepeatBtn.Glyph.Canvas.ClipRect);
        SetStatusBar('������� �������� ������...',0);
        BaseForm.ImageList1.GetBitmap(3,RepeatBtn.Glyph);//�������
        RepeatBtn.Repaint;
        SendTimer.Enabled:=False;
     end
     else begin
        RepeatLabel.Caption:='��������:'+IntToStr(RepeatLabel.Tag);
        if RepeatLabel.Tag=0 then RepeatChk.Checked:=False;
     end;
end;
begin
  if RepeatBtn.Tag>0 then Exit;
  RepeatBtn.Tag:=1;

  //����� ���������
  if (Memo1.Tag<Memo1.Items.Count) and (Memo1.Tag>=0) then
     Memo1.Selected[Memo1.Tag]:=False;

   Found:=False;
   //���� ������ ������� � ������
   //�������� ������ � SendTimer.Tag
   for i := SendTimer.Tag to Memo1.Items.Count-1 do
   begin
     if i>0 then Memo1.Selected[i-1]:=False;
     Memo1.Selected[i]:=True;
     sleep(1);
     Application.ProcessMessages;
     SendTimer.Tag:=i;
     if Memo1.Checked[i] then
     begin
       Found:=True;
       break;
     end;
   end;
   //�����

  //����������� � ���������
  if Found then
  begin
     Memo1.Tag:=SendTimer.Tag;
     StringFromMemo;
//     StrToLogOut(GetCheckBoxString(False,Memo1.Items[Memo1.tag]),3);
     aPortSendDataExecute(Sender);
  end
  else begin
     TerminateRepeat;
  end;

  //�������� ��������� �������
  SendTimer.Tag:=(SendTimer.Tag+1) mod Memo1.Items.Count;
  if SendTimer.Tag=0 then TerminateRepeat;
  if SendTimer.Tag=0 then
  begin
     AutoIncCounter.Value:=AutoIncCounter.Value+1;
     RepeatLabel.Tag:=RepeatLabel.Tag-1;
  end;

  RepeatBtn.Tag:=0;

end;

procedure TBaseForm.Memo1DragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
  Accept:=Sender = Memo1;
end;

procedure TBaseForm.Memo1DragDrop(Sender, Source: TObject; X, Y: Integer);
var Pos:TPoint;
    i:integer;
begin
  //
  if (Memo1.Tag>=0) and (Memo1.Tag<Memo1.Items.Count) then
  begin
    Pos.X:=X;
    Pos.Y:=Y;
    i:=Memo1.ItemAtPos(Pos,True);
    if (i>=0) and (i<Memo1.Items.Count) then
    begin
      Memo1.Items.Move(i,Memo1.Tag);
    end;
  end;
end;

procedure TBaseForm.xportClose(Sender: ATCPClient);
begin
  SetStatusBar('TCPClientClose...',0);
  aPortCloseExecute(Sender);
  xportTCPClient.Active:=False;
  xportConnected:=False;
  if cbForceOpenPort.Checked then
     OpenPortTimer.Enabled:=True;

end;

procedure TBaseForm.xportTCPClientConnected(Sender: ATCPClient);
begin
  SetStatusBar('TCPClientConnected:'+Sender.Host,0);
  xportConnected:=True;
end;

procedure TBaseForm.KSPDTCPClientConnected(Sender: ATCPClient);
begin
  SetStatusBar('KSPDTCPClientConnected:'+Sender.Host,0);
  KSPDConnected:=True;
end;

procedure TBaseForm.xportConnectFailed(Sender: ATCPClient);
begin
  SetStatusBar('TCPClientConnectFailed:'+Sender.Host,0);
  xportConnected:=False;
end;

procedure TBaseForm.xportSocketStateChange(Sender: ATCPClient;
  OldState, State: TSocketState);
begin
  SetStatusBar('TCPClient State'+NameTSocketState[State]+' OldState '+NameTSocketState[OldState]+':'+Sender.Host,0);
  if (State=ssClosed) and cbForceOpenPort.Checked then
     OpenPortTimer.Enabled:=True;

end;

procedure TBaseForm.KSPDSocketStateChange(Sender: ATCPClient;
  OldState, State: TSocketState);
begin
  SetStatusBar('KSPDTCPClient State'+NameTSocketState[State]+' OldState '+NameTSocketState[OldState]+':'+Sender.Host,0);
end;

procedure TBaseForm.xportStateChange(Sender: ATCPClient; OldState,
  State: TTCPClientState);
  const
    NameTTCPClientState:array[TTCPClientState] of string = ('Closed','Connecting','Connected');
begin
  SetStatusBar('TCPClient state'+NameTTCPClientState[State]+':'+Sender.Host,0);
end;

procedure TBaseForm.KSPDStateChange(Sender: ATCPClient; OldState,
  State: TTCPClientState);
  const
    NameTTCPClientState:array[TTCPClientState] of string = ('Closed','Connecting','Connected');
begin
  SetStatusBar('KSPDTCPClient state'+NameTTCPClientState[State]+':'+Sender.Host,0);
end;


procedure TBaseForm.xportSyncClose(Sender: ATCPClient);
begin
  SetStatusBar('TCPClientSyncClose:'+Sender.Host,0);
end;

procedure TBaseForm.xportSyncConnected(Sender: ATCPClient);
begin
  SetStatusBar('TCPClientSyncConnected:'+Sender.Host,0);
end;

procedure TBaseForm.xportSyncConnectFailed(Sender: ATCPClient);
begin
  SetStatusBar('TCPClientSyncConnectFailed:'+Sender.Host,0);
end;

procedure TBaseForm.xportSyncDataAvailable(Sender: ATCPClient);
begin
  SetStatusBar('TCPClientSyncDataAvailable:'+Sender.Host,0);
end;

procedure TBaseForm.xportSyncNegotiating(Sender: ATCPClient);
begin
  SetStatusBar('TCPClientSyncNegotiating:'+Sender.Host,0);
end;

procedure TBaseForm.xportSyncSocketStateChange(Sender: ATCPClient;
  OldState, State: TSocketState);
begin
  SetStatusBar('TCPClientSync State'+NameTSocketState[State]+' OldState '+NameTSocketState[OldState]+':'+Sender.Host,0);
end;

procedure TBaseForm.xportThreadRun(Sender: ATCPClient);
begin
  SetStatusBar('TCPClientThreadRun:'+Sender.Host,0);
end;

procedure TBaseForm.xportThreadRunComplete(Sender: ATCPClient);
begin
  SetStatusBar('TCPClientThreadRunComplete:'+Sender.Host,0);
end;

procedure TBaseForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//  OutBuf.Lines.SaveToFile(ChangeFileExt(Application.ExeName,'.out'));
  try
    if exInputBuffChk.Checked then
      eInputBuf.Lines.SaveToFile(ChangeFileExt(Application.ExeName,'.txt'))
    else
      InputBuf.Lines.SaveToFile(ChangeFileExt(Application.ExeName,'.txt'));
  except
    on e:exception do
       OutputDebugString(PChar('FormClose - Error 1:'+e.Message))
  end;
  try
    SendTimer.Enabled:=False;
    aPortCloseExecute(Sender);
  except
    on e:exception do
       OutputDebugString(PChar('FormClose - Error 2:'+e.Message))
  end;
  try
    aSaveToHistoryExecute(Sender);
  except
    on e:exception do
       OutputDebugString(PChar('FormClose - Error 3:'+e.Message))
  end;
  try
    aFileSaveExecute(Sender);
  except
    on e:exception do
       OutputDebugString(PChar('FormClose - Error 4:'+e.Message))
  end;
end;

procedure TBaseForm.Memo1DblClick(Sender: TObject);
var s:String;
begin
  //�������� ��������� ������
  if Memo1.Tag>=0 then
  if not aPortOpen.Enabled then
  begin
   s:=HEX2Str(GetCheckBoxString(True,Memo1.Items[Memo1.tag]));
   OutputBuf.Text:=Bin2Str(s);
//   StrToLogOut(GetCheckBoxString(False,Memo1.Items[Memo1.tag]),3);
   aPortSendDataExecute(nil);
  end;
end;


function  TBaseForm.Bin2Str(aStr:String):String;
begin
   case TerminalTypeGrp.ItemIndex of
   0: result:=aStr;
   1: result:=Str2Pascal(aStr);
   2: result:=Str2C(aStr);
   3: result:=Str2HEX(aStr);
   end;//case
end;
(*
  ����������� ������ � �����
*)
function  TBaseForm.Str2Bin(aStr:String):String;
begin
   case TerminalTypeGrp.Tag of
   0: result:=aStr;
   1: result:=Pascal2Str(aStr);
   2: result:=C2Str(aStr);
   3: result:=HEX2Str(aStr);
   end;//case
end;

function  TBaseForm.HexStr2Bin(aStr:String):String;
var i,len:integer;
    b:byte;
    newStr:String;
begin
  newStr:='';
  len:=Length(aStr);
  i:=0;
  while (i<len) do
  begin
    inc(i);//������ ������� ��������
    if aStr[i] in ['0'..'9','A'..'F'] then
    begin
      if (aStr[i] in ['0'..'9']) then
        b:=(ord(aStr[i])-ord('0')) shl 4
      else
        b:=((ord(aStr[i])-ord('A'))+10) shl 4;
    end
    else begin
      newStr:=newStr+aStr[i];
      Continue;
    end;
    if i<len then begin
      inc(i);//������ ������� ��������
      if aStr[i] in ['0'..'9','A'..'F'] then
      begin
        if (aStr[i] in ['0'..'9']) then
          b:=b+(ord(aStr[i])-ord('0'))
        else
          b:=b+((ord(aStr[i])-ord('A'))+10);
      end;
    end;
    newStr:=newStr+chr(b);
  end;//while
  result:=newStr;
end;

procedure TBaseForm.aHistoryExecute(Sender: TObject);
begin
end;
(*
  ������ ���������� �������� ������ �� �������
*)
procedure TBaseForm.ClientDataTimerTimer(Sender: TObject);
begin
  //���� ����� �����
  if (GetTickCount>FinishTime) or (Length(FClientInBuff)>MaxNonBufferised.Value) then
  begin
     if FClientInBuff='' then
     begin
       DataReceived:=False
     end
     else begin
       DataReceived:=True;
       DisassembleClientData;
       //FClientInBuff:='';
     end;
  end;

  if GetTickCount>FinishTime then
  begin
    ClientDataTimer.Tag:=4;
    ClientDataTimer.Enabled:=False;
    if not DataReceived then
    begin
        Tag:=4;
        SetStatusBar(mel[ClientDataTimer.Tag],7);
        SetStatusBar('����� �������� �������',0);
    end
    else begin
        SetStatusBar(mel[ClientDataTimer.Tag],7);
        SetStatusBar('������ �������� �� '+IntToStr((GetTickCount-(StartTime+DopNastroyki_ByteTimeOut.Value)))+' ����',0);
        StartTime:=GetTickCount;
    end;
  end
  else
     ClientDataTimer.Tag:=(ClientDataTimer.Tag+1) mod 4;
  SetStatusBar(mel[ClientDataTimer.Tag],6);
end;


function BitStaff(src:String):String;
var
  a:word;
  abody:array[0..1] of byte absolute a;
  id,cBegin:BYTE;//=0;
  icOnes:integer;//  = 0;
  idLen:integer;//  = 0;
  icDstBits:BYTE;//  = 1;
  slen:integer;
  ptr:integer;
begin
  id:=0;
  icOnes:= 0;
  idLen:= 0;
  icDstBits:= 1;
  result:=#$7E;
  slen:=Length(src);
  a:=ord(src[1]);ptr:=2;
  while slen>0 do
  begin
     if slen>0 then abody[1]:=ord(src[ptr]);inc(ptr);dec(slen);
     for cBegin:=0 to 7 do
     begin
         if (a and 1) = 1 then
         begin
            inc(icOnes);
            id := id or icDstBits;
         end
         else
            icOnes:=0;

         icDstBits:=icDstBits shl 1;
         if icDstBits=0 then
         begin
            result:=result+chr(id);
            id:=0;
            icDstBits:=1;
         end;
         if icOnes=5 then
         begin
            icOnes:=0;
            icDstBits:=icDstBits shl 1;
            if icDstBits = 0 then
            begin
               result:=result+chr(id);
               id:=0;
               icDstBits:=1;
            end;
         end;
         a:=a shr 1;
     end;//for
  end;//while
  if ( icDstBits <>1) then  result:=result+chr(id);
  result:=result+#$7E;
end;

function ReBitStaff(src:String):String;
var fFrame:boolean;// =  1;
    cDstBits:byte;// = 1;
    d:byte;//=0;
    cOnes:byte;// = 0;
    dLen,i:integer;// = 0;
    tmpS:String;
function OnIncomingDataByte(rcvByte:BYTE):boolean;
var i:integer;
begin
  Result:=False;
  if ( rcvByte = $7E ) then // Frame flag
  begin
    if dLen>=4 then
    begin
      fFrame:=True;
      cDstBits:= 1;
      d:=0;
      cOnes:= 0;
    end
    else Exit;
  end
  else begin
    if fFrame then
    begin
       for i:=0 to 7 do
       begin
           if (rcvByte and 1) = 1 then
           begin
              inc(cOnes);
              d:=d or cDstBits;
              cDstBits:=cDstBits shl 1;
              if cDstBits=0 then
              begin
                 tmpS:=tmpS+chr(d);
                 d:=0; cDstBits:=1;
              end;
           end
           else begin
             if (cOnes<>5) then
             begin
                cDstBits:=cDstBits shl 1;
                if cDstBits=0 then
                begin
                  tmpS:=tmpS+chr(d);
                  d:=0; cDstBits:=1;
                end;

             end;
             cOnes:=0;
           end;
           rcvByte := rcvByte shr 1;
       end;

    end;
  end;
  result:=True;
end;

begin
    tmpS:='';
    dLen:=Length(src);
    for i:=1 to dLen do
       if not OnIncomingDataByte(ord(src[i])) then Exit;
    result:=tmpS;
end;


//
//  ����������� ����� � SIKON ������ ��������
//
function TBaseForm.Bin2PSikon(tmpS:String):String;
var i,
    Count,  //�������
    len,    //����� ������������� �����
    GrpByte:byte;//���� ����� ��������
begin
 result:='';
 len:=Length(tmpS);Count:=0;GrpByte:=0;
 for i := 1 to len do
 begin
    //���� � ����������� ����� ������� ���
    //���������� � 1, �� ��������� ��� � GrpByte
    Inc(Count);
    if (ord(tmpS[i]) and $80)=$80 then
       GrpByte:=GrpByte or ($80 shr Count);
    result:=result+chr(ord(tmpS[i]) or $80);
    if Count=7 then
    begin
       Count:=0;
       result:=result+chr(GrpByte or $80);
       GrpByte:=0;
    end;
 end;
 //����
 if Count<>0 then
     result:=result+chr(GrpByte or $80);

end;

//
//  ������������� ����� SIKON
//
// XX XX XX XX XX XX XX PP XX XX XX XX XX PP
function TBaseForm.PSikon2Bin(tmpS:String):String;
var i,j,
    Count,  //�������
    len,    //����� ������������� �����
    curByte,GrpByte:byte;//���� ����� ��������
begin
 result:='';
 len:=Length(tmpS);Count:=0;GrpByte:=0;
 i:=1;j:=1;
 while j<len do
 begin
   Inc(Count);
   if (i+7)<=len then
   //������ �����
      GrpByte:=ord(tmpS[i+7])
   else
      GrpByte:=ord(tmpS[len]);
   //������� ���� ������
   curByte:=ord(tmpS[j]);
   if (GrpByte and ($80 shr Count)) = 0  then
      curByte:=CurByte and $7F;
   Inc(j);
   result:=result+chr(curByte);
   if Count=7 then
   begin
     Inc(j);
     i:=j;
     Count:=0;
   end;
 end;
end;



procedure TBaseForm.aPackSikonExecute(Sender: TObject);
begin
  OutputBuf.Text:=Bin2Str(Bin2PSikon(Str2Bin(OutputBuf.Text)));
end;

procedure TBaseForm.aUnPackSikonExecute(Sender: TObject);
begin
  OutputBuf.Text:=Bin2Str(PSikon2Bin(Str2Bin(OutputBuf.Text)));
end;

procedure TBaseForm.EditStringClick(Sender: TObject);
var Code,Comment:String;
begin
  Code:=GetCheckBoxString(True,Memo1.Items[Memo1.tag]);
  Comment:=GetCheckBoxString(False,Memo1.Items[Memo1.tag]);
  if InputQuery('��������', '��� �������', Code) then
  begin
     if Comment<>'' then
     begin
       //� ������������
       Memo1.Items[Memo1.tag]:=Str2Hex(Hex2Str(Code))+cCommentDelimiter+Comment;
     end
     else begin
      //��� �����������
       Memo1.Items[Memo1.tag]:=Str2Hex(Hex2Str(Code));
     end;
  end;

end;

procedure TBaseForm.EditCommentClick(Sender: TObject);
var Code,Comment:String;
begin
  Code:=GetCheckBoxString(True,Memo1.Items[Memo1.tag]);
  Comment:=GetCheckBoxString(False,Memo1.Items[Memo1.tag]);
  if InputQuery('��������', '�����������', Comment) then
  begin
     if Comment<>'' then
     begin
       //� ������������
       Memo1.Items[Memo1.tag]:=Str2Hex(Hex2Str(Code))+cCommentDelimiter+Comment;
     end
     else begin
      //��� �����������
       Memo1.Items[Memo1.tag]:=Str2Hex(Hex2Str(Code));
     end;
  end;

end;

procedure TBaseForm.OutputBufDragDrop(Sender, Source: TObject; X,
  Y: Integer);
begin
   if Source=Memo1 then
     OutputBuf.Text:=Bin2Str(HEX2Str(GetCheckBoxString(True,Memo1.Items[Memo1.tag])))
   else if ((Source=ListBox1) and (ListBox1.ItemIndex>=0)) then
     OutputBuf.Text:=ListBox1.Items[ListBox1.ItemIndex];
end;

procedure TBaseForm.OutputBufDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept:=(Source=ListBox1) or (Source=Memo1);
end;

procedure TBaseForm.StartReopenTimerTimer(Sender: TObject);
begin
  chkSpecialCharsClick(Sender);
  StartReopenTimer.Enabled:=False;
  StartReopenTimer.OnTimer:=nil;
  if aPortOpen.Tag=1 then aPortOpen.Execute;
  RestoreDownBtn;
  //��������� ����������� ����
  if chkBroker_KSPD.Checked and (not KSPDRegistered) then
     CreateKSPDTCPClient;
  //��������� ����������� ����
  if chkVirtualComPort.Checked then begin
     DestroyVPCOMPort;
     CreateCOMPort(VirtualComPort_Number.Text);
   end;
  //��������� ������
  if serveractive.Checked then begin
    serveractiveClick(Sender);
  end;
  chkBroker_KSPD.OnClick:=chkBroker_KSPDClick;
  chkVirtualComPort.OnClick:=chkVirtualComPortClick;
  serveractive.OnClick:=serveractiveClick;
  VirtualComPort_Number.Enabled:=not chkVirtualComPort.Checked;
  ServerPortEdt.Enabled:=not serveractive.Checked;
  if chkHideToTray.checked then
     Hide;

end;

procedure TBaseForm.N20Click(Sender: TObject);
var oldFile:String;
begin
  oldFile:=SaveDialog1.FileName;
  SaveDialog1.DefaultExt:='.ASL';
  SaveDialog1.FilterIndex:=2;
  if SaveDialog1.Execute then
     Memo1.Items.SaveToFile(ChangeFileExt(SaveDialog1.FileName,'.ASL'));
  SaveDialog1.FileName:=oldFile;
end;

procedure TBaseForm.N21Click(Sender: TObject);
var oldFile:String;
begin
  oldFile:=OpenDialog1.FileName;
  OpenDialog1.DefaultExt:='.ASL';
  OpenDialog1.FilterIndex:=2;
  if OpenDialog1.Execute then
     Memo1.Items.LoadFromFile(ChangeFileExt(OpenDialog1.FileName,'.ASL'));
  OpenDialog1.FileName:=oldFile;
end;

procedure TBaseForm.aCRC32Execute(Sender: TObject);
var tmpS:String;
    i:integer;
    CS:longWord;
    CSBody:array[1..4] of char absolute CS;
//��������� CRC ��� �����
begin
 tmpS:=curProcStr;
// tmpS:=Str2Bin(OutputBuf.Text);
 if tmpS='' then Exit;
 CS:=CRC32(tmpS);
 tmpS:=tmpS+CSBody[1]+CSBody[2]+CSBody[3]+CSBody[4];
// OutputBuf.text:=Bin2Str(tmps);
 curProcStr:=tmps;
end;





procedure TBaseForm.OutputBufKeyPress(Sender: TObject; var Key: Char);
var i:integer;
begin
  if (ord(Key) = 13) and aPortSendData.Enabled then
     aPortSendData.Execute
  else if ord(Key) = 27 then
  begin
    for i:=0 to OutputBuf.Items.Count-1 do
    if OutputBuf.Items[i]=Trim(OutputBuf.Text) then
    begin
       if i<mListOfCommands.Lines.Count then mListOfCommands.Lines.Delete(i);
       OutputBuf.Items.Delete(i);
       break;
    end;
  end;(*
  else begin
     case TerminalTypeGrp.ItemIndex of
     1: if not (Key in [#8,'x','0'..'9','a'..'f','A'..'F']) then Key:=chr(27);
     2: if not (Key in [#8,'$','0'..'9','a'..'f','A'..'F']) then KEy:=chr(27);
     3: if not (Key in [#8,'0'..'9','a'..'f','A'..'F']) then KEy:=chr(27);
     end;
  end;  *)

end;

procedure TBaseForm.RepeatChkClick(Sender: TObject);
begin
  RepeatCount.Visible:=RepeatChk.Checked;
  RepeatLabel.Visible:=RepeatChk.Checked;
  AutoIncModeChk.Visible:=RepeatChk.Checked;
  AutoIncMaskEdt.Visible:=RepeatChk.Checked;
  AutoIncCounter.Visible:=RepeatChk.Checked;
end;

procedure TBaseForm.N23Click(Sender: TObject);
var oldFile,tmpS1,tmpS:String;
    i,j,len:integer;
begin
  oldFile:=OpenDialog1.FileName;
  OpenDialog1.DefaultExt:='.txt';
  //���������
  Memo1.Clear;
  if OpenDialog1.Execute then
     Memo1.Items.LoadFromFile(ChangeFileExt(OpenDialog1.FileName,'.txt'));
  OpenDialog1.FileName:=oldFile;
  //�����������
  for i:=0 to Memo1.Items.Count-1 do
  begin
    tmpS:=Memo1.Items[i];
    len:=Length(tmpS);
    tmpS1:='';
    for j:=1 to len do
    begin
      tmpS1:=tmpS1+IntToHex(ord(tmpS[j]),2)+' ';
    end;
    Memo1.Items[i]:=tmpS1;
    Memo1.Checked[i]:=True;
  end;
end;

procedure TBaseForm.aCS2Execute(Sender: TObject);
var tmpS:String;
    i:integer;
    tmpW:word;
begin
 tmpS:=curProcStr;
// tmpS:=Str2Bin(OutputBuf.Text);
 if tmpS='' then Exit;
 tmpW:=0;
 for i := 1 to Length(tmpS) do
   tmpW:=tmpW+ord(tmps[i]);
 tmpS:=tmpS+chr(Hi(tmpW))+chr(Lo(tmpW));
 curProcStr:=tmps;
// OutputBuf.text:=Bin2Str(tmps);
end;

procedure TBaseForm.N25Click(Sender: TObject);
begin
  OutputBuf.Text:=Bin2Str(BitStaff(Str2Bin(OutputBuf.Text)));//���������
end;

procedure TBaseForm.N26Click(Sender: TObject);
begin
  OutputBuf.Text:=Bin2Str(ReBitStaff(Str2Bin(OutputBuf.Text)));//�����������
end;

procedure TBaseForm.SetxportConnected(const Value: boolean);
begin
  FxportConnected := Value;
  RefreshEditState;
end;

procedure TBaseForm.SetxportTCPClientHost(const Value: string);
begin
  FxportTCPClientHost := Value;
end;

procedure TBaseForm.SetxportTCPClientPort(const Value: string);
begin
  FxportTCPClientPort := Value;
end;

//������� �� ������ � ����-���������������� ����������� ��������� ����-���������������
//��������� ������� � ������� aStartPos, ����� ������������� aStartPos �� ������
//��������� �� ������������� #0.
function GetNextSubstring(aBuf: string; var aStartPos: integer): string;
var
  vLastPos: integer;
  s:String;
begin
  if (aStartPos < 1) then
    begin
      raise ERangeError.Create('aStartPos ������ ���� ������ 0');
    end;

  if (aStartPos > Length(aBuf) ) then
    begin
      Result := '';
      Exit;
    end;

  vLastPos := PosEx(#0, aBuf, aStartPos);
  s:= Copy(aBuf, aStartPos, vLastPos - aStartPos);
  Result := s;
  aStartPos := aStartPos + (vLastPos - aStartPos) + 1;
end;


//��������� ������ aList ��������� � ������� COM �������
procedure GetComPorts(aList: TStrings; aNameStart: string);
var
  vBuf: string;
  vRes: integer;
  vErr: Integer;
  vBufSize: Integer;
  vNameStartPos: Integer;
  vName: string;
begin
  vBufSize := 1024 * 5;
  vRes := 0;

  while vRes = 0 do
    begin
      setlength(vBuf, vBufSize) ;
      SetLastError(ERROR_SUCCESS);
      vRes := QueryDosDevice(nil, @vBuf[1], vBufSize) ;
      vErr := GetLastError();

      //������� ��� ���������
      if (vRes <> 0) and (vErr = ERROR_INSUFFICIENT_BUFFER) then
        begin
          vBufSize := vRes;
          vRes := 0;
        end;

      if (vRes = 0) and (vErr = ERROR_INSUFFICIENT_BUFFER) then
        begin
          vBufSize := vBufSize + 1024;
        end;

      if (vErr <> ERROR_SUCCESS) and (vErr <> ERROR_INSUFFICIENT_BUFFER) then
        begin
          raise Exception.Create(SysErrorMessage(vErr) );
        end
    end;
  setlength(vBuf, vRes) ;

  vNameStartPos := 1;
  vName := GetNextSubstring(vBuf, vNameStartPos);

  aList.BeginUpdate();
  try
    aList.Clear();
    while vName <> '' do
      begin
        if AnsiStartsStr(aNameStart, vName) then
          aList.Add(vName);
        vName := GetNextSubstring(vBuf, vNameStartPos);
      end;
  finally
    aList.EndUpdate();
  end;
end;

procedure TBaseForm.tbAutoComListClick(Sender: TObject);
var
  i:integer;
begin
    ComPort_Number.Items.Clear;
    if tbAutoComList.Checked then
    begin
        GetComPorts(ComPort_Number.Items,'COM');
        //EnumComPorts(ComPort_Number.Items);
        CheckComPortList();
    end
    else begin
          for i := 1 to 99 do begin
              ComPort_Number.Items.Add(Format('COM%d',[i]));
          end;
    end;

end;
(*  reg :TRegistry;
  list :TStrings;
  i:integer;
begin
    ComPort_Number.Items.Clear;
    if tbAutoComList.Checked then
    begin
          list := TStringList.Create;
          reg := TRegistry.Create;
          reg.RootKey := HKEY_LOCAL_MACHINE;
          reg.OpenKey('hardware\devicemap\serialcomm', false);
          reg.GetValueNames(list);
          for i := 0 to list.Count-1 do begin
              ComPort_Number.Items.Add(REG.ReadString(list.Strings[i]));
          end;
          reg.CloseKey;
          reg.free;
          list.Free;
    end
    else begin
          for i := 1 to 30 do begin
              ComPort_Number.Items.Add(Format('COM%d',[i]));
          end;
    end;
end;
 *)
procedure TBaseForm.AutoListChkClick(Sender: TObject);
begin
  if AutoListChk.Checked then
  begin
    Panel8.Width:=200;
    AutoListGroupBox.Visible:=True;
    if AutoListGroupBox.Height<30 then AutoListGroupBox.Height:=30;
  end
  else begin
    Panel8.Width:=70;
    AutoListGroupBox.Visible:=False;
  end;
  AutoSendBtn.Down:=AutoListChk.Checked;

  AddBtn.Visible:=AutoListChk.Checked;
  RepeatBtn.Visible:=AutoListChk.Checked;
  PeriodRepeatEdt.Visible:=AutoListChk.Checked;
  ResizeAddBtn;
end;


procedure TBaseForm.KM5BroadcastRequestClick(Sender: TObject);
begin
//65 45 DA 03 01 00 2A A6
  case TerminalTypeGrp.ItemIndex of
  1:OutputBuf.Text:='$51 $52 $53 $54 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $04 $4A';
  2:OutputBuf.Text:='0x51 0x52 0x53 0x54 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x04 0x4A';
  3:OutputBuf.Text:='51 52 53 54 00 00 00 00 00 00 00 00 00 00 04 4A';
  end;
end;
procedure TBaseForm.RefreshBluetoothState;
begin
  if nrDeviceBox1.Items.Count=0 then
    Bluetooth_State.Caption:='��� ��������'
  else if nrDeviceBox1.Text='' then
    Bluetooth_State.Caption:='�� �������'
  else if nrBT1.Active then
    Bluetooth_State.Caption:='������'
  else
    Bluetooth_State.Caption:='������';
end;

procedure TBaseForm.RestoreDownBtn;
begin
  if xNo_CRCBtn.Down then xNo_CRCBtnClick(xNo_CRCBtn);
  if xKM5CRCBtn.Down then xKM5CRCBtnClick(xKM5CRCBtn);
  if xCRC32Btn.Down then xCRC32BtnClick(xCRC32Btn);
  if xSikonCRCBtn.Down then xSikonCRCBtnClick(xSikonCRCBtn);
  if xCRC16MKTCBtn.Down then xCRC16MKTCBtnClick(xCRC16MKTCBtn);
  if xCRC16tBtn.Down then xCRC16tBtnClick(xCRC16tBtn);
  if xCRC16Btn.Down then xCRC16BtnClick(xCRC16Btn);
  if xCRC16CorallBtn.Down then xCRC16CorallBtnClick(xCRC16CorallBtn);
  if xCS2Btn.Down then xCS2BtnClick(xCS2Btn);
  if xCS1Btn.Down then xCS1BtnClick(xCS1Btn);
  if xCSN1Btn.Down then xCSN1BtnClick(xCSN1Btn);
  if xCRCSprut100Btn.Down then xCRCSprut100BtnClick(xCRCSprut100Btn);
  if xCRCMODBUSASCIIBtn.Down then xCRCMODBUSASCIIBtnClick(xCRCMODBUSASCIIBtn);
end;
procedure TBaseForm.FormActivate(Sender: TObject);
var i:integer;
begin
  HexBtnClick(HexBtn);
  MacrosLabel.Height:=26;
  cbAlarmChange(nil);
  if FFirsActivate then
  begin
    try
      VP:=TVSPortAx.Create(Self);
    except
      gbVirtualComPort.Visible:=False;
    end;
    AutoListChkClick(nil);
    PageControl1.ActivePageIndex:=0;
    PageControl4.ActivePageIndex:=0;
    pcTypeOfConnect.ActivePageIndex:=0;
//    Caption:=WideString('Term2006 � "OOO ��� ������������" '+cCurVer+' local IP '+GetIPAddress(FComputerName)+' �'+IntToStr(Term2006Number));
    Caption:='Term2006 � "OOO ��� ������������" '+cCurVer+' local IP '+GetIPAddress(FComputerName)+' �'+IntToStr(Term2006Number);
    aClearOutputBuf.Checked:=chClearOutputBuf.Checked;
    FPTestBrk:=SecondTimer.tag;
    FFirsActivate:=False;
    RefreshBluetoothState;
    aEditDopSetUp.Checked:=SetUpPanel.Visible;
    //��������������� ���������� � ��������
    gbKM5.Visible:=HexBtn.Down;
    for i:=0 to OutputBuf.Items.Count-1 do
       mListOfCommands.Lines.Add(OutputBuf.Items[i]);
    tcMacrosChange(Sender);
    if cbEmulatorActive.Checked then
    if FileExists(EmulatorFilenameEdit.FileName) then
    begin
      EmulatorFilenameEdit.OnChange(EmulatorFilenameEdit);
    end;
  end;
  RefreshEditState;
  pcTypeOfConnectChange(nil);
end;

procedure TBaseForm.ComPort_BaudChange(Sender: TObject);
begin
  if Assigned(ComPort1) then
    ComPort1.BaudRate:=StrToBaudRate(ComPort_Baud.Text);//��������
end;

procedure TBaseForm.ComPort_BitsCountChange(Sender: TObject);
begin
  if Assigned(ComPort1) then
    ComPort1.DataBits:=StrToDataBits(IntToStr(ComPort_BitsCount.value));//����� ���
end;

procedure TBaseForm.ComPort_EvenBitChange(Sender: TObject);
begin
  if Assigned(ComPort1) then
    ComPort1.Parity.Bits:=StrToParity(ComPort_EvenBit.Text);//��������
end;

procedure TBaseForm.chkHintClick(Sender: TObject);
begin
  if exInputBuffChk.Checked then
     eInputBuf.ShowHint:=chkHint.Checked
  else
     InputBuf.ShowHint:=chkHint.Checked;
  BuffHintBtn.Down:=chkHint.Checked;
end;

procedure TBaseForm.MacrosExecute(s:String;comment:String='');
var resStr:string;
    i:integer;
    tmpDT:TDateTime;
    hh,mm,ss,ms:word;
    d,m,y:word;
begin
   if s='' then Exit;
   i:=pos('NOWDATE',s);
   if i>0 then
   begin
      delete(s,i,7);
      tmpDT:=Now;
      decodeDate(tmpDT,y,m,d);
      insert(Format('%2.2d.%2.2d.%2.2d',[d,m,y-2000]),s,i);
   end;
   i:=pos('NOWTIME',s);
   if i>0 then
   begin
      delete(s,i,7);
      tmpDT:=Now;
      decodeTime(tmpDT,hh,mm,ss,ms);
      insert(Format('%2.2d:%2.2d:%2.2d',[hh,mm,ss]),s,i);
   end;

(*   case TypeOfMacros of
   0: begin //��� ������� ASL
       i:=pos('//',S);
       if i>0 then
         resStr:=BaseForm.HEX2Str(copy(s,1,i-1))
       else
         resStr:=BaseForm.HEX2Str(s);
      end;//0-��� ������� ASL
   1: begin //��� ������� TMF*)
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
//      end;//1-��� ������� TMF
//   end;
   if (not HexBtn.Down) then begin
      case CRLFMode.ItemIndex of
      1: resStr:=resStr+#$0D;
      2: resStr:=resStr+#$0D+#$0A;
      end;

   end;
   BaseForm.OutDataToClient(resStr,ord(cadrUSER),comment);
end;


procedure TBaseForm.ListBox1DblClick(Sender: TObject);
var btn:TButton;
    i,j:integer;
    s,comment:String;
    edt:TEdit;
    mustsended:boolean;
begin
  if ListBox1.ItemIndex<0 then Exit;
  s:=ListBox1.Items[ListBox1.ItemIndex];
  mustsended:=(s<>'');
  if mustsended then
     mustsended:=ListBoxKey<>16;
  if (not mustsended) then
    if InputQuery('������� ����� �������:','������ '+IntToStr(ListBox1.ItemIndex+1),s) then
       ListBox1.Items[ListBox1.ItemIndex]:=s;
  if (ListBox1.Items[ListBox1.ItemIndex]<>'') and  mustsended then
  begin
    //���� �����������
    j:=pos('//',s);
    if j>0 then
    begin
      //�������� �����������
      i:=(Length(s)-j)+1;
      comment:=copy(s,j,i);
      //������� �� ���������
      delete(s,j,i);
    end
    else
      comment:='';
    MacrosExecute(s,comment);
  end
  else
    ListBox1.Items.SaveToFile(FMacrosFileName);
  ListBoxKey:=0;
end;

procedure TBaseForm.ListBox1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   ListBoxKey:=0;
end;

procedure TBaseForm.ListBox1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   ListBoxKey:=Key;//16 - Shift   17-Ctrl
end;

procedure TBaseForm.SetListBoxKey(const Value: word);
begin
   FListBoxKey:=Value;
end;

procedure TBaseForm.MultiStringsClick(Sender: TObject);
begin
   BigOutputBuf.Visible:=MultiStrings.Checked;
end;

procedure TBaseForm.FormStorage1RestorePlacement(Sender: TObject);
var s,ipaddr:string;
    len1,k,idxline,i,j,idxportkspd: byte;
    numprib,numport,boudr,zaderjka,idkspd: integer;

function GetNum: DWORD; // �=������� 1-� �����
var num: dword;
begin
  num:=ord(s[k])-$30;
  inc(k);
  while k<=len1 do
   begin
     if s[k]=':' then break;
     num:=num*10+(ord(s[k])-$30);
     inc(k);
   end;
  result:=num;
end;

begin
 if MacrosBox.Caption<>'' then
    MacrosFileName:=MacrosBox.Caption
 else begin
    MacrosFileName:=ChangeFileExt(Application.exename,'.tmf');
    ListBox1.Items.Add('');
    ListBox1.Items.SaveToFile(MacrosFileName);
 end;

 if (ParamCount>0) then
  begin
    s:=ParamStr(1);

    //������: ������ ������������ ���� � �������� � ��������
    // term2006.exe -l:17239:C:28:96:60:KSPD:89.207.73.52:s:777:1:�������_����
    // ������� ����� ������ TCP
    // term2006.exe -l:17239:C:28:96:60:TCPSRV:1000
    // term2006.exe -l:17239:C:28:96:60:TCPSRV:s
    // ������ �������
    //term2006.exe -l:150:C:11:96:60
    //����������� ����� ������ � ����
    //term2006.exe -l:17242:B:s:96:100:89.207.73.51:167196967:0
    //����������� � TCP �������
    //term2006.exe -l:150:E:s::5:192.168.0.103
    i:=pos('TCPSRV:',s);
    if i>0 then
    begin
      //������:KSPD:89.207.73.52:s:123:1:�������_����
      //Broker_KSPD_IP      :89.207.73.52
      //seBroker_KSPD_Port  :s=10003
      //seID_Broker_KSPD    :1000000123
      //seHARDNUM_KSPD      :1
      //CommentsEdt         :�������_����
      ipaddr:='';
      //��������� IP ����� �������
      inc(i,7);//������ �� ������ ����
      ipaddr:='';
      for j:=0 to 4 do
      begin
          if i>Length(s) then break;
          if s[i]=':' then break
          else ipaddr:=ipaddr+s[i];
          inc(i);
      end;
      if ipaddr<>'' then begin
        if ipaddr[1]='s' then ServerPortEdt.Value:=10001
        else ServerPortEdt.Value:=StrToIntDef(ipaddr,10003);
        serveractive.OnClick:=nil;
        serveractive.Checked:=True;
        serveractive.OnClick:=serveractiveClick;
      end;
    end;
    i:=pos('VCOM:',s);
    if i>0 then
    begin
      //������:VCOM:1
      //��������� ����� �����
      inc(i,5);//������ �� ������ ����
      ipaddr:='';
      for j:=0 to 2 do
      begin
          if i>Length(s) then break;
          if s[i]=':' then break
          else ipaddr:=ipaddr+s[i];
          inc(i);
      end;
      if ipaddr<>'' then begin
        VirtualComPort_Number.Text:='COM'+ipaddr;
        chkVirtualComPort.OnClick:=nil;
        chkVirtualComPort.Checked:=True;
        chkVirtualComPort.OnClick:=chkVirtualComPortClick;
      end;
    end;

    i:=pos('KSPD:',s);
    if i>0 then
    begin
      //������:KSPD:89.207.73.52:s:123:1:�������_����
      //Broker_KSPD_IP      :89.207.73.52
      //seBroker_KSPD_Port  :s=10003
      //seID_Broker_KSPD    :1000000123
      //seHARDNUM_KSPD      :1
      //CommentsEdt         :�������_����
      ipaddr:='';
      //��������� IP ����� �������
      inc(i,5);//������ �� ������ ���� IP ������ �������
      for j:=0 to 14 do
      begin
        if i>Length(s) then break;
        if s[i]=':' then break
        else ipaddr:=ipaddr+s[i];
        inc(i);
      end;
      if ipaddr<>'' then Broker_KSPD_IP.Text:=ipaddr;
      inc(i);
      //��������� ����� ����� �������
      ipaddr:='';
      for j:=0 to 4 do
      begin
          if i>Length(s) then break;
          if s[i]=':' then break
          else ipaddr:=ipaddr+s[i];
          inc(i);
      end;
      if ipaddr<>'' then begin
        if ipaddr[1]='s' then seBroker_KSPD_Port.Value:=10003
        else seBroker_KSPD_Port.Value:=StrToIntDef(ipaddr,10003);
      end;
      inc(i);
      //��������� ID ����
      ipaddr:='';
      for j:=0 to 8 do
      begin
          if i>Length(s) then break;
          if s[i]=':' then break
          else ipaddr:=ipaddr+s[i];
          inc(i);
      end;
      if ipaddr<>'' then begin
        seID_Broker_KSPD.Value:=StrToIntDef(ipaddr,123);
      end;
      inc(i);
      //��������� ��������� ����� ������������ ����
      ipaddr:='';
      for j:=0 to 8 do
      begin
          if i>Length(s) then break;
          if s[i]=':' then break
          else ipaddr:=ipaddr+s[i];
          inc(i);
      end;
      if ipaddr<>'' then begin
        seHARDNUM_KSPD.Value:=StrToIntDef(ipaddr,1);
      end;
      inc(i);
      //��������� ����������� - ���� ����
      ipaddr:='';
      for j:=i to Length(s) do
      begin
          if s[i]=':' then break
          else if s[i]<>' ' then ipaddr:=ipaddr+s[i]
                            else ipaddr:=ipaddr+'_';
          inc(i);
      end;
      if ipaddr<>'' then
        CommentsEdt.Text:=ipaddr;
      inc(i);
      chkBroker_KSPD.OnClick:=nil;
      chkBroker_KSPD.Checked:=True;
      chkBroker_KSPD.OnClick:=chkBroker_KSPDClick;
    end;
    //����� �����
    if (s[1]='-') and (s[2]='l') then
     begin // ���������
       len1:=length(s);
       k:=4;
       numprib:=GetNum; // ������� ����� �������
       Km5NetAddr.Value:=StrToInt('$'+IntToStr(numprib));
       inc(k,3);
       case s[k-2] of
        'E': begin // Ethernet
               if s[k]='s' then begin numport:=10001; inc(k); end
                           else numport:=GetNum;
               TCPPort_Number.Value:=numport;
               pcTypeOfConnect.ActivePageIndex:=2;
               idxline:=1;
             end;
        'B': begin // Broker
               if s[k]='s' then begin numport:=10002; inc(k); end
                           else numport:=GetNum;
               TBNBROKER_Port.Value:=numport;
               idxline:=2;
               pcTypeOfConnect.ActivePageIndex:=3;
             end;
        'C': begin // COM
               numport:=GetNum;
               ComPort_Number.Text:='COM'+IntToStr(numport);
               idxline:=0;
               pcTypeOfConnect.ActivePageIndex:=0;

             end;
       else
         numport:=0;
       end; // case
       if numport>0 then
        begin
          inc(k);
          if s[k]<>':' then boudr:=GetNum*100; // boudrate
          if  idxline=0 then
              ComPort_Baud.Text:=IntToStr(boudr);
          inc(k);
          zaderjka:=GetNum*100; // �������� � ��
          DopNastroyki_TimeOut.Value:=zaderjka;
          if idxline>0 then
           begin
             inc(k);
             if idxline=1 then TCPPort_IP.Text:=Copy(s,k,15)
              else
               begin
                 i:=k;
                 while k<=len1 do
                  begin
                    if s[k]=':' then break;
                    inc(k);
                  end;
                 TBNBROKER_IP.Text:=Copy(s,i,k-i);
                 inc(k);
                 idkspd:=GetNum;
                 KSPD_ID.Text:=intToStr(idkspd);
                 inc(k);
                 idxportkspd:=ord(s[k])-$30;
                 KSPD_Port.ItemIndex:=idxportkspd;
                 case boudr of
                 2400:  KSPD_Baud.ItemIndex:=0;
                 4800:  KSPD_Baud.ItemIndex:=1;
                 9600:  KSPD_Baud.ItemIndex:=2;
                 19200:  KSPD_Baud.ItemIndex:=3;
                 38400:  KSPD_Baud.ItemIndex:=4;
                 57600:  KSPD_Baud.ItemIndex:=5;
                 115200: KSPD_Baud.ItemIndex:=6;
                 end;
               end;
           end;
        end;// if numport>0 then
     end;
  end;
  RestoreInputBuf;
  StartReopenTimer.Enabled:=True;
  RestoreState;
end;

procedure TBaseForm.RestoreInputBuf;
var s:String;
    i:integer;
begin
  s:=ChangeFileExt(Application.ExeName,Format('_%d.log',[Term2006Number]));
  if FileExists(s) then
  begin
     if exInputBuffChk.Checked then
     begin
       eInputBuf.Lines.LoadFromFile(s);
       Application.ProcessMessages;
       eInputBuf.GotoLineAndCenter(eInputBuf.Lines.Count-1);
       //��������������� ������ �� ��������� ��������
       if aSignal.Checked then
          for i:=0 to eInputBuf.Lines.Count-1 do
          case cbSignalTypeProtocol.ItemIndex of
          0: InputBufToChart(i);
          1: ProtocolToChart(i);
          end;
     end
     else begin
       InputBuf.Lines.LoadFromFile(s);
       Application.ProcessMessages;
       //xInputBuf.GotoLineAndCenter(xInputBuf.Lines.Count-1);
       if aSignal.Checked then
          for i:=0 to InputBuf.Lines.Count-1 do
          case cbSignalTypeProtocol.ItemIndex of
          0: InputBufToChart(i);
          1: ProtocolToChart(i);
          end;
     end;

  end;

end;

procedure TBaseForm.FindText(AMemo:TMemo;Find:string;FromBegin:boolean);
var // ��������� ����������
  i,j:integer; // ������� ��� �����
begin
  if not Assigned(AMemo) then Exit;
  if FromBegin then j:=0
  else j:=AMemo.CaretPos.Y;
  for i:=j to AMemo.Lines.Count-1 do // ��������� ���� ������ ������
    if Pos(FIND, AMemo.Lines[i])<>0 then
    begin
      AMemo.SelStart:=Pos(FIND,AMemo.Lines[i])-1;
      AMemo.SetFocus();
      AMemo.SelLength:=Length(FIND);
      break;
    end;
end;


procedure TBaseForm.eInputBufKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if ssCtrl in Shift then
  case key of
  82: begin
          ReplaceDialog1.Execute;
       end;
  70:  begin
          FindDialog1.Execute;
       end;
  end;

end;



{ **** UBPFD *********** by delphibase.endimus.com ****
>> ����� ������ � ��������� Memo

�����������: Windows, Classes, StdCtrls
�����:       Fenik, chook_nu@uraltc.ru, �����������
Copyright:   �����: ����������� �������
����:        26 ���� 2002 �.
***************************************************** }

function FindInMemo(Memo: TMemo; const FindText: string;
  FindDown, MatchCase: Boolean): Boolean;

{���� ������ �������, �� ��������� True, ����� - False;

 FindText : ������� ������;
 FindDown : True - ����� ���� �� ������� �����;
             False - ����� ����� �� ������� �����;
 MatchCase : True - � ������ �������� ����,
             False - �� �������� ������� ���.

 ���� � Memo ����� ����������� ����, �� �����
 ���������� �������� - ����� ����� ������,
 �� ������� �� ��� ��� ����. ��� ���, ��� ����������� ������
 �������� ScrollBars � Memo ������� � ssBoth (�� ��� ssHorizontal)}

  function PosR2L(const FindStr, SrcStr: string): Integer;
    {����� ���������� ��������� ��������� FindStr � ������ SrcStr}
  var
    ps, L: Integer;

    function InvertSt(const S: string): string;
      {�������� ������ S}
    var
      i: Integer;
    begin
      L := Length(S);
      SetLength(Result, L);
      for i := 1 to L do
        Result[i] := S[L - i + 1];
    end;

  begin
    ps := Pos(InvertSt(FindStr), InvertSt(SrcStr));
    if ps <> 0 then
      Result := Length(SrcStr) - Length(FindStr) - ps + 2
    else
      Result := 0;
  end;

  function MCase(const s: string): string;
    {������� ��������� ���� � ��������;
     ������� ���������� ���� ������� �� �����������}
  var
    i: Integer;
  begin
    Result := s;
    for i := 1 to Length(s) do
    begin
      case s[i] of
        'A'..'Z',
          '�'..'�': Result[i] := Chr(Ord(s[i]) + 32);
        '�': Result[i] := '�';
        '�': Result[i] := '�';
        '�': Result[i] := '�';
        '�': Result[i] := '�';
        '�': Result[i] := '�';
        '�': Result[i] := '�';
        '�': Result[i] := '�';
      end;
    end;
  end;

var
  Y, X, SkipChars: Integer;
  FindS, SrcS: string;
  P: TPoint;
begin
  Result := False;

  if MatchCase then
    FindS := FindText
  else
    FindS := MCase(FindText);

  P := Memo.CaretPos;

  if FindDown then
    {����� ������ � ���� �� ������� �����}
    for Y := P.y to Memo.Lines.Count do
    begin

      if Y <> P.y then
        {���� ��� �� ������, � ������� ������ ����,
         �� ���� �� ���� ������}
        SrcS := Memo.Lines[Y]
      else
        {����� �������� ������ �� ������� �� �����}
        SrcS := Copy(Memo.Lines[Y], P.x + 1,
          Length(Memo.Lines[Y]) - P.x + 1);

      if not MatchCase then
        SrcS := MCase(SrcS);
      X := Pos(FindS, SrcS);
      if X <> 0 then
      begin
        if Y = P.y then
          Inc(X, P.x);
        P := Point(X, Y);
        Result := True;
        Break; {����� �� �����}
      end
    end
  else
    {����� ����� � ����� �� ������� �����}
    for Y := P.y downto 0 do
    begin

      if Y <> P.y then
        {���� ��� �� ������, � ������� ������ ����,
         �� ���� �� ���� ������}
        SrcS := Memo.Lines[Y]
      else
        {����� �������� ������ �� ������ �� �������
         ����� ���������� �����}
        SrcS := Copy(Memo.Lines[Y], 1, P.x - Memo.SelLength);

      if not MatchCase then
        SrcS := MCase(SrcS);
      X := PosR2L(FindS, SrcS);
      if X <> 0 then
      begin
        P := Point(X, Y);
        Result := True;
        Break; {����� �� �����}
      end
    end;

  if Result then
  begin
    {���� ����� ������ - �������� ���}
    SkipChars := 0;
    for y := 0 to P.Y - 1 do
      Inc(SkipChars, Length(Memo.Lines[y]));
    Memo.SelStart := SkipChars + (P.Y * 2) + P.X - 1;
    Memo.SelLength := Length(FindText);
    Memo.SetFocus;
    Application.ProcessMessages;
  end;
end;

procedure TBaseForm.DoFindText(Sender: TObject);
var
  rOptions: TSynSearchOptions;
  dlg: TFindDialog;
  sSearch: string;
begin
  if Sender = ReplaceDialog1 then
    dlg := ReplaceDialog1
  else
    dlg := FindDialog1;
  sSearch := dlg.FindText;
  if Length(sSearch) = 0 then begin
    Beep;
    lblSearchResult.Caption := '�� ������ "���" ������!';
    lblSearchResult.Visible := TRUE;
  end else begin
    rOptions := [];
    if not (frDown in dlg.Options) then
      Include(rOptions, ssoBackwards);
    if frMatchCase in dlg.Options then
      Include(rOptions, ssoMatchCase);
    if frWholeWord in dlg.Options then
      Include(rOptions, ssoWholeWord);
    if eInputBuf.SearchReplace(sSearch, '', rOptions) = 0 then begin
      Beep;
      lblSearchResult.Caption := '������� ����� ''' + sSearch + ''' �� ������!';
      lblSearchResult.Visible := TRUE;
    end else
      lblSearchResult.Visible := FALSE;
  end;
end;

(*  if not FindInMemo(InputBuf,
    FindDialog1.FindText,
    frDown in FindDialog1.Options,
    frMatchCase in FindDialog1.Options) then
    begin
      Application.MessageBox(PChar('������: "'+FindDialog1.FindText+'"'),
      PChar(Application.Title),
      MB_OK or MB_ICONINFORMATION);
    end;*)
//end;

procedure TBaseForm.aFindTextExecute(Sender: TObject);
begin
  FindDialog1.Execute;
end;

procedure TBaseForm.AP9BroadcastRequestClick(Sender: TObject);
begin
  case TerminalTypeGrp.ItemIndex of
  1:OutputBuf.Text:='$51 $52 $53 $54 $00 $00 $E4 $C2';
  2:OutputBuf.Text:='0x51 0x52 0x53 0x54 0x00 0x00 0xE4 0xC2';
  3:OutputBuf.Text:='51 52 53 54 00 00 E4 C2';
  end;
end;

procedure TBaseForm.chkLimitClick(Sender: TObject);
begin
   LimitEdt.Enabled:=chkLimit.Checked;
   cbLimit.Enabled:=chkLimit.Checked;
end;

procedure TBaseForm.GroupBox7EndDock(Sender, Target: TObject; X,
  Y: Integer);
begin
   GroupBox7.Align:=alClient;
end;

const
  tables :array [0..255] of word= (
  $0000, $1189, $2312, $329b, $4624, $57ad, $6536, $74bf,
  $8c48, $9dc1, $af5a, $bed3, $ca6c, $dbe5, $e97e, $f8f7,
  $1081, $0108, $3393, $221a, $56a5, $472c, $75b7, $643e,
  $9cc9, $8d40, $bfdb, $ae52, $daed, $cb64, $f9ff, $e876,
  $2102, $308b, $0210, $1399, $6726, $76af, $4434, $55bd,
  $ad4a, $bcc3, $8e58, $9fd1, $eb6e, $fae7, $c87c, $d9f5,
  $3183, $200a, $1291, $0318, $77a7, $662e, $54b5, $453c,
  $bdcb, $ac42, $9ed9, $8f50, $fbef, $ea66, $d8fd, $c974,
  $4204, $538d, $6116, $709f, $0420, $15a9, $2732, $36bb,
  $ce4c, $dfc5, $ed5e, $fcd7, $8868, $99e1, $ab7a, $baf3,
  $5285, $430c, $7197, $601e, $14a1, $0528, $37b3, $263a,
  $decd, $cf44, $fddf, $ec56, $98e9, $8960, $bbfb, $aa72,
  $6306, $728f, $4014, $519d, $2522, $34ab, $0630, $17b9,
  $ef4e, $fec7, $cc5c, $ddd5, $a96a, $b8e3, $8a78, $9bf1,
  $7387, $620e, $5095, $411c, $35a3, $242a, $16b1, $0738,
  $ffcf, $ee46, $dcdd, $cd54, $b9eb, $a862, $9af9, $8b70,
  $8408, $9581, $a71a, $b693, $c22c, $d3a5, $e13e, $f0b7,
  $0840, $19c9, $2b52, $3adb, $4e64, $5fed, $6d76, $7cff,
  $9489, $8500, $b79b, $a612, $d2ad, $c324, $f1bf, $e036,
  $18c1, $0948, $3bd3, $2a5a, $5ee5, $4f6c, $7df7, $6c7e,
  $a50a, $b483, $8618, $9791, $e32e, $f2a7, $c03c, $d1b5,
  $2942, $38cb, $0a50, $1bd9, $6f66, $7eef, $4c74, $5dfd,
  $b58b, $a402, $9699, $8710, $f3af, $e226, $d0bd, $c134,
  $39c3, $284a, $1ad1, $0b58, $7fe7, $6e6e, $5cf5, $4d7c,
  $c60c, $d785, $e51e, $f497, $8028, $91a1, $a33a, $b2b3,
  $4a44, $5bcd, $6956, $78df, $0c60, $1de9, $2f72, $3efb,
  $d68d, $c704, $f59f, $e416, $90a9, $8120, $b3bb, $a232,
  $5ac5, $4b4c, $79d7, $685e, $1ce1, $0d68, $3ff3, $2e7a,
  $e70e, $f687, $c41c, $d595, $a12a, $b0a3, $8238, $93b1,
  $6b46, $7acf, $4854, $59dd, $2d62, $3ceb, $0e70, $1ff9,
  $f78f, $e606, $d49d, $c514, $b1ab, $a022, $92b9, $8330,
  $7bc7, $6a4e, $58d5, $495c, $3de3, $2c6a, $1ef1, $0f78
);

function GetCRC16CCITT(S:string;len:integer):word;
var CRC: WORD;
    i: integer;
begin
  crc:=0;
  for i:=1 to Len do crc:=(crc shr 8) xor tables[(crc xor ord(s[i])) and $FF];
  result:=crc;
end;

procedure TBaseForm.aCRC16MKTCExecute(Sender: TObject);
var tmpS:String;
    CS:Word;
begin
  //��������� CRC16
   tmpS:=curProcStr;
//   tmpS:=Str2Bin(OutputBuf.Text);
   if tmpS='' then Exit;
   CS:=GetCRC16CCITT(tmpS,Length(tmpS));
   tmpS:=tmpS+chr(CS and $FF)+chr(CS shr 8);
  // OutputBuf.text:=Bin2Str(tmps);
   curProcStr:=tmps;
end;

procedure TBaseForm.MKTCBroadcastRequestClick(Sender: TObject);
begin
//
  case TerminalTypeGrp.ItemIndex of
  1:OutputBuf.Text:='$65 $45 $DA $03 $02 $00 $00 $00 $00 $00 $00 $00 $00 $00 $19 $59';
  2:OutputBuf.Text:='0x65 0x45 0xDA 0x03 0x02 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x19 0x59';
  3:OutputBuf.Text:='65 45 DA 03 02 00 00 00 00 00 00 00 00 00 19 59';
  end;

end;

procedure TBaseForm.Bluetooth_ConfigBtnClick(Sender: TObject);
begin
 try
  if nrBT1.DeviceCount>0 then
    nrBT1.ConfigDialog
  else begin
    toSystemLog('�� ������� Bluetooth ���������...');
    MessageDlg('�� ������� Bluetooth ���������...', mtError, [mbOk], 0);
  end;
 except
  on e:exception do
  begin
    toSystemLog('BT Error '+ e.Message);
    MessageDlg('������:'+e.Message, mtError, [mbOk], 0);
  end;
 end;
end;

procedure TBaseForm.nrBT1FatalError(Sender: TObject; ErrorCode,
  Detail: Cardinal; ErrorMsg: String; var RaiseException: Boolean);
begin
  toSystemLog('BT Error '+ ErrorMsg);
end;

procedure TBaseForm.nrBT1Connect(Sender: TObject);
begin
  toSystemLog('BT device is connected.');
  RefreshBluetoothState;
end;

procedure TBaseForm.nrBT1Disconnect(Sender: TObject);
begin
  toSystemLog('BT device is disconnected.');
  RefreshBluetoothState;
end;

procedure TBaseForm.Button2Click(Sender: TObject);
begin
  ApplyCheckBoxes;
  nrBT1.Update;
end;

procedure TBaseForm.ApplyCheckBoxes;
begin
  with nrBT1 do begin
    if chAuthenticated.Checked
      then DeviceEnum := DeviceEnum + [bteAuthenticated]
      else DeviceEnum := DeviceEnum - [bteAuthenticated];

    if chRemembered.Checked
      then DeviceEnum := DeviceEnum + [bteRemembered]
      else DeviceEnum := DeviceEnum - [bteRemembered];

    if chUnknown.Checked
      then DeviceEnum := DeviceEnum + [bteUnknown]
      else DeviceEnum := DeviceEnum - [bteUnknown];

    if chConnected.Checked
      then DeviceEnum := DeviceEnum + [bteConnected]
      else DeviceEnum := DeviceEnum - [bteConnected];

    if chInquiry.Checked
      then DeviceEnum := DeviceEnum + [bteIssueInquiry]
      else DeviceEnum := DeviceEnum - [bteIssueInquiry];

  end;
end;

procedure TBaseForm.Button3Click(Sender: TObject);
begin
  ApplyCheckBoxes;
  nrBT1.SelectDeviceDialog('Additional information',chForceAuth.Checked,chAddWiz.Checked,chSkipServices.Checked);
end;

procedure TBaseForm.FormShow(Sender: TObject);
begin
  with nrBT1 do begin
    chAuthenticated.Checked := bteAuthenticated in DeviceEnum;
    chRemembered.Checked    := bteRemembered in DeviceEnum;
    chUnknown.Checked       := bteUnknown in DeviceEnum;
    chConnected.Checked     := bteConnected in DeviceEnum;
    chInquiry.Checked       := bteIssueInquiry in DeviceEnum;
  end;
end;

procedure TBaseForm.nrBT1AfterReceive(Com: TObject; Buffer: Pointer;
  Received: Cardinal);
var buf:string;
begin
  setLength(buf,Received);
  copymemory(@buf[1],Buffer,Received);
  Received:=FReceived+Length(buf);
  SetStatusBar('����� ������ ['+IntToStr(Received)+' ����]',2);
  Copy2ClientInBuff(buf);
end;

procedure TBaseForm.ComPort1Error(Sender: TObject; Errors: TComErrors);
var s:string;
begin
//ceFrame, ceRxParity, ceOverrun, ceBreak, ceIO, ceMode, ceRxOver, ceTxFull
  s:='Errors:';
  if ceFrame in Errors then s:=s+' Frame';
  if ceRxParity in Errors then s:=s+' RxParity';
  if ceOverrun in Errors then s:=s+' Overrun';
  if ceBreak in Errors then s:=s+' Break';
  if ceIO in Errors then s:=s+' IO';
  if ceMode in Errors then s:=s+' Mode';
  if ceRxOver in Errors then s:=s+' RxOver';
  if ceTxFull in Errors then s:=s+' TxFull';
  SetStatusBar(s,0)
end;

procedure TBaseForm.CheckBox2Click(Sender: TObject);
begin
    if CheckBox2.Checked then
        Bluetooth_GrpBox.Height:=290
    else
        Bluetooth_GrpBox.Height:=134;

  Bluetooth_ParamBox.Visible:=CheckBox2.Checked;
end;

procedure TBaseForm.TBNBROKER_IPChange(Sender: TObject);
var i:integer;
    fnd:boolean;
begin
   fnd:=false;
   //������� - ���� �� ����� IP � ������
   for i:=0 to cbTBNBROKER_IP.Items.Count-1 do
      if cbTBNBROKER_IP.Items[i]=TBNBROKER_IP.Text then begin
         fnd:=true;
         break;
      end;
   //���� ��� - ���������
   if not fnd then
     cbTBNBROKER_IP.Items.Add(TBNBROKER_IP.Text);
end;

procedure TBaseForm.cbTBNBROKER_IPChange(Sender: TObject);
begin
  TBNBROKER_IP.Text:=cbTBNBROKER_IP.Text;
end;

procedure TBaseForm.UDPPort_IPChange(Sender: TObject);
var i:integer;
    fnd:boolean;
begin
   fnd:=false;
   //������� - ���� �� ����� IP � ������
   for i:=0 to cbUDPPort_IP.Items.Count-1 do
      if cbUDPPort_IP.Items[i]=UDPPort_IP.Text then begin
         fnd:=true;
         break;
      end;
   //���� ��� - ���������
   if not fnd then
     cbUDPPort_IP.Items.Add(UDPPort_IP.Text);
end;

procedure TBaseForm.cbUDPPort_IPChange(Sender: TObject);
begin
  UDPPort_IP.Text:=cbUDPPort_IP.Text;
end;

procedure TBaseForm.cbTCPPort_IPChange(Sender: TObject);
begin
  TCPPort_IP.Text:=cbTCPPort_IP.Text;
end;

procedure TBaseForm.TCPPort_IPChange(Sender: TObject);
var i:integer;
    fnd:boolean;
begin
   fnd:=false;
   //������� - ���� �� ����� IP � ������
   for i:=0 to cbTCPPort_IP.Items.Count-1 do
      if cbTCPPort_IP.Items[i]=TCPPort_IP.Text then begin
         fnd:=true;
         break;
      end;
   //���� ��� - ���������
   if not fnd then
     cbTCPPort_IP.Items.Add(TCPPort_IP.Text);
end;

procedure TBaseForm.TBNBROKER_IPKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    TBNBROKER_IPChange(Sender);
  end;
end;

procedure TBaseForm.TCPPort_IPKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    TCPPort_IPChange(Sender);
  end;
end;

procedure TBaseForm.UDPPort_IPKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    UDPPort_IPChange(Sender);
  end;
end;

procedure TBaseForm.aNO_CRCExecute(Sender: TObject);
begin
  //������ ���������
end;

procedure TBaseForm.xCS1BtnClick(Sender: TObject);
begin
  if btnCreateCRC.Down then
  begin
     curProcStr:=Str2Bin(OutputBuf.Text);
     aCS1Execute(nil);
     OutputBuf.Text:=Bin2Str(curProcStr);
  end
  else
    curProc:=aCS1Execute;
  SetUpcurProc(False);
end;

procedure TBaseForm.xCS2BtnClick(Sender: TObject);
begin
  if btnCreateCRC.Down then
  begin
     curProcStr:=Str2Bin(OutputBuf.Text);
     aCS2Execute(nil);
     OutputBuf.Text:=Bin2Str(curProcStr);
  end
  else
    curProc:=aCS2Execute;
  SetUpcurProc(False);
end;

procedure TBaseForm.xCRC16BtnClick(Sender: TObject);
begin
  if btnCreateCRC.Down then
  begin
     curProcStr:=Str2Bin(OutputBuf.Text);
     aCRC16Execute(nil);
     OutputBuf.Text:=Bin2Str(curProcStr);
  end
  else
    curProc:=aCRC16Execute;
  SetUpcurProc(False);
end;

procedure TBaseForm.xCRC16tBtnClick(Sender: TObject);
begin
  if btnCreateCRC.Down then
  begin
     curProcStr:=Str2Bin(OutputBuf.Text);
     aCRC16tExecute(nil);
     OutputBuf.Text:=Bin2Str(curProcStr);
  end
  else
    curProc:=aCRC16tExecute;
  SetUpcurProc(False);
end;

procedure TBaseForm.xCRC16MKTCBtnClick(Sender: TObject);
begin
  if btnCreateCRC.Down then
  begin
     curProcStr:=Str2Bin(OutputBuf.Text);
     aCRC16MKTCExecute(nil);
     OutputBuf.Text:=Bin2Str(curProcStr);
  end
  else
    curProc:=aCRC16MKTCExecute;
  SetUpcurProc(False);
end;

procedure TBaseForm.xCRC16CorallBtnClick(Sender: TObject);
begin
  if btnCreateCRC.Down then
  begin
     curProcStr:=Str2Bin(OutputBuf.Text);
     aCRC16CorallExecute(nil);
     OutputBuf.Text:=Bin2Str(curProcStr);
  end
  else
    curProc:=aCRC16CorallExecute;
  SetUpcurProc(False);
end;


procedure TBaseForm.xKM5CRCBtnClick(Sender: TObject);
begin
  if btnCreateCRC.Down then
  begin
     curProcStr:=Str2Bin(OutputBuf.Text);
     aKM5CRCExecute(nil);
     OutputBuf.Text:=Bin2Str(curProcStr);
  end
  else
    curProc:=aKM5CRCExecute;
  km5function.Enabled:=not btnCreateCRC.Down;
  SetUpcurProc(True);
end;

procedure TBaseForm.xSikonCRCBtnClick(Sender: TObject);
begin
  if btnCreateCRC.Down then
  begin
     curProcStr:=Str2Bin(OutputBuf.Text);
     aSikonCRCExecute(nil);
     OutputBuf.Text:=Bin2Str(curProcStr);
  end
  else
    curProc:=aSikonCRCExecute;
  SetUpcurProc(False);
end;

procedure TBaseForm.xCRC32BtnClick(Sender: TObject);
begin
  if btnCreateCRC.Down then
  begin
     curProcStr:=Str2Bin(OutputBuf.Text);
     aCRC32Execute(nil);
     OutputBuf.Text:=Bin2Str(curProcStr);
  end
  else
    curProc:=aCRC32Execute;
  SetUpcurProc(False);
end;

procedure TBaseForm.xNo_CRCBtnClick(Sender: TObject);
begin
  curProc:=aNo_CRCExecute;
  SetUpcurProc(False);
end;


procedure TBaseForm.EnableCRCBtn(AEnable:boolean);
begin
   xCRCLogikaBtn.Enabled:=AEnable;
   xNo_CRCBtn.Enabled:=AEnable;
   xKM5CRCBtn.Enabled:=AEnable;
   xCRC32Btn.Enabled:=AEnable;
   xSikonCRCBtn.Enabled:=AEnable;
   xCRC16MKTCBtn.Enabled:=AEnable;
   xCRC16tBtn.Enabled:=AEnable;
   xCRC16Btn.Enabled:=AEnable;
   xCRC16CorallBtn.Enabled:=AEnable;
   xCS2Btn.Enabled:=AEnable;
   xCS1Btn.Enabled:=AEnable;
   xCSN1Btn.Enabled:=AEnable;
   xCRCSprut100Btn.Enabled:=AEnable;
   xCRCMODBUSASCIIBtn.Enabled:=not AEnable;
end;


procedure TBaseForm.SetUpcurProc(km5Proc:boolean);
begin
  KM5Function.Enabled:=km5Proc and (not btnCreateCRC.Down);
end;

procedure TBaseForm.SetcurProc(const Value: TActionProcs);
begin
  FcurProc := Value;
end;

procedure TBaseForm.aKM5CRCX;
var tmpS:String;
    i:integer;
    CS:Word;
//��������� CRC ��� ��5
begin
 tmpS:=Str2Bin(OutputBuf.Text);
 if tmpS='' then Exit;
 CS:=GetKM5CRC(tmpS,Length(tmpS));
 tmpS:=tmpS+chr(CS and $FF)+chr(CS shr 8);
 OutputBuf.text:=Bin2Str(tmps);
end;


procedure TBaseForm.FillKM5Addr(F,SF:byte);
begin
  OutputBuf.Text:=Format('%.2X %.2X %.2X %.2X ',[((KM5NetAddr.Value)and $ff),
                                          ((KM5NetAddr.Value shr 8)and $ff),
                                          ((KM5NetAddr.Value shr 16)and $ff),
                                          ((KM5NetAddr.Value shr 24)and $ff)
                                          ]);
  OutputBuf.Text:=OutputBuf.Text+Format('%.2X %.2X 00 00 00 00 00 00 00 00',[F,SF]);
  if btnCreateCRC.Down then  aKM5CRCX();
end;

procedure TBaseForm.SetFunc(const Value: byte);
begin
  FFunc := Value;
end;

procedure TBaseForm.SetSubFunc(const Value: byte);
begin
  FSubFunc := Value;
end;

procedure TBaseForm.km5FunctionExecute(Sender: TObject);
var s:String;
begin
  //������ � ���������
  TerminalTypeGrp.ItemIndex:=3; //��������� � HEX
  s:=IntToStr(Func);
  if InputQuery('����� ������� ��5','���� �������',s) then
  begin
     Func:=StrToIntDef(s,0);
     s:=IntToStr(SubFunc);
     if InputQuery('����� ���������� ��5','���� ����������',s) then
     begin
      SubFunc:=StrToIntDef(s,0);
      FillKM5Addr(Func,SubFunc);
     end;
  end;
end;

procedure TBaseForm.cbWordWrapClick(Sender: TObject);
begin
  eInputBuf.WordWrap:=cbWordWrap.Checked;
  InputBuf.WordWrap:=cbWordWrap.Checked;
  WordWrapBtn.Down:=cbWordWrap.Checked;
end;

procedure TBaseForm.cbKSPD_IDChange(Sender: TObject);
begin
  KSPD_ID.Text:=cbKSPD_ID.Text;

end;

procedure TBaseForm.KSPD_IDKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    TBNBROKER_IPChange(Sender);
  end;
end;

procedure TBaseForm.KSPD_IDChange(Sender: TObject);
var i:integer;
    fnd:boolean;
begin
   fnd:=false;
   //������� - ���� �� ����� IP � ������
   for i:=0 to cbKSPD_ID.Items.Count-1 do
      if cbKSPD_ID.Items[i]=KSPD_ID.Text then begin
         fnd:=true;
         break;
      end;
   //���� ��� - ���������
   if not fnd then
     cbKSPD_ID.Items.Add(KSPD_ID.Text);
end;

procedure TBaseForm.btnCreateCRCClick(Sender: TObject);
begin
   if btnCreateCRC.Down then
   begin
    curProc:=aNo_CRCExecute;
    xNo_CRCBtn.Down:=True;
    xNo_CRCBtn.Style:=tbsButton;
    xCS1Btn.Style:=tbsButton;xCS1Btn.Down:=False;
    xCSN1Btn.Style:=tbsButton;xCSN1Btn.Down:=False;
    xCS2Btn.Style:=tbsButton;xCS2Btn.Down:=False;
    xCRC16Btn.Style:=tbsButton;xCRC16Btn.Down:=False;
    xCRC16CorallBtn.Style:=tbsButton;xCRC16CorallBtn.Down:=False;
    xCRC16tBtn.Style:=tbsButton;xCRC16tBtn.Down:=False;
    xCRC16MKTCBtn.Style:=tbsButton;xCRC16MKTCBtn.Down:=False;
    xKM5CRCBtn.Style:=tbsButton;xKM5CRCBtn.Down:=False;
    xSikonCRCBtn.Style:=tbsButton;xSikonCRCBtn.Down:=False;
    xCRC32Btn.Style:=tbsButton;xCRC32Btn.Down:=False;
    xCRCLogikaBtn.Style:=tbsButton;xCRCLogikaBtn.Down:=False;
    xCRCSprut100Btn.Style:=tbsButton;xCRCSprut100Btn.Down:=False;
    xCRCMODBUSASCIIBtn.Style:=tbsButton;xCRCMODBUSASCIIBtn.Down:=False;

   end
   else begin
    xNo_CRCBtn.Down:=True;
    xNo_CRCBtn.Style:=tbsCheck;
    xCS1Btn.Style:=tbsCheck;
    xCSN1Btn.Style:=tbsCheck;
    xCS2Btn.Style:=tbsCheck;
    xCRC16Btn.Style:=tbsCheck;
    xCRC16CorallBtn.Style:=tbsCheck;
    xCRC16tBtn.Style:=tbsCheck;
    xCRC16MKTCBtn.Style:=tbsCheck;
    xKM5CRCBtn.Style:=tbsCheck;
    xSikonCRCBtn.Style:=tbsCheck;
    xCRC32Btn.Style:=tbsCheck;
    xCRCLogikaBtn.Style:=tbsCheck;
    xCRCSprut100Btn.Style:=tbsCheck;
    xCRCMODBUSASCIIBtn.Style:=tbsCheck;
   end;
   SetUpcurProc(False);
end;

procedure TBaseForm.aFileSaveAsExecute(Sender: TObject);
begin
  aFileSaveExecute(nil);
end;

procedure TBaseForm.aSaveToHistoryExecute(Sender: TObject);
var NewFileName:String;
begin
 DateTimeToString(NewFileName, 'yymmddhhnnss', Now);
 if exInputBuffChk.Checked then
 begin
   if eInputBuf.Lines.Count>0 then
        eInputBuf.Lines.SaveToFile(getcurrentdir+'\history\'+NewFileName+'.txt');
   if Not Assigned(Sender) then
        eInputBuf.Clear;

 end
 else begin
   if InputBuf.Lines.Count>0 then
        InputBuf.Lines.SaveToFile(getcurrentdir+'\history\'+NewFileName+'.txt');
   if Not Assigned(Sender) then
        InputBuf.Clear;
 end;
end;

procedure TBaseForm.DoReplaceText(Sender: TObject);
var
  rOptions: TSynSearchOptions;
  sSearch: string;
begin
  sSearch := ReplaceDialog1.FindText;
  if Length(sSearch) = 0 then begin
    Beep;
    lblSearchResult.Caption := 'Can''t replace an empty text!';
    lblSearchResult.Visible := TRUE;
  end else begin
    rOptions := [ssoReplace];
    if frMatchCase in ReplaceDialog1.Options then
      Include(rOptions, ssoMatchCase);
    if frWholeWord in ReplaceDialog1.Options then
      Include(rOptions, ssoWholeWord);
    if frReplaceAll in ReplaceDialog1.Options then
      Include(rOptions, ssoReplaceAll);
    if eInputBuf.SearchReplace(sSearch, ReplaceDialog1.ReplaceText, rOptions) = 0
    then begin
      Beep;
      lblSearchResult.Caption := 'SearchText ''' + sSearch +
        ''' could not be replaced!';
      lblSearchResult.Visible := TRUE;
    end else
      lblSearchResult.Visible := FALSE;
  end;
end;

procedure TBaseForm.aEditOptionsExecute(Sender: TObject);
begin
  InputBufCnt.Assign(eInputBuf);
  if SynEditOptionsDialog1.Execute(InputBufCnt) then
     InputBufCnt.AssignTo(eInputBuf);
end;

procedure TBaseForm.aEditDopSetUpExecute(Sender: TObject);
begin
  if aEditDopSetUp.Checked then
     if Width<800 then  Width:=800;

  SetUpPanel.Visible:=aEditDopSetUp.Checked;
  Splitter1.Visible :=aEditDopSetUp.Checked;
end;

procedure TBaseForm.ComPort1CTSChange(Sender: TObject; OnOff: Boolean);
begin
  try
  ledCTS.Lighted:=OnOff;
  except
  end;
end;

procedure TBaseForm.ComPort1DSRChange(Sender: TObject; OnOff: Boolean);
begin
  try
  ledDSR.Lighted:=OnOff;
  except
  end;

end;

procedure TBaseForm.ComPort1Ring(Sender: TObject);
begin
  try
  ledRING.Lighted:=True;
  except
  end;
end;

procedure TBaseForm.ComPort1PrepareClose;
begin
  ledRING.Lighted:=False;
  ledDSR.Lighted:=False;
  ledCTS.Lighted:=False;
  RTS.Enabled:=ComPort1Connected;
  DTR.Enabled:=ComPort1Connected;
  aPortClose.Enabled:=False;
  aPortOpen.Enabled:=True;

end;


procedure TBaseForm.ComPort1AfterClose(Sender: TObject);
begin
  try
  ComPort1PrepareClose;
  ComPort1.Free;
  finally
    ComPort1:=nil;
  end;
end;


procedure TBaseForm.SpecSymbolsCheck;
begin
  chkSpecialChars.Enabled:=TerminalTypeGrp.ItemIndex=0;
  xcharsBtn.Enabled:=chkSpecialChars.Enabled;
  if TerminalTypeGrp.ItemIndex>0 then chkSpecialChars.Checked:=False;
end;

procedure TBaseForm.HexBtnClick(Sender: TObject);
var s:String;
begin
  try
  if HexBtn.Down then
     TerminalTypeGrp.ItemIndex:=3//HEX
  else begin
     TerminalTypeGrp.ItemIndex:=0;//ASCII
     btnCreateCRC.Down:=true;
     btnCreateCRCClick(Sender);
     //xCRCMODBUSASCIIBtn
  end;
  gbKM5.Visible:=HexBtn.Down;
  if (TerminalTypeGrp.ItemIndex=0) then
  begin
    //ASCII
    //���� ������������� HEx �������� � ASCII
    if Length(AutoIncMaskEdt.Text)>1 then
       AutoIncMaskEdt.Text:=Char(StrToInt('$'+AutoIncMaskEdt.Text));
  end
  else begin
    //HEX
    //���� ������������� ASCII �������� � HEX
    s:=AutoIncMaskEdt.Text;
    if s<>'' then
      AutoIncMaskEdt.Text:=Format('%.2x',[Ord(s[1])]);
  end;
  SpecSymbolsCheck;
  except
  end;
end;

procedure TBaseForm.cbKM5NetAddrChange(Sender: TObject);
begin
 KM5NetAddr.Value:=StrToInt('$'+cbKM5NetAddr.Text);
end;

procedure TBaseForm.KM5NetAddrKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
     KM5NetAddrChange(Sender);
  end;
end;

procedure TBaseForm.KM5NetAddrChange(Sender: TObject);
var i:integer;
    fnd:boolean;
    s:String;
begin
     fnd:=false;
     s:=IntToHex(KM5NetAddr.value,8);
     //������� - ���� �� ����� IP � ������
     for i:=0 to cbKM5NetAddr.Items.Count-1 do
        if cbKM5NetAddr.Items[i]=s then begin
           fnd:=true;
           break;
        end;
     //���� ��� - ���������
     if not fnd then
       cbKM5NetAddr.Items.Add(s);
     FillKM5Addr(Func,SubFunc);
end;

procedure TBaseForm.aCutExecute(Sender: TObject);
begin
    if exInputBuffChk.Checked then
      eInputBuf.CutToClipboard
    else
      InputBuf.CutToClipboard;
    aPaste.Enabled:=True;
end;

procedure TBaseForm.aCopyExecute(Sender: TObject);
begin
    if exInputBuffChk.Checked then
      eInputBuf.CopyToClipboard
    else
      InputBuf.CopyToClipboard;
    aPaste.Enabled:=True;
end;

procedure TBaseForm.aPasteExecute(Sender: TObject);
begin
    if exInputBuffChk.Checked then
      eInputBuf.PasteFromClipboard
    else
      InputBuf.PasteFromClipboard;
end;

procedure TBaseForm.serveractiveClick(Sender: TObject);
procedure DestroyServer();
begin
  if Assigned(ServerSocket) then
  begin
     ServerSocket.Free;
     ServerSocket:=nil;
  end;
end;
begin
  try
    if serveractive.Checked then
    begin
      DestroyServer();
      //������� ������
      ServerSocket:=TidTCPServer.Create(self);
      if Assigned(ServerSocket) then
      begin
      if ServerSocket.Active then ServerStateLab.caption:='�����'
      else ServerStateLab.caption:='��������';
      end
      else
        ServerStateLab.caption:='������ ��������';
    end
    else begin
      //��������� ������
      DestroyServer();
      ServerStateLab.caption:='��������';
    end;
    ServerPortEdt.Enabled:=not serveractive.Checked;
  except
    on e:exception do
    begin
     ServerStateLab.caption:='������:'+e.Message;
     serveractive.OnClick:=nil;
     serveractive.Checked:=false;
     serveractive.OnClick:=serveractiveClick;
    end;
  end;
end;

procedure TBaseForm.ServerSocket1ClientRead(Sender: TObject;
  Socket: TCustomWinSocket);
  var s:String;
begin
end;

procedure TBaseForm.xCRCLogikaBtnClick(Sender: TObject);
begin
  if btnCreateCRC.Down then
  begin
     curProcStr:=Str2Bin(OutputBuf.Text);
     aCRCLogikaExecute(nil);
     OutputBuf.Text:=Bin2Str(curProcStr);
  end
  else
    curProc:=aCRCLogikaExecute;
  SetUpcurProc(False);
end;




Function GetCRCLogika(S: String) : Word;
Var
  CRC: Word;
  i,j,len: Byte;

begin
  CRC := 0;
  for i:= 2 to length(S) do
   begin
    CRC := (CRC xor (ord(S[i]) shl 8));
    For j:=0 to 7 do
      if ((CRC and $8000) <> 0) then
        CRC := ((CRC shl 1) xor $1021)
      else
        CRC := (CRC shl 1)
   end;
  Result:=CRC;
end;

procedure AddByteToCRCSprut100(b:Byte;var CRC: Word);
var bit : array[0..7] of byte;
    i  : integer;
    xr : boolean;
begin
for i:= 7 downto 0 do //��� ������� ���� ������������� �����, ������� �� ��������
    begin
    bit[i]:=Round(Exp(i*Ln(2))); // ����� ������������ �������� i-�� ���� ������������� �����
    bit[i]:=bit[i] and b;        // � ���������� �������� 0 ��� 1 i-�� ��������
    if bit[i]>0
       then bit[i]:=1  //  �������  bit
       else bit[i]:=0;
    if CRC >= $8000         //���� ������� ��� ����� 1
      then begin                // ��
           CRC:=CRC-$8000; //�������� ������� ���, ������ �������
           xr:=True;       //��� �� ��� ����� 1
           end
      else xr := False;

    CRC:=CRC*2+bit[i];  //�������� ���� �����, � ������� ��� CRC - ��� �� ������������� �����
    if xr then CRC:=CRC xor $1021;    //���� ������� ��� ��� ����� 1 - ������ xor
    end;
end;


Function GetCRCSprut100(S: String) : Word;
Var
  CRC: Word;
  i: integer;

begin
  CRC := 0;
  for i:= 1 to length(S) do
     AddByteToCRCSprut100(ord(S[i]),CRC);
  Result:=CRC;
end;

procedure TBaseForm.aCRCLogikaExecute(Sender: TObject);
var tmpS:String;
    CS:Word;
begin
//��������� CRC16
 //tmpS:=Str2Bin(OutputBuf.Text);
 tmpS:=curProcStr;
 if tmpS='' then Exit;
 CS:=GetCRCLogika(tmpS);
 tmpS:=tmpS+chr(CS shr 8)+chr(CS and $FF);
 curProcStr:=tmps;
  //OutputBuf.text:=Bin2Str(tmps);
end;

procedure TBaseForm.ServerSocket1Connect(AThread: TIdPeerThread);
var i,j: integer;
    con2: boolean;
begin
  j:=maxclient;
  con2:=false;
  for i:=1 to j do
   begin // ���� ������ ������
     if not Assigned(opc_socket[i]) then
      begin
        if i>=bigkl then
         begin
           bigkl:=i;
           tbigkl:=now;
         end;
        opc_socket[i]:=AThread;
        opc_socket[i].Data:=Pointer(i);
        opc_lasttime[i]:=GetTickCount;
        con2:=true;
        SetStatusBar('��������� ������ '+IntToStr(i),cServerPanelIdx);
        break;
      end;
   end; // for
  if not con2 then
   begin
     SetStatusBar('������� ����� �����������',cServerPanelIdx);
     AThread.Connection.Disconnect;
   end;
end;

procedure TBaseForm.ServerSocket1Disconnect(AThread: TIdPeerThread);
var i,j: dword;
    s: string;
    fnd: boolean;
begin
  s:='�������� ������ ';
  fnd:=false;
// �������� ������
  if AThread.Data<>Nil then
   begin
     i:=DWORD(AThread.Data);
     if (i<=maxclient) and (opc_socket[i]=AThread) then
      begin
        AThread.Data:=Nil;
        opc_socket[i]:=Nil;
        opc_lasttime[i]:=0;
        SetStatusBar(s+' '+InttoStr(i),cServerPanelIdx);
        exit;
      end
   end;
// ����� �� �������� � ���������� �� ������
  j:=maxclient;
  for i:=1 to j do
   begin
     if opc_socket[i]=AThread then
      begin
        AThread.Data:=Nil;
        opc_socket[i]:=Nil;
        opc_lasttime[i]:=0;
        fnd:=true;
        SetStatusBar(s+'_'+InttoStr(i),cServerPanelIdx);
        break;
      end;
   end;
  if not fnd then SetStatusBar(s,cServerPanelIdx);
end;

procedure TBaseForm.ServerSocket1Exception(AThread: TIdPeerThread;
  AException: Exception);
begin
 SetStatusBar('����������:'+AException.Message,cServerPanelIdx);
end;

procedure TBaseForm.ServerSocket1Execute(AThread: TIdPeerThread);
var s,s1,snumopc: string;
    buf: array[0..2047] of byte;
    buferror: array[0..11] of byte;
    bufstatist: array[0..12] of byte;
    i,j,k: integer;
    id_gprs,id1,gtk,timeout: DWORD;
    tmpbuf: array of byte;

begin
  //������� �����
  s:=AThread.Connection.CurrentReadBuffer;
  i:=length(s);
  if i>0 then begin
     gtk:=GetTickCount;
     if Assigned(AThread.Data) then
      begin
        k:=DWORD(AThread.Data);
        if (k>0) and (k<=maxclient) then opc_lasttime[k]:=gtk else k:=0;
      end else k:=0;
     SetStatusBar('������ �� ������� '+IntToStr(k)+' ['+Inttostr(i)+' ����]',cServerPanelIdx);
     Copy3InBuff(s);
(*     if not aPortOpen.Enabled then
        //���� ���� �����������
        OutBinToClient(S);*)
  end;
end;

//  opc_socket: array[1..ClientMax] of TIdPeerThread;
//  opc_lasttime: array[1..ClientMax] of DWORD;
//���� �������� �������, ������� ������ ������ � ���
function TBaseForm.GetLastClientIdx:integer;
var i:integer;
    last_time:DWORD;
begin
   result:=0;
   last_time:=0;
   for i:=1 to maxclient do
   begin
     if opc_lasttime[i]>last_time then
     begin
       last_time:=opc_lasttime[i];
       result:=i;
     end;
   end;
end;

procedure TBaseForm.OutBinToTCPServer(s:string;aFrom:byte);
var i,len:integer;
    buf: array[0..2047] of byte;
begin
   if serveractive.Checked then
   begin
       i:=LastCliemtIdx;
       FromLastToTCPServer:=TCONSOLEADDR(aFrom);
       try
         if (i>0) and (i<=maxclient) and Assigned(opc_socket[i]) and Assigned(opc_socket[i].Connection) then
         begin
            len:=Length(s);
            IncStatistics_O(ord(cadrTCPSERVER),len);
            copymemory(@buf[0],@s[1],len);
            opc_socket[i].Connection.WriteBuffer(buf,len);
            SetStatusBar('TCPSERVER >> CLIENT['+IntToStr(i)+'] ('+IntToStr(len)+') ����',cServerPanelIdx);
         end;
       except
         on e:exception do
            SetStatusBar('TCPSERVER:������ �������� ������ ������� '+IntToStr(i)+':'+e.Message,cServerPanelIdx);
       end;
   end;
end;

procedure TBaseForm.OutBinToVKSPD(s:string;aFrom:byte);
var len:integer;
begin
   if chkBroker_KSPD.Checked then
   begin
     //���������� �� ������, ��� ����� �� ������������ ����
     len:=Length(s);
     IncStatistics_O(ord(cadrVKSPD),len+12);
     FromLastToVKSPD:=TCONSOLEADDR(aFrom);
     SetStatusBar('VKSPD >> CLIENT of BROKER('+IntToStr(Len)+') ����',cServerPanelIdx);
     StrToKSPDBroker(s);
   end;
end;

procedure TBaseForm.OutBinToVCOM(s:string;aFrom:byte);
var len:integer;
    buf: array[0..2047] of byte;
begin
   if chkVirtualComPort.Checked then
   begin
     //���������� � ����������� ����
     FromLastToVCOM:=TCONSOLEADDR(aFrom);
     Len:=Length(s);
     IncStatistics_O(ord(cadrVCOM),len);
     copymemory(@buf[0],@s[1],len);
     if VP.IsOpened then
     begin
        SetStatusBar('VCOM >> CLIENT '+VirtualComPort_Number.Text+' ('+IntToStr(Len)+')  ����',cServerPanelIdx);
        VP.Write(buf[0],Len);
     end
     else begin
        SetStatusBar('VCOM >> FREE '+VirtualComPort_Number.Text+' not opened ('+IntToStr(Len)+')  ����',cServerPanelIdx);
     end;
   end;
end;

procedure TBaseForm.SendDataToClient(s:String; APort:integer);
var i:longword;
begin
   i:=getTickCount+DopNastroyki_TimeOut.Value;
   //���� ������������ �������
   while ((FromLastToClient<>cadrFREE)and(ord(FromLastToClient)<>APort)) do
   begin
     if GetTickCount>i then break;
     if Terminated then break;
     Application.ProcessMessages;
     sleep(1);
   end;

   //���� ������ � �������� ���� �������
   OutBinToClient(S,aPort);

   case TCONSOLEADDR(APort) of
   cadrTCPSERVER: begin
     //���� ������� ����������� ���� - ���������� ������ � ����������� ����
     if FromLastToTCPServer=cadrVKSPD then
        OutBinToVKSPD(s,aPort);

     //���� ������� ����������� COM - ���������� ������ � ����������� COM
     if FromLastToTCPServer=cadrVCOM then
       OutBinToVCOM(s,aPort);
    end;
   cadrVKSPD: begin
     //���� ������� ������� ��� �� ������� ��� � ������� ������ ��� - ���������� ������ � ������
     if FromLastToVKSPD=cadrTCPSERVER then
        OutBinToTCPServer(s,aPort);

     //���� ������� ����������� COM - ���������� ������ � ����������� COM
     if FromLastToVKSPD=cadrVCOM then
       OutBinToVCOM(s,aPort);
    end;

   cadrVCOM: begin
     //���� ������� ������� ��� �� ������� ��� � ������� ������ ��� - ���������� ������ � ������
     if FromLastToVCOM=cadrTCPSERVER then
        OutBinToTCPServer(s,aPort);

     //���� ������� ����������� ���� - ���������� ������ � ����������� ����
     if FromLastToVCOM=cadrVKSPD then
        OutBinToVKSPD(s,aPort);
    end;
   end;

end;


procedure TBaseForm.SendDataFromClient(s:String; APort:integer);
begin
   //����������� ������� �������� ������ � �������
   IncStatistics_I(ord(cadrCLIENT),Length(s));

   //������� ������ � ������������ ����
   DataToTerminalWindow(s,APort);

   //���� ������� ������� ��� �� ������� ��� � ������� ������ ��� - ���������� ������ � ������
   if (FromLastToClient=cadrTCPSERVER) then
      OutBinToTCPServer(s,aPort);

   //���� ������� ����������� ���� - ���������� ������ � ����������� ����
   if FromLastToClient=cadrVKSPD then
      OutBinToVKSPD(s,aPort);

   //���� ������� ����������� COM - ���������� ������ � ����������� COM
   if FromLastToClient=cadrVCOM then
     OutBinToVCOM(s,aPort);

//   FromLastToClient:=caFREE;
end;



procedure TBaseForm.aBottomPnlExecute(Sender: TObject);
begin
  if BottonPanelBtn.Down then
  begin
     Panel9.Visible:=True;
  end
  else begin
//     RestoredTopOfPanel3:=Panel3.Height;
     Panel9.Visible:=False;//Height:=0;
  end;
  BottomPnl.Visible:=Panel9.Visible;
end;

procedure TBaseForm.SystemMemoChange(Sender: TObject);
var i:integer;
    s,tmpS:String;
    val1,val2,val3,val4:integer;
    dt:TDateTime;
begin
 if chkLimit.Checked then
 if SystemMemo.Lines.Count>LimitEdt.Value then
 begin
    for i:=1 to (LimitEdt.Value div 100) do
       SystemMemo.Lines.Delete(0);
 end;

end;

procedure TBaseForm.OutputBufChange(Sender: TObject);
begin
  AddBtn.Enabled:=OutputBuf.Text<>'';
  SaveOutBuffToMacroBtn.Enabled:=AddBtn.Enabled;
//  OutputBuf.Items.Assign(mListOfCommands.Lines);
end;

procedure TBaseForm.Broker_KSPD_IPChange(Sender: TObject);
var i:integer;
    fnd:boolean;
begin
   fnd:=false;
   //������� - ���� �� ����� IP � ������
   for i:=0 to cbBroker_KSPD_IP.Items.Count-1 do
      if cbBroker_KSPD_IP.Items[i]=Broker_KSPD_IP.Text then begin
         fnd:=true;
         break;
      end;
   //���� ��� - ���������
   if not fnd then
     cbBroker_KSPD_IP.Items.Add(Broker_KSPD_IP.Text);
end;

procedure TBaseForm.Broker_KSPD_IPKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Broker_KSPD_IPChange(Sender);
  end;
end;

procedure TBaseForm.cbBroker_KSPD_IPChange(Sender: TObject);
begin
  Broker_KSPD_IP.Text:=cbBroker_KSPD_IP.Text;
end;

procedure TBaseForm.chkBroker_KSPDClick(Sender: TObject);
begin
   if chkBroker_KSPD.Checked then
     CreateKSPDTCPClient
   else begin
     DestroyKSPDTCPClient;
   end;
end;

procedure TBaseForm.SetKSPDConnected(const Value: boolean);
begin
  FKSPDConnected := Value;
end;

procedure TBaseForm.SetKSPDRegistered(const Value: boolean);
begin
  FKSPDRegistered := Value;
end;

procedure TBaseForm.SetKSPDInBuff(const Value: String);
begin
  FKSPDInBuff := Value;
end;

function TBaseForm.GetBroker_KSPD_State: String;
begin
  result:=Broker_KSPD_State.Caption;
end;

procedure TBaseForm.SetBroker_KSPD_State(const Value: String);
begin
  Broker_KSPD_State.Caption:=Value;
  Broker_KSPD_State.Hint:=Value;
  SetStatusBar(Value,1);
end;

procedure TBaseForm.SetKSPDCurByteTick(const Value: longword);
begin
  FKSPDCurByteTick := Value;
end;

procedure TBaseForm.SetKSPDDataReceived(const Value: boolean);
begin
  FKSPDDataReceived := Value;
end;

procedure TBaseForm.KSPDDataTimerTimer(Sender: TObject);
begin
  if KSPDCurByteTick>0 then
  begin
       KSPDCurByteTick:=KSPDCurByteTick-1;
       if KSPDCurByteTick=0 then
       begin
         KSPDDataTimer.Enabled:=False;
         Application.ProcessMessages;
         sleep(1);
         KSPDDataReceived:=True;
         KSPDResponceToLog;
       end
       else
         KSPDDataTimer.Enabled:=True;
  end;
  if (KSPDCurByteTick=0)then begin
    KSPDDataTimer.Tag:=4;
    SetStatusBar(mel[KSPDDataTimer.Tag],7);
    KSPDDataTimer.Enabled:=False;
  end
  else
     KSPDDataTimer.Tag:=(KSPDDataTimer.Tag+1) mod 4;
  SetStatusBar(mel[KSPDDataTimer.Tag],5);

end;

function TBaseForm.Get42_2Answer: String;
var WritelnStr:String;
    DateTime_Val:STRING[17];                    //������� ���� � �����
    day,Month,year,hour,minute,second,msec:word;
begin
   //DisableInts;
   //������ ��������� ���������� ������ �� ������
   decodedatetime(now,year,month,day,hour,minute,second,msec);
   year:=year-2000;
   DateTime_Val:='00.00.00_00:00:00';
   DateTime_Val[1]:=char((Day div 10)+ord('0'));
   DateTime_Val[2]:=char((Day mod 10)+ord('0'));
   DateTime_Val[4]:=char((Month div 10)+ord('0'));
   DateTime_Val[5]:=char((Month mod 10)+ord('0'));
   DateTime_Val[7]:=char((year div 10)+ord('0'));
   DateTime_Val[8]:=char((year mod 10)+ord('0'));
   DateTime_Val[10]:=char((hour div 10)+ord('0'));
   DateTime_Val[11]:=char((hour mod 10)+ord('0'));
   DateTime_Val[13]:=char((minute div 10)+ord('0'));
   DateTime_Val[14]:=char((minute mod 10)+ord('0'));
   DateTime_Val[16]:=char((second div 10)+ord('0'));
   DateTime_Val[17]:=char((second mod 10)+ord('0'));
   //Qisda_M33G MODEM_ONLINE[0h_0m_4s][1] 62.181.46.5:10003 "MTS-RUS" mts/mts/internet.mts.ru  I(6,2,0,1)K O(0,0,0,0)K ?��� "KSPD-5 V1.83 from 11.09.09" 24.06.10_10:02:44 start=8h_stop=25h 20 0000
   //EW-Port B_#73Tw[1h_52m_53s][19]: I(0,0,2,0)K O(0,0,3,0)K ***��� "V3.15 from 30.05.14" 09.06.14_18:23:12 start=0h_stop=25h {��_������_2} 31 1111
   //Term2006 B_#01Tw[0h_0m_23s][1]: I(0,0,0,0)K O(0,0,0,0)K  "v1.14.06.05 05.06.14" 09.06.14_17:24:20 start=0h_stop=25h 31 0000'
   //Term2006 B_#01Tw[0h_21m_55s][1]: I(0,0,0,0)K O(0,0,0,0)K "v1.14 from 05.06.14" 09.06.14_17:49:52 start=0h_stop=25h  {192.168.0.146 } 31 0000'
   WritelnStr:=' Term2006 B_#01Tw[';
   if ONLINEDAYS>0 then
      WritelnStr:=WritelnStr+intToStr(ONLINEDAYS)+'d_';
   WritelnStr:=WritelnStr+IntToStr(ONLINEHOUR)+'h_';
   WritelnStr:=WritelnStr+IntToStr(ONLINEMin)+'m_';
   WritelnStr:=WritelnStr+IntToStr(ONLINESEK)+'s][1]:';
   WritelnStr:=WritelnStr+Format(' I(%d,%d,%d,%d)K O(%d,%d,%d,%d)K  ?��� "',[
   CLI_I_Edt.Tag div 1024,
   TCP_I_Edt.Tag div 1024,
   KSPD_I_Edt.Tag div 1024,
   VCOM_I_Edt.Tag div 1024,
   CLI_O_Edt.Tag div 1024,
   TCP_O_Edt.Tag div 1024,
   KSPD_O_Edt.Tag div 1024,
   VCOM_O_Edt.Tag div 1024])+cCurVer+'" '+DateTime_Val+' start=0h_stop=25h';
   if CommentsEdt.Text<>'' then
     WritelnStr:=WritelnStr+' {IP:'+GetIPAddress(FComputerName)+'_('+CommentsEdt.Text+')} '
   else
     WritelnStr:=WritelnStr+' {IP:'+GetIPAddress(FComputerName)+'} ';
   WritelnStr:=WritelnStr+'31 1111';
   result:=WritelnStr;
end;

procedure TBaseForm.SecondTimerTimer(Sender: TObject);
begin
    Inc(ONLINESEK);
    if ONLINESEK>59 then
    begin
          ONLINESEK:=0;
          Inc(ONLINEmin);
          if ONLINEmin>59 then
          begin
             ONLINEmin:=0;
             Inc(ONLINEHOUR);
             if ONLINEHOUR>23 then
             begin
                ONLINEHOUR:=0;
                Inc(ONLINEDAYS);
             end;
          end;
    end;
    if KSPDConnected then
    begin
      if KSPDRegistered then begin
         if (remainPTESTBRK>0) then
            dec(remainPTESTBRK)
         else begin
            KSPDRegistration;
         end;
      end;
    end
    else begin
      if Assigned(chkBroker_KSPD) then
        if chkBroker_KSPD.Checked then CreateKSPDTCPClient;
    end;
    if not PortConnected then
    begin
      VCOMDataTimer.Enabled:=False;
      TCPDataTimer.Enabled:=False;
      KSPDDataTimer.Enabled:=False;
      ClientDataTimer.Enabled:=False;
    end;

end;

procedure TBaseForm.SetPWD(const Value: String);
begin
  FPWD := Value;
end;

procedure TBaseForm.chkHideToTrayClick(Sender: TObject);
begin
  Tray.HideOnMinimize:=chkHideToTray.Checked;
  Tray.Enabled:=chkHideToTray.Checked;
end;

procedure TBaseForm.TimerOffLedTimer(Sender: TObject);
begin
    Tray.IconIndex:=0;
    TimerOffLed.Enabled:=False;
end;

procedure TBaseForm.SetReceived(const Value: longword);
begin
  FReceived := Value;
end;

procedure TBaseForm.SetSended(const Value: longword);
begin
  FSended := Value;
end;


procedure TBaseForm.CorrectTray;
begin
  Tray.Hint:='Term2006'+#13+#10+
             'F:'+FirstStateString+#13+#10+
             'S:'+SecondStateString+#13+#10;
  if SecondStateString='' then
     Application.Title:='Term2006:'+FirstStateString
  else
     Application.Title:='Term2006 ������:'+FirstStateString+' ������:'+SecondStateString;
end;

procedure TBaseForm.SetFirsActivate(const Value: boolean);
begin
  FFirsActivate := Value;
end;

procedure TBaseForm.aClearStatisticExecute(Sender: TObject);
begin
  Sended := 0;
  Received := 0;
end;

procedure TBaseForm.CommentsEdtChange(Sender: TObject);
var i:integer;
    s:string;
begin
    CommentsEdt.OnChange:=nil;
    s:=CommentsEdt.Text;
    for i:=1 to Length(s) do
    begin
      if s[i] = ' ' then s[i]:='_'
      else if s[i] = 'V' then s[i]:='v';
    end;
    CommentsEdt.Text:=s;
    CommentsEdt.OnChange:=CommentsEdtChange;
end;

procedure TBaseForm.SetPTESTBRK(const Value: integer);
begin
  FPTESTBRK := Value;
  SecondTimer.tag:=FPTESTBRK;
end;

function TBaseForm.MyExitWindows(RebootParam: Longword): Boolean;
var
  TTokenHd: THandle;
  TTokenPvg: TTokenPrivileges;
  cbtpPrevious: DWORD;
  rTTokenPvg: TTokenPrivileges;
  pcbtpPreviousRequired: DWORD;
  tpResult: Boolean;
const
  SE_SHUTDOWN_NAME = 'SeShutdownPrivilege';
begin
  if Win32Platform = VER_PLATFORM_WIN32_NT then
  begin
    tpResult := OpenProcessToken(GetCurrentProcess(),
      TOKEN_ADJUST_PRIVILEGES or TOKEN_QUERY,
      TTokenHd);
    if tpResult then
    begin
      tpResult := LookupPrivilegeValue(nil,
                                       SE_SHUTDOWN_NAME,
                                       TTokenPvg.Privileges[0].Luid);
      TTokenPvg.PrivilegeCount := 1;  
      TTokenPvg.Privileges[0].Attributes := SE_PRIVILEGE_ENABLED;  
      cbtpPrevious := SizeOf(rTTokenPvg);  
      pcbtpPreviousRequired := 0;  
      if tpResult then  
        Windows.AdjustTokenPrivileges(TTokenHd,  
                                      False,  
                                      TTokenPvg,  
                                      cbtpPrevious, 
                                      rTTokenPvg, 
                                      pcbtpPreviousRequired); 
    end; 
  end; 
  Result := ExitWindowsEx(RebootParam, 0);
end;

function TBaseForm.GetWinVersion: string;
var
  VersionInfo: TOSVersionInfo;
  OSName: string;
begin
  // ????????????? ?????? ??????
  VersionInfo.dwOSVersionInfoSize := SizeOf( TOSVersionInfo );
  if Windows.GetVersionEx( VersionInfo ) then
  begin
    with VersionInfo do
    begin
      case dwPlatformId of
        VER_PLATFORM_WIN32s: OSName := 'Win32s';
        VER_PLATFORM_WIN32_WINDOWS: OSName := 'Windows 95';
        VER_PLATFORM_WIN32_NT: OSName := 'Windows NT';
      end; // case dwPlatformId
      Result := OSName + ' Version ' + IntToStr( dwMajorVersion ) + '.' + IntToStr( dwMinorVersion ) +
      #13#10' (Build ' + IntToStr( dwBuildNumber ) + ': ' + szCSDVersion + ')';
    end; // with VersionInfo
  end // if GetVersionEx
  else
  Result := '';
end;

procedure TBaseForm.ShutDown;
const
  SE_SHUTDOWN_NAME = 'SeShutdownPrivilege'; // Borland forgot this declaration
var
  hToken: THandle;
  tkp: TTokenPrivileges;
  tkpo: TTokenPrivileges;
  zero: DWORD;
begin
  if Pos('Windows NT', GetWinVersion) = 1 then // we've got to do a whole buch of things
  begin
    zero := 0;
    if not OpenProcessToken(GetCurrentProcess(), TOKEN_ADJUST_PRIVILEGES or TOKEN_QUERY, hToken) then
    begin
      MessageBox(0, 'Exit Error', 'OpenProcessToken() Failed', MB_OK);
      Exit;
    end; // if not OpenProcessToken( GetCurrentProcess(), TOKEN_ADJUST_PRIVILEGES or TOKEN_QUERY, hToken)

    if not OpenProcessToken( GetCurrentProcess(), TOKEN_ADJUST_PRIVILEGES or TOKEN_QUERY, hToken) then
    begin
      MessageBox(0, 'Exit Error', 'OpenProcessToken() Failed', MB_OK);
      Exit;
    end; // if not OpenProcessToken( GetCurrentProcess(), TOKEN_ADJUST_PRIVILEGES or TOKEN_QUERY, hToken)

    // SE_SHUTDOWN_NAME
    if not LookupPrivilegeValue( nil, 'SeShutdownPrivilege' , tkp.Privileges[0].Luid ) then
    begin
      MessageBox(0, 'Exit Error', 'LookupPrivilegeValue() Failed', MB_OK);
      Exit;
    end; // if not LookupPrivilegeValue( nil, 'SeShutdownPrivilege' , tkp.Privileges[0].Luid )

    tkp.PrivilegeCount := 1;
    tkp.Privileges[0].Attributes := SE_PRIVILEGE_ENABLED;

    AdjustTokenPrivileges(hToken, False, tkp, SizeOf( TTokenPrivileges ), tkpo, zero);
    if Boolean(GetLastError()) then
    begin
      MessageBox(0, 'Exit Error', 'AdjustTokenPrivileges() Failed', MB_OK);
      Exit;
    end // if Boolean( GetLastError() )
    else
      ExitWindowsEx( EWX_FORCE or EWX_SHUTDOWN, 0 );

  end // if OSVersion = 'Windows NT'
  else
  begin // just shut the machine down
    ExitWindowsEx( EWX_FORCE or EWX_SHUTDOWN, 0 );
  end; // else
end;


procedure TBaseForm.aExpandExecute(Sender: TObject);
begin
  Show;
end;

procedure TBaseForm.aCollapseExecute(Sender: TObject);
begin
  Hide;
end;

procedure TBaseForm.SetBaseStateString(const Value: String);
begin
  FBaseStateString := Value;
end;

procedure TBaseForm.SetSecondStateString(const Value: String);
begin
  FSecondStateString := Value;
end;

procedure TBaseForm.SetVP(const Value: TVSPortAx);
begin
  FVP := Value;
end;

procedure TBaseForm.chkVirtualComPortClick(Sender: TObject);
begin
   DestroyVPCOMPort;
   if chkVirtualComPort.Checked then CreateCOMPort(VirtualComPort_Number.Text);
   VirtualComPort_Number.Enabled:=not chkVirtualComPort.Checked;
end;

procedure TBaseForm.DestroyVPCOMPort;
begin
   VirtualComPort_State.Caption:='��������';
   if Assigned(VP) then
   begin
     VP.Free;
     VP:=nil;
   end;
end;

function TBaseForm.CreateCOMPort(PortName:String):boolean;
begin
    result:=False;
    VirtualComPort_State.Caption:='��������';
    if not assigned(VP) then
    try
      VP:=TVSPortAx.Create(Self);
    except
      on e:exception do
      begin
         chkVirtualComPort.Checked:=False;
         MessageDlg('������ �������� ������������ �����:'+e.Message, mtError,[mbOk], 0);
      end;
    end;

    if not assigned(VP) then Exit;
    if not VP.IsCreated Then
    begin
      if VP.CreatePort(PortName) or VP.Attach(PortName) then
      begin
        VP.Name:=PortName;
        VP.OnRxChar:=VSPortAx1RxChar;
        VP.OnBaudRate:=VSPortAx1BaudRate;
        VP.OnOpenClose:=VSPortAx1OpenClose;
        SetStatusBar('������ ����������� ���� ' + PortName,0);
        VirtualComPort_State.Caption:='������';
        result:=True;
      end else
      begin
        chkVirtualComPort.Checked:=False;
        gbVirtualComPort.Visible:=False;
        SetStatusBar('���������� ������� ����������� ����',0);
        VirtualComPort_State.Caption:='������';
        DestroyVPCOMPort;
      end;
    end else
        SetStatusBar('����������� ���� ��� ������',0);
end;


procedure TBaseForm.VSPortAx1RxChar(ASender: TObject; Count: Integer);
var
  Received:integer;
  Str:string;
begin
  SetLength(Str,Count);
  Received:=VP.Read(Byte(Str[1]),Count);
  OutputDebugString(PChar(Format('������� �� �� :%d ����',[Count])));
  if Received=0 then Exit;
  Copy4InBuff(Str);
end;


procedure TBaseForm.VSPortAx1BaudRate(ASender: TObject; Baudrate: Integer);
begin
   SetStatusBar('���������� ������������ � '+VP.Name+' ��������� �������� '+IntToStr(Baudrate),1);
   //���� ����������� ���������� - RS232 - � ���������� ������� - ������ ��������
   if (pcTypeOfConnect.ActivePageIndex=0) and (not aPortOpen.Enabled) then
   begin
      ComPort_Baud.Text:=IntToStr(Baudrate);
      if Assigned(ComPort1) then
        ComPort1.BaudRate:=StrToBaudRate(ComPort_Baud.Text);//��������
      SetStatusBar('������ �������� ����� '+ComPort_Number.Text+' �� '+ComPort_Baud.Text,1);
   end;
end;

procedure TBaseForm.VSPortAx1OpenClose(ASender: TObject; Opened: WordBool);
begin
  if Opened then
  begin
     //��������� ���������� � ��������
     VirtualComPort_State.Caption:='������';
  end
  else begin
     //��������� ���������� � ��������
     VirtualComPort_State.Caption:='������';
  end;

end;


procedure TBaseForm.LimitEdtChange(Sender: TObject);
begin
  FillEditBar.Max:=LimitEdt.Value;
end;

procedure TBaseForm.SetServerSocket(const Value: TidTCPServer);
begin
  FServerSocket := Value;
  if Assigned(FServerSocket) then
  begin
    FServerSocket.OnConnect:=ServerSocket1Connect;
    FServerSocket.OnDisconnect:=ServerSocket1Disconnect;
    FServerSocket.OnException:=ServerSocket1Exception;
    FServerSocket.OnExecute:=ServerSocket1Execute;
//    FServerSocket.ThreadMgr:=IdThreadMgrDefault2;
    FServerSocket.DefaultPort:=ServerPortEdt.Value;
    FServerSocket.MaxConnections:=255;
    FServerSocket.Active:=True;
  end;
end;

procedure TBaseForm.SetTCPCurByteTick(const Value: longword);
begin
  FTCPCurByteTick := Value;
end;

procedure TBaseForm.TCPDataTimerTimer(Sender: TObject);
begin
  if TCPCurByteTick>0 then
  begin
       TCPCurByteTick:=TCPCurByteTick-1;
       if TCPCurByteTick=0 then
       begin
         TCPDataTimer.Enabled:=False;
         Application.ProcessMessages;
         sleep(1);
         TCPDataReceived:=True;
         TCPResponceToLog;
       end
       else
         TCPDataTimer.Enabled:=True;
  end;
  if (TCPCurByteTick=0)then TCPDataTimer.Enabled:=False;
  if (TCPCurByteTick=0)then begin
    TCPDataTimer.Tag:=4;
    SetStatusBar(mel[TCPDataTimer.Tag],7);
    TCPDataTimer.Enabled:=False;
  end
  else
     TCPDataTimer.Tag:=(TCPDataTimer.Tag+1) mod 4;
  SetStatusBar(mel[TCPDataTimer.Tag],4);
end;

procedure TBaseForm.SetTCPDataReceived(const Value: boolean);
begin
  FTCPDataReceived := Value;
end;

procedure TBaseForm.SetTCPInBuff(const Value: String);
begin
  FTCPInBuff := Value;
end;

procedure TBaseForm.chkSpecialCharsClick(Sender: TObject);
begin

  if chkSpecialChars.Checked then
    eInputBuf.Options:=eInputBuf.Options + [eoShowSpecialChars]
  else
    eInputBuf.Options:=eInputBuf.Options - [eoShowSpecialChars];
  xcharsBtn.Down:=chkSpecialChars.Checked;
end;

procedure TBaseForm.VCOMDataTimerTimer(Sender: TObject);
begin
  if COMCurByteTick>0 then
  begin
       COMCurByteTick:=COMCurByteTick-1;
       if COMCurByteTick=0 then
       begin
         VCOMDataTimer.Enabled:=False;
         //sleep(DopNastroyki_ByteTimeOut.Value*2);
         Application.ProcessMessages;
         sleep(1);
         COMDataReceived:=True;
         COMResponceToLog;
       end
       else
         VCOMDataTimer.Enabled:=True;
  end;
  if (COMCurByteTick=0)then begin
       VCOMDataTimer.Tag:=4;
    SetStatusBar(mel[VCOMDataTimer.Tag],7);
    VCOMDataTimer.Enabled:=False;
  end
  else
     VCOMDataTimer.Tag:=(VCOMDataTimer.Tag+1) mod 4;
  SetStatusBar(mel[VCOMDataTimer.Tag],3);


end;

procedure TBaseForm.SetCOMCurByteTick(const Value: longword);
begin
  FCOMCurByteTick := Value;
end;

procedure TBaseForm.SetCOMDataReceived(const Value: boolean);
begin
  FCOMDataReceived := Value;
end;

procedure TBaseForm.SetCOMInBuff(const Value: String);
begin
  FCOMInBuff := Value;
end;

procedure TBaseForm.TrayLButtonDblClick(Sender: TObject);
begin
  Show;
end;

procedure TBaseForm.TrayMinimizeApp(Sender: TObject);
begin
  InTray := True;
end;

procedure TBaseForm.SetInTray(const Value: boolean);
begin
  FInTray := Value;
end;

procedure TBaseForm.TrayRestoreApp(Sender: TObject);
begin
  InTray := False;
end;

procedure TBaseForm.SetMacrosFileName(const Value: String);
begin
  FMacrosFileName := Value;
  MacrosBox.Caption:=ExtractFileName(Value);
  tcMacros.Tabs[tcMacros.TabIndex]:=MacrosBox.Caption;
  MacrosBox.Hint:=Value;
  MacrosLabel.Caption:='���� ��������: '+Value;
  if FileExists(FMacrosFileName) then
  begin
     ListBox1.Items.LoadFromFile(FMacrosFileName);
     if ListBox1.Items.Count>0 then
     begin
       if pos(cTerminalMacroFile,ListBox1.Items[0])>0 then
          ListBox1.Items.Delete(0);
     end;
  end;
end;

procedure TBaseForm.aMacrosLoadExecute(Sender: TObject);
begin
 OpenDialog2.FileName:='';
 if OpenDialog2.Execute then
 begin
    MacrosFileName:=OpenDialog2.FileName;
 end;
end;

procedure TBaseForm.aMacrosDeleteExecute(Sender: TObject);
begin
    if ListBox1.ItemIndex>=0 then
       ListBox1.DeleteSelected;
end;

procedure TBaseForm.aMacrosEditExecute(Sender: TObject);
var s:String;
begin
    if ListBox1.ItemIndex<0 then
    begin
       ListBox1.Items.Add('');
       ListBox1.ItemIndex:=0;
    end;
    s:=ListBox1.Items[ListBox1.ItemIndex];
    if InputQuery('������� ����� �������:','������ '+IntToStr(ListBox1.ItemIndex+1),s) then
       ListBox1.Items[ListBox1.ItemIndex]:=s;
    aMacrosSaveExecute(nil);
end;

procedure TBaseForm.aMacrosAddNewExecute(Sender: TObject);
begin
     ListBox1.Items.Add('');
     ListBox1.ItemIndex:=ListBox1.Items.Count-1;
     aMacrosEditExecute(Sender);
end;

procedure TBaseForm.aMacrosSaveExecute(Sender: TObject);
begin
     ListBox1.Items.Insert(0,cTerminalMacroFile);
     ListBox1.Items.SaveToFile(FMacrosFileName);
     ListBox1.Items.Delete(0);
end;

procedure TBaseForm.aMacrosSaveAsExecute(Sender: TObject);
begin
 if SaveDialog2.Execute then
 begin
    FMacrosFileName:=SaveDialog2.FileName;
    MacrosBox.Caption:=ExtractFileName(SaveDialog2.FileName);
    tcMacros.Tabs[tcMacros.TabIndex]:=MacrosBox.Caption;
    aMacrosSaveExecute(Sender);
 end;
end;

procedure TBaseForm.ListBox1DragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept:=(Source=OutputBuf) or (Source=ListBox1);
end;
(*
����������� ������ ���� 45 54 56
� ������ $45$54$56
*)
function TBaseForm.HexToStrHex(aStr:String):String;
var s:String;
    i:integer;
begin
    result:='';
    s:=Str2Bin(aStr);
    for i:=1 to Length(s) do
       result:=result+'$'+IntToHex(ord(s[i]),2);

end;

procedure TBaseForm.ListBox1DragDrop(Sender, Source: TObject; X,
  Y: Integer);
  var s:String;
      pt:TPoint;
      idx:integer;
begin
  if Source=OutputBuf then
     SaveOutBuffToMacroBtnClick(nil)
  else if Source=ListBox1 then
  begin
//    Caption:='x='+IntToStr(x)+' y='+IntToStr(y);
    pt.X:=x;pt.Y:=y;
    idx:=ListBox1.ItemAtPos(pt,true);//������ - ������ �������� ItemIndex
    if idx in [0..ListBox1.Items.Count-1] then
    if ListBox1.ItemIndex in [0..ListBox1.Items.Count-1] then
    begin
       //ListBox1.Items.Move(ListBox1.ItemIndex,Idx);
       ListBox1.Items.Insert(Idx,ListBox1.Items[ListBox1.ItemIndex]);
       aMacrosSaveExecute(Sender);
    end;
  end;
end;

procedure TBaseForm.AutoScrollBtnClick(Sender: TObject);
begin
  chkScroll.Checked:=autoscrollbtn.Down;
end;

procedure TBaseForm.chkScrollClick(Sender: TObject);
begin
  autoscrollbtn.Down:=chkScroll.Checked
end;


procedure TBaseForm.RestoreState;
begin
   autoscrollbtn.Down:=self.chkScroll.Checked;
   WordWrapBtn.Down:=cbWordWrap.Checked;
   xcharsBtn.Down:=chkSpecialChars.Checked;
   StampDirectBtn.Down:=chkDirectLabel.Checked;
   TimeShtampBtn.Down:=cbTimeStamp.Checked;
   MillisecondsBtn.Down:=cbMillisecond.Checked;
   MillisecondsBtn.Enabled:=cbTimeStamp.Checked;
   cbMillisecond.Enabled:=cbTimeStamp.Checked;
   BuffHintBtn.Down:=chkHint.Checked;
  if CRLFMode.ItemIndex>0 then
     CRLFModeBtn.Down:=True
  else
     CRLFModeBtn.Down:=False;
  aMacrosDeleteFileFromControl.Enabled:=tcMacros.Tabs.Count>1;
  SetUpTheme(cDarkMnu.Checked);
end;


procedure TBaseForm.WordWrapBtnClick(Sender: TObject);
begin
  cbWordWrap.Checked:=WordWrapBtn.Down
end;

procedure TBaseForm.xcharsBtnClick(Sender: TObject);
begin
 chkSpecialChars.Checked:=xcharsBtn.Down;
end;

procedure TBaseForm.StampDirectBtnClick(Sender: TObject);
begin
  chkDirectLabel.Checked:=StampDirectBtn.Down;
end;

procedure TBaseForm.chkDirectLabelClick(Sender: TObject);
begin
  StampDirectBtn.Down:=chkDirectLabel.Checked;
end;

procedure TBaseForm.TimeShtampBtnClick(Sender: TObject);
begin
  cbTimeStamp.Checked:=TimeShtampBtn.Down;
  MillisecondsBtn.Enabled:=cbTimeStamp.Checked;
  cbMillisecond.Enabled:=cbTimeStamp.Checked;
end;

procedure TBaseForm.cbTimeStampClick(Sender: TObject);
begin
  TimeShtampBtn.Down:=cbTimeStamp.Checked;
  MillisecondsBtn.Enabled:=cbTimeStamp.Checked;
  cbMillisecond.Enabled:=cbTimeStamp.Checked;
end;

procedure TBaseForm.MillisecondsBtnClick(Sender: TObject);
begin
  cbMillisecond.Checked:=MillisecondsBtn.Down;
end;

procedure TBaseForm.cbMillisecondClick(Sender: TObject);
begin
  MillisecondsBtn.Down:=cbMillisecond.Checked;
end;

procedure TBaseForm.BuffHintBtnClick(Sender: TObject);
begin
  chkHint.Checked:=BuffHintBtn.Down;
end;

procedure TBaseForm.CRLFModeBtnClick(Sender: TObject);
begin
  if CRLFModeBtn.Down then
     CRLFMode.ItemIndex:=1
  else
     CRLFMode.ItemIndex:=0;
end;

procedure TBaseForm.CRLFModeClick(Sender: TObject);
begin
  if CRLFMode.ItemIndex>0 then
     CRLFModeBtn.Down:=True
  else
     CRLFModeBtn.Down:=False
end;

procedure TBaseForm.GroupBox1MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
var  SState : TKeyboardState;
begin
  GetKeyboardState(SState);
  if ((SState[vk_Shift] and 128) <> 0) then
      OutputBuf.DragMode:=dmAutomatic
  else
      OutputBuf.DragMode:=dmManual;
end;

procedure TBaseForm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  FTerminated := True;
end;

procedure TBaseForm.SetTerminated(const Value: boolean);
begin
  FTerminated := Value;
end;

procedure TBaseForm.Autorun(Flag:boolean; NameParam, Path:String);
var Reg:TRegistry;
begin
  if Flag then
  begin
     Reg := TRegistry.Create;
     Reg.RootKey := HKEY_CURRENT_USER;
     Reg.OpenKey('\SOFTWARE\Microsoft\Windows\CurrentVersion\Run', false);
     Reg.WriteString(NameParam, Path);
     Reg.Free;
  end
  else
  begin
     Reg := TRegistry.Create;
     Reg.RootKey := HKEY_CURRENT_USER;
     Reg.OpenKey('\SOFTWARE\Microsoft\Windows\CurrentVersion\Run',false);
     Reg.DeleteValue(NameParam);
     Reg.Free;
  end;
end;

procedure TBaseForm.AutoRunChkClick(Sender: TObject);
begin
  Autorun(AutoRunChk.Checked,'',Application.ExeName);
end;

procedure TBaseForm.VTD_VClick(Sender: TObject);
begin
  case TerminalTypeGrp.ItemIndex of
  1:OutputBuf.Text:='$FE $50 $00 $01 $02 $00 $00 $00 $A2 $BE';
  2:OutputBuf.Text:='0xFE 0x50 0x00 0x01 0x02 0x00 0x00 0x00 0xA2 0xBE';
  3:OutputBuf.Text:='FE 50 00 01 02 00 00 00 A2 BE';
  end;
end;

procedure TBaseForm.IncStatistics_I(aFrom: byte; aLen: integer);
begin
   case aFrom of
   0: begin
        CLI_I_Edt.Tag:=CLI_I_Edt.Tag+aLen;
        CLI_I_Edt.Text:=IntToStr(CLI_I_Edt.Tag);
      end;
   1: begin
        TCP_I_Edt.Tag:=TCP_I_Edt.Tag+aLen;
        TCP_I_Edt.Text:=IntToStr(TCP_I_Edt.Tag);
      end;
   2: begin
        KSPD_I_Edt.Tag:=KSPD_I_Edt.Tag+aLen;
        KSPD_I_Edt.Text:=IntToStr(KSPD_I_Edt.Tag);
      end;
   3: begin
        VCOM_I_Edt.Tag:=VCOM_I_Edt.Tag+aLen;
        VCOM_I_Edt.Text:=IntToStr(VCOM_I_Edt.Tag);
      end;
   end;
end;

procedure TBaseForm.IncStatistics_O(aFrom: byte; aLen: integer);
begin
   case aFrom of
   0: begin
        CLI_O_Edt.Tag:=CLI_O_Edt.Tag+aLen;
        CLI_O_Edt.Text:=IntToStr(CLI_O_Edt.Tag);
      end;
   1: begin
        TCP_O_Edt.Tag:=TCP_O_Edt.Tag+aLen;
        TCP_O_Edt.Text:=IntToStr(TCP_O_Edt.Tag);
      end;
   2: begin
        KSPD_O_Edt.Tag:=KSPD_O_Edt.Tag+aLen;
        KSPD_O_Edt.Text:=IntToStr(KSPD_O_Edt.Tag);
      end;
   3: begin
        VCOM_O_Edt.Tag:=VCOM_O_Edt.Tag+aLen;
        VCOM_O_Edt.Text:=IntToStr(VCOM_O_Edt.Tag);
      end;
   end;
end;

procedure TBaseForm.ClearStatistics;
begin
    CLI_I_Edt.Tag:=0; CLI_I_Edt.Text:='0';
    CLI_O_Edt.Tag:=0; CLI_O_Edt.Text:='0';
    TCP_I_Edt.Tag:=0; TCP_I_Edt.Text:='0';
    TCP_O_Edt.Tag:=0; TCP_O_Edt.Text:='0';
    KSPD_I_Edt.Tag:=0; KSPD_I_Edt.Text:='0';
    KSPD_O_Edt.Tag:=0; KSPD_O_Edt.Text:='0';
    VCOM_I_Edt.Tag:=0; VCOM_I_Edt.Text:='0';
    VCOM_O_Edt.Tag:=0; VCOM_O_Edt.Text:='0';
end;

procedure TBaseForm.FormStorage2RestorePlacement(Sender: TObject);
begin
  TerminalTypeGrp.tag:=TerminalTypeGrp.ItemIndex;
end;

procedure TBaseForm.aCRCSprut100Execute(Sender: TObject);
var tmpS:String;
    CS:Word;
begin
//��������� CRC16
 //tmpS:=Str2Bin(OutputBuf.Text);
 tmpS:=curProcStr;
 if tmpS='' then Exit;
 CS:=GetCRCSprut100(tmpS+#0+#0);
 tmpS:=tmpS+chr(CS and $FF)+chr(CS shr 8);
 curProcStr:=tmps;
  //OutputBuf.text:=Bin2Str(tmps);
end;

procedure TBaseForm.xCRCSprut100BtnClick(Sender: TObject);
begin
  if btnCreateCRC.Down then
  begin
     curProcStr:=Str2Bin(OutputBuf.Text);
     aCRCSprut100Execute(nil);
     OutputBuf.Text:=Bin2Str(curProcStr);
  end
  else
    curProc:=aCRCSprut100Execute;
  SetUpcurProc(False);

end;

procedure TBaseForm.DispUnitsBtnClick(Sender: TObject);
begin
   WinExec(Pchar('cmd /c start mmc devmgmt.msc'), 0);
end;

procedure TBaseForm.aSignalExecute(Sender: TObject);
begin
 aSignal.Checked:=not aSignal.Checked;
 tsSignal.TabVisible:=aSignal.Checked;
 PageControl2.ActivePageIndex:=0;
end;

procedure TBaseForm.InputBufToChart(StrIdx:Integer);
var i,cnt,linesCount:integer;
    s,tmpS:String;
    val1,val2,val3,val4:integer;
    dt:TDateTime;
begin
 if exInputBuffChk.Checked then
    linesCount:=eInputBuf.Lines.Count
 else
    linesCount:=InputBuf.Lines.Count;
 try
   if (StrIdx>=0) and (StrIdx<=linesCount-1) then
   begin
    if exInputBuffChk.Checked then
      s:=eInputBuf.Lines.Strings[StrIdx]
    else
      s:=InputBuf.Lines.Strings[StrIdx];
    if s<>'' then
    begin
        i:=1;
        //��������� ������ �����
        tmpS:='';
        while i<=Length(s) do
        begin
          if s[i] in ['0'..'9'] then tmpS:=tmpS+s[i]
          else if s[i]=#9 then break;
          Inc(i);
        end;
        val1:=StrToIntDef(tmpS,0);Inc(i);
        //��������� ������ �����
        tmpS:='';
        while i<=Length(s) do
        begin
          if s[i] in ['0'..'9'] then tmpS:=tmpS+s[i]
          else if s[i]=#9 then break;
          Inc(i);
        end;
        val2:=StrToIntDef(tmpS,0);Inc(i);
        //��������� ������ �����
        tmpS:='';
        while i<=Length(s) do
        begin
          if s[i] in ['0'..'9'] then tmpS:=tmpS+s[i]
          else if s[i]=#9 then break;
          Inc(i);
        end;
        val3:=StrToIntDef(tmpS,0);Inc(i);
        //��������� ��������� �����
        tmpS:='';
        while i<=Length(s) do begin
          if s[i] in ['0'..'9'] then tmpS:=tmpS+s[i]
          else if s[i]=#9 then break;
          Inc(i);
        end;
        val4:=StrToIntDef(tmpS,0);
        dt:=Now;
        try
          Series1.AddXY(dt,val1);
          Series2.AddXY(dt,val2);
          Series3.AddXY(dt,val3);
          Series4.AddXY(dt,val4);
          if aSignal.Checked then
          begin
             OutputDebugString(PChar(Format('1) %d %f %f %f %f',[Series1.Count,dt,val1,val2,val3,val4])));
             if Series1.Count>(LimitEdt.Value div 100) then
                Series1.Delete(0);
             if Series2.Count>(LimitEdt.Value div 100) then
                Series2.Delete(0);
             if Series3.Count>(LimitEdt.Value div 100) then
                Series3.Delete(0);
             if Series4.Count>(LimitEdt.Value div 100) then
                Series4.Delete(0);

             if Series1.Active then
                cnt:=Series1.Count
             else if Series2.Active then
                cnt:=Series2.Count
             else if Series3.Active then
                cnt:=Series3.Count
             else if Series4.Active then
                cnt:=Series4.Count
             else
                cnt:=0;

             gvGraph.Rows.Count:=cnt;
          end;

        except
          SetStatusBar('������ ����������� �������',2);
        end;
       end;
    end;
 except
    SetStatusBar('������ ���������� ������ �������',2);
 end;

end;


procedure TBaseForm.ProtocolToChart(StrIdx:Integer);
var cnt,i,j,linesCount,cnt1:integer;
    s,tmpS:String;
    val1,val2,val3,val4:integer;
    dt:TDateTime;
begin
 if exInputBuffChk.Checked then
    linesCount:=eInputBuf.Lines.Count
 else
    linesCount:=InputBuf.Lines.Count;
 try
   if (StrIdx>=0) and (StrIdx<=linesCount-1) then
   begin
    if exInputBuffChk.Checked then
      s:=eInputBuf.Lines.Strings[StrIdx]
    else
      s:=InputBuf.Lines.Strings[StrIdx];
    if s<>'' then
    begin
        //���� ��������� ������ seStartSymbol
        i:=pos(chr(seStartSymbol.Value),s);
        if i>0 then
        begin
          //� ������ ���� ��������� ������
          i:=i+seSignalPos.Value;
          //��������� ������ �����
          tmpS:='$';
          for j := 1 to setSignalSize.Value do
          begin
            if s[i] in ['0'..'9','A'..'F','a'..'f'] then tmpS:=tmpS+s[i];
            inc(i);
          end;
          val1:=StrToIntDef(tmpS,0);
          //��������� ������ �����
          tmpS:='$';
          for j := 1 to setSignalSize.Value do
          begin
            if s[i] in ['0'..'9','A'..'F','a'..'f'] then tmpS:=tmpS+s[i];
            inc(i);
          end;
          val2:=StrToIntDef(tmpS,0);
          //��������� ������ �����
          tmpS:='$';
          for j := 1 to setSignalSize.Value do
          begin
            if s[i] in ['0'..'9','A'..'F','a'..'f'] then tmpS:=tmpS+s[i];
            inc(i);
          end;
          val3:=StrToIntDef(tmpS,0);
          //��������� ��������� �����
          tmpS:='$';
          for j := 1 to setSignalSize.Value do
          begin
            if s[i] in ['0'..'9','A'..'F','a'..'f'] then tmpS:=tmpS+s[i];
            inc(i);
          end;
          val4:=StrToIntDef(tmpS,0);
          dt:=Now;
          try
            Application.ProcessMessages;
            sleep(1);
            Series1.AddXY(dt,val1);
            Series2.AddXY(dt,val2);
            Series3.AddXY(dt,val3);
            Series4.AddXY(dt,val4);
            cnt1:=Series1.Count;
            OutputDebugString(PChar(Format('2) %d %f %d %d %d %d',[cnt1,dt,val1,val2,val3,val4])));

             if Series1.Active then
                cnt:=Series1.Count
             else if Series2.Active then
                cnt:=Series2.Count
             else if Series3.Active then
                cnt:=Series3.Count
             else if Series4.Active then
                cnt:=Series4.Count
             else
                cnt:=0;

             gvGraph.Rows.Count:=cnt;

          except
            SetStatusBar('������ ����������� �������',2);
          end;
        end;
       end;
    end;
 except
    SetStatusBar('������ ���������� ������ �������',2);
 end;

end;



procedure TBaseForm.eInputBufChange(Sender: TObject);
begin
 if exInputBuffChk.Checked then
 begin
   if aSignal.Checked and (eInputBuf.Lines.Count>0) then
   begin
      case cbSignalTypeProtocol.ItemIndex of
      0: InputBufToChart(eInputBuf.Lines.Count-1);
      1: ProtocolToChart(eInputBuf.Lines.Count-1);
      end;
   end;
 end
 else begin
   if aSignal.Checked and (InputBuf.Lines.Count>0) then
      case cbSignalTypeProtocol.ItemIndex of
      0: InputBufToChart(InputBuf.Lines.Count-1);
      1: ProtocolToChart(InputBuf.Lines.Count-1);
      end;
 end;
end;

procedure TBaseForm.VisibleS1Click(Sender: TObject);
begin
  Chart1.SeriesList.Series[TCheckBox(Sender).Tag].Active:=TCheckBox(Sender).Checked;
  gvGraph.Columns[TCheckBox(Sender).Tag+1].Visible:=TCheckBox(Sender).Checked;

end;


procedure TBaseForm.Chart1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Graph_X:=X;
  Graph_Y:=Y;
//  Chart1.Invalidate;
end;

procedure TBaseForm.Margin_DOWN_UP_BtnClick(Sender: TObject);
begin
  if Chart1.LeftAxis.Maximum>(Chart1.LeftAxis.Minimum+10) then
     MaxValue.Value:=MaxValue.Value-10;

end;

procedure TBaseForm.Margin_NOMINAL_BtnClick(Sender: TObject);
begin
  MaxValue.Value:=32000;
  MinValue.Value:=16000;
end;

procedure TBaseForm.Margin_UP_DOWN_BtnClick(Sender: TObject);
begin
  if Chart1.LeftAxis.Minimum<(Chart1.LeftAxis.Maximum-10) then
     MinValue.Value:=MinValue.Value+10;

end;


procedure TBaseForm.cbAutoAxisClick(Sender: TObject);
begin
 Margin_DOWN_UP_Btn.Enabled:=not cbAutoAxis.Checked;
 Margin_DOWN_DOWN_Btn.Enabled:=not cbAutoAxis.Checked;
 Margin_NOMINAL_Btn.Enabled:=not cbAutoAxis.Checked;
 Margin_UP_DOWN_Btn.Enabled:=not cbAutoAxis.Checked;
 Margin_UP_UP_Btn.Enabled:=not cbAutoAxis.Checked;
 Chart1.LeftAxis.Automatic:=cbAutoAxis.Checked;
 MaxValue.Enabled:=not cbAutoAxis.Checked;
 MinValue.Enabled:=not cbAutoAxis.Checked;
 MaxValue.Value:=Round(Chart1.LeftAxis.Maximum);
 MinValue.Value:=Round(Chart1.LeftAxis.Minimum);

end;

procedure TBaseForm.MaxValueChange(Sender: TObject);
begin
  if Round(Chart1.LeftAxis.Maximum)<>MaxValue.Value then
      Chart1.LeftAxis.Maximum:=MaxValue.Value;

end;

procedure TBaseForm.MinValueChange(Sender: TObject);
begin
  if Round(Chart1.LeftAxis.Minimum)<>MinValue.Value then
      Chart1.LeftAxis.Minimum:=MinValue.Value;
end;

procedure TBaseForm.Margin_DOWN_DOWN_BtnClick(Sender: TObject);
begin
   MaxValue.Value:=MaxValue.Value+10;
end;

procedure TBaseForm.Margin_UP_UP_BtnClick(Sender: TObject);
begin
     MinValue.Value:=MinValue.Value-10;
end;

procedure TBaseForm.VKT71Click(Sender: TObject);
begin
  case TerminalTypeGrp.ItemIndex of
  1:OutputBuf.Text:='$FF $FF $01 $10 $3F $FF $00 $00 $CC $80 $00 $00 $00 $60 $A8';
  2:OutputBuf.Text:='0xFF 0xFF 0x01 0x10 0x3F 0xFF 0x00 0x00 0xCC 0x80 0x00 0x00 0x00 0x60 0xA8';
  3:OutputBuf.Text:='FF FF 01 10 3F FF 00 00 CC 80 00 00 00 60 A8';
  end;
end;

procedure TBaseForm.chkAlarmClick(Sender: TObject);
begin
  RxClock1.AlarmEnabled:=chkAlarm.Checked;
  if chkAlarm.Checked then
     RxClock1.BevelInner:=bvLowered
  else
     RxClock1.BevelInner:=bvRaised;
end;

procedure TBaseForm.HourAlarmChange(Sender: TObject);
begin
  RxClock1.AlarmHour:=HourAlarm.Value;
end;

procedure TBaseForm.MinAlarmChange(Sender: TObject);
begin
  RxClock1.AlarmMinute:=MinAlarm.Value;
end;

procedure TBaseForm.SecAlarmChange(Sender: TObject);
begin
  RxClock1.AlarmSecond:=SecAlarm.Value;
end;

procedure TBaseForm.RxClock1Alarm(Sender: TObject);
begin
  case cbAlarm.ItemIndex of
  0:PlaySoundBtn.OnClick(nil);
  1:ExecCmdBtnClick(nil);
  2:begin
      OutputBuf.Text:=SendCmdFinishEdt.Text;
      aPortSendDataExecute(nil);
      if RepeatSentCmdChk.Checked then
      begin
         SendCmdTimer.Interval:=Round(SendCmdPauseEdt.Value*1000);
         SendCmdTimer.Enabled:=True;
      end;
    end;
  3:Close;
  4:ShutDown;//���������� ����������
  5:MyExitWindows(EWX_REBOOT or EWX_FORCE);
  6:SetSystemPowerState(True,True);
  end;
end;

procedure TBaseForm.SystemSoundPlayerLoadList;
var
   reg : TRegistry;
begin
   reg := TRegistry.Create;
   try
     reg.RootKey := HKEY_CURRENT_USER;
     reg.OpenKeyReadOnly('\AppEvents\EventLabels') ;
     reg.GetKeyNames(SystemSoundList.Items) ;
   finally
     reg.Free;
   end;
end;

procedure TBaseForm.PlaySoundBtnClick(Sender: TObject);
var
   soundAlias : string;
begin
  PlaySoundBtn.Enabled:=False;
  soundAlias := SystemSoundList.Items[SystemSoundList.ItemIndex];
  PlaySound(PAnsiChar(soundAlias), 0, SND_ALIAS or SND_ASYNC) ;
  if not Assigned(Sender) then
  begin
    sleep(1000);
    PlaySound(PAnsiChar(soundAlias), 0, SND_ALIAS or SND_ASYNC) ;
    sleep(1000);
    PlaySound(PAnsiChar(soundAlias), 0, SND_ALIAS or SND_ASYNC) ;
  end;
  PlaySoundBtn.Enabled:=True;
end;

procedure TBaseForm.cbAlarmChange(Sender: TObject);
begin
(*
��������� ����
��������� �������
��������� �������
��������� Term2006
��������� ��
������������� ��
������� ����� ��
*)
  SystemSoundList.Enabled:=cbAlarm.ItemIndex=0;
  PlaySoundBtn.Enabled:=cbAlarm.ItemIndex=0;
  CmdEdt.Enabled:=cbAlarm.ItemIndex=1;
  ExecCmdBtn.Enabled:=cbAlarm.ItemIndex=1;
  if cbAlarm.ItemIndex<3 then
    TimerPageControl.ActivePageIndex:=cbAlarm.ItemIndex
  else
    TimerPageControl.ActivePageIndex:=3;
end;

procedure TBaseForm.ExecCmdBtnClick(Sender: TObject);
begin
  executeFile(CmdEdt.Text,SW_SHOWNORMAL);
end;

procedure TBaseForm.SetComPort1(const Value: TComPort);
begin
  FComPort1 := Value;
end;

function TBaseForm.CheckComPortList:boolean;
var  i:integer;
  found:boolean;
begin
      found:=False;
      for i:=0 to ComPort_Number.Items.Count-1 do
      begin
         if ComPort_Number.Items[i]=ComPort_Number.Text then
         begin
           found:=true;
           break;
         end;
      end;
         //x:=ComPort1.Signals;
         //���� ���� �� ������ � ����� ������ - �������
      if Not found then
      begin
         if ComPort_Number.Items.Count>0 then
            ComPort_Number.ItemIndex:=0
         else begin
            ComPort_Number.ItemIndex:=-1;
            ComPort_Number.Text:='';
         end;
      end;
      result:=found;
end;

procedure TBaseForm.WMDeviceChange(var Msg: TMessage);
var
  Drive: string;
  x:TComSignals;
  MyMsg: TMessage;
  idx:integer;
  mustopen:boolean;
begin
  case Msg.wParam of
    DBT_DEVICECHANGE:
    begin
      MyMsg:=Msg;
      SetStatusBar('��������� ����� USB ���������...',0);
      if (tbAutoComList.Checked) then//��������� �����, ���� ������ ����������� ������� ��������������� ����������� ������ ��������
      begin
        if pcTypeOfConnect.ActivePageIndex=0 then
        begin
         mustopen:=not aPortOpen.Enabled;
         if cbForceClosePortChangingDeviceMaps.Checked then
            if not aPortOpen.Enabled then
               aPortClose.Execute;
        end;
        idx:=ComPort_Number.ItemIndex;
        tbAutoComListClick(nil);
        if idx<ComPort_Number.Items.Count then
           ComPort_Number.ItemIndex:=idx;
        if mustopen then
           OpenPortTimer.Enabled:=True;
      end;
    end;
    DBT_DEVICEARRIVAL:
      if PDevBroadcastHdr(Msg.lParam)^.dbcd_devicetype = DBT_DevTyp_Volume then
      begin
        Drive := GetDrive(PDevBroadcastVolume(Msg.lParam));
        SetStatusBar('������ ��������. Ÿ ����� : ' + Drive,0);
      end;

    DBT_DEVICEREMOVECOMPLETE:
      if PDevBroadcastHdr(Msg.lParam)^.dbcd_devicetype = DBT_DevTyp_Volume then
      begin
        Drive := GetDrive(PDevBroadcastVolume(Msg.lParam));
        SetStatusBar('������ ������. Ÿ ����� :  ' + Drive,0);
      end;

  end;
end;

procedure TBaseForm.DopNastroyki_TimeOutChange(Sender: TObject);
begin
  SendTimer.Interval:=DopNastroyki_TimeOut.Value;
end;

procedure TBaseForm.Splitter1CanResize(Sender: TObject;
  var NewSize: Integer; var Accept: Boolean);
begin
  Accept:=(NewSize>143) and (NewSize<300);
end;

procedure TBaseForm.tcMacrosChange(Sender: TObject);
begin
 ListBox1.Clear;
 OpenDialog2.FileName:=tcMacros.Tabs[tcMacros.TabIndex];
 MacrosFileName:=OpenDialog2.FileName;
 ListBox1.ItemIndex:=0;
end;

procedure TBaseForm.aMacrosAddFileToControlExecute(Sender: TObject);
begin
  tcMacros.Tabs.Add('Macro'+IntToStr(tcMacros.Tabs.Count+1)+'.tmf');
  aMacrosDeleteFileFromControl.Enabled:=tcMacros.Tabs.Count>1;
end;

procedure TBaseForm.aMacrosDeleteFileFromControlExecute(Sender: TObject);
begin
  if (tcMacros.Tabs.Count>1) and (tcMacros.TabIndex>=0) then
  begin
     tcMacros.Tabs.Delete(tcMacros.TabIndex);
  end;
  tcMacros.TabIndex:=0;
  tcMacrosChange(Sender);
  aMacrosDeleteFileFromControl.Enabled:=tcMacros.Tabs.Count>1;

end;

procedure TBaseForm.PanelImageDrop(var Msg: TWMDROPFILES);
  var    numFiles : longInt;
  buffer : array[0..MAX_PATH] of char;
  begin
    numFiles := DragQueryFile(Msg.Drop, $FFFFFFFF, nil, 0) ;
    if numFiles > 1 then
      begin
        ShowMessage('�� ������ ���������� �� 1 ��� ������ 1 ����!') ;
      end
    else
      begin
        DragQueryFile(Msg.Drop, 0, @buffer, sizeof(buffer)) ;
        try
          aMacrosAddFileToControlExecute(nil);
          tcMacros.TabIndex:=tcMacros.Tabs.Count-1;
          MacrosFileName:=buffer;
          //Image1.Picture.LoadFromFile(buffer) ;
        except
          on EInvalidGraphic do ShowMessage('���������������� ��� �����, ��� ���� �� �������� ��������!') ;
        end;
      end;
end;

procedure TBaseForm.PanelWindowProc(var Msg: TMessage);
begin
  if Msg.Msg = WM_DROPFILES then
    PanelImageDrop(TWMDROPFILES(Msg))
  else
    originalPanelWindowProc(Msg) ;
end;

procedure TBaseForm.aListsSyncroExecute(Sender: TObject);
begin
  OutputBuf.Items.Assign(mListOfCommands.Lines);
end;

procedure TBaseForm.aListOfCommamdsExecute(Sender: TObject);
begin
  tbHistoryOfCommands.TabVisible:=aListOfCommamds.Checked;
  aListsSyncro.Visible:=tbHistoryOfCommands.TabVisible;
  aCmdHist2MAcro.Visible:=tbHistoryOfCommands.TabVisible;

end;

procedure TBaseForm.aClearOutputBufExecute(Sender: TObject);
begin
  chClearOutputBuf.Checked:=aClearOutputBuf.Checked;
end;

procedure TBaseForm.aCmdHist2MAcroExecute(Sender: TObject);
begin
 if SaveDialog2.Execute then
 begin
    mListOfCommands.Lines.Insert(0,cTerminalMacroFile);
    mListOfCommands.Lines.SaveToFile(SaveDialog2.FileName);
    mListOfCommands.Lines.Delete(0);
    tcMacros.Tabs[tcMacros.TabIndex]:=MacrosBox.Caption;
    MacrosBox.Caption:=ExtractFileName(SaveDialog2.FileName);
    MacrosFileName:=SaveDialog2.FileName;
 end;
end;

procedure TBaseForm.mnuCopyMacrosClick(Sender: TObject);
begin
  StoredMacros:=ListBox1.Items[ListBox1.ItemIndex];
end;

procedure TBaseForm.SetStoredMacros(const Value: String);
begin
  FStoredMacros := Value;
end;

procedure TBaseForm.mnuPasteMacrosClick(Sender: TObject);
begin
  ListBox1.Items.Insert(ListBox1.ItemIndex,StoredMacros);
  aMacrosSaveExecute(Sender);
end;

procedure TBaseForm.mnuEditMacrosClick(Sender: TObject);
var
  I9: Integer;
  ColInt: Integer;
  LRect: TRect;
begin
  FSelectedMAcros:=ListBox1.ItemIndex;
  LRect := ListBox1.ItemRect(ListBox1.ItemIndex);
  {Set the size of the TEdit}
  MacrosEdit.Top := LRect.Top + 24;
  MacrosEdit.Left := LRect.Left + 6;
  MacrosEdit.Width := ListBox1.Width-5;//ListBox1.Canvas.TextWidth(ListBox1.Items.Strings[ListBox1.ItemIndex]) + 6;
  MacrosEdit.Height := (LRect.Bottom - LRect.Top) + 1;

  MacrosEdit.Text := ListBox1.Items.Strings[ListBox1.ItemIndex];
  ListBox1.Selected[ListBox1.ItemIndex] := False;
  MacrosEdit.Visible := True;
  MacrosEdit.SelectAll;
  MacrosEdit.SetFocus;
end;


procedure TBaseForm.ListBox1Click(Sender: TObject);
begin
  MacrosEdit.Visible := False;
end;

procedure TBaseForm.MacrosEditKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    ListBox1.Items[SelectedMacros]:=MacrosEdit.Text;
    MacrosEdit.Visible := False;
    ListBox1.ItemIndex:=SelectedMAcros;
    ListBox1.SetFocus;
    Key := #0;
    aMacrosSaveExecute(Sender);
  end
  else if Key = #27 then
  begin
    MacrosEdit.Visible := False;
    Key := #0;
    ListBox1.ItemIndex:=SelectedMAcros;
    ListBox1.SetFocus;
  end;

end;

procedure TBaseForm.SetSelectedMAcros(const Value: integer);
begin
  FSelectedMAcros := Value;
end;

procedure TBaseForm.SaveOutBuffToMacroBtnClick(Sender: TObject);
var s:String;
begin
     if HexBtn.Down then
        s:=HexToStrHex(OutputBuf.Text)
     else
        s:=OutputBuf.Text;
     ListBox1.Items.Add(s);
     ListBox1.ItemIndex:=ListBox1.Items.Count-1;
     aMacrosSaveExecute(nil);
end;

function TBaseForm.GetPortConnected: boolean;
begin
  case pcTypeOfConnect.ActivePageIndex of
    0: result:=ComPort1Connected;
    1: result:=UDPSocket.Bound;
    2,3:   if assigned(xportTCPClient) and assigned(xportTCPClient.Socket) then
              result:=xportTCPClient.Socket.Connected
           else
              result:=false;
    4:     result:=nrBT1.Active;

  end;
end;

procedure TBaseForm.aSystemJournalExecute(Sender: TObject);
begin
  tsSystemJournal.TabVisible:=aSystemJournal.Checked;
end;

procedure TBaseForm.SetStartTime(const Value: longword);
begin
  FStartTime := Value;
end;

procedure TBaseForm.SendCmdTimerStartBtnClick(Sender: TObject);
var tmpDT:TDateTime;
    hh,mm,ss,ms:word;
begin
  MultiStrings.Checked:=false;
  //�� 10 ����� ������
  tmpDT:=now+SendCmdPeriodEdt.Value/86400;
  decodeTime(tmpDT,hh,mm,ss,ms);
  HourAlarm.Value:=hh;
  MinAlarm.Value:=mm;
  SecAlarm.Value:=ss;
  chkAlarm.Checked:=true;
  if SendSTARTCmdChk.Checked then
  begin
    //���������� ��������� �������
    OutputBuf.Text:=SendCmdStartEdt.Text;
    aPortSendDataExecute(nil);
  end;

end;

procedure TBaseForm.SendSTARTCmdChkClick(Sender: TObject);
begin
  SendCmdStartEdt.Visible:=SendSTARTCmdChk.Checked;
end;

procedure TBaseForm.SendCmdTimerTimer(Sender: TObject);
begin
  SendCmdTimerStartBtnClick(nil);
  SendCmdTimer.Enabled:=False;
end;

procedure TBaseForm.aAutoSendListExecute(Sender: TObject);
begin
  AutoListChkClick(Sender);
end;

procedure TBaseForm.AutoSendBtnClick(Sender: TObject);
begin
  AutoListChk.Checked:=not AutoListChk.Checked;
  AutoListChkClick(Sender);
end;

procedure TBaseForm.xCRCMODBUSASCIIBtnClick(Sender: TObject);
begin
  if btnCreateCRC.Down then
  begin
     aCRCMODBUSASCIIExecute(nil);
  end
  else
    curProc:=aCRCMODBUSASCIIExecute;
  SetUpcurProc(False);

end;

procedure TBaseForm.aCRCMODBUSASCIIExecute(Sender: TObject);
var
    i:integer;
    b:byte;
begin
 curProcStr:=OutputBuf.Text;
// if (curProcStr='') or ((curProcStr[1]<>':') and (curProcStr[1]<>'#')  and (curProcStr[1]<>'!')) then Exit;
 //�������� �� ������� �������
 b:=0;
 for i := 1 to Length(curProcStr) do
 begin
   b:=(b+ord(curProcStr[i]) and $ff);
 end;
 curProcStr:=curProcStr+IntToHex(b,2);
 if btnCreateCRC.Down then
    OutputBuf.Text:=curProcStr;
end;

procedure TBaseForm.RefreshPortStateTimerTimer(Sender: TObject);
begin
  RefreshPortState;
end;

(*
procedure TBaseForm.SetUpTheme(adark:boolean);
var i:integer;
    tmpColor:TColor;
    tmpFColor:TColor;
    editColor:TColor;
begin
  if adark then
  begin
    eInputBuf.Color:=cDarkColor;
    eInputBuf.ActiveLineColor:=clGray;
    tmpFColor:=clInfoBk;
    tmpColor:=clGrayText;
    editColor:=cDarkColor;
    BaseForm.Color:=$00333333;
  end
  else begin
    eInputBuf.Color:=clInfoBk;
    eInputBuf.ActiveLineColor:=clMoneyGreen;
    tmpFColor:=clBtnFace;
    tmpColor:=clBtnFace;
    editColor:=clInfoBk;
    BaseForm.Color:=clBtnFace;
  end;
  Application.ProcessMessages;
  nrDeviceBox1.Font.Color:=tmpFColor;
  nrDeviceBox1.Color:=editColor;
  eInputBuf.Font.Color:=tmpFColor;
  RxClock1.Color:=tmpColor;
  RxClock1.Font.Color:=tmpFColor;
  eInputBuf.Gutter.Color:=tmpColor;
  eInputBuf.Gutter.Font.Color:=tmpFColor;
  for i := 0 to self.ComponentCount-1  do
  begin
    if Components[i] is TPanel then  begin
       TPanel(Components[i]).Color:=editColor;
       TPanel(Components[i]).Font.Color:=tmpColor;
    end;
    if Components[i] is TRxCheckListBox then  begin
       TRxCheckListBox(Components[i]).Color:=editColor;
       TRxCheckListBox(Components[i]).Font.Color:=tmpFColor;
       TRxCheckListBox(Components[i]).Invalidate;
    end;
    if Components[i] is TToolBar then  begin
       TToolBar(Components[i]).Color:=tmpFColor;
       TToolBar(Components[i]).Font.Color:=tmpColor;
    end;
    if Components[i] is TLabel then  begin
       TLabel(Components[i]).Color:=tmpFColor;
       TLabel(Components[i]).Font.Color:=tmpColor;
    end;
    if Components[i] is TRadioGroup then  begin
       TRadioGroup(Components[i]).Color:=tmpFColor;
       TRadioGroup(Components[i]).Font.Color:=tmpColor;
    end;
    if Components[i] is TGroupbox then  begin
       TGroupbox(Components[i]).Color:=tmpFColor;
       TGroupbox(Components[i]).Font.Color:=tmpColor;
    end;
    if Components[i] is TEdit then  begin
       TEdit(Components[i]).Color:=editColor;
       TEdit(Components[i]).Font.Color:=tmpFColor;
    end;
    if Components[i] is TSpinEdit then  begin
       TSpinEdit(Components[i]).Color:=editColor;
       TSpinEdit(Components[i]).Font.Color:=tmpFColor;
    end;
    if Components[i] is TMemo then  begin
       TMemo(Components[i]).Color:=editColor;
       TMemo(Components[i]).Font.Color:=tmpFColor;
    end;
    if Components[i] is TComboBox then  begin
       TComboBox(Components[i]).Color:=editColor;
       TComboBox(Components[i]).Font.Color:=tmpFColor;
       TComboBox(Components[i]).Invalidate;
    end;
    if Components[i] is TCheckBox then  begin
       TCheckBox(Components[i]).Color:=editColor;
       TCheckBox(Components[i]).Font.Color:=tmpFColor;
    end;
    if Components[i] is TListBox then  begin
       TListBox(Components[i]).Color:=editColor;
       TListBox(Components[i]).Font.Color:=tmpFColor;
       TListBox(Components[i]).Invalidate;
    end;
  end;
  if PageControl1.ActivePageIndex=0 then
  begin
    PageControl1.ActivePageIndex:=1;
    Application.ProcessMessages;
    PageControl1.ActivePageIndex:=0;
  end;

end;
*)

procedure TBaseForm.SetUpTheme(adark:boolean);
var i:integer;
    tmpColor:TColor;
    tmpFColor:TColor;
    editColor:TColor;
begin
  if adark then
  begin
    eInputBuf.Color:=cDarkColor;
    eInputBuf.ActiveLineColor:=clDkGray;
    tmpFColor:=clInfoBk;
    tmpColor:=cDarkColor;
    editColor:=cDarkColor;
    Color := cDarkColor;
  end
  else begin
    eInputBuf.Color:=clInfoBk;
    eInputBuf.ActiveLineColor:=clMoneyGreen;
    tmpFColor:=cDarkColor;
    tmpColor:=clLtGray;
    editColor:=clInfoBk;
    Color := clBtnFace;
  end;
  Application.ProcessMessages;
  nrDeviceBox1.Font.Color:=tmpFColor;
  nrDeviceBox1.Color:=editColor;
  eInputBuf.Font.Color:=tmpFColor;
  RxClock1.Color:=tmpColor;
  RxClock1.Font.Color:=tmpFColor;
  eInputBuf.Gutter.Color:=tmpColor;
  eInputBuf.Gutter.Font.Color:=tmpFColor;
  for i := 0 to self.ComponentCount-1  do
  begin
    if Components[i] is TPanel then  begin
       TPanel(Components[i]).Color:=tmpColor;
       TPanel(Components[i]).Font.Color:=tmpFColor;
       if adark then
       begin
         TPanel(Components[i]).BevelOuter := bvLowered;
         TPanel(Components[i]).BevelInner := bvLowered;
       end
       else begin
          TPanel(Components[i]).BevelOuter  := bvNone;
          TPanel(Components[i]).BevelOuter  := bvNone;
       end;
    end;
    if Components[i] is TRxCheckListBox then  begin
       TRxCheckListBox(Components[i]).Color:=editColor;
       TRxCheckListBox(Components[i]).Font.Color:=tmpFColor;
       TRxCheckListBox(Components[i]).Invalidate;
    end;
    if Components[i] is TToolBar then  begin
       TToolBar(Components[i]).Color:=editColor;
       TToolBar(Components[i]).Font.Color:=tmpFColor;
       TToolBar(Components[i]).Invalidate;
    end;
    if Components[i] is TToolBar then  begin
       TToolBar(Components[i]).Color:=tmpColor;
       TToolBar(Components[i]).Font.Color:=tmpFColor;
    end;
    if Components[i] is TLabel then  begin
       TLabel(Components[i]).Color:=tmpColor;
       TLabel(Components[i]).Font.Color:=tmpFColor;
    end;
    if Components[i] is TRadioGroup then  begin
       TRadioGroup(Components[i]).Color:=tmpColor;
       TRadioGroup(Components[i]).Font.Color:=tmpFColor;
    end;
    if Components[i] is TGroupbox then  begin
       TGroupbox(Components[i]).Color:=tmpColor;
       TGroupbox(Components[i]).Font.Color:=tmpFColor;
    end;
    if Components[i] is TEdit then  begin
       TEdit(Components[i]).Color:=editColor;
       TEdit(Components[i]).Font.Color:=tmpFColor;
    end;
    if Components[i] is TSpinEdit then  begin
       TSpinEdit(Components[i]).Color:=editColor;
       TSpinEdit(Components[i]).Font.Color:=tmpFColor;
    end;
(*    if Components[i] is TSpinEdit then  begin
       TSpinEdit(Components[i]).Color:=editColor;
       TSpinEdit(Components[i]).Font.Color:=tmpFColor;
    end;*)
    if Components[i] is TMemo then  begin
       TMemo(Components[i]).Color:=editColor;
       TMemo(Components[i]).Font.Color:=tmpFColor;
    end;
    if Components[i] is TComboBox then  begin
       TComboBox(Components[i]).Color:=editColor;
       TComboBox(Components[i]).Font.Color:=tmpFColor;
       TComboBox(Components[i]).Invalidate;
    end;
    if Components[i] is TCheckBox then  begin
       TCheckBox(Components[i]).Color:=tmpColor;
       TCheckBox(Components[i]).Font.Color:=tmpFColor;
    end;
    if Components[i] is TListBox then  begin
       TListBox(Components[i]).Color:=editColor;
       TListBox(Components[i]).Font.Color:=tmpFColor;
       TListBox(Components[i]).Invalidate;
    end;
  end;
end;


procedure TBaseForm.cDarkMnuClick(Sender: TObject);
begin
  cDarkMnu.Checked:=not cDarkMnu.Checked;
  cMainDarkMnu.Checked:=cDarkMnu.Checked;
  SetUpTheme(cDarkMnu.Checked);
end;

procedure TBaseForm.GroupBox7Click(Sender: TObject);
begin
SetUpTheme(cDarkMnu.Checked);
end;

procedure TBaseForm.cbOldStyleDialogClick(Sender: TObject);
begin
  if cbOldStyleDialog.Checked then
  begin
    OpenDialog1.Options:=OpenDialog1.Options + [ofOldStyleDialog];
    OpenDialog2.Options:=OpenDialog2.Options + [ofOldStyleDialog];
    SaveDialog1.Options:=SaveDialog1.Options + [ofOldStyleDialog];
    SaveDialog2.Options:=SaveDialog2.Options + [ofOldStyleDialog];
  end
  else begin
    OpenDialog1.Options:=OpenDialog1.Options - [ofOldStyleDialog];
    OpenDialog2.Options:=OpenDialog2.Options - [ofOldStyleDialog];
    SaveDialog1.Options:=SaveDialog1.Options - [ofOldStyleDialog];
    SaveDialog2.Options:=SaveDialog2.Options - [ofOldStyleDialog];
  end;
end;

procedure TBaseForm.exInputBuffChkClick(Sender: TObject);
begin
  InputBuf.Visible:=not  exInputBuffChk.Checked;
  eInputBuf.Visible:=exInputBuffChk.Checked;
  FindTextBtn.Visible:=exInputBuffChk.Checked;
  FontsBtn.Visible:=exInputBuffChk.Checked;
  xcharsBtn.Visible:=exInputBuffChk.Checked;
end;

procedure TBaseForm.N110Click(Sender: TObject);
begin
  case TerminalTypeGrp.ItemIndex of
  1:OutputBuf.Text:='$55 $01 $FE $00 $00 $00 $AB';
  2:OutputBuf.Text:='0x55 0x01 0xFE 0x00 0x00 0x00 0xAB';
  3:OutputBuf.Text:='55 01 FE 00 00 00 AB';
  end;
end;

procedure TBaseForm.N210Click(Sender: TObject);
begin
  case TerminalTypeGrp.ItemIndex of
  1:OutputBuf.Text:='$55 $02 $FD $00 $00 $00 $AB';
  2:OutputBuf.Text:='0x55 0x02 0xFD 0x00 0x00 0x00 0xAB';
  3:OutputBuf.Text:='55 02 FD 00 00 00 AB';
  end;
end;

procedure TBaseForm.N310Click(Sender: TObject);
begin
  case TerminalTypeGrp.ItemIndex of
  1:OutputBuf.Text:='$55 $03 $F� $00 $00 $00 $AB';
  2:OutputBuf.Text:='0x55 0x03 0xF� 0x00 0x00 0x00 0xAB';
  3:OutputBuf.Text:='55 03 FC 00 00 00 AB';
  end;
end;

procedure TBaseForm.N111Click(Sender: TObject);
begin
  case TerminalTypeGrp.ItemIndex of
  1:OutputBuf.Text:='$01 $03 $00 $02 $00 $20 $E5 $D2';
  2:OutputBuf.Text:='0x01 0x03 0x00 0x02 0x00 0x20 0xE5 0xD2';
  3:OutputBuf.Text:='01 03 00 02 00 20 E5 D2';
  end;
end;

procedure TBaseForm.N211Click(Sender: TObject);
begin
  case TerminalTypeGrp.ItemIndex of
  1:OutputBuf.Text:='$02 $03 $00 $02 $00 $20 $E5 $E1';
  2:OutputBuf.Text:='0x02 0x03 0x00 0x02 0x00 0x20 0xE5 0xE1';
  3:OutputBuf.Text:='02 03 00 02 00 20 E5 E1';
  end;
end;

procedure TBaseForm.N311Click(Sender: TObject);
begin
  case TerminalTypeGrp.ItemIndex of
  1:OutputBuf.Text:='$03 $03 $00 $02 $00 $20 $E4 $30';
  2:OutputBuf.Text:='0x03 0x03 0x00 0x02 0x00 0x20 0xE4 0x30';
  3:OutputBuf.Text:='03 03 00 02 00 20 E4 30';
  end;
end;

procedure TBaseForm.N01Click(Sender: TObject);
begin
  case TerminalTypeGrp.ItemIndex of
  1:OutputBuf.Text:='$00 $11 $C1 $BC';
  2:OutputBuf.Text:='0x00 0x11 0xC1 0xBC';
  3:OutputBuf.Text:='00 11 C1 BC';
  end;
end;

procedure TBaseForm.N112Click(Sender: TObject);
begin
  case TerminalTypeGrp.ItemIndex of
  1:OutputBuf.Text:='$01 $11 $C0 $2�';
  2:OutputBuf.Text:='0x01 0x11 0xC0 0x2C';
  3:OutputBuf.Text:='01 11 C0 2C';
  end;
end;

procedure TBaseForm.N212Click(Sender: TObject);
begin
  case TerminalTypeGrp.ItemIndex of
  1:OutputBuf.Text:='$02 $11 $C0 $D�';
  2:OutputBuf.Text:='0x02 0x11 0xC0 0xDC';
  3:OutputBuf.Text:='02 11 C0 DC';
  end;
end;

procedure TBaseForm.aCSNExecute(Sender: TObject);
var tmpS:String;
    i:integer;
    Ch:char;
begin
 tmpS:=curProcStr;//Str2Bin(OutputBuf.Text);
 if tmpS='' then Exit;
 ch:=#0;
 for i := 1 to Length(tmpS) do
   ch:=chr(ord(ch)+ord(tmps[i]));
 tmpS:=tmpS+Chr($ff-ord(Ch));
 curProcStr:=tmps;
 //OutputBuf.text:=Bin2Str(tmps);
end;

procedure TBaseForm.xCSN1BtnClick(Sender: TObject);
begin
  if btnCreateCRC.Down then
  begin
     curProcStr:=Str2Bin(OutputBuf.Text);
     aCSNExecute(nil);
     OutputBuf.Text:=Bin2Str(curProcStr);
  end
  else
    curProc:=aCSNExecute;
  SetUpcurProc(False);

end;

procedure TBaseForm.Label8Click(Sender: TObject);
begin
  ComPort_Number.Enabled:=aPortOpen.Enabled;
end;
(*

 00 06 6C E9 2F EA D9 
 00 06 6C E9 2F 01 09 D3 29 A8 F3 
*)
procedure TBaseForm.N2001Click(Sender: TObject);
var
    s:String;
    tmpL:longword;
    tmpLB:array[0..3] of byte absolute tmpL;
begin
   if InputQuery('6 ������� ���� ���������� ������','������� �����',s) then
   begin
      tmpL:=StrToIntDef(s,0);
      if tmpL<>0 then
      begin
        case TerminalTypeGrp.ItemIndex of
        1:OutputBuf.Text:=Format('$%2x $%2x $%2x $%2x $2F',[tmpLB[3],tmpLB[2],tmpLB[1],tmpLB[0]]);
        2:OutputBuf.Text:=Format('0x%2x 0x%2x 0x%2x 0x%2x 0x2F',[tmpLB[3],tmpLB[2],tmpLB[1],tmpLB[0]]);
        3:OutputBuf.Text:=Format('%2x %2x %2x %2x 2F',[tmpLB[3],tmpLB[2],tmpLB[1],tmpLB[0]]);
        end;
        xCRC16BtnClick(nil);
      end;

   end;
end;

procedure TBaseForm.OnF2b( var binar:array of byte; tmpF:Single; m_FloatFormat:TFloatFormat);
var
  x, z, UserFloat:double;
	mantissa:longint;
	e, k:integer;
	sign,Byte1, Byte2, Byte3, Byte4, be:byte;
begin
  UserFloat:=tmpF;
	// remember sign and keep positive
	if (UserFloat < 0) then
	begin
		sign := 1;
		UserFloat := UserFloat*-1;
	end
	else sign := 0;

  case m_FloatFormat of
  ffHitech_24: begin
                  if (UserFloat = 0.0) then
                  begin
                    e := -127;
                    Byte1 := 0;
                    Byte2 := 0;
                    Byte3 := 0;
                    Byte4 := 0;
                    mantissa := 1;
                  end
                  else begin
                    z := Log10(UserFloat) / Log10(2.0);
                    e := trunc(z);
                          if (e > z) then e:=e-1;
                          be := e + 127;

                          x := UserFloat / power(2.0, e);

                          for k:=0 downto -15 do
                          begin
                            if (x >= power(2.0, k)) then
                            begin
                              mantissa:=mantissa+1;		// set bit
                              x :=x - power(2.0, k);	// update remainder
                            end;
                            mantissa := mantissa shl 1;
                          end;

                          // fill byte values
                          if (sign>0) then Byte1 := $80
                                    else Byte1 := 0;
                          Byte1 := Byte1 + (be and $FE) shr 1;
                          Byte2 := (be and $01) shl 7;
                          Byte2 := Byte2 + (integer(mantissa) and $7F00) shr 8;
                          Byte3 := integer(mantissa) and $FF;
                          Byte4 := 0;
                  end;
               end;
  ffIEEE754_32:begin
                  if (UserFloat = 0.0) then
                  begin
                    e := -127;
                    Byte1 := 0;
                    Byte2 := 0;
                    Byte3 := 0;
                    Byte4 := 0;
                    mantissa := 1;
                  end
                  else begin
                    z := Log10(UserFloat) / Log10(2.0);
                    e := trunc(z);
                    if (e > z) then
                    e := e - 1;
                    be := e + 127;

                    x := UserFloat / power(2.0, e);

                    for k:=0 downto 23 do
                    begin
                      if (x >= power(2.0, k)) then
                      begin
                        mantissa:=mantissa+1;		// set bit
                        x := x - power(2.0, k);	// update remainder
                      end;
                      mantissa := mantissa shl 1;
                    end;

                    // fill byte values
                    if (sign>0) then Byte1 := $80
                    else Byte1 := 0;
                    Byte1 :=Byte1 + (be and $FE) shr 1;
                    Byte2 := (be and $01) shl 7;
                    Byte2 := Byte2 +(mantissa and $7F0000) shr 16;
                    Byte3 := (mantissa and $FF00) shr 8;
                    Byte4 := mantissa and $FF;
                  end;

               end;
  ffMicrochip_32:begin
                  if (UserFloat = 0.0) then
                  begin
                    e := -127;
                    Byte1 := 0;
                    Byte2 := 0;
                    Byte3 := 0;
                    Byte4 := 0;
                    mantissa := 1;
                  end
                  else begin

              		 //	z := log(UserFloat) / log(2.0);
                    z := Log10(UserFloat) / Log10(2.0);
                    e := trunc(z);
                    if (e > z) then e := e - 1;
                    be := e + 127;

                    x := UserFloat / power(2.0, e);
                    k := 0;
                    While ( k>-23) do
                    begin
                      if (x >= power(2.0, k)) then
                      begin
                        inc(mantissa);		// set bit
                        x:=x - power(2.0, k);	// update remainder
                      end;
                      mantissa := mantissa shl 1;
                      Dec(k);
                    end;

                    // fill byte values
                    Byte1 := be;
                    if (sign>0) then Byte2 := $80
                    else Byte2 := 0;
                    Byte2 := Byte2+ (mantissa and $7F0000) shr 16;
                    Byte3 := (mantissa and $FF00) shr 8;
                    Byte4 := mantissa and $FF;
                end;

               end;
  ffMicrochip_24: begin
                  if (UserFloat = 0.0) then
                  begin
                    e := -127;
                    Byte1 := 0;
                    Byte2 := 0;
                    Byte3 := 0;
                    Byte4 := 0;
                    mantissa := 1;
                  end
                  else begin
                    z := Log10(UserFloat) / Log10(2.0);
                    e := round(z);
                    if (e > z) then  e:=e - 1;
                    be := e + 127;

                    x := UserFloat / power(2.0, e);

                    for k:=0 downto -15 do
                    begin
                      if (x >= power(2.0, k)) then
                      begin
                        mantissa:=mantissa+1;		// set bit
                        x := x - power(2.0, k);	// update remainder
                      end;
                      mantissa := mantissa shl 1;
                    end;

                    // fill byte values
                    Byte1 := be;
                    if (sign>0) then Byte2 := $80
                    else Byte2 := 0;
                    Byte2 := Byte2 + (mantissa and $7F00) shr 8;
                    Byte3 := mantissa and $FF;
                    Byte4 := 0;
                  end;

               end;
  end;
  binar[0]:=Byte1;
  binar[1]:=Byte2;
  binar[2]:=Byte3;
  binar[3]:=Byte4;

end;


function TBaseForm.OnB2f(longw:longword; m_FloatFormat:TFloatFormat):single;
var
	mantissa:double;
	m_Exp,biased_exponent:integer;
	Byte1, Byte2, Byte3, Byte4:BYTE;
  tmpL:longword;
  tmpF:single;
  binarr:array[0..3] of byte absolute tmpL;
begin
  tmpL:=longw;
  Byte1 := binarr[0];
  Byte2 := binarr[1];
  Byte3 := binarr[2];
  Byte4 := binarr[3];

  mantissa:=0;
  biased_exponent:=0;

	// what format are we using? ffHitech_24,ffIEEE754_32,ffMicrochip_32,ffMicrochip_24
	case (m_FloatFormat) of

	ffHitech_24:	// Hitech 24bit (truncated IEEE 32bit, bias 127, but no Inf or NaN)
    begin

      biased_exponent := ((Byte1 and $7F) shl 1) + ((Byte2 and $80) shr 7);
      m_Exp := biased_exponent - 127;	// removing bias

      // 15 is number of bits in mantissa, thus the 15 bit right shift
      mantissa := (((integer(Byte2) and $7F) shl 8) + Byte3) / power(2, 15) + 1.0;

      // sign bit set?
      if (Byte1 and $80)<>0 then  mantissa := mantissa * -1;

      if ((Byte1 + Byte2 + Byte3) = 0) then
      begin
        // special case, all zeroes
        tmpF:=0.0;
      end
      else
      begin
        // output for user
        tmpF:=mantissa * power(2.0, m_Exp);
      end;
		end;

	ffIEEE754_32:	// IEEE754 32bit
    begin

      biased_exponent := ((Byte1 and $7F) shl 1) + ((Byte2 and $80) shr 7);
      m_Exp := biased_exponent - 127;	// removing bias

      // 23 is number of bits in mantissa, thus the 23 bit right shift
      mantissa := (((longint(Byte2) and $7F) shl 16) + (integer(Byte3) shl 8) + Byte4) / power(2, 23) + 1.0;

      // sign bit set?
      if ((Byte1 and $80)<>0) then  mantissa := mantissa * -1;

      if ((Byte1 + Byte2 + Byte3 + Byte4) = 0) then
      begin
        // special case, all zeroes
        tmpF:=0;
      end
      else if ((biased_exponent = $FF) and ((((Byte2 and $7F) shl 16) + (Byte3 shl 8) + Byte4) = $000000)) then
      begin
        // this is also infinity
        //m_Note = "Note: Special Case - Infinity";
        tmpF:=0;
      end
      else if ((biased_exponent = $FF) and (((longint(Byte2 and $7F) shl 16) + (integer(Byte3) shl 8) + Byte4) <> $000000)) then
      begin
        // not a number
        //m_Note = "Note: Special Case - Not A Number (NaN)";
        tmpF:=0;
      end
      else
      begin
        // output for user
        tmpF:=mantissa * power(2, m_Exp);
      end;

		end;

	ffMicrochip_32:	// Microchip 32Bit
    begin
      biased_exponent := Byte1;
      m_Exp := biased_exponent - 127;	// removing bias

      // 23 is number of bits in mantissa, thus the 23 bit right shift
      mantissa := (((longint(Byte2) and $7F) shl 16) + (integer(Byte3) shl 8) + Byte4) / power(2, 23) + 1.0;

      // sign bit set?
      if ((Byte2 and $80)<>0) then mantissa := mantissa * -1;

      if ((Byte1 + Byte2 + Byte3 + Byte4) = 0) then
      begin
        // special case, all zeroes
        tmpF:=0;
      end
      else
      begin
        // output for user
        tmpF:=mantissa * power(2, m_Exp);
      end;

		end;

	ffMicrochip_24:	// Microchip 24bit
    begin
      biased_exponent := Byte1;
      m_Exp := biased_exponent - 127;	// removing bias

      // 15 is number of bits in mantissa, thus the 15 bit right shift
      mantissa := (((integer(Byte2) and $7F) shl 8) + Byte3) / power(2, 15) + 1.0;

      // sign bit set?
      if (Byte2 and $80)<>0 then 	mantissa := mantissa * -1;

      if ((Byte1 + Byte2 + Byte3) = 0) then
      begin
        // special case, all zeroes
        tmpF := 0.0;
      end
      else
      begin
        // output for user
        tmpF:=mantissa * power(2, m_Exp);
      end;
		end;// Microchip 24bit
	end; // case (m_FloatFormat)
  result:=tmpF;
end;


procedure TBaseForm.cbEmulatorActiveClick(Sender: TObject);
begin
 tsEmulator.TabVisible:=cbEmulatorActive.Checked;
 EmulationActiveBtn.Down:=tsEmulator.TabVisible;
end;

function StrIsStartingFrom( Str, Pattern: PChar ): Boolean;
asm
        XOR     ECX, ECX
      @@1:
        MOV     CL, [EDX]   // pattern[ i ]
        INC     EDX
        MOV     CH, [EAX]   // str[ i ]
        INC     EAX
        TEST    CL,CL
        JZ      @@2
        CMP     CL, CH
        JE      @@1
      @@2:
        SETZ    AL
end;

procedure TBaseForm.ClearMyLog;
var xx1,i: integer;
begin
  xx1:=MyLog.Count;
  if xx1>0 then
   begin
     for i:=0 to xx1-1 do
      begin
        try
         Dispose(PQA(MyLog.ValueList[i]));
        except
        end;
      end; //for
   end;
  MyLog.Clear;
end;

procedure TBaseForm.EmulatorFilenameEditChange(Sender: TObject);
const
  h_tbl: array [0..54] of BYTE=(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 0, 0, 0, 0, 0, 0,
              0,10,11,12,13,14,15, 0, 0, 0, 0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
              0,10,11,12,13,14,15);
var s,sInp,sOutp,sInpBin,sOutpBin,sComment: string;
    k1: byte;
    i,j,len1,lenbin: word;
    PSLoraMdm: PQA;
    F: TextFile;
    foundCRLF:boolean;
begin
    //��������� ������ ��� ��������
    s:=EmulatorFilenameEdit.Text;
    gwEmulator.Rows.Count:=0;
    if FileExists(s) then
     begin
       //
       ClearMyLog;
       gwEmulator.Rows.Count:=0;
       AssignFile(F,s);
       reset(f);
       while (not eof(f)) do
        begin
          readln(f,sInp);
          try
            if StrIsStartingFrom(PChar(sInp),PChar(edtEmulatorInHEX.Text)) then
             begin
                readln(f,sOutp);
                if StrIsStartingFrom(PChar(sOutp),PChar(edtEmulatorOutHEX.Text)) then
                 begin // ��������� � ���������
                   len1:=length(sInp);
                   lenbin:=(len1-Length(edtEmulatorInHEX.Text)+1) div 3;
                   setlength(sInpBin,lenbin);
                   j:=0; // ���-�� ��������� ��������
                   for i:=Length(edtEmulatorInHEX.Text)+1 to len1 do
                       begin
                         if ((ord(sInp[i])>47) and (ord(sInp[i])<58)) or
                          ((ord(sInp[i])>64) and (ord(sInp[i])<71)) then
                           begin
                             inc(j);
                             if ((j and 1)=1) then k1:=h_tbl[ord(sInp[i])-$30] shl 4
                             else
                             begin
                               k1:=k1+h_tbl[ord(sInp[i])-$30];
                               sInpBin[(j shr 1)]:=chr(k1);
                             end;
                           end;
                       end;
                   // ��������� �����
                   len1:=length(sOutp);
                   lenbin:=(len1-Length(edtEmulatorOutHEX.Text)+1) div 3;
                   setlength(sOutpBin,lenbin);
                   j:=0; // ���-�� ��������� ��������
                   for i:=11 to len1 do
                       begin
                         if ((ord(sOutp[i])>47) and (ord(sOutp[i])<58)) or
                          ((ord(sOutp[i])>64) and (ord(sOutp[i])<71)) then
                           begin
                             inc(j);
                             if ((j and 1)=1) then k1:=h_tbl[ord(sOutp[i])-$30] shl 4
                             else
                             begin
                               k1:=k1+h_tbl[ord(sOutp[i])-$30];
                               sOutpBin[(j shr 1)]:=chr(k1);
                             end;
                           end;
                       end;
                   // ������� ���� ������-�����
                   if (not Assigned(MyLog.Items[sInpBin])) then
                   begin
                     New(PSLoraMdm);
                     PSLoraMdm^.Answer:=sOutpBin;
                     PSLoraMdm^.Comment:='';
                     PSLoraMdm^.crlf:=sOutpBin[length(sOutpBin)]=#$0d;
                     PSLoraMdm^.binary:=True;
                     MyLog.Add(sInpBin,PSLoraMdm);
                     gwEmulator.Rows.Count:=gwEmulator.Rows.Count+1;
                   end;
                 end;
             end
             else begin
             //ASCII
              sComment:='';
              sInpBin:='';
              sOutpBin:='';
              foundCRLF:=false;
              if StrIsStartingFrom(PChar(sInp),PChar(edtEmulatorInASCII.Text)) then
               begin
                  readln(f,sOutp);
                  if StrIsStartingFrom(PChar(sOutp),PChar(edtEmulatorOutASCII.Text)) then
                  begin // ��������� � ���������
                     len1:=length(sInp);
                     j:=Length(edtEmulatorInASCII.Text); // ���-�� ��������� ��������
                     for i:=(j+1) to len1 do
                     begin
                        if cbEmulatorCRLF.Checked then
                        begin
                          //����� ����������� �� ������ �������� �������
                          if (ord(sInp[i])=edtEmulatorCRCharValue.Value) then
                          begin
                            //������ ������ �������� �������
                            foundCRLF:=true;
                            sComment:=' ';//�������� ������ - ����� ���� �����������
                          end
                          else begin
                            //��������� ������
                            if sComment<>'' then
                               sComment:=sComment+sInp[i]
                            else
                               sInpBin:=sInpBin+sInp[i];
                          end;
                        end
                        else
                          sInpBin:=sInpBin+sInp[i];
                     end;
                     len1:=length(sOutp);
                     j:=Length(edtEmulatorOutASCII.Text);
                     for i:=(j+1) to len1 do
                     begin
                          if (ord(sOutp[i])<>edtEmulatorCRCharValue.Value) then
                             sOutpBin:=sOutpBin+sOutp[i]
                          else
                             foundCRLF:=True;
                     end;
                     // ������� ���� ������-�����
                     sInpBin:=Trim(sInpBin);
                     sOutpBin:=Trim(sOutpBin);
                     if not cbEmulatorViewInASCII.Checked then cbEmulatorViewInASCII.Checked:=True;
                     if (not Assigned(MyLog.Items[sInpBin])) then
                     begin
                       New(PSLoraMdm);
                       PSLoraMdm^.Answer:=sOutpBin;
                       PSLoraMdm^.Comment:=sComment;
                       PSLoraMdm^.crlf:=foundCRLF;
                       PSLoraMdm^.binary:=False;
                       MyLog.Add(sInpBin,PSLoraMdm);
                       gwEmulator.Rows.Count:=gwEmulator.Rows.Count+1;
                       Application.ProcessMessages;
                     end;
                  end;
               end

             end;

           except
           end;
        end;
       closefile(f);
    end;
    gwEmulator.Rows.Count:=MyLog.Count;
    gwEmulator.Invalidate;
end;

procedure TBaseForm.EmulationActiveBtnClick(Sender: TObject);
begin
  cbEmulatorActive.Checked:=not cbEmulatorActive.Checked;
  cbEmulatorActiveClick(Sender);
end;

procedure TBaseForm.gwEmulatorGetCellText(Sender: TObject; Cell: TGridCell;
  var Value: String);
    var r,c:integer;
        s:String;
        i:integer;
begin
  c:=Cell.Col;
  r:=Cell.Row;
  case c of
  0: Value:=IntToStr(r+1);
  1: begin
       if cbEmulatorViewInASCII.Checked then
       begin
         s:=MyLog.KeyList[r];
         if PQA(MyLog.ValueList[r])^.crlf then
            s:=s+cCRStr;
       end
       else begin
         s:='';
         for i:=1 to Length(MyLog.KeyList[r]) do
            s:=s+IntToHex(ord(MyLog.KeyList[r][i]),2);
       end;
       Value:=s;
     end;//1
  2: begin
       if cbEmulatorViewInASCII.Checked then
       begin
         s:=PQA(MyLog.ValueList[r])^.Answer;
         if PQA(MyLog.ValueList[r])^.crlf then
            s:=s+cCRStr;

       end
       else begin
         s:='';
         for i:=1 to Length(PQA(MyLog.ValueList[r])^.Answer) do
            s:=s+IntToHex(ord(PQA(MyLog.ValueList[r])^.Answer[i]),2);
       end;
       Value:=s;
     end;//2
  3: begin
       s:=PQA(MyLog.ValueList[r])^.Comment;
       Value:=s;
     end;//3
  end;


end;

procedure TBaseForm.cbEmulatorViewInASCIIClick(Sender: TObject);
begin
  gwEmulator.Invalidate;
end;

procedure TBaseForm.edtEmulatorCRCharValueChange(Sender: TObject);
begin
  edtEmulatorCRChar.Text:=chr(edtEmulatorCRCharValue.Value);
end;

procedure TBaseForm.cbEmulatorCRLFClick(Sender: TObject);
begin
 edtEmulatorCRCharValue.Visible:=cbEmulatorCRLF.Checked;
 edtEmulatorCRChar.Visible:=cbEmulatorCRLF.Checked;
end;

procedure TBaseForm.SaveEmulatorBtnClick(Sender: TObject);
var s,sInp,sOutp,sInpBin,sOutpBin,sComment: string;
    i,j,len1,lenbin: word;
    PSLoraMdm: PQA;
    F: TextFile;
    foundCRLF:boolean;
    binary:boolean;
begin
   AssignFile(F,EmulatorFilenameEdit.FileName);
   try
     rewrite(f);
     for i:=0 to MyLog.Count-1 do
     begin
        sInp:=MyLog.KeyList[i];
        sOutp:=PQA(MyLog.ValueList[i])^.Answer;
        sComment:=PQA(MyLog.ValueList[i])^.Comment;
        foundCRLF:=PQA(MyLog.ValueList[i])^.crlf;
        binary:=PQA(MyLog.ValueList[i])^.binary;
        if (not binary) then
        begin
          if foundCRLF then
             sInp:=sInp+chr(edtEmulatorCRCharValue.Value)+sComment;
          sInp:=edtEmulatorInASCII.Text+sInp;
          writeln(f,sInp);
          if foundCRLF then
             sOutp:=sOutp+chr(edtEmulatorCRCharValue.Value);
          sOutp:=edtEmulatorOutASCII.Text+sOutp;
          writeln(f,sOutp);
        end
        else begin
          sInpBin:=edtEmulatorInHEX.Text+Str2HEX(sInp);
          writeln(f,sInpBin);
          sOutpBin:=edtEmulatorOutHEX.Text+Str2HEX(sOutp);
          writeln(f,sOutpBin);
        end;
     end;
   finally
     closefile(f);
   end;

end;

procedure TBaseForm.gwEmulatorSetEditText(Sender: TObject; Cell: TGridCell;
  var Value: String);
    var r,c:integer;
        s:String;
        i:integer;
begin
  c:=Cell.Col;
  r:=Cell.Row;
  case c of
  1: begin
       if cbEmulatorViewInASCII.Checked then
       begin
         MyLog.KeyList[r]:=Value;
       end
       else begin
         MyLog.KeyList[r]:=HEX2Str(Value);
       end;
     end;//1
  2: begin
       if cbEmulatorViewInASCII.Checked then
       begin
         PQA(MyLog.ValueList[r])^.Answer:=Value;
       end
       else begin
         PQA(MyLog.ValueList[r])^.Answer:=HEX2Str(Value);
       end;
     end;//2
  3: begin
       PQA(MyLog.ValueList[r])^.Comment:=Value;
     end;//2
  end;


end;


function WithoutCRStr(s:String):String;
var i,len:integer;
begin
  i:=pos(cCRStr,s);
  if i>0 then
     result:=copy(s,1,i-1)
  else
     result:=s;
end;


procedure TBaseForm.gwEmulatorGetEditText(Sender: TObject; Cell: TGridCell;
  var Value: String);
    var r,c:integer;
        s:String;
        i:integer;
begin
  c:=Cell.Col;
  r:=Cell.Row;
  case c of
  1: begin
       if cbEmulatorViewInASCII.Checked then
       begin
         Value:=WithoutCRStr(MyLog.KeyList[r]);
       end
     end;//1
  2: begin
       if cbEmulatorViewInASCII.Checked then
       begin
         Value:=WithoutCRStr(PQA(MyLog.ValueList[r])^.Answer);
       end
     end;//2
  end;


end;

procedure TBaseForm.gwEmulatorCellClick(Sender: TObject; Cell: TGridCell;
  Shift: TShiftState; X, Y: Integer);
  var oldIdx:integer;
begin
   oldIdx:=gwEmulator.Tag;
   gwEmulator.tag:=Cell.Row;
   gwEmulator.InvalidateRow(oldIdx);
   gwEmulator.InvalidateRow(gwEmulator.tag);
end;

procedure TBaseForm.gwEmulatorGetCellColors(Sender: TObject;
  Cell: TGridCell; Canvas: TCanvas);
begin
   if Cell.Row=gwEmulator.Tag then
      Canvas.Brush.Color:=clMoneyGreen
   else
      Canvas.Brush.Color:=clWhite
end;

procedure TBaseForm.btnAddItemToEmulatorClick(Sender: TObject);
var sInpBin,sOutpBin,sComment: string;
    PSLoraMdm: PQA;
begin
 if AddEmulatorForm.ShowModal=mrOk then
 begin
   if AddEmulatorForm.cbHex.Checked then
     sInpBin:=HEX2Str(AddEmulatorForm.InpEdt.Text)
   else
     sInpBin:=AddEmulatorForm.InpEdt.Text;
   if AddEmulatorForm.cbHex.Checked then
     sOutpBin:=HEX2Str(AddEmulatorForm.OutpEdt.Text)
   else
     sOutpBin:=AddEmulatorForm.OutpEdt.Text;
   PSLoraMdm:=MyLog.Items[sInpBin];
   if (not Assigned(PSLoraMdm)) then
   begin
     New(PSLoraMdm);
     PSLoraMdm^.Answer:=sOutpBin;
     PSLoraMdm^.Comment:=AddEmulatorForm.CommentEdt.Text;
     PSLoraMdm^.crlf:=AddEmulatorForm.cbCRLF.Checked;
     PSLoraMdm^.binary:=AddEmulatorForm.cbHex.Checked;
     MyLog.Add(sInpBin,PSLoraMdm);
     gwEmulator.Rows.Count:=gwEmulator.Rows.Count+1;
   end
   else begin
     PSLoraMdm^.Answer:=sOutpBin;
     PSLoraMdm^.Comment:=AddEmulatorForm.CommentEdt.Text;
     PSLoraMdm^.crlf:=AddEmulatorForm.cbCRLF.Checked;
     PSLoraMdm^.binary:=AddEmulatorForm.cbHex.Checked;
   end;

 end;
end;

procedure TBaseForm.btnDeleteItemFromEmulatorClick(Sender: TObject);
begin
   if gwEmulator.Rows.Count>0 then
   if MessageDlg('������� ������� �������?',mtConfirmation,[mbOK, mbCancel],0)=mrOk then
   begin
     MyLog.RemoveAt(gwEmulator.Tag);
     gwEmulator.Rows.Count:=gwEmulator.Rows.Count-1;
   end;
end;

procedure TBaseForm.N23x1Click(Sender: TObject);
var
    s:String;
    tmpb:byte;
begin
   if InputQuery('������� ������� ����� �������','������� �����',s) then
   begin
      tmpB:=StrToIntDef(s,0);
      if tmpB<>0 then
      begin
        //07 01 01 01 01 01 01 01 01
        case TerminalTypeGrp.ItemIndex of
        1:OutputBuf.Text:=Format('$%2x $01 $01 $01 $01 $01 $01 $01 $01',[tmpB]);
        2:OutputBuf.Text:=Format('0x%2x 0x01 0x01 0x01 0x01 0x01 0x01 0x01 0x01',[tmpB]);
        3:OutputBuf.Text:=Format('%2x 01 01 01 01 01 01 01 01',[tmpB]);
        end;
        xCRC16BtnClick(nil);
      end;

   end;
end;

procedure TBaseForm.gwEmulatorCheckClick(Sender: TObject; Cell: TGridCell);
var x:boolean;
    r:integer;
begin
  r:=Cell.Row;
  x:=PQA(MyLog.KeyList[r])^.active;
  PQA(MyLog.KeyList[r])^.active:=not x;

end;

procedure TBaseForm.gwEmulatorGetCheckState(Sender: TObject;
  Cell: TGridCell; var CheckState: TCheckBoxState);
begin
   if PQA(MyLog.KeyList[Cell.Row])^.active then
     CheckState:=cbChecked
   else
     CheckState:=cbUnchecked
end;

procedure TBaseForm.cbSyntaxChange(Sender: TObject);
begin
  case cbSyntax.ItemIndex of
  0:  eInputBuf.Highlighter:=SynCppSyn1;
  1:  eInputBuf.Highlighter:=SynPasSyn1;
  2:  eInputBuf.Highlighter:=SynSQLSyn1;
  end;
end;

procedure TBaseForm.mnuSelectLineClick(Sender: TObject);
begin
  if mnuSelectNormal.Checked then
    eInputBuf.SelectionMode:=smNormal
  else if mnuSelectColumn.Checked then
    eInputBuf.SelectionMode:=smColumn
  else
    eInputBuf.SelectionMode:=smLine

end;

procedure TBaseForm.eInputBufDropFiles(Sender: TObject; X, Y: Integer;
  AFiles: TUnicodeStrings);
  var s:String;
begin
  try
  s:=AFiles.Text;
  except
  s:=''
  end;
  if FileExists(s) then
     eInputBuf.Lines.LoadFromFile(s);

end;


procedure TBaseForm.gvGraphGetCellText(Sender: TObject; Cell: TGridCell;
  var Value: String);
  var dt:TDateTime;

begin
   if Series1.Active then
      dt:=Series1.XValue[Cell.Row]
   else if  Series2.Active then
      dt:=Series2.XValue[Cell.Row]
   else if  Series3.Active then
      dt:=Series3.XValue[Cell.Row]
   else if  Series4.Active then
      dt:=Series4.XValue[Cell.Row]
   else
    dt:=0;



   case Cell.Col of
   0: Value:=DateTimeToStr(dt);
   1: Value:=IntToStr(Round(Series1.YValue[Cell.Row]));
   2: Value:=IntToStr(Round(Series2.YValue[Cell.Row]));
   3: Value:=IntToStr(Round(Series3.YValue[Cell.Row]));
   4: Value:=IntToStr(Round(Series4.YValue[Cell.Row]));
   end;
end;

procedure TBaseForm.StoreDataToExecMnuClick(Sender: TObject);
var i:integer;
begin
 StopExcel();
 AddWorkBook(True);
 for i:=0 to gvGraph.Rows.Count-1 do
 begin
   AddDataToWorkBook(i+1,1,Series1.XValue[i]);
   AddDataToWorkBook(i+1,2,Series1.YValue[i]);
   AddDataToWorkBook(i+1,3,Series2.YValue[i]);
   AddDataToWorkBook(i+1,4,Series3.YValue[i]);
   AddDataToWorkBook(i+1,5,Series4.YValue[i]);
 end;
 if SaveDialog3.Execute then
    SaveWorkBook(SaveDialog3.FileName,1);
 StopExcel();

end;

(*
volatile const unsigned Polinom=0x1021;
volatile unsigned int accumulator=0;//0xFFFF;
volatile unsigned int flag; //unsigned char flag;
volatile int i,j;
    for (i=0;i<Count;i++){
          accumulator^=(*Arr) << 8;
          for (j=0;j<8;j++){
                flag=accumulator&0x8000;
                accumulator<<=1;
                if (flag) accumulator^=Polinom;
          }
        Arr++;
    }
    return accumulator;
*)
function GetCRC16Corall(S:String;len:integer):word;
var accumulator,Polinom,flag:word;
    B:array[1..2]of byte absolute accumulator;
    i,j:integer;

begin
  Polinom:=$1021;
  accumulator:=0;
  for i := 1 to Len do
  begin
     accumulator:=accumulator xor (ord(s[i]) * 256);
     for j := 0 to 7 do
     begin
         flag:=accumulator and $8000;
         accumulator:=accumulator shl 1;
         if (flag<>0) then
            accumulator:=accumulator  xor Polinom;
     end;
  end;
  result:=accumulator;
end;

procedure TBaseForm.aCRC16CorallExecute(Sender: TObject);
var tmpS:String;
    CS:Word;
begin
 //tmpS:=Str2Bin(OutputBuf.Text);
 tmpS:=curProcStr;
 if tmpS='' then Exit;
 CS:=GetCRC16Corall(tmpS,Length(tmpS));
 tmpS:=tmpS+chr(CS and $FF)+chr(CS shr 8);
 curProcStr:=tmps;
end;

procedure TBaseForm.N56Click(Sender: TObject);
begin
  case TerminalTypeGrp.ItemIndex of
  1:OutputBuf.Text:='$00 $04 $00 $00 $00 $00 $26 $00 $1F $AB';
  2:OutputBuf.Text:='0x00 0x04 0x00 0x00 0x00 0x00 0x26 0x00 0x1F 0xAB';
  3:OutputBuf.Text:='00 04 00 00 00 00 26 00 1F AB';
  end;
end;

procedure TBaseForm.OpenPortTimerTimer(Sender: TObject);
begin
  //��������� ����
  if aPortOpen.Enabled then
     aPortOpen.Execute
  else
      OpenPortTimer.Enabled:=False;

end;

procedure TBaseForm.pcTypeOfConnectChange(Sender: TObject);
var s:string;
    i:integer;
begin
  RTS.visible:=pcTypeOfConnect.ActivePageIndex=0;
  DTR.visible:=pcTypeOfConnect.ActivePageIndex=0;
  AutoDTR.visible:=pcTypeOfConnect.ActivePageIndex=0;
  RefreshPortState;
end;

procedure TBaseForm.pcTypeOfConnectChanging(Sender: TObject;
  var AllowChange: Boolean);
begin
  AllowChange:=not PortConnected;
end;

procedure TBaseForm.UDPSocketSendFailed(Sender: AUDPSocket;
  ErrorCode: Integer; Addr: in_addr; PortNum: Word; Host, Port: String;
  const Data; DataSize: Integer);
begin
  toSystemLog('Error: SendFailed Host:'+Host+' Port:'+Port);
end;

procedure TBaseForm.ApplicationEvents1Exception(Sender: TObject;
  E: Exception);
begin
  OutputDebugString(PChar('Term2006 ������: '+E.Message));
end;

procedure TBaseForm.WMMouseWheel(var Msg: TWMMouseWheel);
var
  i:integer;
begin
  for i := 0 to ComponentCount - 1 do
  begin
    if Components[i] is TEdit then
    begin
      if Msg.WheelDelta > 0 then
        TEdit(Components[i]).Font.Size:=TEdit(Components[i]).Font.Size+1
      else
        TEdit(Components[i]).Font.Size:=TEdit(Components[i]).Font.Size-1;
    end;
    if Components[i] is TSynEdit then
    begin
      if Msg.WheelDelta > 0 then
        TSynEdit(Components[i]).Font.Size:=TSynEdit(Components[i]).Font.Size+1
      else
        TSynEdit(Components[i]).Font.Size:=TSynEdit(Components[i]).Font.Size-1;
    end;
    if Components[i] is TListBox then
    begin
      TListBox(Components[i]).Visible:=False;
      if Msg.WheelDelta > 0 then
        TListBox(Components[i]).Font.Size:=TListBox(Components[i]).Font.Size+1
      else
        TListBox(Components[i]).Font.Size:=TListBox(Components[i]).Font.Size-1;
      TListBox(Components[i]).Visible:=True;
    end;
    if Components[i] is TMemo then
    begin
      if Msg.WheelDelta > 0 then
        TMemo(Components[i]).Font.Size:=TMemo(Components[i]).Font.Size+1
      else
        TMemo(Components[i]).Font.Size:=TMemo(Components[i]).Font.Size-1;
    end;
  end;
end;



end.

