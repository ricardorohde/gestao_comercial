unit uPedidosVendasPagtos;

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
   JvDBControls, RzDBEdit, System.DateUtils;

type
   TFrPedidosVendasPagtos = class(TForm)
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
      tbDados: TFDQuery;
      dsDados: TJvDataSource;
      tbDadosID: TIntegerField;
      tbDadosID_PEDIDO: TIntegerField;
      tbDadosID_FORMA_PAGTO: TIntegerField;
      tbDadosPAG_VENCIMENTO: TDateField;
      tbDadosFRM_DESCRICAO: TStringField;
      DBText1: TDBText;
      dsPedido: TDataSource;
      N1: TMenuItem;
      ExcluirParcela1: TMenuItem;
      RzBitBtn12: TRzBitBtn;
      RzBitBtn13: TRzBitBtn;
      DuplicataMercantil1: TMenuItem;
      BoletoBancrio1: TMenuItem;
      SemPagamento1: TMenuItem;
      tbDadosPAG_JUROS: TFMTBCDField;
      tbDadosPAG_VLR_SUBTOTAL: TFMTBCDField;
      tbDadosPAG_VLR_TOTAL: TFMTBCDField;
      tbDadosSUM_PAG_VLR_SUBTOTAL: TFMTBCDField;
      tbDadosSUM_PAG_VLR_TOTAL: TFMTBCDField;
      JvDBGrid1: TJvDBGrid;
      eMemo: TRzDBMemo;
      tbDadosPAG_OBSERVACAO: TStringField;
      dsItens: TDataSource;
      procedure FormCreate(Sender: TObject);
      procedure Dinheiro1Click(Sender: TObject);
      procedure tbDadosBeforeDelete(DataSet: TDataSet);
      procedure ExcluirParcela1Click(Sender: TObject);
      procedure tbDadosAfterPost(DataSet: TDataSet);
      procedure tbDadosAfterDelete(DataSet: TDataSet);
      procedure Cheque1Click(Sender: TObject);
      procedure CartodeCrdito1Click(Sender: TObject);
      procedure CartodeDbito1Click(Sender: TObject);
      procedure CrditoLoja1Click(Sender: TObject);
      procedure ValeAlimentao1Click(Sender: TObject);
      procedure ValeRefeio1Click(Sender: TObject);
      procedure ValePresente1Click(Sender: TObject);
      procedure ValeCombustvel1Click(Sender: TObject);
      procedure BoletoBancrio1Click(Sender: TObject);
      procedure SemPagamento1Click(Sender: TObject);
      procedure Outros1Click(Sender: TObject);
      procedure SP_EfetuarRateioAfterExecute(DataSet: TFDDataSet);
      procedure FormShow(Sender: TObject);
   private
      { Private declarations }
      procedure prcInserirFormaPagto(iFormaPagto: Integer);
   public
      { Public declarations }
      ValorReceber: Double;
   end;

var
   FrPedidosVendasPagtos: TFrPedidosVendasPagtos;

implementation

uses
   uPrincipal, uPedidosVendas, uPedidosVendasDataValor,
   uModuloRet, Classe.PedidoVendas;

{$R *.dfm}

procedure TFrPedidosVendasPagtos.ExcluirParcela1Click(Sender: TObject);
begin
   if tbDados.IsEmpty then
      Abort;

   tbDados.Delete;
end;

procedure TFrPedidosVendasPagtos.FormCreate(Sender: TObject);
begin
   // Caracteres maiúsculos no eMemo
   TEdit(eMemo).CharCase := ecUpperCase;

   { Carrega todas as formas de pagamentos vinculadas }
   tbDados.ParamByName('ID').AsInteger := FrPedidosVendas.tbDadosID.AsInteger;
   tbDados.Open();
end;

procedure TFrPedidosVendasPagtos.FormShow(Sender: TObject);
begin
   // Carrega o valor total do pedido
   var
      aQuery: TFDQuery;

   try
      aQuery := TFDQuery.Create(self);
      aQuery.Connection := FrModuloRet.DBConexao;

      aQuery.SQL.Add('Select');
      aQuery.SQL.Add('  Coalesce(Sum(prd_vlr_total),0) as SubTotal');
      aQuery.SQL.Add('from');
      aQuery.SQL.Add('  C000101');
      aQuery.SQL.Add('where');
      aQuery.SQL.Add('  ID                  = :ID_PED');
      aQuery.SQL.Add('and');
      aQuery.SQL.Add('  prd_ind_tot         = ''S''');
      aQuery.SQL.Add('and');
      aQuery.SQL.Add('  prd_integra_calculo = 0');

      aQuery.ParamByName('id_ped').AsInteger := ClassPedidoVendas.IDPedido;
      aQuery.Open();

      if not aQuery.IsEmpty then
         ClassPedidoVendas.SubTotal := aQuery.FieldByName('SubTotal').AsFloat;

   finally
      FreeAndNil(aQuery);
   end;

