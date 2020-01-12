unit uEmissorNfePagtos;

interface

uses
   Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
   Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask, System.Math,
   JvExMask, JvToolEdit, JvBaseEdits, Vcl.Grids, Vcl.DBGrids, JvExDBGrids,
   JvDBGrid, RzButton, RzDlgBtn, Vcl.Imaging.pngimage, Vcl.ExtCtrls, RzPanel,
   Vcl.Menus, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
   FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
   FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
   FireDAC.Comp.Client, JvDataSource, Vcl.DBCtrls, ACBrUtil, RzDBGrid,
   JvDBControls, RzDBEdit, System.DateUtils;

type
   TFrEmissorNfePagtos = class(TForm)
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
      tbDadosID_FORMA_PAGTO: TIntegerField;
      tbDadosPAG_VENCIMENTO: TDateField;
      tbDadosFRM_DESCRICAO: TStringField;
      DBText1: TDBText;
      dsNfe: TDataSource;
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
      JvDBGrid1: TJvDBGrid;
      eMemo: TRzDBMemo;
      tbDadosPAG_OBSERVACAO: TStringField;
      tbDadosID_NOTA_FISCAL: TIntegerField;
      SP_EfetuarRateio: TFDStoredProc;
      dsItens: TDataSource;
      Label2: TLabel;
      tbDadosVLR_PAGTOS: TAggregateField;
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
   end;

var
   FrEmissorNfePagtos: TFrEmissorNfePagtos;

implementation

uses
   uPrincipal, uEmissorNfeDataValor, uEmissorNfe, uModuloRet, Biblioteca,
  Classe.NFe;

{$R *.dfm}

procedure TFrEmissorNfePagtos.ExcluirParcela1Click(Sender: TObject);
begin
   if tbDados.IsEmpty then
      Abort;

   tbDados.Delete;
end;

procedure TFrEmissorNfePagtos.FormCreate(Sender: TObject);
begin
   // Caracteres maiúsculos no eMemo
   TEdit(eMemo).CharCase := ecUpperCase;

   { Carrega todas as formas de pagamentos vinculadas }
   tbDados.ParamByName('ID').AsInteger := FrEmissorNfe.tbDadosID.AsInteger;
   tbDados.Open();
end;

procedure TFrEmissorNfePagtos.FormShow(Sender: TObject);
var
   nfeQuery : TFDQuery;
  nfeQueuery: TFDQuery;
begin
   // Carrega os valores totais dos produtos, acréscimos e descontos

   nfeQuery := TFDQuery.Create(Self);
   nfeQuery.Connection := FrModuloRet.DBConexao;
   try
      nfeQuery.SQL.Clear;
      nfeQuery.SQL.Add('Select');
      nfeQuery.SQL.Add('   coalesce(sum(t1.prd_vlr_subtotal),0)');
      nfeQuery.SQL.Add('   + coalesce(sum(t2.nfe_vlr_frete),0)');
      nfeQuery.SQL.Add('   + coalesce(sum(t2.nfe_vlr_seguro),0)');
      nfeQuery.SQL.Add('   - coalesce(sum(t2.nfe_vlr_desconto),0)');
      nfeQuery.SQL.Add('   + coalesce(sum(t2.nfe_vlr_outros),0) as ValorTotal');
      nfeQuery.SQL.Add('from');
      nfeQuery.SQL.Add('   C000601 as t1');
      nfeQuery.SQL.Add('join');
      nfeQuery.SQL.Add('   C000600 as t2');
      nfeQuery.SQL.Add('on');
      nfeQuery.SQL.Add('   t2.id = t1.id_nota_fiscal');
      nfeQuery.SQL.Add('where');
      nfeQuery.SQL.Add('   t2.id = :id_nfe');
      nfeQuery.SQL.Add('and');
      nfeQuery.SQL.Add('   t1.prd_ind_tot = 0');
      nfeQuery.SQL.Add('and');
      nfeQuery.SQL.Add('   t1.prd_integra_calculo = ''S''');

      nfeQuery.ParamByName('id_nfe').AsInteger := ClassNotaFiscal.IDNFe;
      nfeQuery.Open();

      if not nfeQuery.IsEmpty then
         ClassNotaFiscal.SubTotal := nfeQuery.FieldByName('ValorTotal').AsFloat;

   finally
      FreeAndNil(nfeQuery);
   end;

