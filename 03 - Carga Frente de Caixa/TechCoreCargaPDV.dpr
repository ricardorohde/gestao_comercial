program TechCoreCargaPDV;

uses
  Vcl.Forms,
  Windows,
  Dialogs,
  uMain in 'uMain.pas' {FrMain};

{$R *.res}

var
   H : HWND;

begin
   h := FindWindow(nil, 'TechCore - Carga PDV');

   if h = 0 then
   begin
      Application.Initialize;
      Application.MainFormOnTaskbar := True;
      Application.CreateForm(TFrMain, FrMain);
  Application.Run;
   end;
end.
