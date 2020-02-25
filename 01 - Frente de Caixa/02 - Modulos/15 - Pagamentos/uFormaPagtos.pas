unit uFormaPagtos;

interface

uses
   Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
   System.Math, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
   FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
   FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
   FireDAC.DApt, FireDAC.Comp.Client, JvDataSource, FireDAC.Comp.DataSet,
   Vcl.Menus, Vcl.StdCtrls, Vcl.DBCtrls, RzDBEdit, Vcl.Grids, Vcl.DBGrids,
   JvExDBGrids, JvDBGrid, RzButton, RzDlgBtn, Vcl.Imaging.pngimage,
   Vcl.ExtCtrls, RzPanel, System.ImageList, Vcl.ImgList, JvImageList,
   NxDBColumns, NxColumns, NxScrollControl, NxCustomGridControl,
   NxCustomGrid, NxDBGrid, FireDAC.Phys.SQLiteVDataSet,
   FireDAC.Stan.StorageBin, FireDAC.UI.Intf, FireDAC.Stan.Def,
   FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.SQLite,
   FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs, FireDAC.VCLUI.Wait,
   Vcl.Mask, JvExMask, JvToolEdit, JvBaseEdits, JvDBControls, JvExStdCtrls,
   JvCombobox, Vcl.Buttons, PngSpeedButton, RzLabel, RzDBLbl;

type
   TFrFormaPagtos = class(TForm)
      RzPanel2: TRzPanel;
      Label8: TLabel;
      Image2: TImage;
      RzPanel3: TRzPanel;
      RzBitBtn1: TRzBitBtn;
      RzBitBtn2: TRzBitBtn;
      RzBitBtn3: TRzBitBtn;
      RzBitBtn4: TRzBitBtn;
      RzBitBtn5: TRzBitBtn;
      RzBitBtn6: TRzBitBtn;
      RzBitBtn7: TRzBitBtn;
      RzBitBtn12: TRzBitBtn;
      RzBitBtn13: TRzBitBtn;
      RzPanel4: TRzPanel;
      RzPanel1: TRzPanel;
      Label1: TLabel;
      Pop00: TPopupMenu;
      Dinheiro1: TMenuItem;
      Cheque1: TMenuItem;
      CartodeCrdito1: TMenuItem;
      CartodeDbito1: TMenuItem;
      CrditoLoja1: TMenuItem;
      ValeAlimentao1: TMenuItem;
      ValeRefeio1: TMenuItem;
      ValePresente1: TMenuItem;
      Desconto: TMenuItem;
      Outros1: TMenuItem;
      N1: TMenuItem;
      ExcluirParcela1: TMenuItem;
      Query: TFDQuery;
      dsQuery: TJvDataSource;
      dsCupom: TDataSource;
      sysIcones: TJvImageList;
      N2: TMenuItem;
      C1: TMenuItem;
      Grid: TNextDBGrid;
      NxDBTextColumn1: TNxDBTextColumn;
      NxDBNumberColumn1: TNxDBNumberColumn;
      QueryID: TIntegerField;
      QueryID_C000050: TIntegerField;
      QueryID_FORMA_PAGTO: TIntegerField;
      QueryFRM_CODIGO: TStringField;
      QueryFRM_PARCELA: TIntegerField;
      QueryFRM_PARCELA_VALOR: TFMTBCDField;
      NxDBNumberColumn2: TNxDBNumberColumn;
      dsProdutos: TDataSource;
      N3: TMenuItem;
      S1: TMenuItem;
      vQuery: TFDQuery;
      QueryFRM_DESCRICAO: TStringField;
      DBMemo1: TDBMemo;
      QueryFRM_ANOTACOES: TStringField;
      Panel1: TPanel;
      RzPanel5: TRzPanel;
      Label2: TLabel;
      RzPanel6: TRzPanel;
      Label3: TLabel;
      RzPanel7: TRzPanel;
      Label4: TLabel;
      DBText4: TDBText;
      RzBitBtn8: TRzBitBtn;
      lb_total_pagtos: TRzLabel;
      QueryAGG_TOTAL_PAGO: TAggregateField;
      QueryFRM_DATA: TSQLTimeStampField;
      dsQueryTotal: TDataSource;
      DBText1: TDBText;
      DBText2: TDBText;
      DBText3: TDBText;
    Impressora1: TMenuItem;
      procedure FormShow(Sender: TObject);
      procedure FormCreate(Sender: TObject);
      procedure Dinheiro1Click(Sender: TObject);
      procedure Cheque1Click(Sender: TObject);
      procedure CartodeCrdito1Click(Sender: TObject);
      procedure S1Click(Sender: TObject);
      procedure ExcluirParcela1Click(Sender: TObject);
      procedure QueryAfterDelete(DataSet: TDataSet);
      procedure DescontoClick(Sender: TObject);
      procedure C1Click(Sender: TObject);
      procedure QueryAfterPost(DataSet: TDataSet);
      procedure CartodeDbito1Click(Sender: TObject);
      procedure CrditoLoja1Click(Sender: TObject);
      procedure ValeAlimentao1Click(Sender: TObject);
      procedure ValeRefeio1Click(Sender: TObject);
      procedure ValePresente1Click(Sender: TObject);
      procedure Outros1Click(Sender: TObject);
      procedure DBMemo1Exit(Sender: TObject);
    procedure Impressora1Click(Sender: TObject);
   private
      { Private declarations }
      procedure P_Inserir_Forma_De_Pagamento(iCodigo, ID_Forma: Integer; sDescricao: String);
   public
      r_TotalPagtos, r_TotalCupom, r_Valor_Troco: Real;

   end;

