unit uDreFiltro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls, Vcl.Mask,
  JvExMask, JvToolEdit, Vcl.ExtCtrls, RzPanel, RzDlgBtn, ACBrUtil;

type
  TfrDreFiltro = class(TForm)
    Label4: TLabel;
    Label1: TLabel;
    RzDialogButtons1: TRzDialogButtons;
    eDataIni: TJvDateEdit;
    eDataFim: TJvDateEdit;
    Pop00: TPopupMenu;
    SelecionarCliente1: TMenuItem;
    N1: TMenuItem;
    Sair1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure eDataFimExit(Sender: TObject);
    procedure RzDialogButtons1ClickOk(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frDreFiltro: TfrDreFiltro;

implementation

{$R *.dfm}

uses uDreSintetico01;

procedure TfrDreFiltro.eDataFimExit(Sender: TObject);
begin
   if eDataIni.Date > eDataFim.Date then
   begin
      Application.MessageBox('A data Final não pode ser menor que a data Inicial.','TechCore-RTG',mb_IconStop or mb_Ok);
      eDataFim.SetFocus;
   end;
end;

procedure TfrDreFiltro.FormCreate(Sender: TObject);
begin
   // Define a data atual
   eDataIni.Date := Date;
   eDataFim.Date := Date;
end;

procedure TfrDreFiltro.RzDialogButtons1ClickOk(Sender: TObject);
begin
   // Confere o preenchimento antes de continuar
   if ( OnlyNumber(eDataIni.Text) = '' )  or ( OnlyNumber(eDataFim.Text) = '' ) then
   begin
      Application.MessageBox('Informe as datas para filtrar os registros.','TechCore-RTG',mb_IconStop or mb_Ok);
      eDataIni.SetFocus;
      Abort;
   end;

   {carrega o resultado}
   FrDreSintetico01 := TFrDreSintetico01.Create(self);

   if FrDreSintetico01.Carregaresultados(eDataIni.Date, eDataFim.Date) then
      FrDreSintetico01.Printer.Preview();
end;

end.
