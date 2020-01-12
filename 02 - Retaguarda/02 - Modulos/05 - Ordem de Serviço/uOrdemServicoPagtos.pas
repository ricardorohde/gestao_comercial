unit uOrdemServicoPagtos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  JvExMask, JvToolEdit, JvBaseEdits, Vcl.Grids, Vcl.DBGrids, JvExDBGrids,
  JvDBGrid, RzButton, RzDlgBtn, Vcl.Imaging.pngimage, Vcl.ExtCtrls, RzPanel,
  Vcl.Menus, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, JvDataSource, Vcl.DBCtrls, ACBrUtil, RzDBGrid,
  JvDBControls, RzDBEdit, SysTem.DateUtils;

type
  TFrOrdemServicoPagtos = class(TForm)
    RzPanel2: TRzPanel;
    Label8: TLabel;
    Label9: TLabel;
    Bevel3: TBevel;
    Image2: TImage;
    RzDialogButtons1: TRzDialogButtons;
    RzPanel3: TRzPanel;
    RzPanel4: TRzPanel;
    RzPanel1: TRzPanel;
    Label1: TLabel;
    PopPagtos: TPopupMenu;
    Dinheiro1: TMenuItem;
    Cheque1: TMenuItem;
    CartodeCrdito1: TMenuItem;
    CartodeDbito1: TMenuItem;
    ValeAlimentao1: TMenuItem;
    ValeRefeio1: TMenuItem;
    ValePresente1: TMenuItem;
    ValeCombustvel1: TMenuItem;
    CrditoLoja1: TMenuItem;
    Outros1: TMenuItem;
    RzBitBtn1: TRzBitBtn;
    RzBitBtn2: TRzBitBtn;
    RzBitBtn3: TRzBitBtn;
    RzBitBtn4: TRzBitBtn;
    RzBitBtn5: TRzBitBtn;
    RzBitBtn6: TRzBitBtn;
    RzBitBtn7: TRzBitBtn;
    RzBitBtn8: TRzBitBtn;
    RzBitBtn9: TRzBitBtn;
    RzBitBtn10: TRzBitBtn;
    QueryPagtos: TFDQuery;
    dsQueryPagtos: TJvDataSource;
    QueryPagtosID: TIntegerField;
    DBText1: TDBText;
    N1: TMenuItem;
    ExcluirParcela1: TMenuItem;
    RzBitBtn11: TRzBitBtn;
    RzBitBtn12: TRzBitBtn;
    RzBitBtn13: TRzBitBtn;
    DuplicataMercantil1: TMenuItem;
    BoletoBancrio1: TMenuItem;
    SemPagamento1: TMenuItem;
    JvDBGrid1: TJvDBGrid;
    eMemo: TRzDBMemo;
    Label2: TLabel;
    QueryPagtosID_C000070: TIntegerField;
    QueryPagtosID_FORMA_PAGTO: TIntegerField;
    QueryPagtosPAG_VENCTO: TDateField;
    QueryPagtosPAG_VLR_SUBTOTAL: TFMTBCDField;
    QueryPagtosPAG_JUROS: TFMTBCDField;
    QueryPagtosPAG_VLR_TOTAL: TFMTBCDField;
    QueryPagtosPAG_VLR_JUROS: TFMTBCDField;
    QueryPagtosPAG_ANOTACOES: TStringField;
    QueryPagtosPAG_FORMA_DESCRICAO: TStringField;
    QueryPagtosOS_TOTAL_PAGTOS: TAggregateField;
    procedure FormCreate(Sender: TObject);
    procedure Dinheiro1Click(Sender: TObject);
    procedure QueryPagtosBeforeDelete(DataSet: TDataSet);
    procedure ExcluirParcela1Click(Sender: TObject);
    procedure QueryPagtosAfterPost(DataSet: TDataSet);
    procedure QueryPagtosAfterDelete(DataSet: TDataSet);
    procedure Cheque1Click(Sender: TObject);
    procedure CartodeCrdito1Click(Sender: TObject);
    procedure CartodeDbito1Click(Sender: TObject);
    procedure CrditoLoja1Click(Sender: TObject);
    procedure ValeAlimentao1Click(Sender: TObject);
    procedure ValeRefeio1Click(Sender: TObject);
    procedure ValePresente1Click(Sender: TObject);
    procedure ValeCombustvel1Click(Sender: TObject);
    procedure DuplicataMercantil1Click(Sender: TObject);
    procedure BoletoBancrio1Click(Sender: TObject);
    procedure SemPagamento1Click(Sender: TObject);
    procedure Outros1Click(Sender: TObject);
  private
    { Private declarations }
    procedure prcInserirFormaPagto(iFormaPagto : Integer);
  public
    { Public declarations }
    ValorReceber : Double;
  end;

