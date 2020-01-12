unit uTiposDocumentosListar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.StdCtrls, RzPanel,
  JvDataSource, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids,
  Vcl.DBGrids, JvExDBGrids, JvDBGrid, RzDlgBtn;

type
  TFrTiposDocumentosListar = class(TForm)
    RzDialogButtons1: TRzDialogButtons;
    eGrid: TJvDBGrid;
    tbDados: TFDQuery;
    tbDadosID: TIntegerField;
    tbDadosID_EMPRESA: TIntegerField;
    dsDados: TJvDataSource;
    RzPanel2: TRzPanel;
    Label8: TLabel;
    Image2: TImage;
    tbDadosTIPO_CODIGO: TIntegerField;
    tbDadosTIPO_DATA_REG: TSQLTimeStampField;
    tbDadosTIPO_DESCRICAO: TStringField;
    tbDadosTIPO_STATUS: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure RzDialogButtons1ClickOk(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrTiposDocumentosListar: TFrTiposDocumentosListar;

implementation

uses
   Classe.Empresa, uModuloRet;

{$R *.dfm}

procedure TFrTiposDocumentosListar.FormCreate(Sender: TObject);
begin
   {Carrega os tipo de produtos}
   tbDados.ParamByName('id_empresa').AsInteger := FEmpresaClass.ID;
   tbDados.Open();
end;

procedure TFrTiposDocumentosListar.RzDialogButtons1ClickOk(Sender: TObject);
begin
   if tbDados.IsEmpty then
   begin
      Application.MessageBox('Erro, Selecione um registro antes de continuar.','TechCore-RTG',mb_IconStop or mb_Ok);
      Abort;
   end;

   if tbDados.FieldByName('tip_status').AsInteger = 2 then
   begin
      Application.MessageBox('Erro, Registro inativo.','TechCore-RTG',mb_IconStop or mb_Ok);
      Abort;
   end;

   Self.ModalResult := mrOk;
end;

end.