var
   FrFormaPagtos: TFrFormaPagtos;

implementation

uses
   uVendas, uFormaPagtosValor, uDesconto, Classe.Cupom, uPrincipal;

{$R *.dfm}

procedure TFrFormaPagtos.C1Click(Sender: TObject);
var
   rSubA, rSubB, ValorSaldo: Real;
begin
   { confere se foi selecionado uma forma de pagamento }
   if Query.IsEmpty then
   begin
      Imprime_display('valor total dos pagamentos inferior ao total a pagar', clRed);
      Sleep(2000);
      Imprime_display_anterior;
      Abort;
   end;

   { -----------------------------------------------------------------------------------
     Autor:      Winston Moreira
     Dat:        17/02/2019
     Descrição:  Impede que seja finalizando antes de completar o valor total do cupom
     ------------------------------------------------------------------------------------- }
   rSubA := FrVendas.QueryCupomF_VLR_RECEBER.AsFloat;
   rSubB := FrVendas.QueryCupomF_VLR_PAGO.AsFloat;

   ValorSaldo := (rSubA - rSubB);
   if ValorSaldo > 0 then
   begin
      Imprime_display('valor total dos pagamentos inferior ao total a pagar', clRed);
      Sleep(2000);
      Imprime_display_anterior;
      Abort;
   end;

   // Obtem o valor do troco
   Cupom_Fiscal.F_Vlr_Troco := RoundTo(Cupom_Fiscal.F_Vlr_Pago - Cupom_Fiscal.F_Vlr_Cupom, -2);

   Self.ModalResult := mrOk;

end;

procedure TFrFormaPagtos.CartodeCrdito1Click(Sender: TObject);
begin
   P_Inserir_Forma_De_Pagamento(3, 3, 'Cartão de Crédito');
end;

procedure TFrFormaPagtos.CartodeDbito1Click(Sender: TObject);
begin
   P_Inserir_Forma_De_Pagamento(4, 4, 'Cartão de Debito');
end;

procedure TFrFormaPagtos.Cheque1Click(Sender: TObject);
begin
   P_Inserir_Forma_De_Pagamento(2, 2, 'Cheque');
end;

procedure TFrFormaPagtos.CrditoLoja1Click(Sender: TObject);
begin
   P_Inserir_Forma_De_Pagamento(5, 5, 'Crédito Loja');
end;

procedure TFrFormaPagtos.Dinheiro1Click(Sender: TObject);
begin
   P_Inserir_Forma_De_Pagamento(1, 1, 'Dinheiro');
end;

procedure TFrFormaPagtos.ExcluirParcela1Click(Sender: TObject);
begin
   Query.Delete;
end;

procedure TFrFormaPagtos.FormCreate(Sender: TObject);
begin
   { -----------------------------------------------------------------------------------
     Autor:      Winston Moreira
     Dat:        17/02/2019
     Descrição:  Carrega todas as formas de pagamentos para a memória
     ------------------------------------------------------------------------------------- }
   Query.Open();

end;

procedure TFrFormaPagtos.FormShow(Sender: TObject);
begin
   Imprime_display('Fechamento do Cupom.', clWhite);
end;

procedure TFrFormaPagtos.Impressora1Click(Sender: TObject);
begin
   FrVendas.T1Click(self);
end;

procedure TFrFormaPagtos.Outros1Click(Sender: TObject);
begin
   P_Inserir_Forma_De_Pagamento(99, 99, 'Outros');
end;

procedure TFrFormaPagtos.P_Inserir_Forma_De_Pagamento(iCodigo, ID_Forma: Integer; sDescricao: String);
var
   r_SaldoPagar: Real;