var
  FrOrdemServicoPagtos: TFrOrdemServicoPagtos;

implementation

uses
   uPrincipal, uOrdemServicoDataValor, uOrdemServico, uModuloRet;

{$R *.dfm}

procedure TFrOrdemServicoPagtos.ExcluirParcela1Click(Sender: TObject);
begin
   if QueryPagtos.IsEmpty then
      Abort;

   QueryPagtos.Delete;
end;

procedure TFrOrdemServicoPagtos.FormCreate(Sender: TObject);
begin
   {Carrega todas as formas de pagamentos vinculadas}
   QueryPagtos.Open();
end;

procedure TFrOrdemServicoPagtos.Outros1Click(Sender: TObject);
begin
   prcInserirFormaPagto(99);
end;

procedure TFrOrdemServicoPagtos.prcInserirFormaPagto(iFormaPagto: Integer);
var
   tbPesq, aQuery : TFDQuery;
   I : Integer;
   ValorParcela, ValorCentavos, RestoDivisao : Real;
   ValorTruncado, QtdeParcelas : Integer;

   ValorPagamentos : Real;

begin
   ValorCentavos  := 0.00;

   // Não permite a opção sem pagamento com outras formas pagamentos
   if ( iFormaPagto = 90 ) and ( QueryPagtos.RecordCount > 0 ) then
   begin
      Application.MessageBox('Não é permitido informar a opção (Sem Pagamento) em conjunto com outras formas de pagamentos.','TechCore-RTG',mb_IconStop or mb_Ok);
      Abort;
   end;

   {
      Data:       04/09/2019
      Autor       Winston Moreira
      Aplicação:  Calcular valor da nota fiscal
      Descrição:  Checa se o foi inserido formas de pagamentos e se o valor já atingiu o valor da nfe
   }
   try
      ValorPagamentos := 0.00;

      aQuery            := TFDQuery.Create(self);
      aQuery.Connection := FrModuloRet.DBConexao;

      aQuery.SQL.Add('Select');
      aQuery.SQL.Add('  coalesce(sum(pag_vlr_total),0) as pag_vlr_total');
      aQuery.SQL.Add('from');
      aQuery.SQL.Add('  c000072');
      aQuery.SQL.Add('where');
      aQuery.SQL.Add('  id_c000070 = :id');
      aQuery.ParamByName('id').AsInteger := FrOrdemServico.QueryID.AsInteger;
      aQuery.Open();

      // Se retornado algum valor, armazena na variavel
      if aQuery.FieldByName('pag_vlr_total').AsFloat > 0 then
         ValorPagamentos := aQuery.FieldByName('pag_vlr_total').AsFloat;

   finally
      FreeAndNil( aQuery );
   end;

   // Checa se o valor do pedido já foi atingido
   if ValorPagamentos >= ValorReceber then
   begin
      Application.MessageBox('A somatória das parcelas ja totalizam o valor da Nota Fiscal.','TechCore-RTG',mb_IconWarning or mb_Ok);
      Abort;
   end;


   // Cria o formulário
   FrOrdemServicoDataValor := TFrOrdemServicoDataValor.Create(self);

   // Exibe o a forma selecioanda no formulário
   case iFormaPagto of
       1 : FrOrdemServicoDataValor.pnTitulo.Caption := '01 - Dinheiro';
       2 : FrOrdemServicoDataValor.pnTitulo.Caption := '02 - Cheque';
       3 : FrOrdemServicoDataValor.pnTitulo.Caption := '03 - Cartão de Crédito';
       4 : FrOrdemServicoDataValor.pnTitulo.Caption := '04 - Cartão de Débito';
       5 : FrOrdemServicoDataValor.pnTitulo.Caption := '05 - Crédito Loja';
      10 : FrOrdemServicoDataValor.pnTitulo.Caption := '10 - Vale Alimentação';
      11 : FrOrdemServicoDataValor.pnTitulo.Caption := '11 - Vale Refeição';
      12 : FrOrdemServicoDataValor.pnTitulo.Caption := '12 - Vale Presente';
      13 : FrOrdemServicoDataValor.pnTitulo.Caption := '13 - Vale Combustível';
      14 : FrOrdemServicoDataValor.pnTitulo.Caption := '14 - Duplicata Mercantil';
      15 : FrOrdemServicoDataValor.pnTitulo.Caption := '15 - Boleto Bancário';
      90 : FrOrdemServicoDataValor.pnTitulo.Caption := '90 - Sem Pagamento';
      99 : FrOrdemServicoDataValor.pnTitulo.Caption := '99 - Outros';
   end;

   // Armazena o valor do pedido e o valor das parcelas
   FrOrdemServicoDataValor.iFormaPagto     := iFormaPagto;
   FrOrdemServicoDataValor.eValorPedido    := ValorReceber;
   FrOrdemServicoDataValor.eValorInseridos := ValorPagamentos;

   try

      if FrOrdemServicoDataValor.ShowModal = mrOk then
      begin

         I := 0;

         {Armazena a quantida de parcelas}
         QtdeParcelas := FrOrdemServicoDataValor.ed_parcelas.AsInteger;

         ValorCentavos := frac(FrOrdemServicoDataValor.eValor.Value);
         ValorTruncado := trunc(FrOrdemServicoDataValor.eValor.AsInteger);
         ValorParcela  := trunc(ValorTruncado / FrOrdemServicoDataValor.ed_parcelas.AsInteger);
         RestoDivisao  := (ValorTruncado mod QtdeParcelas);

         repeat

            // Insere o valor informado e a forma de pagamento
            QueryPagtos.Insert;
            QueryPagtos.FieldByName('ID_FORMA_PAGTO').AsInteger := iFormaPagto;
            QueryPagtos.FieldByName('PAG_VENCTO').AsDateTime    := IncDay(FrOrdemServicoDataValor.eData.Date, (I * FrOrdemServicoDataValor.ed_dias_entre.AsInteger));

            // Joga os centavos caso seja a ultima parcela
            if i + 1 = FrOrdemServicoDataValor.ed_parcelas.AsInteger then
               QueryPagtos.FieldByName('PAG_VLR_SUBTOTAL').AsFloat := (ValorParcela + RestoDivisao + ValorCentavos)
            else
               QueryPagtos.FieldByName('PAG_VLR_SUBTOTAL').AsFloat := ValorParcela;

            QueryPagtos.FieldByName('PAG_ANOTACOES').AsString   := FrOrdemServicoDataValor.eObservacao.Text;
            QueryPagtos.Post;

            Inc(I);

         until (I = FrOrdemServicoDataValor.ed_parcelas.AsInteger);

      end;

   finally
      FreeAndNil( FrOrdemServicoDataValor );
   end;
