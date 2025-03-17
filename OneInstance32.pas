Unit OneInstance32;

interface
function OneInstance: boolean;

implementation

uses
  Windows,Forms;

var
g_hAppMutex: THandle;

function OneInstance: boolean;
var
  g_hAppCritSecMutex: THandle;
  dw: Longint;
begin
  g_hAppCritSecMutex := CreateMutex( nil, true, PChar(Application.Title +'.OneInstance32.CriticalSection') );

// if GetLastError - лениво писать

  g_hAppMutex := CreateMutex( nil, false, PChar(Application.Title +'OneInstance32.Default') );

  dw := WaitForSingleObject( g_hAppMutex, 0 );

  Result :=  (dw <> WAIT_TIMEOUT);

  ReleaseMutex( g_hAppCritSecMutex ); // необязательно вследствие последующего закрытия
  CloseHandle( g_hAppCritSecMutex );

end;

initialization

g_hAppMutex := 0;

finalization

  if LongBool( g_hAppMutex ) then
  begin
    ReleaseMutex( g_hAppMutex); // необязательно
    CloseHandle( g_hAppMutex );
  end;
end.
