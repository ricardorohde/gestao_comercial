unit uPedidosVendasGerenciar;

interface

uses
   Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
   Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.StrUtils, Data.DB, FireDAC.Stan.Intf,
   FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, MaskUtils,
   FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
   FireDAC.DApt, Vcl.Menus, JvDataSource, FireDAC.Comp.DataSet,
   FireDAC.Comp.Client, System.Actions, Vcl.ActnList, DateUtils,
   Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, Vcl.Imaging.pngimage,
   Vcl.ExtCtrls, RzPanel, JvBaseEdits, JvDBControls, Vcl.StdCtrls,
   Vcl.Buttons, PngBitBtn, Vcl.Mask, JvExMask, JvToolEdit, Vcl.Grids,
   Vcl.DBGrids, JvExDBGrids, JvDBGrid, RzButton, RzEdit, RzDBEdit, RzDBBnEd,
   RzCmboBx, RzLabel, RzDBLbl;

type
   TFrPedidosVendasGerenciar = class(TForm)
      RzToolbar1: TRzToolbar;
      btnNew: TRzToolButton;
      btnEdit: TRzToolButton;
      btnCancel: TRzToolButton;
      btnOK: TRzToolButton;
      btnExit: TRzToolButton;
      RzSpacer1: TRzSpacer;
      RzSpacer2: TRzSpacer;
      RzSpacer6: TRzSpacer;
      eGrid: TJvDBGrid;
      JvDBGrid2: TJvDBGrid;
      Panel2: TPanel;
      ActionManager1: TActionManager;
      tbDados: TFDQuery;
      tbDadosID: TIntegerField;
      tbDadosID_EMPRESA: TIntegerField;
      tbDadosID_FUNCIONARIO: TIntegerField;
      tbDadosPED_NUMERO: TIntegerField;
      tbDadosPED_DATA_REG: TSQLTimeStampField;
      tbDadosPED_DATA_PEDIDO: TDateField;
      tbDadosPED_OBSERVACAO: TStringField;
      tbDadosPED_STATUS: TIntegerField;
      tbDadosPED_FATURADO: TIntegerField;
      tbDadosPED_ENTREGUE: TIntegerField;
      tbDadosPED_DATA_ENTREGA: TDateField;
      tbDadosPED_VLR_FRETE: TFMTBCDField;
      tbDadosPED_VLR_SEGURO: TFMTBCDField;
      tbDadosPED_VLR_OUTROS: TFMTBCDField;
      tbDadosPED_VLR_DESCONTOS: TFMTBCDField;
      dsDados: TJvDataSource;
      Pop01: TPopupMenu;
      AlterarCabealho1: TMenuItem;
      FreteSeguroeDesconto1: TMenuItem;
      tbItens: TFDQuery;
      tbItensID: TIntegerField;
      tbItensID_PEDIDO: TIntegerField;
      tbItensID_PRODUTO: TIntegerField;
      tbItensPRD_CODIGO: TIntegerField;
      tbItensPRD_CODIGO_BRR: TStringField;
      tbItensPRD_DESCRICAO: TStringField;
      tbItensPRD_UNIDADE: TStringField;
      dsItens: TJvDataSource;
      Pop02: TPopupMenu;
      IncluirProdutos1: TMenuItem;
      AlterarProdutoSelecionado1: TMenuItem;
      N1: TMenuItem;
      ExcluirProdutos1: TMenuItem;
      actPrint: TAction;
      actAprovar: TAction;
      actReabrir: TAction;
      actBaixar: TAction;
      actSair: TAction;
      Panel7: TPanel;
      eCondicao: TRadioGroup;
      grFiltrar: TRzGroupBox;
      eTipoFiltro: TRzComboBox;
      eSearchText: TRzEdit;
      GroupBox1: TGroupBox;
      PngBitBtn1: TPngBitBtn;
      eDataFim: TJvDateEdit;
      eDataIni: TJvDateEdit;
      Label2: TLabel;
      RzPanel2: TRzPanel;
      Label8: TLabel;
      Label9: TLabel;
      Bevel3: TBevel;
      Image2: TImage;
      RzPanel1: TRzPanel;
      Panel8: TPanel;
      Label11: TLabel;
      Label12: TLabel;
      Label13: TLabel;
      Bevel4: TBevel;
      Bevel5: TBevel;
      JvDBCalcEdit7: TJvDBCalcEdit;
      JvDBCalcEdit8: TJvDBCalcEdit;
      JvDBCalcEdit9: TJvDBCalcEdit;
      RzSpacer3: TRzSpacer;
      RzSpacer5: TRzSpacer;
      btnNew1: TRzToolButton;
      actGerarNFe: TAction;
      tbDadosID_CLIENTE: TIntegerField;
      tbDadosCLI_RAZAO_SOCIAL: TStringField;
      tbDadosCLI_CNPJ: TStringField;
      tbDadosCLI_UF: TStringField;
      tbDadosPED_PREV_ENTREGA: TStringField;
      tbDadosID_TABELA_PRECOS: TIntegerField;
      tbDadosPED_VENDEDOR: TStringField;
      tbDadosPED_VLR_SUBTOTAL: TFMTBCDField;
      tbDadosPED_VLR_TOTAL: TFMTBCDField;
      Label1: TLabel;
      Bevel1: TBevel;
      JvDBCalcEdit1: TJvDBCalcEdit;
      tbItensID_TRIBUTOS: TIntegerField;
      tbItensPRD_QTDE: TBCDField;
      tbItensPRD_VLR_UNITARIO: TBCDField;
      tbDadosID_TRANSPORTADORA: TIntegerField;
      tbDadosTRA_RAZAO_SOCIAL: TStringField;
      tbDadosTRA_CNPJ: TStringField;
      tbDadosTRA_UF: TStringField;
      tbDadosPED_VEICULO_PLACA: TStringField;
      tbDadosPED_VEICULO_UF: TStringField;
      tbDadosPED_VEICULO_RNTC: TStringField;
      tbDadosPED_VOLUME_QTDE: TIntegerField;
      tbDadosPED_VOLUME_ESPECIE: TStringField;
      tbDadosPED_VOLUME_MARCA: TStringField;
      tbDadosPED_VOLUME_NUMERO: TStringField;
      tbDadosPED_VOLUME_PESO_L: TFMTBCDField;
      tbDadosPED_VOLUME_PESO_B: TFMTBCDField;
      tbDadosPED_TIPO_FRETE: TIntegerField;
      Panel4: TPanel;
      Label5: TLabel;
      JvDBCalcEdit4: TJvDBCalcEdit;
      Panel3: TPanel;
      Label10: TLabel;
      JvDBCalcEdit2: TJvDBCalcEdit;
      Panel5: TPanel;
      Label7: TLabel;
      SP_Gerar_Nfe: TFDStoredProc;
      SP_Gerar_Nfe_Itens: TFDStoredProc;
      SP_Gerar_Nfe_Pagto: TFDStoredProc;
      actCancelarPedido: TAction;
      RzSpacer4: TRzSpacer;
      btnNew2: TRzToolButton;
      Action1: TAction;
      RzToolButton1: TRzToolButton;
      RzSpacer7: TRzSpacer;
      aQuery: TFDQuery;
      QueryNfe: TFDQuery;
      tbDadosPED_VLR_PRODUTOS: TFMTBCDField;
      RzDBLabel1: TRzDBLabel;
      tbItensPRD_QTDE_ITENS: TAggregateField;
      tbItensPRD_VLR_TOTAL: TFMTBCDField;
      dsQueryFatContas: TDataSource;
      Query110: TFDQuery;
      Query110ID: TIntegerField;
      Query110ID_EMPRESA: TIntegerField;
      Query110ID_CLIENTE: TIntegerField;
      Query110ID_ORIGEM: TIntegerField;
      Query110ID_CONTAS: TIntegerField;
      Query110REC_DATA_REGISTRO: TSQLTimeStampField;
      Query110REC_VLR_CONTA: TFMTBCDField;
      Query110REC_STATUS: TIntegerField;
      Query110REC_ORIGEM: TIntegerField;
      Query110REC_CLIENTE: TStringField;
      Query110REC_DOCUMENTO: TStringField;
      Query111: TFDQuery;
      Query111ID: TIntegerField;
      Query111ID_C000110: TIntegerField;
      Query111REC_PARCELA: TIntegerField;
      Query111REC_VALOR: TFMTBCDField;
      Query111REC_DOCUMENTO: TStringField;
      Query111REC_VENCIMENTO: TDateField;
      Query111REC_ANOTACOES: TStringField;
      Query111REC_VLR_ATUALIZADO: TFMTBCDField;
      Query111REC_VLR_RECEBIDO: TFMTBCDField;
      Query111REC_VLR_SALDO: TFMTBCDField;
      Query111REC_STATUS: TIntegerField;
      SchemaAD: TFDSchemaAdapter;
      Query110REC_JUROS: TFMTBCDField;
      Query110REC_JUROS_CAREN: TIntegerField;
      Query110REC_MULTA: TFMTBCDField;
      Query110REC_MULTA_CAREN: TIntegerField;
      Query110ID_PLN_CTAS: TIntegerField;
      actPrintExpedicao: TAction;
      PopPrinter: TPopupMenu;
      ModoAdministrativo1: TMenuItem;
      ModoExpedio1: TMenuItem;
      tbItensPRD_VLR_SUBTOTAL: TFMTBCDField;
      xQuery: TFDQuery;
      procedure actSairExecute(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure eCondicaoClick(Sender: TObject);
      procedure FormCreate(Sender: TObject);
      procedure tbDadosPED_STATUSGetText(Sender: TField; var Text: string; DisplayText: Boolean);
      procedure tbDadosPED_FATURADOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
      procedure tbDadosPED_ENTREGUEGetText(Sender: TField; var Text: string; DisplayText: Boolean);
      procedure eGridDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
      procedure PngBitBtn1Click(Sender: TObject);
      procedure actReabrirExecute(Sender: TObject);
      procedure actReabrirUpdate(Sender: TObject);
      procedure tbDadosAfterPost(DataSet: TDataSet);
      procedure actAprovarExecute(Sender: TObject);
      procedure actAprovarUpdate(Sender: TObject);
      procedure eSearchTextChange(Sender: TObject);
      procedure eDataIniEnter(Sender: TObject);
      procedure eDataIniExit(Sender: TObject);
      procedure tbDadosAfterOpen(DataSet: TDataSet);
      procedure actPrintUpdate(Sender: TObject);
      procedure actBaixarExecute(Sender: TObject);
      procedure tbDadosCLI_CNPJGetText(Sender: TField; var Text: string; DisplayText: Boolean);
      procedure actGerarNFeUpdate(Sender: TObject);
      procedure actGerarNFeExecute(Sender: TObject);
      procedure SP_Gerar_Nfe_PagtoAfterExecute(DataSet: TFDDataSet);
      procedure actCancelarPedidoExecute(Sender: TObject);
      procedure actCancelarPedidoUpdate(Sender: TObject);
      procedure Action1Execute(Sender: TObject);
      procedure Action1Update(Sender: TObject);
      procedure tbItensPRD_QTDE_ITENSGetText(Sender: TField; var Text: string; DisplayText: Boolean);
      procedure actPrintExpedicaoExecute(Sender: TObject);
      procedure actPrintExecute(Sender: TObject);
      procedure SchemaADAfterApplyUpdate(Sender: TObject);
   private
      { Private declarations }
      procedure ModoImpressao(aValue: Boolean = false);
      function GerarNotaFiscal : boolean;
      function GerarNotaFiscalItens(id_nfe: Integer) : boolean;
      function GerarNotaFiscalPagtos(id_nfe: Integer) : boolean;
   public
      { Public declarations }
   end;

var
   FrPedidosVendasGerenciar: TFrPedidosVendasGerenciar;

implementation

uses
   Classe.Empresa, uPedidosVendas, uPedidosVendasPrint, Classe.NFe, uEmissorNfe, uProdutos,
   uModuloRet, Classe.Financeiro, Classe.PedidoVendas;

{$R *.dfm}

procedure TFrPedidosVendasGerenciar.actAprovarExecute(Sender: TObject);
begin
   if Application.MessageBox('Tem certeza que deseja aprovar este pedido?', 'TechCore-RTG', mb_IconQuestion or mb_YesNo) = mrNo then
      Abort;

   { Aprova o pedido }
   try
      tbDados.Edit;
      tbDados.FieldByName('PED_STATUS').AsInteger := 2;
      tbDados.Post;

      Application.MessageBox('Pedido aprovado com sucesso', 'TechCore-RTG', mb_IconInformation or mb_Ok);
   except
      on e: exception do
         Application.MessageBox(pChar('Erro ao aprovar o pedido.' + #13#10 + e.Message), 'TechCore-RTG', mb_IconStop or mb_Ok);
   end;
end;

procedure TFrPedidosVendasGerenciar.actAprovarUpdate(Sender: TObject);
begin
   {
     1 - Orçamento 
     2 - Pedido 
     3 - Recebido 
     4 - Nota Fiscal
     9 - Cancelado
   }
   if (tbDados.IsEmpty) then
      TAction(Sender).Enabled := false
   else 
   if tbDados.FieldByName('PED_VLR_TOTAL').AsFloat = 0 then // sem pagamentos definidos
      TAction(Sender).Enabled := false
   else 
   if tbDados.FieldByName('PED_STATUS').AsInteger = 2 then
      TAction(Sender).Enabled := false
   else 
   if tbDados.FieldByName('PED_STATUS').AsInteger = 4 then
      TAction(Sender).Enabled := false
   else 
   if tbDados.FieldByName('PED_STATUS').AsInteger = 9 then
      TAction(Sender).Enabled := false
   else
      TAction(Sender).Enabled := true;
end;

procedure TFrPedidosVendasGerenciar.actBaixarExecute(Sender: TObject);
begin
   { Efetua a baixa do pedido no sistema }
   if Application.MessageBox('Tem certeza que deseja efetuar a baixa do pedido, após este processo não será possível efetuar alterações neste pedido.', 'TechCore-RTG',
      mb_IconQuestion or mb_YesNo) = mrNo then
      Abort;

   // Inicia uma transação
   FrModuloRet.DBConexaoII.StartTransaction;

   try
      { altera o status do pedido para entregue }
      xQuery.Close;
      xQuery.SQL.Clear;
      xQuery.SQL.Add('UPDATE C000100 SET PED_ENTREGUE =:PED_ENTREGUE WHERE ID =:ID');
      xQuery.ParamByName('ped_entregue').AsInteger := 2; // Pedido entregue
      xQuery.ParamByName('id').AsInteger := tbDados.FieldByName('id').AsInteger;
      xQuery.Prepare;
      xQuery.ExecSQL;

      // Grava os dados na tabela
      FrModuloRet.DBConexaoII.Commit;

      // Atualiza o cursor dos pedido
      tbDados.Refresh;

      // Aviso ao usuário
      Application.MessageBox('Pedido baixado com sucesso.', 'TechCore-RTG', mb_IconInformation or mb_Ok);

   except
      on e: exception do
      begin
         // Cancela as alterações
         FrModuloRet.DBConexaoII.Rollback;

         // Avis oao usuário
         Application.MessageBox(pChar('Erro, não foi possível baixar o pedido.' + sLineBreak + 'Erro: ' + e.Message), 'TechCore-RTG', mb_IconStop or mb_Ok);
      end;
   end;
end;

procedure TFrPedidosVendasGerenciar.actCancelarPedidoExecute(Sender: TObject);
var
   tbPesq: TFDQuery;
begin
   { Antes de cancela o pedido, verifica se existem parcelas pagas }
   try
      aQuery.Close;
      aQuery.SQL.Clear;
      aQuery.SQL.Add('Select');
      aQuery.SQL.Add('  count(1) as rec');
      aQuery.SQL.Add('from');
      aQuery.SQL.Add('  C000112 AS t1');
      aQuery.SQL.Add('join');
      aQuery.SQL.Add('  C000110 AS t2');
      aQuery.SQL.Add('on');
      aQuery.SQL.Add('  t1.ID_C000110 = t2.ID');
      aQuery.SQL.Add('where');
      aQuery.SQL.Add('  t2.id_empresa = :id_empresa');
      aQuery.SQL.Add('and');
      aQuery.SQL.Add('  t2.id_origem  = :id_org');
      aQuery.SQL.Add('and');
      aQuery.SQL.Add('  t2.rec_origem = 1');
      aQuery.ParamByName('id_empresa').AsInteger := FEmpresaClass.ID;
      aQuery.ParamByName('id_org').AsInteger := tbDadosID.AsInteger;
      aQuery.Open();

      if aQuery.FieldByName('rec').AsInteger > 0 then
      begin
         Application.MessageBox('Não é possível cancelar este pedido, existem pagamentos efetuados.', 'TechCore-RTG', mb_IconError or mb_Ok);
         Abort;
      end;

   finally
      aQuery.Close;
   end;

   // ----------------------------------------------------------------------------------------- //
   // Se houver uma nota fiscal autorizada vinculada ao pedido, solicita que antes seja         //
   // cancelada a nota fiscal e logo após será possível cancela o pedido                        //
   // ----------------------------------------------------------------------------------------- //
   tbPesq := TFDQuery.Create(self);
   tbPesq.Connection := FrModuloRet.DBConexao;
   try
      tbPesq.SQL.Add('SELECT NFE_STATUS FROM C000600 WHERE ID_PEDIDO = :ID_PEDIDO');
      tbPesq.ParamByName('ID_PEDIDO').AsInteger := tbDadosID.AsInteger;
      tbPesq.Open();

      if not tbPesq.IsEmpty then
      begin

         case tbPesq.FieldByName('NFE_STATUS').AsInteger of
            0, 1:
               begin
                  Application.MessageBox('Antes de cancelar o pedido é necessário excluir a nota fiscal vinculada.', 'TechCore-RTG', mb_IconWarning or mb_Ok);
                  Abort;
               end;

            2:
               begin
                  Application.MessageBox('Antes de cancelar o pedido é necessário cancelar a nota fiscal vinculada.', 'TechCore-RTG', mb_IconWarning or mb_Ok);
                  Abort;
               end;
         end;

      end;

   finally
      FreeAndNil(tbPesq);
   end;

   // Confirma o cancelamento
   if Application.MessageBox('Tem certeza que deseja cancelar este pedido?', 'TechCore-RTG', mb_IconQuestion or mb_YesNo) = mrNo then
      Abort;

   // Inicia a transação
   FrModuloRet.DBConexaoII.StartTransaction;

   { Efetua o cancelamento do pedido }
   try
      xQuery.Close;
      xQuery.SQL.Clear;
      xQuery.SQL.Add('UPDATE C000100 SET');
      xQuery.SQL.Add('  PED_STATUS =:PED_STATUS, PED_ENTREGUE =:PED_ENTREGUE, PED_FATURADO =:PED_FATURADO');
      xQuery.SQL.Add('WHERE');
      xQuery.SQL.Add('  ID =:ID');
      xQuery.ParamByName('ped_status').AsInteger := 9;
      xQuery.ParamByName('ped_entregue').AsInteger := 1;
      xQuery.ParamByName('ped_faturado').AsInteger := 1;
      xQuery.ParamByName('id').AsInteger := tbDados.FieldByName('id').AsInteger;
      xQuery.Prepare;
      xQuery.ExecSQL;

      // Grava as alterações na tabela
      FrModuloRet.DBConexaoII.Commit;

      // Atualiza o cursor dos pedidos
      tbDados.Refresh;

      // Aviso ao usuário
      Application.MessageBox('Pedido cancelado com sucesso', 'TechCore-RTG', mb_IconInformation or mb_Ok);

   except
      on e: exception do
      begin
         // Cancela as alterações
         FrModuloRet.DBConexaoII.Rollback;

         // Aviso ao usuário
         Application.MessageBox(pChar('Erro ao cancelar o pedido.' + sLineBreak + e.Message), 'TechCore-RTG', mb_IconStop or mb_Ok);
      end;
   end;
end;

procedure TFrPedidosVendasGerenciar.actCancelarPedidoUpdate(Sender: TObject);
begin
   TAction(Sender).Enabled := not(tbDados.IsEmpty) and (tbDadosPED_FATURADO.AsInteger = 2) or (tbDadosPED_ENTREGUE.AsInteger = 2);
end;

procedure TFrPedidosVendasGerenciar.actGerarNFeExecute(Sender: TObject);
var
   id_nfe   : integer;
   nfeQuery : TFDQuery;
begin
   if Application.MessageBox('Tem certeza que deseja gerar uma nota fiscal deste pedido?', 'TechCore-RTG', mb_IconQuestion or mb_YesNo) = mrNo then
      Abort;

   // Cria o objeto se o objeto não existe
   if not Assigned(ClassPedidoVendas) then
      ClassPedidoVendas := TPedidosVendas.Create;

   // Armazena o id do pedido
   ClassPedidoVendas.IDPedido := tbDados.FieldByName('id').AsInteger;

   // Inicia o controle da transação
   FrModuloRet.DBConexaoII.StartTransaction;

   // Gera a nota fiscal
   if GerarNotaFiscal then
   begin

      nfeQuery := TFDQuery.Create(self);
      nfeQuery.Connection := FrModuloRet.DBConexaoII;
      try

         try
            nfeQuery.SQL.Add('Update C000100 set ped_status = :ped_sts where id = :id_ped');
            nfeQuery.ParamByName('ped_sts').AsInteger := 4;
            nfeQuery.ParamByName('id_ped').AsInteger  := ClassPedidoVendas.IDPedido;

            nfeQuery.Prepare;
            nfeQuery.ExecSQL;

            FrModuloRet.DBConexaoII.Commit;
            Application.MessageBox(pChar('Nota fiscal gerada com sucesso.'), 'TechCore-RTG', mb_IconInformation or mb_Ok);
            tbDados.Refresh;

         except
            on e: exception do
            begin
               FrModuloRet.DBConexaoII.Rollback;
               Application.MessageBox(pChar('Erro ao gerar a nota fiscal, tente novamente.' + sLineBreak + e.Message), 'TechCore-RTG', mb_IconStop or mb_Ok);
            end;
         end;

      finally
         FreeAndNil(nfeQuery);
      end;

   end
   else
      FrModuloRet.DBConexaoII.Rollback;

end;

procedure TFrPedidosVendasGerenciar.actGerarNFeUpdate(Sender: TObject);
begin
   {
     1 - Orçamento 
     2 - Pedido 
     3 - Recebido 
     4 - Nota Fiscal
     9 - Cancelado
   }

   { Define os padrões para se gerar a NFe }
   if (tbDados.IsEmpty) or (tbItens.IsEmpty) or (tbDados.FieldByName('PED_STATUS').AsInteger <> 2) then
      TAction(Sender).Enabled := false
   else
      TAction(Sender).Enabled := true;
end;

procedure TFrPedidosVendasGerenciar.Action1Execute(Sender: TObject);
begin
   // Confirma o faturamento
   if Application.MessageBox('Tem certeza que deseja faturar esta pedido de vendas?', 'TechCore-RTG', mb_IconQuestion or mb_YesNo) = mrNo then
      Abort;

   // Inicia a transação transação
   FrModuloRet.DBConexaoII.StartTransaction;

   try
      try
         // 1º Prepara a query de contas
         Query110.Open();
         Query110.Insert;
         Query110.FieldByName('id_empresa').AsInteger := FEmpresaClass.ID;
         Query110.FieldByName('id_cliente').AsInteger := tbDadosID_CLIENTE.AsInteger;
         Query110.FieldByName('id_origem').AsInteger := tbDadosID.AsInteger;
         Query110.FieldByName('id_pln_ctas').AsInteger := FEmpresaClass.PlnPedidoV;
         Query110.FieldByName('rec_origem').AsInteger := 1;
         Query110.FieldByName('rec_vlr_conta').AsFloat := tbDadosPED_VLR_TOTAL.AsFloat;
         Query110.FieldByName('rec_documento').AsString := Format('%.6d', [tbDadosPED_NUMERO.AsInteger]);

         // Multa e Juros pre definidos
         Query110.FieldByName('rec_juros').AsFloat := ClassFinanceiro.JurosTaxa;
         Query110.FieldByName('rec_juros_caren').AsInteger := ClassFinanceiro.JurosCarencia;
         Query110.FieldByName('rec_multa').AsFloat := ClassFinanceiro.MultaTaxa;
         Query110.FieldByName('rec_multa_caren').AsFloat := ClassFinanceiro.MultaCarencia;

         Query110.Post;

         aQuery.Close;
         aQuery.SQL.Clear;
         aQuery.SQL.Add('SELECT * FROM C000102 WHERE ID_PEDIDO = :ID ORDER BY PAG_VENCIMENTO ASC');
         aQuery.ParamByName('ID').AsInteger := tbDadosID.AsInteger;
         aQuery.Open();
         aQuery.First;

         Query111.Open();

         repeat

            with Query111 do
            begin
               Append;
               FieldByName('rec_parcela').AsInteger := aQuery.RecNo;
               FieldByName('rec_valor').AsFloat := aQuery.FieldByName('PAG_VLR_TOTAL').AsFloat;
               FieldByName('rec_documento').AsString := tbDadosPED_NUMERO.AsString;
               FieldByName('rec_vencimento').AsDateTime := aQuery.FieldByName('PAG_VENCIMENTO').AsDateTime;
               FieldByName('rec_anotacoes').AsString := 'Pedido de Vendas N.º: ' + Format('%.6d', [tbDadosPED_NUMERO.AsInteger]);
               Post;
            end;

            aQuery.Next;
         until (aQuery.Eof);

         // grava os dados em cache
         SchemaAD.ApplyUpdates(0);

         { atualiza o o status para faturado }
         xQuery.Close;
         xQuery.SQL.Clear;
         xQuery.SQL.Add('UPDATE C000100 SET PED_FATURADO =:PED_FATURADO WHERE ID =:ID');
         xQuery.ParamByName('ped_faturado').AsInteger := 2; // Fatura o pedido
         xQuery.ParamByName('id').AsInteger := tbDados.FieldByName('id').AsInteger;
         xQuery.Prepare;
         xQuery.ExecSQL;

         // Grava os dados na tabela
         FrModuloRet.DBConexaoII.Commit;

         // Atuali o cursor dos pedidos
         tbDados.Refresh;

         { aviso ao usuário }
         Application.MessageBox('Pedido faturado com sucesso!', 'TechCore-RTG', mb_IconInformation or mb_Ok);

      except
         on e: exception do
         begin
            // Cancela as alterações no banco
            FrModuloRet.DBConexaoII.Rollback;

            // Aviso ao usuário
            Application.MessageBox(pChar('Erro ao faturar o Pedido de Vendas:' + e.Message), 'Techcore-RTG', mb_IconError or mb_Ok);
         end;
      end;

   finally
      Query110.Close;
      Query111.Close;
      aQuery.Close;
   end;

end;

procedure TFrPedidosVendasGerenciar.Action1Update(Sender: TObject);
begin
   TAction(Sender).Enabled := not(tbDados.IsEmpty) and (tbDadosPED_FATURADO.AsInteger = 1) and (not(tbDadosPED_STATUS.AsInteger in [1, 4, 9]));
end;

procedure TFrPedidosVendasGerenciar.actPrintExecute(Sender: TObject);
begin
   ModoImpressao(true);
end;

procedure TFrPedidosVendasGerenciar.actPrintExpedicaoExecute(Sender: TObject);
begin
   ModoImpressao();
end;

procedure TFrPedidosVendasGerenciar.actPrintUpdate(Sender: TObject);
begin
   if (tbDados.IsEmpty) or (tbItens.IsEmpty) or (tbDados.FieldByName('PED_VLR_TOTAL').AsFloat <= 0.00) then
      TAction(Sender).Enabled := false
   else
      TAction(Sender).Enabled := not(tbDados.State in [dsInsert, dsEdit]);
end;

procedure TFrPedidosVendasGerenciar.actReabrirExecute(Sender: TObject);
begin
   if Application.MessageBox('Te mcerteza que deseja Reabrir este Pedido?', 'TechCore-RTG', mb_IconQuestion or mb_YesNo) = mrNo then
      Abort;

   { Reabre o pedido }
   try
      tbDados.Edit;
      tbDados.FieldByName('PED_STATUS').AsInteger := 1;
      tbDados.Post;

      Application.MessageBox('Pedido Reaberto com sucesso.', 'TechCore-RTG', mb_IconInformation or mb_Ok);

   except
      on e: exception do
         Application.MessageBox(pChar('Erro ao Reabrir este pedido, tente novamente.' + #13#10 + e.Message), 'TechCore-RTG', mb_IconStop or mb_Ok);
   end;
end;

procedure TFrPedidosVendasGerenciar.actReabrirUpdate(Sender: TObject);
begin
   {
     1 - Orçamento 
     2 - Pedido 
     3 - Recebido 
     4 - Nota Fiscal
     9 - Cancelado
   }
   if (tbDados.IsEmpty) then
      TAction(Sender).Enabled := false
   else 
   if tbDados.FieldByName('PED_ENTREGUE').AsInteger = 2 then
      TAction(Sender).Enabled := false
   else 
   if tbDados.FieldByName('PED_STATUS').AsInteger = 1 then
      TAction(Sender).Enabled := false
   else 
   if tbDados.FieldByName('PED_STATUS').AsInteger = 4 then
      TAction(Sender).Enabled := false
   else 
   if tbDados.FieldByName('PED_STATUS').AsInteger = 9 then
      TAction(Sender).Enabled := false
   else
      TAction(Sender).Enabled := true
end;

procedure TFrPedidosVendasGerenciar.actSairExecute(Sender: TObject);
begin
   self.Close;
end;

procedure TFrPedidosVendasGerenciar.eCondicaoClick(Sender: TObject);
begin
   case eCondicao.ItemIndex of
      0:
         begin
            tbDados.Close;
            tbDados.SQL.Clear;
            tbDados.SQL.Add('SELECT * FROM VW_PEDIDOS_VENDAS WHERE ID_EMPRESA = :ID_EMP AND PED_DATA_PEDIDO BETWEEN :IDATA AND :FDATA AND PED_STATUS = 1 ORDER BY ID DESC');
            tbDados.ParamByName('ID_EMP').AsInteger := FEmpresaClass.ID;
            tbDados.ParamByName('iData').AsDateTime := eDataIni.Date;
            tbDados.ParamByName('fData').AsDateTime := eDataFim.Date;
            tbDados.Open();
         end;

      1:
         begin
            tbDados.Close;
            tbDados.SQL.Clear;
            tbDados.SQL.Add('SELECT * FROM VW_PEDIDOS_VENDAS WHERE ID_EMPRESA = :ID_EMP AND PED_DATA_PEDIDO BETWEEN :IDATA AND :FDATA AND PED_STATUS = 2 ORDER BY ID DESC');
            tbDados.ParamByName('ID_EMP').AsInteger := FEmpresaClass.ID;
            tbDados.ParamByName('iData').AsDateTime := eDataIni.Date;
            tbDados.ParamByName('fData').AsDateTime := eDataFim.Date;
            tbDados.Open();
         end;

      2:
         begin
            tbDados.Close;
            tbDados.SQL.Clear;
            tbDados.SQL.Add('SELECT * FROM VW_PEDIDOS_VENDAS WHERE ID_EMPRESA = :ID_EMP AND PED_DATA_PEDIDO BETWEEN :IDATA AND :FDATA ORDER BY ID DESC');
            tbDados.ParamByName('ID_EMP').AsInteger := FEmpresaClass.ID;
            tbDados.ParamByName('iData').AsDateTime := eDataIni.Date;
            tbDados.ParamByName('fData').AsDateTime := eDataFim.Date;
            tbDados.Open();
         end;

   end;
end;

procedure TFrPedidosVendasGerenciar.eDataIniEnter(Sender: TObject);
begin
   TEdit(Sender).Brush.Color := $00CFCFCF;
end;

procedure TFrPedidosVendasGerenciar.eDataIniExit(Sender: TObject);
begin
   TEdit(Sender).Brush.Color := clWindow;
end;

procedure TFrPedidosVendasGerenciar.eGridDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin

   if tbDados.IsEmpty then
      exit;

   if Column.Title.Caption = 'Status' then
   begin

      { Efetua a coloração de acordo o status }
      case tbDados.FieldByName('PED_STATUS').AsInteger of
         1 : (Sender as TDBGrid).Canvas.Font.Color := clBlack;
         2 : (Sender as TDBGrid).Canvas.Font.Color := $00A00000;
         4 : (Sender as TDBGrid).Canvas.Font.Color := clGreen;
         9 : (Sender as TDBGrid).Canvas.Font.Color := clRed;
      end;

   end;

   if Column.Title.Caption = 'Fat.' then
   begin

      { Em caso de pedido já entregue, pinta a linha inteira }
      if tbDados.FieldByName('PED_FATURADO').AsInteger = 2 then
      begin
         (Sender as TDBGrid).Canvas.Font.Color := clGreen;
         // (Sender as TDBGrid).Canvas.Brush.Color := clGreen;
      end;

   end;

   if Column.Title.Caption = 'Ent.' then
   begin

      { Em caso de pedido já entregue, pinta a linha inteira }
      if tbDados.FieldByName('PED_ENTREGUE').AsInteger = 2 then
         (Sender as TDBGrid).Canvas.Font.Color := clGreen;

   end;

   { Pinta o Grid }
   (Sender as TDBGrid).Canvas.FillRect(Rect);
   (Sender as TDBGrid).DefaultDrawColumnCell(Rect, DataCol, Column, State);

end;

procedure TFrPedidosVendasGerenciar.eSearchTextChange(Sender: TObject);
begin
   case eTipoFiltro.ItemIndex of
      0:
         begin
            tbDados.Filtered := false;
            tbDados.Filter := 'PED_NUMERO LIKE ' + QuotedStr('%' + eSearchText.Text + '%');
            tbDados.Filtered := true;
         end;

      1:
         begin
            tbDados.Filtered := false;
            tbDados.Filter := 'CLI_RAZAO_SOCIAL LIKE ' + QuotedStr('%' + eSearchText.Text + '%');
            tbDados.Filtered := true;
         end;

      2:
         begin
            tbDados.Filtered := false;
            tbDados.Filter := 'CLI_CNPJ LIKE ' + QuotedStr('%' + eSearchText.Text + '%');
            tbDados.Filtered := true;
         end;
   end;
end;

procedure TFrPedidosVendasGerenciar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   FreeAndNil(FrPedidosVendasGerenciar);
end;

procedure TFrPedidosVendasGerenciar.FormCreate(Sender: TObject);
begin
   { Ajusta as datas }
   eDataIni.Date := IncDay(Date, -90);
   eDataFim.Date := Date;

   // Ajustar casas decimais
   case FEmpresaClass.Decimal_Qtde of
      2 : tbItensPRD_QTDE.DisplayFormat := ',0.00';
      3 : tbItensPRD_QTDE.DisplayFormat := ',0.000';
      4 : tbItensPRD_QTDE.DisplayFormat := ',0.0000';
   end;

   // Ajustar casas decimais
   case FEmpresaClass.Decimal_Venda of
      2 : tbItensPRD_VLR_UNITARIO.DisplayFormat := ',0.00';
      3 : tbItensPRD_VLR_UNITARIO.DisplayFormat := ',0.000';
      4 : tbItensPRD_VLR_UNITARIO.DisplayFormat := ',0.0000';
   end;
end;

function TFrPedidosVendasGerenciar.GerarNotaFiscalPagtos(id_nfe: Integer) : boolean;
var
   nfeQuery       : TFDQuery;
   nfeQueryPagtos : TFDQuery;
begin
   Result := false;

   try   
      nfeQuery := TFDQuery.Create(self);
      nfeQuery.Connection := FrModuloRet.DBConexao;

      nfeQueryPagtos := TFDQuery.Create(self);
      nfeQueryPagtos.Connection := FrModuloRet.DBConexaoII;
      
      try
         nfeQuery.SQL.Add('Select');
         nfeQuery.SQL.Add('   id_forma_pagto, pag_vencimento, pag_vlr_subtotal, pag_juros, pag_vlr_total, pag_vlr_juros, pag_observacao');
         nfeQuery.SQL.Add('from');
         nfeQuery.SQL.Add('   C000102');
         nfeQuery.SQL.Add('where');
         nfeQuery.SQL.Add('   id_pedido = :id_ped');
         
         nfeQuery.ParamByName('id_ped').AsInteger := ClassPedidoVendas.IDPedido;
         nfeQuery.Open();

         if not nfeQuery.IsEmpty then
         begin
            repeat
               nfeQueryPagtos.SQL.Clear;
               nfeQueryPagtos.SQL.Add('Insert into C000602(');
               nfeQueryPagtos.SQL.Add('   id_nota_fiscal, id_forma_pagto, pag_vencimento, pag_vlr_subtotal, pag_juros, pag_vlr_total, pag_vlr_juros, pag_observacao');
               nfeQueryPagtos.SQL.Add(')values(');
               nfeQueryPagtos.SQL.Add('   :id_nota_fiscal, :id_forma_pagto, :pag_vencimento, :pag_vlr_subtotal, :pag_juros, :pag_vlr_total, :pag_vlr_juros, :pag_observacao)');

               nfeQueryPagtos.ParamByName('id_nota_fiscal').AsInteger  := id_nfe;
               nfeQueryPagtos.ParamByName('id_forma_pagto').AsInteger  := nfeQuery.FieldByName('id_forma_pagto').AsInteger;
               nfeQueryPagtos.ParamByName('pag_vencimento').AsDateTime := nfeQuery.FieldByName('pag_vencimento').AsDateTime;
               nfeQueryPagtos.ParamByName('pag_vlr_subtotal').AsFloat  := nfeQuery.FieldByName('pag_vlr_subtotal').AsFloat;
               nfeQueryPagtos.ParamByName('pag_juros').AsFloat         := nfeQuery.FieldByName('pag_juros').AsFloat;
               nfeQueryPagtos.ParamByName('pag_vlr_total').AsFloat     := nfeQuery.FieldByName('pag_vlr_total').AsFloat;
               nfeQueryPagtos.ParamByName('pag_vlr_juros').AsFloat     := nfeQuery.FieldByName('pag_vlr_juros').AsFloat;
               nfeQueryPagtos.ParamByName('pag_observacao').AsString   := nfeQuery.FieldByName('pag_observacao').AsString;
               nfeQueryPagtos.Prepare;
               nfeQueryPagtos.ExecSQL;
               
               // Próximo registro
               nfeQuery.Next;
               
            until (nfeQuery.Eof);
         end;

         result := true;
         
      except
         on e: exception do
         begin
            Result := false;
            Application.MessageBox(pChar('Erro ao gerar a nota fiscal, tente novamente.' + sLineBreak + e.Message), 'TechCore-RTG', mb_IconStop or mb_Ok);
         end;
      end;
      
   finally

   end;
end;

function TFrPedidosVendasGerenciar.GerarNotaFiscal : boolean;
var
   nfeQuery: TFDQuery;
begin
   Result := false;

   try

      nfeQuery := TFDQuery.Create(self);
      nfeQuery.Connection := FrModuloRet.DBConexaoII;

      try
         nfeQuery.Close;
         nfeQuery.SQL.Clear;
         nfeQuery.SQL.Add('insert into C000600(');
         nfeQuery.SQL.Add('   id_empresa, id_pedido, id_cliente, id_funcionario, id_tabela_precos, id_transportadora, tipo_de_registro, nfe_fat_no_pedido, nfe_ambiente,');
         nfeQuery.SQL.Add('   nfe_pedido_numero, nfe_modelo, nfe_serie, nfe_tipo_operacao, nfe_tipo_danfe, nfe_tipo_frete, nfe_natureza_operacao, nfe_dh_emissao, nfe_finalidade,');
         nfeQuery.SQL.Add('   nfe_indicador_presenca, nfe_faturada, nfe_pedido_entregue, nfe_vlr_frete, nfe_vlr_seguro, nfe_vlr_outros,');
         nfeQuery.SQL.Add('   nfe_vlr_desconto, nfe_veiculo_placa, nfe_veiculo_uf, nfe_veiculo_rntc, nfe_volume_qtde, nfe_volume_especie, nfe_volume_marca,');
         nfeQuery.SQL.Add('   nfe_volume_numero, nfe_volume_peso_l, nfe_volume_peso_b, nfe_status, nfe_info_contrib');
         nfeQuery.SQL.Add(')values(');
         nfeQuery.SQL.Add('   :id_empresa, :id_pedido, :id_cliente, :id_funcionario, :id_tabela_precos, :id_transportadora, :tipo_de_registro, :nfe_fat_no_pedido, :nfe_ambiente,');
         nfeQuery.SQL.Add('   :nfe_pedido_numero, :nfe_modelo, :nfe_serie, :nfe_tipo_operacao, :nfe_tipo_danfe, :nfe_tipo_frete, :nfe_natureza_operacao, :nfe_dh_emissao,');
         nfeQuery.SQL.Add('   :nfe_finalidade, :nfe_indicador_presenca, :nfe_faturada, :nfe_pedido_entregue, :nfe_vlr_frete, :nfe_vlr_seguro, :nfe_vlr_outros, :nfe_vlr_desconto,');
         nfeQuery.SQL.Add('   :nfe_veiculo_placa, :nfe_veiculo_uf, :nfe_veiculo_rntc, :nfe_volume_qtde, :nfe_volume_especie, :nfe_volume_marca, :nfe_volume_numero,');
         nfeQuery.SQL.Add('   :nfe_volume_peso_l, :nfe_volume_peso_b, :nfe_status, :nfe_info_contrib) returning id {into :id_nfe}');

         nfeQuery.ParamByName('id_empresa').AsInteger        := tbDados.FieldByName('id_empresa').AsInteger;
         nfeQuery.ParamByName('id_pedido').AsInteger         := ClassPedidoVendas.IDPedido;
         nfeQuery.ParamByName('id_cliente').AsInteger        := tbDados.FieldByName('id_cliente').AsInteger;
         nfeQuery.ParamByName('id_funcionario').AsInteger    := tbDados.FieldByName('id_funcionario').AsInteger;
         nfeQuery.ParamByName('id_tabela_precos').AsInteger  := tbDados.FieldByName('id_tabela_precos').AsInteger;
         nfeQuery.ParamByName('id_transportadora').AsInteger := tbDados.FieldByName('id_transportadora').AsInteger;
         nfeQuery.ParamByName('tipo_de_registro').AsInteger  := 3; // Determina que é pedidos de vendas
         nfeQuery.ParamByName('nfe_fat_no_pedido').AsString  := IfThen(tbDados.FieldByName('ped_faturado').AsInteger = 2, 'S', 'N');
         nfeQuery.ParamByName('nfe_ambiente').AsInteger      := ConfigNFe.NFe_Ambiente;
         nfeQuery.ParamByName('nfe_pedido_numero').AsInteger := ClassPedidoVendas.IDPedido;

         // Checa o ambiente de emissão utilizado
         case ConfigNFe.NFe_Ambiente of
            0:
               begin
                  nfeQuery.ParamByName('nfe_modelo').AsInteger := ConfigNFe.NFe_PModelo;
                  nfeQuery.ParamByName('nfe_serie').AsInteger := ConfigNFe.NFe_PSerie;
               end;

            1:
               begin
                  nfeQuery.ParamByName('nfe_modelo').AsInteger := ConfigNFe.NFe_HModelo;
                  nfeQuery.ParamByName('nfe_serie').AsInteger := ConfigNFe.NFe_HSerie;
               end;
         end;

         nfeQuery.ParamByName('nfe_tipo_operacao').AsInteger      := 1; // Nfe de saida
         nfeQuery.ParamByName('nfe_tipo_danfe').AsInteger         := ConfigNFe.NFe_TipoDanfe;
         nfeQuery.ParamByName('nfe_tipo_frete').AsInteger         := tbDados.FieldByName('ped_tipo_frete').AsInteger;
         nfeQuery.ParamByName('nfe_natureza_operacao').AsString   := 'VENDA';
         nfeQuery.ParamByName('nfe_dh_emissao').AsDateTime        := Now;
         nfeQuery.ParamByName('nfe_finalidade').AsInteger         := 0; // finalidade normal
         nfeQuery.ParamByName('nfe_indicador_presenca').AsInteger := 6; // operação não presencial
         nfeQuery.ParamByName('nfe_faturada').AsInteger           := tbDados.FieldByName('ped_faturado').AsInteger;
         nfeQuery.ParamByName('nfe_pedido_entregue').AsInteger    := tbDados.FieldByName('ped_entregue').AsInteger;
         nfeQuery.ParamByName('nfe_vlr_frete').AsFloat            := tbDados.FieldByName('ped_vlr_frete').AsFloat;
         nfeQuery.ParamByName('nfe_vlr_seguro').AsFloat           := tbDados.FieldByName('ped_vlr_seguro').AsFloat;
         nfeQuery.ParamByName('nfe_vlr_outros').AsFloat           := tbDados.FieldByName('ped_vlr_outros').AsFloat;
         nfeQuery.ParamByName('nfe_vlr_desconto').AsFloat         := tbDados.FieldByName('ped_vlr_descontos').AsFloat;
         nfeQuery.ParamByName('nfe_veiculo_placa').AsString       := tbDados.FieldByName('ped_veiculo_placa').AsString;
         nfeQuery.ParamByName('nfe_veiculo_uf').AsString          := tbDados.FieldByName('ped_veiculo_uf').AsString;
         nfeQuery.ParamByName('nfe_veiculo_rntc').AsString        := tbDados.FieldByName('ped_veiculo_rntc').AsString;
         nfeQuery.ParamByName('nfe_volume_qtde').AsFloat          := tbDados.FieldByName('ped_volume_qtde').AsFloat;
         nfeQuery.ParamByName('nfe_volume_especie').AsString      := tbDados.FieldByName('ped_volume_especie').AsString;
         nfeQuery.ParamByName('nfe_volume_marca').AsString        := tbDados.FieldByName('ped_volume_marca').AsString;
         nfeQuery.ParamByName('nfe_volume_numero').AsString       := tbDados.FieldByName('ped_volume_numero').AsString;
         nfeQuery.ParamByName('nfe_volume_peso_l').AsFloat        := tbDados.FieldByName('ped_volume_peso_l').AsFloat;
         nfeQuery.ParamByName('nfe_volume_peso_b').AsFloat        := tbDados.FieldByName('ped_volume_peso_b').AsFloat;
         nfeQuery.ParamByName('nfe_status').AsInteger             := 0;
         nfeQuery.ParamByName('nfe_info_contrib').AsString        := tbDados.FieldByName('ped_observacao').AsString;

         nfeQuery.Prepare;
         nfeQuery.ExecSQL;

         // Gerar os itens da dnota fiscal
         if GerarNotaFiscalItens(nfeQuery.ParamByName('id_nfe').AsInteger) then
            Result := true
         else
            Result := false

      except
         on e: exception do
         begin
            Result := false;
            Application.MessageBox(pChar('Erro ao gerar a nota fiscal, tente novamente.' + sLineBreak + e.Message), 'TechCore-RTG', mb_IconStop or mb_Ok);
         end;
      end;

   finally
      FreeAndNil(nfeQuery);
   end;
end;

function TFrPedidosVendasGerenciar.GerarNotaFiscalItens(id_nfe: Integer) : boolean;
var
   nfeQuery: TFDQuery;
   nfeQueryItens: TFDQuery;
begin
   Result := false;

   try

      // Para inserir os dados
      nfeQuery := TFDQuery.Create(self);
      nfeQuery.Connection := FrModuloRet.DBConexaoII;

      // Para listar os dados
      nfeQueryItens := TFDQuery.Create(self);
      nfeQueryItens.Connection := FrModuloRet.DBConexao;

      try
         if id_nfe = 0 then
            raise Exception.Create('Erro ao recuperar o id da nota fiscal, tente novamente');

         nfeQueryItens.SQL.Add('Select');
         nfeQueryItens.SQL.Add('    t1.id_produto, t1.prd_ncm, t1.prd_ncm_ex, t1.prd_cest, t1.prd_origem, t1.id_tributos,');
         nfeQueryItens.SQL.Add('    t1.prd_qtde, t1.prd_vlr_unitario, t1.prd_vlr_subtotal, t1.prd_informacoes, t2.prd_codigo,');
         nfeQueryItens.SQL.Add('    t2.prd_codigo_brr,  t2.prd_descricao, t2.prd_unidade');
         nfeQueryItens.SQL.Add('from');
         nfeQueryItens.SQL.Add('    C000101 as t1');
         nfeQueryItens.SQL.Add('join');
         nfeQueryItens.SQL.Add('    C000405 as t2');
         nfeQueryItens.SQL.Add('on');
         nfeQueryItens.SQL.Add('    t2.id = t1.id_produto');
         nfeQueryItens.SQL.Add('where');
         nfeQueryItens.SQL.Add('    t1.id_pedido = :id_ped');

         nfeQueryItens.ParamByName('id_ped').AsInteger := ClassPedidoVendas.IDPedido;
         nfeQueryItens.Open();

         if not nfeQueryItens.IsEmpty then
         begin

            repeat
               nfeQuery.SQL.Clear;
               nfeQuery.SQL.Add('Insert Into C000601(');
               nfeQuery.SQL.Add('   prd_codigo, prd_codigo_barras, prd_descricao, prd_unidade, prd_ncm, prd_ncm_ex, prd_cest,');
               nfeQuery.SQL.Add('   prd_origem, prd_inclusao, id_nota_fiscal, id_produto, id_tributos, prd_qtde, prd_vlr_unitario,');
               nfeQuery.SQL.Add('   prd_vlr_subtotal, prd_informacoes');
               nfeQuery.SQL.Add(')values(');
               nfeQuery.SQL.Add('   :prd_codigo, :prd_codigo_barras, :prd_descricao, :prd_unidade, :prd_ncm, :prd_ncm_ex, :prd_cest,');
               nfeQuery.SQL.Add('   :prd_origem, :prd_inclusao, :id_nota_fiscal, :id_produto, :id_tributos, :prd_qtde, :prd_vlr_unitario, :prd_vlr_subtotal, :prd_informacoes)');

               nfeQuery.ParamByName('prd_codigo').AsInteger       := nfeQueryItens.FieldByName('prd_codigo').AsInteger;
               nfeQuery.ParamByName('prd_codigo_barras').AsString := nfeQueryItens.FieldByName('prd_codigo_brr').AsString;
               nfeQuery.ParamByName('prd_descricao').AsString     := nfeQueryItens.FieldByName('prd_descricao').AsString;
               nfeQuery.ParamByName('prd_unidade').AsString       := nfeQueryItens.FieldByName('prd_unidade').AsString;
               nfeQuery.ParamByName('prd_ncm').AsString           := nfeQueryItens.FieldByName('prd_ncm').AsString;
               nfeQuery.ParamByName('prd_ncm_ex').AsString        := nfeQueryItens.FieldByName('prd_ncm_ex').AsString;
               nfeQuery.ParamByName('prd_cest').AsString          := nfeQueryItens.FieldByName('prd_cest').AsString;
               nfeQuery.ParamByName('prd_inclusao').AsInteger     := 1; // Determina que inclusão automática de produto
               nfeQuery.ParamByName('id_nota_fiscal').AsInteger   := id_nfe;
               nfeQuery.ParamByName('id_produto').AsInteger       := nfeQueryItens.FieldByName('id_produto').AsInteger;
               nfeQuery.ParamByName('id_tributos').AsInteger      := nfeQueryItens.FieldByName('id_tributos').AsInteger;
               nfeQuery.ParamByName('prd_qtde').AsFloat           := nfeQueryItens.FieldByName('prd_qtde').AsFloat;
               nfeQuery.ParamByName('prd_vlr_unitario').AsFloat   := nfeQueryItens.FieldByName('prd_vlr_unitario').AsFloat;
               nfeQuery.ParamByName('prd_vlr_subtotal').AsFloat   := nfeQueryItens.FieldByName('prd_vlr_subtotal').AsFloat;
               nfeQuery.ParamByName('prd_informacoes').AsString   := nfeQueryItens.FieldByName('prd_informacoes').AsString;

               nfeQuery.Prepare;
               nfeQuery.ExecSQL;

               // proximo registro
               nfeQueryItens.Next;

            until (nfeQueryItens.Eof);

            // Gera os pagamentos da nota fiscal
            if GerarNotaFiscalPagtos(id_nfe) then
               Result := true
            else
               Result := false;
         end;

      except
         on e: exception do
         begin
            Result := false;
            Application.MessageBox(pChar('Erro ao gerar a nota fiscal, tente novamente.' + sLineBreak + e.Message), 'TechCore-RTG', mb_IconStop or mb_Ok);
         end;
      end;

   finally
      FreeAndNil(nfeQuery);
      FreeAndNil(nfeQueryItens);
   end;

end;

procedure TFrPedidosVendasGerenciar.ModoImpressao(aValue: Boolean);
begin
   try
      FrPedidosVendasPrint := TFrPedidosVendasPrint.Create(self);

      { Ajusta os datassets para o formulário }
      with FrPedidosVendasPrint do
      begin

         { Determina se será exibido os valores ou não }
         ExibeValores := aValue;

         // Liga o cursor dos pagamentos ao dataset dos pagamentos
         tbPagtos.MasterSource := dsDados;

         dsDados.DataSet := tbDados;
         dsItens.DataSet := tbItens;

         { Carrega os dados do cliente }
         tbCliente.ParamByName('ID').AsInteger := tbDados.FieldByName('ID_CLIENTE').AsInteger;
         tbCliente.Open();

         { Carrega os dados dos Pagamentos }
         tbPagtos.Open();

         { Exibe a impressão }
         ePrint.Prepare;
         ePrint.PreviewModal;

      end;
   finally
      FreeAndNil(FrPedidosVendasPrint);
   end;
end;

procedure TFrPedidosVendasGerenciar.PngBitBtn1Click(Sender: TObject);
begin
   if eCondicao.ItemIndex < 0 then
   begin
      Application.MessageBox('Selecione uma condição antes de filtrar por data.', 'TechCore-RTG', mb_IconStop or mb_Ok);
      eDataIni.SetFocus;
      Abort;
   end;

   { Filtra os pedidos conforme a data informada }
   if eDataIni.Date > eDataFim.Date then
   begin
      Application.MessageBox('A data inicial não pode ser maior que a data final.', 'TechCore-RTG', mb_IconStop or mb_Ok);
      eDataIni.SetFocus;
      Abort;
   end;

   { Efetua o filtro }
   tbDados.Close;
   tbDados.ParamByName('IDATA').AsDateTime := eDataIni.Date;
   tbDados.ParamByName('FDATA').AsDateTime := eDataFim.Date;
   tbDados.Open();
end;

procedure TFrPedidosVendasGerenciar.SchemaADAfterApplyUpdate(Sender: TObject);
begin
   // Limpa a cache dos cursores
   SchemaAD.CommitUpdates;
end;

procedure TFrPedidosVendasGerenciar.SP_Gerar_Nfe_PagtoAfterExecute(DataSet: TFDDataSet);
begin
   if Assigned(FrEmissorNfe) then
      FrEmissorNfe.tbDados.Refresh;
end;

procedure TFrPedidosVendasGerenciar.tbDadosAfterOpen(DataSet: TDataSet);
begin
   tbItens.Open();
end;

procedure TFrPedidosVendasGerenciar.tbDadosAfterPost(DataSet: TDataSet);
begin
   tbDados.Refresh;

   { Se o formulário de pedidos estiver aberto, atualiza o cursor dos pedidos }
   if Assigned(FrPedidosVendas) then
      FrPedidosVendas.tbDados.Refresh;

   { Se o formulário de nota fiscal estiver aberto, atualiza o cursor das notas }
   if Assigned(FrEmissorNfe) then
      FrEmissorNfe.tbDados.Refresh;

   { Se aberto o formulário de produtos, atuliza os dados }
   if Assigned(FrProdutos) then
      FrProdutos.tbDados.Refresh;
end;

procedure TFrPedidosVendasGerenciar.tbDadosCLI_CNPJGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
   if Length(Sender.AsString) <= 11 then
      Text := FormatMaskText('!999\.999\.999\-99;0;_', Sender.AsString)
   else if Length(Sender.AsString) > 11 then
      Text := FormatMaskText('!99.999\.999\/9999\-99;0;_', Sender.AsString);
end;

procedure TFrPedidosVendasGerenciar.tbDadosPED_ENTREGUEGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
   if DisplayText then
   begin
      case Sender.AsInteger of
         1:
            Text := 'Não';
         2:
            Text := 'Sim'
      end;
   end
   else
      Text := Sender.AsString
end;

procedure TFrPedidosVendasGerenciar.tbDadosPED_FATURADOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
   if DisplayText then
   begin
      case Sender.AsInteger of
         1:
            Text := 'Não';
         2:
            Text := 'Sim'
      end;
   end
   else
      Text := Sender.AsString
end;

procedure TFrPedidosVendasGerenciar.tbDadosPED_STATUSGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
   if DisplayText then
   begin
      case Sender.AsInteger of
         1:
            Text := 'Orçamento';
         2:
            Text := 'Pedido';
         3:
            Text := 'Recebido';
         4:
            Text := 'Nota Fiscal';
         9:
            Text := 'Cancelado';
      end;
   end
   else
      Text := Sender.AsString
end;

procedure TFrPedidosVendasGerenciar.tbItensPRD_QTDE_ITENSGetText(Sender: TField; var Text: string; DisplayText: Boolean);
var
   Qtde: Integer;
begin
   if DisplayText then
   begin
      if TryStrToInt(Sender.AsString, Qtde) then
         Text := Format('%.3d', [Qtde])
      else
         Text := Format('%.3d', [0])
   end;

end;

end.