end;

procedure TFrPedidosVendasPagtos.Outros1Click(Sender: TObject);
begin
   prcInserirFormaPagto(99);
end;

procedure TFrPedidosVendasPagtos.prcInserirFormaPagto(iFormaPagto: Integer);
var
   aQuery: TFDQuery;
   I: Integer;
   ValorParcela, ValorCentavos, RestoDivisao: Real;
   ValorTruncado, QtdeParcelas: Integer;

   ValorPagamentos: Real;

begin
   ValorCentavos := 0.00;

   // Não permite a opção sem pagamento com outras formas pagamentos
   if (iFormaPagto = 90) and (tbDados.RecordCount > 0) then
   begin
      Application.MessageBox('Não é permitido informar a opção (Sem Pagamento) em conjunto com outras formas de pagamentos.', 'TechCore-RTG', mb_IconStop or mb_Ok);
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

      aQuery := TFDQuery.Create(self);
      aQuery.Connection := FrModuloRet.DBConexao;

      aQuery.SQL.Add('Select');
      aQuery.SQL.Add('  coalesce(sum(pag_vlr_total),0) as pag_vlr_total');
      aQuery.SQL.Add('from');
      aQuery.SQL.Add('  c000102');
      aQuery.SQL.Add('where');
      aQuery.SQL.Add('  id_pedido = :id');
      aQuery.ParamByName('id').AsInteger := ClassPedidoVendas.IDPedido;
      aQuery.Open();

      // Se retornado algum valor, armazena na variavel
      if aQuery.FieldByName('pag_vlr_total').AsFloat > 0 then
         ValorPagamentos := aQuery.FieldByName('pag_vlr_total').AsFloat;

   finally
      FreeAndNil(aQuery);
   end;

   // Checa se o valor do pedido já foi atingido
   if (ValorPagamentos >= ValorReceber) and (iFormaPagto <> 90) then
   begin
      Application.MessageBox('A somatória das parcelas ja totalizam o valor do Pedido.', 'TechCore-RTG', mb_IconWarning or mb_Ok);
      Abort;
   end;

   // Cria o formulário
   FrPedidosVendasDataValor := TFrPedidosVendasDataValor.Create(self);

   // Exibe o a forma selecioanda no formulário
   case iFormaPagto of
       1 : FrPedidosVendasDataValor.pnTitulo.Caption := '01 - Dinheiro';
       2 : FrPedidosVendasDataValor.pnTitulo.Caption := '02 - Cheque';
       3 : FrPedidosVendasDataValor.pnTitulo.Caption := '03 - Cartão de Crédito';
       4 : FrPedidosVendasDataValor.pnTitulo.Caption := '04 - Cartão de Débito';
       5 : FrPedidosVendasDataValor.pnTitulo.Caption := '05 - Crédito Loja';
      10 : FrPedidosVendasDataValor.pnTitulo.Caption := '10 - Vale Alimentação';
      11 : FrPedidosVendasDataValor.pnTitulo.Caption := '11 - Vale Refeição';
      12 : FrPedidosVendasDataValor.pnTitulo.Caption := '12 - Vale Presente';
      13 : FrPedidosVendasDataValor.pnTitulo.Caption := '13 - Vale Combustível';
      14 : FrPedidosVendasDataValor.pnTitulo.Caption := '14 - Duplicata Mercantil';
      15 : FrPedidosVendasDataValor.pnTitulo.Caption := '15 - Boleto Bancário';
      90 : FrPedidosVendasDataValor.pnTitulo.Caption := '90 - Sem Pagamento';
      99 : FrPedidosVendasDataValor.pnTitulo.Caption := '99 - Outros';
   end;

   // Armazena o valor do pedido e o valor das parcelas
   FrPedidosVendasDataValor.iFormaPagto := iFormaPagto;
   FrPedidosVendasDataValor.eValorPedido := ValorReceber;
   FrPedidosVendasDataValor.eValorInseridos := ValorPagamentos;

   try

      if FrPedidosVendasDataValor.ShowModal = mrOk then
      begin

         I := 0;

         { Armazena a quantida de parcelas }
         QtdeParcelas := FrPedidosVendasDataValor.ed_parcelas.AsInteger;

         ValorCentavos := frac(FrPedidosVendasDataValor.eValor.Value);
         ValorTruncado := trunc(FrPedidosVendasDataValor.eValor.AsInteger);
         ValorParcela := trunc(ValorTruncado / FrPedidosVendasDataValor.ed_parcelas.AsInteger);
         RestoDivisao := (ValorTruncado mod QtdeParcelas);

         repeat

            // Insere o valor informado e a forma de pagamento
            tbDados.Insert;
            tbDados.FieldByName('ID_FORMA_PAGTO').AsInteger := iFormaPagto;
            tbDados.FieldByName('PAG_VENCIMENTO').AsDateTime := IncDay(FrPedidosVendasDataValor.eData.Date, (I * FrPedidosVendasDataValor.ed_dias_entre.AsInteger));

            // Joga os centavos caso seja a ultima parcela
            if I + 1 = FrPedidosVendasDataValor.ed_parcelas.AsInteger then
               tbDados.FieldByName('PAG_VLR_SUBTOTAL').AsFloat := (ValorParcela + RestoDivisao + ValorCentavos)
            else
               tbDados.FieldByName('PAG_VLR_SUBTOTAL').AsFloat := ValorParcela;

            tbDados.FieldByName('PAG_OBSERVACAO').AsString := FrPedidosVendasDataValor.eObservacao.Text;
            tbDados.Post;

            Inc(I);

         until (I = FrPedidosVendasDataValor.ed_parcelas.AsInteger);

      end;

   finally
      FreeAndNil(FrPedidosVendasDataValor);
   end;

