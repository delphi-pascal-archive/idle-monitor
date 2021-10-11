unit main;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TfMain = class(TForm)
    IdleTimer: TTimer;
    lbWarning: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure IdleTimerTimer(Sender: TObject);
  end;

var
  fMain: TfMain;

implementation

{$R *.dfm}

const
  IdleThreshold = 10;

procedure TfMain.FormCreate(Sender: TObject);
begin
 Application.ShowMainForm:=false;
end;

procedure TfMain.IdleTimerTimer(Sender: TObject);
var
 LII: TLastInputInfo;
 CurrentIdleInterval: DWORD;
begin
 FillChar(LII, SizeOf(LII), 0);
 LII.cbSize:=SizeOf(LII);
 Win32Check(GetLastInputInfo(LII));
 CurrentIdleInterval:=GetTickCount-LII.dwTime;
 if CurrentIdleInterval>1000*IdleThreshold
 then
  begin
   lbWarning.Caption:=Format('Ты бездельничаешь уже %d секунд',
                                 [CurrentIdleInterval div 1000]);
   if not Visible
   then Show;
  end
 else Hide;
end;

end.
