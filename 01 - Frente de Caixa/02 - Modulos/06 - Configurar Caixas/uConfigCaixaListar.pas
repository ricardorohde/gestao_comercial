unit uConfigCaixaListar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  JvExDBGrids, JvDBGrid, Vcl.ExtCtrls, RzPanel, RzDlgBtn,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Imaging.pngimage, Vcl.StdCtrls;

type
  TFrConfigCaixaListar = class(TForm)
    RzDialogButtons1: TRzDialogButtons;
    eGrid: TJvDBGrid;
    Query: TFDQuery;
    dsQuery: TDataSource;
    QueryID: TIntegerField;
    QueryF_CODIGO: TIntegerField;
    QueryF_DESCRICAO: TStringField;
    QueryF_UTILIZADO: TStringField;
    QueryF_STATUS: TIntegerField;
    RzPanel2: TRzPanel;
    Label8: TLabel;
    Image2: TImage;
    procedure FormCreate(Sender: TObject);
    procedure RzDialogButtons1ClickOk(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrConfigCaixaListar: TFrConfigCaixaListar;

implementation

{$R *.dfm}

uses uModulo;

procedure TFrConfigCaixaListar.FormCreate(Sender: TObject);
begin
   {Ajusta o grid}
   eGrid.Columns[0].Width := 47;

   {Carrega os registros}
   Query.Open();
end;

procedure TFrConfigCaixaListar.RzDialogButtons1ClickOk(Sender: TObject);
begin
   {Não permite selecionar se estiver vazio}
   if Query.IsEmpty then
   begin
      Application.MessageBox('Selecione um registro antes de continuar.','TechCore-PDV',mb_IconStop or mb_ok);
      Abort;
   end;

   {Não permite selecionar caixa desabilitado}
   if QueryF_STATUS.AsInteger = 2 then
   begin
      Application.MessageBox('Este caixa esta desabilitado, administrador do sistema.','TechCore-PDV',mb_IconStop or mb_ok);
      Abort;
   end;

   {Não permite selecionar caixa já utilizado}
   if QueryF_UTILIZADO.AsString = 'S' then
   begin
      Application.MessageBox('Este caixa ja foi utilizado, selecione outro','TechCore-PDV',mb_IconStop or mb_ok);
      Abort;
   end
   else
      Self.ModalResult := mrOk;
end;

end.
