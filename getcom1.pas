unit getcom1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    function EnumPorts: boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

const
  DIGCF_DEVICEINTERFACE   = $00000010;
  DIREG_DEV  = $00000001; // Open/Create/Delete device key
  DICS_FLAG_GLOBAL         = $00000001;  // make change in all hardware profiles
  DIGCF_PRESENT           = $00000002;
  SPDRP_DEVICEDESC        = $00000000; 

type
  SP_DEVICE_INTERFACE_DATA = packed record
    cbSize: DWORD;
    InterfaceClassGuid: TGUID;
    Flags: DWORD;
    Reserved: DWORD;
  end;

  PSP_DEVINFO_DATA = ^SP_DEVINFO_DATA;
  SP_DEVINFO_DATA = record
    cbSize: DWORD;
    ClassGuid: TGUID;
    DevInst: DWORD;
    Reserved: LongInt;
  end;

function SetupDiGetClassDevs(const ClassGuid: PGUID; Enumerator: PChar;
  hwndParent: HWND; Flags: DWORD): Cardinal; stdcall;
  external 'Setupapi.dll' name 'SetupDiGetClassDevsA';

function SetupDiEnumDeviceInfo(DeviceInfoSet: Cardinal; MemberIndex: DWORD;
  DeviceInfoData: PSP_DEVINFO_DATA): BOOL; stdcall;
  external 'Setupapi.dll' name 'SetupDiEnumDeviceInfo';

function SetupDiGetDeviceRegistryProperty(DeviceInfoSet: Cardinal;
  DeviceInfoData: PSP_DEVINFO_DATA; Propertys: DWORD;
  PropertyRegDataType: PWORD; PropertyBuffer: PByte;
  PropertyBufferSize: DWORD; RequiredSize: PDWORD): BOOL; stdcall;
  external 'Setupapi.dll' name 'SetupDiGetDeviceRegistryPropertyA';

function SetupDiDestroyDeviceInfoList(DeviceInfoSet: Cardinal): BOOL; stdcall;
  external 'Setupapi.dll' name 'SetupDiDestroyDeviceInfoList';

function SetupDiOpenDevRegKey(DeviceInfoSet: Cardinal; 
DeviceInfoData: PSP_DEVINFO_DATA;
  Scope, HwProfile, KeyType: DWORD; samDesired: REGSAM): HKEY;stdcall; 
external 'Setupapi.dll' name 'SetupDiOpenDevRegKey'; 

var ComIsBluetooth: array[1..255] of byte;


function TForm1.EnumPorts:boolean;
const
 GUID_DEVICEINTERFACE_COMPORT:TGUID = '{4D36E978-E325-11CE-BFC1-08002BE10318}';
var h             : THandle;
    devinfo       : SP_DEVICE_INTERFACE_DATA;
    bMoreItems    : boolean;
    nIndex        : longint;
    hDeviceKey    : HKEY;
    szData        : array[0..255]of Char;
    dwType,dwSize : DWORD;
    comIdx        : BYTE;
    sname: string;
//    item          : TComPortInfo;
begin
//  h:=SetupDiGetClassDevs(@guid,nil,0,DIGCF_PRESENT or DIGCF_INTERFACEDEVICE);
// DIGCF_DEFAULT DIGCF_PRESENT DIGCF_ALLCLASSES DIGCF_PROFILE  DIGCF_DEVICEINTERFACE
//  h:=SetupDiGetClassDevs(@guid,nil,0,DIGCF_PRESENT or DIGCF_INTERFACEDEVICE);
  for nIndex:=1 to 255 do ComIsBluetooth[nIndex]:=0;
  h:=SetupDiGetClassDevs(@GUID_DEVICEINTERFACE_COMPORT,nil,0,DIGCF_PRESENT);
  if  h=INVALID_HANDLE_VALUE then
   begin
     Memo1.Lines.Add('No dev');
     result:=false;
     exit;
   end;
  try
    nIndex:=0;
    bMoreItems:=true;
    while(bMoreItems)do
      begin
        devinfo.cbSize:=sizeof(SP_DEVICE_INTERFACE_DATA);
        bMoreItems:=SetupDiEnumDeviceInfo(h,nIndex,@devinfo);
        if bMoreItems then
         begin
           hDeviceKey:=SetupDiOpenDevRegKey(h,@devinfo,DICS_FLAG_GLOBAL,0,DIREG_DEV,KEY_QUERY_VALUE);
           sname:='';
           if(hDeviceKey>0)then
            begin
              szData[0]:=#0;
              dwSize:=sizeof(szData);
              dwType:=0;
              if (RegQueryValueEx(hDeviceKey,'PortName',nil,@dwType,@szData,@dwSize)=0)and(dwSize>=2)then
               begin
                 sname:=szData;
                 if (length(sname)>3) and (sname[1]='C') then else sname:='';
               end;
              RegCloseKey(hDeviceKey);
            end;
           if(sname<>'')then
            begin
              szData[0]:=#0;
              dwSize:=sizeof(szData);
              dwType:=0;
              if (SetupDiGetDeviceRegistryProperty(h,@devinfo,SPDRP_DEVICEDESC,@dwType,@szData,dwSize,@dwSize))and(dwType = REG_SZ)then
               begin
                 if Pos('Blue',szData)>0 then
                  begin
                    comIdx:=length(sname);
                    case comIdx of
                     4: comIdx:=ord(sname[4])-$30;
                     5: comIdx:=(ord(sname[4])-$30)*10+ord(sname[5])-$30;
                     6: comIdx:=(ord(sname[4])-$30)*100+((ord(sname[5])-$30)*10)+ord(sname[6])-$30;
                    end;
                    ComIsBluetooth[comIdx]:=1;
                  end;
               end;
//                 Memo1.Lines.Add(sname+':'+szData);
            end;
        end;
      inc(nIndex);
      end;
    result:=true;
  finally
    SetupDiDestroyDeviceInfoList(h);
  end;
end;

procedure TForm1.Button1Click(Sender: TObject);
var i: byte;
    s: string;
begin
  Memo1.Clear;
  EnumPorts;
  s:='';
  for i:=1 to 255 do
   if ComIsBluetooth[i]=1 then s:=s+Inttostr(i)+',';
  if s<>'' then Memo1.Lines.Add('Порты Bluetooth: '+s)
   else Memo1.Lines.Add('В системе отсутствуют Bluetooth COM порты');
end;

end.