end;

procedure TFrPedidosVendasPagtos.BoletoBancrio1Click(Sender: TObject);
begin
   prcInserirFormaPagto(15);
end;

procedure TFrPedidosVendasPagtos.CartodeCrdito1Click(Sender: TObject);
begin
   prcInserirFormaPagto(3);
end;

procedure TFrPedidosVendasPagtos.CartodeDbito1Click(Sender: TObject);
begin
   prcInserirFormaPagto(4);
end;

procedure TFrPedidosVendasPagtos.Cheque1Click(Sender: TObject);
begin
   prcInserirFormaPagto(2);
end;

procedure TFrPedidosVendasPagtos.CrditoLoja1Click(Sender: TObject);
begin
   prcInserirFormaPagto(5);
end;

procedure TFrPedidosVendasPagtos.Dinheiro1Click(Sender: TObject);
begin
   prcInserirFormaPagto(1);
end;

procedure TFrPedidosVendasPagtos.SemPagamento1Click(Sender: TObject);
begin
   prcInserirFormaPagto(90);
end;

procedure TFrPedidosVendasPagtos.SP_EfetuarRateioAfterExecute(DataSet: TFDDataSet);
begin
   dsItens.DataSet.Refresh;
end;

procedure TFrPedidosVendasPagtos.tbDadosAfterDelete(DataSet: TDataSet);
begin
   // Atualiza o próprio cursor
   DataSet.Refresh;

   // Atualiza o cursor da nota fiscal
   dsPedido.DataSet.Refresh;

   // Atualiza o cursor dos produtos
   dsItens.DataSet.Refresh;
end;

procedure TFrPedidosVendasPagtos.tbDadosAfterPost(DataSet: TDataSet);
begin
   // Atualiza o próprio cursor
   DataSet.Refresh;

   // Atualiza o cursor da nota fiscal
   dsPedido.DataSet.Refresh;

   // Atualiza o cursor dos produtos
   dsItens.DataSet.Refresh;
end;

procedure TFrPedidosVendasPagtos.tbDadosBeforeDelete(DataSet: TDataSet);
begin
   // Exclui a parcela selecionada
   if Application.MessageBox('Tem certeza que deseja excluir esta parcela?', 'TechCore-RTG', mb_IconQuestion or mb_YesNo) = mrNo then
      Abort;
end;

procedure TFrPedidosVendasPagtos.ValeAlimentao1Click(Sender: TObject);
begin
   prcInserirFormaPagto(10);
end;

procedure TFrPedidosVendasPagtos.ValeCombustvel1Click(Sender: TObject);
begin
   prcInserirFormaPagto(13);
end;

procedure TFrPedidosVendasPagtos.ValePresente1Click(Sender: TObject);
begin
   prcInserirFormaPagto(12);
end;

procedure TFrPedidosVendasPagtos.ValeRefeio1Click(Sender: TObject);
begin
   prcInserirFormaPagto(11);
end;

end.
