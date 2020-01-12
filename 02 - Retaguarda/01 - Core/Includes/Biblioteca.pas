unit Biblioteca;

interface
Uses
   Vcl.Forms,
   Vcl.Controls,
   System.Sysutils;

Procedure prcStatusMessage(sTitulo: String = 'Processando... Aguarde!'; sMessage: string =''; lbAbrir: boolean = True);
function Trunca(const Valor:Double; Decimais:Integer = 2): Double;

implementation

uses
   uEmissorNfeStatus;

Procedure prcStatusMessage(sTitulo: String = 'Processando... Aguarde!'; sMessage: string =''; lbAbrir: boolean = True);
begin

   Application.ProcessMessages;

   if lbAbrir then
   begin
      if not Assigned( FrEmissorNfeStatus ) then
         FrEmissorNfeStatus := TFrEmissorNfeStatus.Create(Application);

      FrEmissorNfeStatus.lTitulo.Caption   := sTitulo;
      FrEmissorNfeStatus.lblStatus.Caption := sMessage;
      FrEmissorNfeStatus.Show;
      FrEmissorNfeStatus.BringToFront;
   end
   else
      FrEmissorNfeStatus.close;

   Application.ProcessMessages;

end;

function Trunca(const Valor:Double; Decimais:Integer = 2): Double;
var
  I, C  : Integer;
  S, S2 : String;
  V     : Boolean;
begin

  S := FloatToStr(Valor);
  C := 0; V := False;

  For I := 1 to Length(S) do
  begin

    if not V then V := S[I] = ',';
    S2 := S2 + S[I];
    if V then Inc(C);

    if C > Decimais then
      Break;
  end;

  Result := StrToFloat(S2);

end;
end.
