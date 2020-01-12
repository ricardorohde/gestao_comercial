unit uContasPagarExcluir;

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
  TFrContasPagarExcluir = class(TForm)
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
    eFornecedor: TRzButtonEdit;
    eDataIni: TJvDateEdit;
    eDatafim: TJvDateEdit;
    Query: TFDQuery;
    aQuery: TFDQuery;
    QueryID: TLargeintField;
    QueryPAG_DATA_INCLUSAO: TDateField;
    QueryPAG_STATUS: TIntegerField;
    QueryPAG_FORNECEDOR: TStringField;
    QueryPAG_ORIGEM: TStringField;
    QueryPAG_DOCUMENTO: TStringField;
    QueryPAG_VALOR: TFMTBCDField;
    QueryPAG_VLR_RECEBIDO: TFMTBCDField;
    procedure eFornecedorButtonClick(Sender: TObject);
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
    ID_Fornecedor : Integer;
  end;

var
  FrContasPagarExcluir: TFrContasPagarExcluir;

implementation

{$R *.dfm}

uses uModuloRet, Classe.Empresa, uListaFornecedores;

procedure TFrContasPagarExcluir.eFornecedorButtonClick(Sender: TObject);
begin
   FrListaFornecedores := TFrListaFornecedores.Create(self);
   try
      if FrListaFornecedores.ShowModal = mrOk then
      begin
         ID_Fornecedor    := FrListaFornecedores.tbDadosID.AsInteger;
         eFornecedor.Text := FrListaFornecedores.tbDadosFOR_RAZAO_SOCIAL.AsString;
      end;
   finally
      FreeAndNil( FrListaFornecedores );
   end;
end;

procedure TFrContasPagarExcluir.FormCreate(Sender: TObject);
begin
   // Coleta a string SQL e armazena
   StringSQL := Query.SQL.Text;

   eDataIni.Date := Date;
   eDataFim.Date := Date;
end;

procedure TFrContasPagarExcluir.PngSpeedButton2Click(Sender: TObject);
var
   Str : String;
begin

   // Monta a String SQL
   Str := StringSQL;
   Str := Str + ' WHERE ID_EMPRESA = :ID_EMPRESA AND CAST(PAG_DATA_INCLUSAO AS DATE) BETWEEN :ADATA AND :BDATA';

   if ID_Fornecedor > 0 then
      Str := Str + ' AND ID_FORNECEDOR = :ID_FORNECEDOR';

   // Ordenação
   Str := Str + ' ORDER BY ID DESC';

   Query.Close;
   Query.SQL.Clear;
   Query.SQL.Add(Str);
   Query.ParamByName('ID_EMPRESA').AsInteger := FEmpresaClass.ID;
   Query.ParamByName('ADATA').AsDateTime     := eDataIni.Date;
   Query.ParamByName('BDATA').AsDateTime     := eDatafim.Date;

   if ID_Fornecedor > 0 then
      Query.ParamByName('ID_FORNECEDOR').AsInteger := ID_Fornecedor;

   Query.Open();

   if Query.IsEmpty then
      Application.MessageBox('Não foram encontrados registro de acorod os parâmetros informados.','TechCore-RTG',mb_IconInformation or mb_ok);

end;

procedure TFrContasPagarExcluir.QueryAfterDelete(DataSet: TDataSet);
begin
   Application.MessageBox('Contas excluida com sucesso','TechCore-RTG',mb_IconInformation or mb_Ok);
   Self.ModalResult := mrOk;
end;

procedure TFrContasPagarExcluir.QueryBeforeDelete(DataSet: TDataSet);
begin
   if Application.MessageBox('Tem certeza que deseja excluir a conta selecionada?','TechCore-RTG',mb_IconQuestion or mb_YesNo) = mrNo then
      Abort;
end;

procedure TFrContasPagarExcluir.RzDialogButtons1ClickOk(Sender: TObject);
begin
   try
      aQuery.Close;
      aQuery.SQL.Clear;
      aQuery.SQL.Add('SELECT COUNT(1) AS RECEBTOS FROM C000212 WHERE ID_C000210 = :ID');
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