begin
   { -----------------------------------------------------------------------------------
     Autor:      Winston Moreira
     Dat:        17/02/2019
     Descrição:  Aqui, trata os valores e faz a devidas verificações antes de continuar
     ------------------------------------------------------------------------------------- }
   r_SaldoPagar := (FrVendas.QueryCupomF_VLR_RECEBER.AsFloat - FrVendas.QueryCupomF_VLR_PAGO.AsFloat);

   { -----------------------------------------------------------------------------------
     Autor:      Winston Moreira
     Dat:        17/02/2019
     Descrição:  Checa se o valor do cupom fiscal já foi completado, considerando o
     desconto ofertado.
     ------------------------------------------------------------------------------------- }
   if dsCupom.DataSet.FieldByName('f_vlr_desconto').AsFloat < dsCupom.DataSet.FieldByName('f_vlr_receber').AsFloat then
   begin
      if r_SaldoPagar <= 0 then
      begin
         Imprime_display('Valor a pagar está completo, se necessário exclua uma forma', clRed);
         Sleep(1000);
         Imprime_display_anterior;
         Abort;
      end;
   end;

   { -----------------------------------------------------------------------------------
     Autor:      Winston Moreira
     Dat:        17/02/2019
     Descrição:  Insere no DataSet a forma de pagamento selecionada e o valor
     ------------------------------------------------------------------------------------- }
   FrFormaPagtoValor := TFrFormaPagtoValor.Create(Self);

   FrFormaPagtoValor.ed_valor_pagto.Value := r_SaldoPagar;
   FrFormaPagtoValor.r_SaldoPagar := r_SaldoPagar;
   FrFormaPagtoValor.iCodigoForma := iCodigo;
   FrFormaPagtoValor.lb_forma_pagto.Caption := Format('%.2d', [iCodigo]) + ' - ' + sDescricao;

   try
      if FrFormaPagtoValor.ShowModal = mrOk then
      begin
         Query.Open();
         Query.Append;
         Query.FieldByName('id_C000050').AsInteger := dsCupom.DataSet.FieldByName('ID').AsInteger;
         Query.FieldByName('id_forma_pagto').AsInteger := ID_Forma;
         Query.FieldByName('frm_data').AsDateTime := Cupom_Fiscal.F_Data;
         Query.FieldByName('frm_codigo').AsInteger := iCodigo;
         Query.FieldByName('frm_parcela').AsInteger := Query.RecordCount + 1;
         Query.FieldByName('frm_parcela_valor').AsFloat := FrFormaPagtoValor.ed_valor_pagto.Value;
         Query.Post;
      end;

   finally
      FreeAndNil(FrFormaPagtoValor);
   end;

end;

procedure TFrFormaPagtos.QueryAfterDelete(DataSet: TDataSet);
begin
   FrVendas.QueryCupom.Refresh;

   Imprime_display('pagamento excluido com sucesso', clYellow);
   Sleep(500);
   Imprime_display_anterior;
end;

procedure TFrFormaPagtos.QueryAfterPost(DataSet: TDataSet);
begin
   FrVendas.QueryCupom.Refresh;
end;

procedure TFrFormaPagtos.S1Click(Sender: TObject);
begin
   Self.Close;
end;

procedure TFrFormaPagtos.ValeAlimentao1Click(Sender: TObject);
begin
   P_Inserir_Forma_De_Pagamento(10, 10, 'Vale Alimentação');
end;

procedure TFrFormaPagtos.ValePresente1Click(Sender: TObject);
begin
   P_Inserir_Forma_De_Pagamento(12, 12, 'Vale Presente');
end;

procedure TFrFormaPagtos.ValeRefeio1Click(Sender: TObject);
begin
   P_Inserir_Forma_De_Pagamento(11, 11, 'Vale Refeição');
end;

procedure TFrFormaPagtos.DBMemo1Exit(Sender: TObject);
begin
   if Query.State in [dsInsert, dsEdit] then
      Query.Post;
end;

procedure TFrFormaPagtos.DescontoClick(Sender: TObject);
begin

   { -----------------------------------------------------------------------------------
     Autor:      Winston Moreira
     Dat:        17/02/2019
     Descrição:  Só permite fornecer o desconto antes de inseri qualquer forma de
     pagamento
     ------------------------------------------------------------------------------------- }
   if not Query.IsEmpty then
   begin
      Imprime_display('não permitido, existem formas de pagamentos', clRed);
      Sleep(1000);
      Imprime_display_anterior;
      Abort;
   end;

   { -----------------------------------------------------------------------------------
     Autor:      Winston Moreira
     Dat:        17/02/2019
     Descrição:  Carrega o formulário de desconto
     ------------------------------------------------------------------------------------- }
   FrDesconto := TFrDesconto.Create(Self);
   FrDesconto.r_SubTotal := Cupom_Fiscal.F_Vlr_Subtotal;
   try
      Imprime_display('desconto sobre a venda', clWhite);

      if FrDesconto.ShowModal = mrCancel then
         Cupom_Fiscal.F_Vlr_Desconto := 0.00;

   finally
      FreeAndNil(FrDesconto);
      Imprime_display('forma de pagamento.', clWhite);
   end;

end;

end.