end;

procedure TFrOrdemServicoPagtos.BoletoBancrio1Click(Sender: TObject);
begin
   prcInserirFormaPagto(15);
end;

procedure TFrOrdemServicoPagtos.CartodeCrdito1Click(Sender: TObject);
begin
   prcInserirFormaPagto(3);
end;

procedure TFrOrdemServicoPagtos.CartodeDbito1Click(Sender: TObject);
begin
   prcInserirFormaPagto(4);
end;

procedure TFrOrdemServicoPagtos.Cheque1Click(Sender: TObject);
begin
   prcInserirFormaPagto(2);
end;

procedure TFrOrdemServicoPagtos.CrditoLoja1Click(Sender: TObject);
begin
   prcInserirFormaPagto(5);
end;

procedure TFrOrdemServicoPagtos.Dinheiro1Click(Sender: TObject);
begin
   prcInserirFormaPagto(1);
end;

procedure TFrOrdemServicoPagtos.DuplicataMercantil1Click(Sender: TObject);
begin
   prcInserirFormaPagto(14);
end;

procedure TFrOrdemServicoPagtos.SemPagamento1Click(Sender: TObject);
begin
   prcInserirFormaPagto(90);
end;

procedure TFrOrdemServicoPagtos.QueryPagtosAfterDelete(DataSet: TDataSet);
begin
   // Atualiza o próprio cursor
   DataSet.Refresh;

   // Atualiza o cursor dos produtos
   FrOrdemServico.Query.Refresh
end;

procedure TFrOrdemServicoPagtos.QueryPagtosAfterPost(DataSet: TDataSet);
begin
   // Atualiza o próprio cursor
   DataSet.Refresh;

   // Atualiza o cursor dos produtos
   FrOrdemServico.Query.Refresh
end;

procedure TFrOrdemServicoPagtos.QueryPagtosBeforeDelete(DataSet: TDataSet);
begin
   // Exclui a parcela selecionada
   if Application.MessageBox('Tem certeza que deseja excluir esta parcela?','TechCore-RTG',mb_IconQuestion or mb_YesNo) = mrNo then
      Abort;
end;

procedure TFrOrdemServicoPagtos.ValeAlimentao1Click(Sender: TObject);
begin
   prcInserirFormaPagto(10);
end;

procedure TFrOrdemServicoPagtos.ValeCombustvel1Click(Sender: TObject);
begin
   prcInserirFormaPagto(13);
end;

procedure TFrOrdemServicoPagtos.ValePresente1Click(Sender: TObject);
begin
   prcInserirFormaPagto(12);
end;

procedure TFrOrdemServicoPagtos.ValeRefeio1Click(Sender: TObject);
begin
   prcInserirFormaPagto(11);
end;

end.
