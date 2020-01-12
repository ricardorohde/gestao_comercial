unit uContasReceberRemoverFaturamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  JvExDBGrids, JvDBGrid, RzDlgBtn, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls, RzPanel, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, JvExMask, JvToolEdit,
  Vcl.Mask, RzEdit, RzBtnEdt, Vcl.Buttons, PngSpeedButton;

type
  TFrContasReceberRemoverFaturamento = class(TForm)
    RzPanel2: TRzPanel;
    Label8: TLabel;
    Label9: TLabel;
    Bevel3: TBevel;
    Image2: TImage;
    RzDialogButtons1: TRzDialogButtons;
    JvDBGrid1: TJvDBGrid;
    dsQuery: TDataSource;
    RzPanel3: TRzPanel;
    Label4: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel5: TBevel;
    PngSpeedButton2: TPngSpeedButton;
    eCliente: TRzButtonEdit;
    eDataIni: TJvDateEdit;
    eDatafim: TJvDateEdit;
    Query: TFDQuery;
    QueryID: TIntegerField;
    QueryREC_VLR_CONTA: TFMTBCDField;
    QueryREC_STATUS: TIntegerField;
    QueryREC_CLIENTE: TStringField;
    QueryREC_VLR_RECEBIDO: TFMTBCDField;
    QueryREC_DOCUMENTO: TStringField;
    QueryREC_ORIGEM: TStringField;
    aQuery: TFDQuery;
    QueryREC_DATA_REGISTRO: TDateField;
    procedure eClienteButtonClick(Sender: TObject);
    procedure PngSpeedButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure QueryBeforeDelete(DataSet: TDataSet);
    procedure RzDialogButtons1ClickOk(Sender: TObject);
    procedure QueryAfterDelete(DataSet: TDataSet);
  private
    { Private declarations }
    StringSQL : String;
  public
    { Public declarations }
    ID_Cliente : Integer;
  end;

var
  FrContasReceberRemoverFaturamento: TFrContasReceberRemoverFaturamento;

implementation

{$R *.dfm}

uses uModuloRet, uListaClientes, Classe.Empresa;

procedure TFrContasReceberRemoverFaturamento.eClienteButtonClick(Sender: TObject);
begin
   FrListaClientes := TFrListaClientes.Create(self);
   try
      if FrListaClientes.ShowModal = mrOk then
      begin
         ID_Cliente    := FrListaClientes.QueryID.AsInteger;
         eCliente.Text := FrListaClientes.QueryCLI_RAZAO_SOCIAL.AsString;
      end;
   finally
      FreeAndNil( FrListaClientes );
   end;
end;

procedure TFrContasReceberRemoverFaturamento.FormCreate(Sender: TObject);
begin
   // Coleta a string SQL e armazena
   StringSQL := Query.SQL.Text;

   eDataIni.Date := Date;
   eDataFim.Date := Date;
end;

procedure TFrContasReceberRemoverFaturamento.PngSpeedButton2Click(Sender: TObject);
var
   Str : String;
begin

   // Monta a String SQL
   Str := StringSQL;
   Str := Str + ' WHERE ID_EMPRESA = :ID_EMPRESA AND CAST(REC_DATA_REGISTRO AS DATE) BETWEEN :ADATA AND :BDATA';

   if ID_Cliente > 0 then
      Str := Str + ' AND ID_CLIENTE = :ID_CLIENTE';

   // Ordenação
   Str := Str + ' ORDER BY ID DESC';

   Query.Close;
   Query.SQL.Clear;
   Query.SQL.Add(Str);
   Query.ParamByName('ID_EMPRESA').AsInteger := FEmpresaClass.ID;
   Query.ParamByName('ADATA').AsDateTime     := eDataIni.Date;
   Query.ParamByName('BDATA').AsDateTime     := eDatafim.Date;

   if ID_Cliente > 0 then
      Query.ParamByName('ID_CLIENTE').AsInteger := ID_Cliente;

   Query.Open();

   if Query.IsEmpty then
      Application.MessageBox('Não foram encontrados registro de acorod os parâmetros informados.','TechCore-RTG',mb_IconInformation or mb_ok);

end;

procedure TFrContasReceberRemoverFaturamento.QueryAfterDelete(DataSet: TDataSet);
begin
   Application.MessageBox('Contas excluida com sucesso','TechCore-RTG',mb_IconInformation or mb_Ok);
   Self.ModalResult := mrOk;
end;

procedure TFrContasReceberRemoverFaturamento.QueryBeforeDelete(DataSet: TDataSet);
begin
   if Application.MessageBox('Tem certeza que deseja excluir a conta selecionada?','TechCore-RTG',mb_IconQuestion or mb_YesNo) = mrNo then
      Abort;
end;

procedure TFrContasReceberRemoverFaturamento.RzDialogButtons1ClickOk(Sender: TObject);
begin
   try
      aQuery.Close;
      aQuery.SQL.Clear;
      aQuery.SQL.Add('SELECT COUNT(1) AS RECEBTOS FROM C000112 WHERE ID_C000110 = :ID');
      aQuery.ParamByName('ID').AsInteger := QueryID.AsInteger;
      aQuery.Open();

      if aQuery.FieldByName('RECEBTOS').AsInteger > 0 then
      begin
         Application.MessageBox('Erro, esta conta não pode ser excluida, existem recebimentos efetuados.','TecChore-RTG',mb_IconError or mb_ok);
         Abort;
      end;

   finally
      aQuery.Close
   end;

   if Query.IsEmpty then
      Application.MessageBox('Selecione uma conta antes de continuar.','TechCore-RTG',mb_IconInformation or mb_ok)
   else
      Query.Delete;
end;

end.