end;

procedure TFrEmissorNfePagtos.Outros1Click(Sender: TObject);
begin
   prcInserirFormaPagto(99);
end;

procedure TFrEmissorNfePagtos.prcInserirFormaPagto(iFormaPagto: Integer);
var
   tbPesq, aQuery: TFDQuery;
   I: Integer;

   ValorParcInt, QtdeParcelas: Integer;
   ValorParcela, RestoDivisao: Real;

   ValorPagamentos: Real;

begin

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
      aQuery.SQL.Add('  c000602');
      aQuery.SQL.Add('where');
      aQuery.SQL.Add('  id_nota_fiscal = :id');
      aQuery.ParamByName('id').AsInteger := ClassNotaFiscal.IDNFe;
      aQuery.Open();

      // Se retornado algum valor, armazena na variavel
      if aQuery.FieldByName('pag_vlr_total').AsFloat > 0 then
         ValorPagamentos := aQuery.FieldByName('pag_vlr_total').AsFloat;

   finally
      FreeAndNil(aQuery);
   end;

   // Checa se o valor do pedido já foi atingido
   if (ValorPagamentos >= ClassNotaFiscal.SubTotal) and (iFormaPagto <> 90) then
   begin
      Application.MessageBox('A somatória das parcelas ja totalizam o valor da Nota Fiscal.', 'TechCore-RTG', mb_IconWarning or mb_Ok);
      Abort;
   end;

   // Cria o formulário
   FrEmissorNfeDataValor := TFrEmissorNfeDataValor.Create(self);

   // Exibe o a forma selecioanda no formulário
   case iFormaPagto of
       1 : FrEmissorNfeDataValor.pnTitulo.Caption := '01 - Dinheiro';
       2 : FrEmissorNfeDataValor.pnTitulo.Caption := '02 - Cheque';
       3 : FrEmissorNfeDataValor.pnTitulo.Caption := '03 - Cartão de Crédito';
       4 : FrEmissorNfeDataValor.pnTitulo.Caption := '04 - Cartão de Débito';
       5 : FrEmissorNfeDataValor.pnTitulo.Caption := '05 - Crédito Loja';
      10 : FrEmissorNfeDataValor.pnTitulo.Caption := '10 - Vale Alimentação';
      11 : FrEmissorNfeDataValor.pnTitulo.Caption := '11 - Vale Refeição';
      12 : FrEmissorNfeDataValor.pnTitulo.Caption := '12 - Vale Presente';
      13 : FrEmissorNfeDataValor.pnTitulo.Caption := '13 - Vale Combustível';
      14 : FrEmissorNfeDataValor.pnTitulo.Caption := '14 - Duplicata Mercantil';
      15 : FrEmissorNfeDataValor.pnTitulo.Caption := '15 - Boleto Bancário';
      90 : FrEmissorNfeDataValor.pnTitulo.Caption := '90 - Sem Pagamento';
      99 : FrEmissorNfeDataValor.pnTitulo.Caption := '99 - Outros';
   end;

   // Armazena o valor do pedido e o valor das parcelas
   FrEmissorNfeDataValor.iFormaPagto     := iFormaPagto;
   FrEmissorNfeDataValor.eValorInseridos := ValorPagamentos;

   try

      if FrEmissorNfeDataValor.ShowModal = mrOk then
      begin

         I := 0;

         { Armazena a quantida de parcelas }
         QtdeParcelas := (FrEmissorNfeDataValor.ed_parcelas.AsInteger);
         ValorParcela := (ClassNotaFiscal.SubTotal / FrEmissorNfeDataValor.ed_parcelas.AsInteger);

         { Trunca o valor para duas casas decimais }
         ValorParcela := Trunca(ValorParcela);
         RestoDivisao := RoundTo(ClassNotaFiscal.SubTotal - (ValorParcela * QtdeParcelas), -2);

         repeat

            // Insere o valor informado e a forma de pagamento
            tbDados.Insert;
            tbDados.FieldByName('ID_FORMA_PAGTO').AsInteger := iFormaPagto;
            tbDados.FieldByName('PAG_VENCIMENTO').AsDateTime := IncDay(FrEmissorNfeDataValor.eData.Date, (I * FrEmissorNfeDataValor.ed_dias_entre.AsInteger));

            // Joga os centavos caso seja a ultima parcela
            if I + 1 = FrEmissorNfeDataValor.ed_parcelas.AsInteger then
               tbDados.FieldByName('PAG_VLR_SUBTOTAL').AsFloat := (ValorParcela + RestoDivisao)
            else
               tbDados.FieldByName('PAG_VLR_SUBTOTAL').AsFloat := ValorParcela;

            tbDados.FieldByName('PAG_OBSERVACAO').AsString := FrEmissorNfeDataValor.eObservacao.Text;
            tbDados.Post;

            Inc(I);

         until (I = FrEmissorNfeDataValor.ed_parcelas.AsInteger);

      end;

   finally
      FreeAndNil(FrEmissorNfeDataValor);
   end;
end;

procedure TFrEmissorNfePagtos.BoletoBancrio1Click(Sender: TObject);
begin
   prcInserirFormaPagto(15);
end;

procedure TFrEmissorNfePagtos.CartodeCrdito1Click(Sender: TObject);
begin
   prcInserirFormaPagto(3);
end;

procedure TFrEmissorNfePagtos.CartodeDbito1Click(Sender: TObject);
begin
   prcInserirFormaPagto(4);
end;

procedure TFrEmissorNfePagtos.Cheque1Click(Sender: TObject);
begin
   prcInserirFormaPagto(2);
end;

procedure TFrEmissorNfePagtos.CrditoLoja1Click(Sender: TObject);
begin
   prcInserirFormaPagto(5);
end;

procedure TFrEmissorNfePagtos.Dinheiro1Click(Sender: TObject);
begin
   prcInserirFormaPagto(1);
end;

procedure TFrEmissorNfePagtos.SemPagamento1Click(Sender: TObject);
begin
   prcInserirFormaPagto(90);
end;

procedure TFrEmissorNfePagtos.SP_EfetuarRateioAfterExecute(DataSet: TFDDataSet);
begin
   dsItens.DataSet.Refresh;
end;

procedure TFrEmissorNfePagtos.tbDadosAfterDelete(DataSet: TDataSet);
begin
   // Atualiza o próprio cursor
   DataSet.Refresh;

   // Atualiza o cursor da nota fiscal
   dsNfe.DataSet.Refresh;

   // Atualiza o cursor dos produtos
   dsItens.DataSet.Refresh;
end;

procedure TFrEmissorNfePagtos.tbDadosAfterPost(DataSet: TDataSet);
begin
   // Atualiza o próprio cursor
   DataSet.Refresh;

   // Atualiza o cursor da nota fiscal
   dsNfe.DataSet.Refresh;

   // Atualiza o cursor dos produtos
   dsItens.DataSet.Refresh;
end;

procedure TFrEmissorNfePagtos.tbDadosBeforeDelete(DataSet: TDataSet);
begin
   // Exclui a parcela selecionada
   if Application.MessageBox('Tem certeza que deseja excluir esta parcela?', 'TechCore-RTG', mb_IconQuestion or mb_YesNo) = mrNo then
      Abort;
end;

procedure TFrEmissorNfePagtos.ValeAlimentao1Click(Sender: TObject);
begin
   prcInserirFormaPagto(10);
end;

procedure TFrEmissorNfePagtos.ValeCombustvel1Click(Sender: TObject);
begin
   prcInserirFormaPagto(13);
end;

procedure TFrEmissorNfePagtos.ValePresente1Click(Sender: TObject);
begin
   prcInserirFormaPagto(12);
end;

procedure TFrEmissorNfePagtos.ValeRefeio1Click(Sender: TObject);
begin
   prcInserirFormaPagto(11);
end;

end.
