unit uPedidosComprasGerenciar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, MaskUtils,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, Vcl.Menus, JvDataSource, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, System.Actions, Vcl.ActnList, DateUtils,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, RzPanel, JvBaseEdits, JvDBControls, Vcl.StdCtrls,
  Vcl.Buttons, PngBitBtn, Vcl.Mask, JvExMask, JvToolEdit, Vcl.Grids,
  Vcl.DBGrids, JvExDBGrids, JvDBGrid, RzButton, RzEdit, RzDBEdit, RzDBBnEd,
  RzCmboBx, Vcl.DBCtrls, Vcl.StdStyleActnCtrls;

type
  TFrPedidosComprasGerenciar = class(TForm)
    RzToolbar1: TRzToolbar;
    btnNew: TRzToolButton;
    btnEdit: TRzToolButton;
    btnCancel: TRzToolButton;
    btnOK: TRzToolButton;
    btnExit: TRzToolButton;
    RzSpacer1: TRzSpacer;
    RzSpacer2: TRzSpacer;
    RzSpacer4: TRzSpacer;
    RzSpacer6: TRzSpacer;
    eGrid: TJvDBGrid;
    JvDBGrid2: TJvDBGrid;
    Panel2: TPanel;
    Panel4: TPanel;
    Label5: TLabel;
    JvDBCalcEdit4: TJvDBCalcEdit;
    Panel6: TPanel;
    Label6: TLabel;
    JvDBCalcEdit5: TJvDBCalcEdit;
    Panel5: TPanel;
    Label7: TLabel;
    ActionManager1: TActionManager;
    tbDados: TFDQuery;
    tbDadosID: TIntegerField;
    tbDadosID_EMPRESA: TIntegerField;
    tbDadosID_FORNECEDOR: TIntegerField;
    tbDadosFOR_RAZAO_SOCIAL: TStringField;
    tbDadosFOR_CNPJ: TStringField;
    tbDadosFOR_UF: TStringField;
    tbDadosID_FUNCIONARIO: TIntegerField;
    tbDadosPED_NUMERO: TIntegerField;
    tbDadosPED_DATA_REG: TSQLTimeStampField;
    tbDadosPED_DATA_PEDIDO: TDateField;
    tbDadosPED_PRAZO_ENTREGA: TStringField;
    tbDadosPED_VEND_NOME: TStringField;
    tbDadosPED_VEND_FONE_FIXO: TStringField;
    tbDadosPED_VEND_FONE_MOVEL: TStringField;
    tbDadosPED_VEND_SKYPE: TStringField;
    tbDadosPED_OBSERVACAO: TStringField;
    tbDadosPED_STATUS: TIntegerField;
    tbDadosPED_FATURADO: TIntegerField;
    tbDadosPED_ENTREGUE: TIntegerField;
    tbDadosPED_DATA_ENTREGA: TDateField;
    tbDadosPED_SOLICITANTE: TStringField;
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
    tbDadosPED_COMPRADOR: TStringField;
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
    actCancelarPedido: TAction;
    RzSpacer3: TRzSpacer;
    btnError: TRzToolButton;
    DBText1: TDBText;
    aQuery: TFDQuery;
    RzSpacer5: TRzSpacer;
    BtnOK1: TRzToolButton;
    actFaturar: TAction;
    tbDadosID_PLN_CONTAS: TIntegerField;
    tbDadosPLN_CONTAS_DESC: TStringField;
    tbDadosPED_VALIDADE: TIntegerField;
    tbDadosPED_VEND_EMAIL: TStringField;
    tbDadosPED_PREVISAO_PAGTO: TDateField;
    Query210: TFDQuery;
    SchemaAD: TFDSchemaAdapter;
    Query211: TFDQuery;
    dsQuery210: TDataSource;
    Query210ID: TLargeintField;
    Query210ID_EMPRESA: TIntegerField;
    Query210ID_FORNECEDOR: TIntegerField;
    Query210ID_ORIGEM: TIntegerField;
    Query210ID_PLANO_CONTAS: TIntegerField;
    Query210PAG_DATA_INCLUSAO: TDateField;
    Query210PAG_DOCUMENTO: TStringField;
    Query210PAG_ORIGEM: TIntegerField;
    Query210PAG_STATUS: TIntegerField;
    Query210PAG_FORNECEDOR: TStringField;
    Query211ID: TLargeintField;
    Query211ID_C000210: TLargeintField;
    Query211PAG_PARCELA: TIntegerField;
    Query211PAG_DOCUMENTO: TStringField;
    Query211PAG_VENCIMENTO: TDateField;
    Query211PAG_ANOTACOES: TStringField;
    Query211PAG_STATUS: TIntegerField;
    actPrintExpedicao: TAction;
    PopPrinter: TPopupMenu;
    ModeloAdministrativo1: TMenuItem;
    ModeloExpedio1: TMenuItem;
    xQuery: TFDQuery;
    tbDadosPED_VLR_FRETE: TFMTBCDField;
    tbDadosPED_VLR_SEGURO: TFMTBCDField;
    tbDadosPED_VLR_OUTROS: TFMTBCDField;
    tbDadosPED_VLR_DESCONTOS: TFMTBCDField;
    tbDadosPED_VLR_SUBTOTAL: TFMTBCDField;
    tbDadosPED_VLR_TOTAL: TFMTBCDField;
    tbDadosPED_QTDE_ITENS: TLargeintField;
    tbItensITM_QTDE: TFMTBCDField;
    tbItensITM_VLR_UNITARIO: TBCDField;
    tbItensITM_VLR_TOTAL: TFMTBCDField;
    Query210PAG_VALOR: TFMTBCDField;
    Query210PAG_JUROS: TFMTBCDField;
    Query210PAG_JUROS_CAREN: TIntegerField;
    Query210PAG_MULTA: TFMTBCDField;
    Query210PAG_MULTA_CAREN: TIntegerField;
    Query211PAG_VALOR: TFMTBCDField;
    Query211PAG_VLR_ATUALIZADO: TFMTBCDField;
    Query211PAG_VLR_RECEBIDO: TFMTBCDField;
    Query211PAG_VLR_SALDO: TFMTBCDField;
    procedure actSairExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure eCondicaoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure tbDadosPED_STATUSGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure tbDadosPED_FATURADOGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure tbDadosPED_ENTREGUEGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure eGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure tbDadosFOR_CNPJGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
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
    procedure actCancelarPedidoExecute(Sender: TObject);
    procedure actCancelarPedidoUpdate(Sender: TObject);
    procedure actFaturarExecute(Sender: TObject);
    procedure actFaturarUpdate(Sender: TObject);
    procedure actBaixarUpdate(Sender: TObject);
    procedure actPrintExpedicaoExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure SchemaADAfterApplyUpdate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ModoImpressao(aValue : boolean = false);
  end;

var
  FrPedidosComprasGerenciar: TFrPedidosComprasGerenciar;

implementation

uses
   Classe.Empresa, uPedidosCompras, uPedidosComprasPrint, uProdutos,
  uModuloRet, Classe.Financeiro;

{$R *.dfm}

procedure TFrPedidosComprasGerenciar.actAprovarExecute(Sender: TObject);
begin
   if Application.MessageBox('Tem certeza que deseja aprovar este pedido?','TechCore-RTG',mb_IconQuestion or mb_YesNo) = mrNo then
      Abort;

   {Aprova o pedido}
   try
      tbDados.Edit;
      tbDados.FieldByName('PED_STATUS').AsInteger := 2;
      tbDados.Post;

      Application.MessageBox('Pedido aprovado com sucesso','TechCore-RTG',mb_IconInformation or mb_Ok);
   except
      on e:exception do
         Application.MessageBox(pChar('Erro ao aprovar o pedido.' + #13#10 + e.Message),'TechCore-RTG',mb_IconStop or mb_Ok);
   end;
end;

procedure TFrPedidosComprasGerenciar.actAprovarUpdate(Sender: TObject);
begin
   (Sender as TAction).Enabled := not(tbDados.IsEmpty) and (tbDadosPED_STATUS.AsInteger = 1);
end;

procedure TFrPedidosComprasGerenciar.actBaixarExecute(Sender: TObject);
begin
   {Efetua a baixa do pedido no sistema}
   if Application.MessageBox('Tem certeza que deseja efetuar a baixa do pedido, após este processo não será possível efetuar alterações neste pedido.','TechCore-RTG',mb_IconQuestion or mb_YesNo) = mrNo then
      Abort;

   // Inicia uma transação
   FrModuloRet.DBConexaoII.StartTransaction;

   try
      xQuery.Close;
      xQuery.SQL.Clear;
      xQuery.SQL.Add('UPDATE C000308 SET PED_ENTREGUE =:PED_ENTREGUE, PED_DATA_ENTREGA = :PED_DATA_ENTREGA WHERE ID =:ID');
      xQuery.ParamByName('id').AsInteger            := tbDados.FieldByName('id').AsInteger;
      xQuery.ParamByName('ped_entregue').AsInteger  := 2;    // Pedido entregue
      xQuery.ParamByName('ped_data_entrega').AsDate := Date; // Data da entrega
      xQuery.Prepare;
      xQuery.ExecSQL;

      // Grava as alterações no tabela
      FrModuloRet.DBConexaoII.Commit;

      // Atualiza o cursor do pedido
      tbDados.Refresh;

      // Aviso ao cliente
      Application.MessageBox('Pedido de baixado com sucesso.','TechCore-RTG',mb_IconInformation or mb_Ok);

   except

      on e:exception do
      begin
         // Cancela a transação
         FrModuloRet.DBConexaoII.Rollback;

         // Aviso ao usuário
         Application.MessageBox(pChar('Erro ao alterar o status do pedido para entregue.'
            + sLineBreak
            + 'Erro: ' + e.Message),'TechCore-RTG',mb_IconStop or mb_ok);
      end;

   end;

end;

procedure TFrPedidosComprasGerenciar.actBaixarUpdate(Sender: TObject);
begin
   (Sender as TAction).Enabled := not(tbDados.IsEmpty)
      and (tbDadosPED_STATUS.AsInteger = 2)
      and (tbDadosPED_ENTREGUE.AsInteger = 1)
      and not (tbDadosPED_STATUS.AsInteger = 9);
end;

procedure TFrPedidosComprasGerenciar.actCancelarPedidoExecute(Sender: TObject);
begin
   {Antes de cancela o pedido, verifica se existem parcelas pagas}
   try
      aQuery.Close;
      aQuery.SQL.Clear;
      aQuery.SQL.Add('Select');
      aQuery.SQL.Add('  count(1) as rec');
      aQuery.SQL.Add('from');
      aQuery.SQL.Add('  C000212 AS t1');
      aQuery.SQL.Add('join');
      aQuery.SQL.Add('  C000210 AS t2');
      aQuery.SQL.Add('on');
      aQuery.SQL.Add('  t1.ID_C000210 = t2.ID');
      aQuery.SQL.Add('where');
      aQuery.SQL.Add('  t2.id_empresa = :id_empresa');
      aQuery.SQL.Add('and');
      aQuery.SQL.Add('  t2.id_origem  = :id_org');
      aQuery.SQL.Add('and');
      aQuery.SQL.Add('  t2.pag_origem = 1');
      aQuery.ParamByName('id_empresa').AsInteger := FEmpresaClass.ID;
      aQuery.ParamByName('id_org').AsInteger     := tbDadosID.AsInteger;
      aQuery.Open();

      if aQuery.FieldByName('rec').AsInteger > 0 then
      begin
         Application.MessageBox('Não é possível cancelar este pedido, existem pagamentos efetuados.','TechCore-RTG',mb_IconError or mb_Ok);
         Abort;
      end;

   finally
      aQuery.Close;
   end;

   if Application.MessageBox('Tem certeza que deseja cancelar este pedido?','TechCore-RTG',mb_IconQuestion or mb_YesNo) = mrNo then
      Abort;

   {inicia uma transação}
   FrModuloRet.DBConexaoII.StartTransaction;

   {Cancela o pedido}
   try
      xQuery.Close;
      xQuery.SQL.Clear;
      xQuery.SQL.Add('UPDATE C000308 SET');
      xQuery.SQL.Add('  PED_STATUS =:PED_STATUS, PED_ENTREGUE =:PED_ENTREGUE, PED_FATURADO =:PED_FATURADO');
      xQuery.SQL.Add('WHERE');
      xQuery.SQL.Add('  ID =:ID');
      xQuery.ParamByName('ped_status').AsInteger   := 9;
      xQuery.ParamByName('ped_entregue').AsInteger := 1;
      xQuery.ParamByName('ped_faturado').AsInteger := 1;
      xQuery.ParamByName('id').AsInteger           := tbDados.FieldByName('id').AsInteger;
      xQuery.Prepare;
      xQuery.ExecSQL;

      // Grava os dados no banco de dados
      FrModuloRet.DBConexaoII.Commit;

      // Atualiza o cursor do pedido
      tbDados.Refresh;

      // Aviso ao usuário
      Application.MessageBox('Pedido cancelado com sucesso','TechCore-RTG',mb_IconInformation or mb_Ok);

   except
      on e:exception do
      begin
         // Cancela o cancelamento
         FrModuloRet.DBConexaoII.Rollback;

         // Aviso ao usuário
         Application.MessageBox(pChar('Erro ao cancelar o pedido.' + #13#10 + e.Message),'TechCore-RTG',mb_IconStop or mb_Ok);
      end;
   end;
end;

procedure TFrPedidosComprasGerenciar.actCancelarPedidoUpdate(Sender: TObject);
begin
   (Sender as TAction).Enabled := not(tbDados.IsEmpty) and not(tbDadosPED_STATUS.AsInteger in [1,9]);
end;

procedure TFrPedidosComprasGerenciar.actFaturarExecute(Sender: TObject);
begin
   {Efetua a baixa do pedido no sistema}
   if Application.MessageBox('Tem certeza que deseja faturar este pedido, após este processo não será possível efetuar alterações.','TechCore-RTG',mb_IconQuestion or mb_YesNo) = mrNo then
      Abort;

   // Inicia a transação
   FrModuloRet.DBConexaoII.StartTransaction;

   {Cria o faturamento na tabela C000210}
   try
      try
         // Prepara a query de contas
         Query210.Open();
         Query210.Insert;
         Query210.FieldByName('id_empresa').AsInteger      := FEmpresaClass.ID;
         Query210.FieldByName('id_fornecedor').AsInteger   := tbDadosID_FORNECEDOR.AsInteger;
         Query210.FieldByName('id_origem').AsInteger       := tbDadosID.AsInteger;
         Query210.FieldByName('id_plano_contas').AsInteger := FEmpresaClass.PlnPedidoC;
         Query210.FieldByName('pag_origem').AsInteger      := 1;
         Query210.FieldByName('pag_valor').AsFloat         := tbDadosPED_VLR_TOTAL.AsFloat;
         Query210.FieldByName('pag_documento').AsString    := Format('%.6d', [tbDadosPED_NUMERO.AsInteger]);

         // Multa e Juros pre definidos
         Query210.FieldByName('pag_juros').AsFloat         := ClassFinanceiro.JurosTaxa;
         Query210.FieldByName('pag_juros_caren').AsInteger := ClassFinanceiro.JurosCarencia;
         Query210.FieldByName('pag_multa').AsFloat         := ClassFinanceiro.MultaTaxa;
         Query210.FieldByName('pag_multa_caren').AsFloat   := ClassFinanceiro.MultaCarencia;
         Query210.Post;

         // Carrega todas as formas de pagamentos envolvidas
         aQuery.Close;
         aQuery.SQL.Clear;
         aQuery.SQL.Add('SELECT * FROM C000311 WHERE ID_PEDIDO = :ID ORDER BY PAG_VENCIMENTO ASC');
         aQuery.ParamByName('ID').AsInteger := tbDadosID.AsInteger;
         aQuery.Open();
         aQuery.First;

         // Insere as parcelas conforme informada no pedido
         Query211.Open();

         repeat

            with Query211 do begin
               Append;
               FieldByName('pag_parcela').AsInteger     := aQuery.RecNo;
               FieldByName('pag_valor').AsFloat         := aQuery.FieldByName('pag_vlr_parcela').AsFloat;
               FieldByName('pag_documento').AsString    := tbDadosPED_NUMERO.AsString;
               FieldByName('pag_vencimento').AsDateTime := aQuery.FieldByName('pag_vencimento').AsDateTime;
               FieldByName('pag_anotacoes').AsString    := 'Pedido de Compras N.º: ' + Format('%.6d', [tbDadosPED_NUMERO.AsInteger]);
               Post;
            end;

            // Próximo registro
            aQuery.Next;

         until (aQuery.Eof);

         // Grava os dados na tabela
         SchemaAD.ApplyUpdates(0);
         SchemaAD.CommitUpdates;

         // Altera o status do faturamento do pedido
         xQuery.Close;
         xQuery.SQL.Clear;
         xQuery.SQL.Add('UPDATE C000308 SET PED_FATURADO =:PED_FATURADO WHERE ID =:ID');
         xQuery.ParamByName('ped_faturado').AsInteger := 2; // Altera para pedido faturado
         xQuery.ParamByName('id').AsInteger           := tbDados.FieldByName('id').AsInteger;
         xQuery.Prepare;
         xQuery.ExecSQL;

         // se correu tudo bem até aqui grava os dados no banco de dados
         FrModuloRet.DBConexaoII.CommitRetaining;

         // Atualiza o cursor dos pedidos
         tbDados.Refresh;

         // Aviso de faturamento bem sucessdido
         Application.MessageBox('Pedido faturado com sucesso!','TechCore-RTG',mb_IconInformation or mb_ok);

      except
         on e:exception do
         begin
            // Cacnela a transação
            FrModuloRet.DBConexaoII.RollbackRetaining;
            Application.MessageBox(pChar('Erro, não foi possível faturar o pedido.' + #13#10 + 'Erro: ' + e.Message),'TechCore-RTG',mb_IconStop or mb_Ok);
         end;
      end;

   finally
      Query210.Close;
      Query211.Close;
      aQuery.Close;
   end;
end;

procedure TFrPedidosComprasGerenciar.actFaturarUpdate(Sender: TObject);
begin
   (Sender as TAction).Enabled := not(tbDados.IsEmpty)
      and (tbDadosPED_STATUS.AsInteger = 2)
      and (tbDadosPED_FATURADO.AsInteger = 1)
      and not (tbDadosPED_STATUS.AsInteger = 9);
end;

procedure TFrPedidosComprasGerenciar.actPrintExecute(Sender: TObject);
begin
   ModoImpressao(true);
end;

procedure TFrPedidosComprasGerenciar.actPrintExpedicaoExecute(Sender: TObject);
begin
   ModoImpressao();
end;

procedure TFrPedidosComprasGerenciar.actPrintUpdate(Sender: TObject);
begin
   if tbDados.IsEmpty then
      TAction(Sender).Enabled := false
   else
      TAction(Sender).Enabled := not ( tbDados.State in [dsInsert,dsEdit] );
end;

procedure TFrPedidosComprasGerenciar.actReabrirExecute(Sender: TObject);
begin
   if tbDadosPED_FATURADO.AsInteger = 2 then
   begin
      Application.MessageBox('Este pedido foi faturado e não pode ser reaberto.','TechCore-RTG',mb_IconWarning or mb_Ok);
      Abort;
   end;

   if tbDadosPED_ENTREGUE.AsInteger = 2 then
   begin
      Application.MessageBox('Este pedido foi baixado e não pode ser reaberto.','TechCore-RTG',mb_IconWarning or mb_Ok);
      Abort;
   end;

   if Application.MessageBox('Te mcerteza que deseja Reabrir este Pedido?','TechCore-RTG',mb_IconQuestion or mb_YesNo) = mrNo then
      abort;

   {Reabre o pedido}
   try
      tbDados.Edit;
      tbDados.FieldByName('PED_STATUS').AsInteger := 1;
      tbDados.Post;

      Application.MessageBox('Pedido reaberto com sucesso.','TechCore-RTG',mb_IconInformation or mb_Ok);

   except
      on e:exception do
         Application.MessageBox(pChar('Erro ao Reabrir este pedido, tente novamente.' + #13#10 + e.Message),'TechCore-RTG',mb_IconStop or mb_Ok);
   end;
end;

procedure TFrPedidosComprasGerenciar.actReabrirUpdate(Sender: TObject);
begin
   (Sender as TAction).Enabled := not(tbDados.IsEmpty)
      and (tbDadosPED_STATUS.AsInteger = 2)
      and (tbDadosPED_FATURADO.AsInteger = 1)
      and (tbDadosPED_ENTREGUE.AsInteger = 1);
end;

procedure TFrPedidosComprasGerenciar.actSairExecute(Sender: TObject);
begin
   Self.Close;
end;

procedure TFrPedidosComprasGerenciar.eCondicaoClick(Sender: TObject);
begin
   case eCondicao.ItemIndex of
      0 : begin
         tbDados.Close;
         tbDados.SQL.Clear;
         tbDados.SQL.Add('SELECT * FROM C000308 WHERE ID_EMPRESA = :ID_EMP AND PED_DATA_PEDIDO BETWEEN :IDATA AND :FDATA AND PED_STATUS = 1 ORDER BY ID DESC');
         tbDados.ParamByName('ID_EMP').AsInteger := FEmpresaClass.ID;
         tbDados.ParamByName('iData').AsDateTime := eDataIni.Date;
         tbDados.ParamByName('fData').AsDateTime := eDataFim.Date;
         tbDados.Open();
      end;

      1 : begin
         tbDados.Close;
         tbDados.SQL.Clear;
         tbDados.SQL.Add('SELECT * FROM C000308 WHERE ID_EMPRESA = :ID_EMP AND PED_DATA_PEDIDO BETWEEN :IDATA AND :FDATA AND PED_STATUS = 2 ORDER BY ID DESC');
         tbDados.ParamByName('ID_EMP').AsInteger := FEmpresaClass.ID;
         tbDados.ParamByName('iData').AsDateTime := eDataIni.Date;
         tbDados.ParamByName('fData').AsDateTime := eDataFim.Date;
         tbDados.Open();
      end;

      2 : begin
         tbDados.Close;
         tbDados.SQL.Clear;
         tbDados.SQL.Add('SELECT * FROM C000308 WHERE ID_EMPRESA = :ID_EMP AND PED_DATA_PEDIDO BETWEEN :IDATA AND :FDATA ORDER BY ID DESC');
         tbDados.ParamByName('ID_EMP').AsInteger := FEmpresaClass.ID;
         tbDados.ParamByName('iData').AsDateTime := eDataIni.Date;
         tbDados.ParamByName('fData').AsDateTime := eDataFim.Date;
         tbDados.Open();
      end;

   end;
end;

procedure TFrPedidosComprasGerenciar.eDataIniEnter(Sender: TObject);
begin
   TEdit(Sender).Brush.Color := $00CFCFCF;
end;

procedure TFrPedidosComprasGerenciar.eDataIniExit(Sender: TObject);
begin
   TEdit(Sender).Brush.Color := clWindow;
end;

procedure TFrPedidosComprasGerenciar.eGridDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
   if tbDados.IsEmpty then Exit;

   if not (State = [gdSelected])  then
   begin

      {Efetua a coloração de acordo o status}
      case tbDados.FieldByName('ped_status').AsInteger of
         1 : (Sender as TDBGrid).Canvas.Font.Color  := clBlack;
         2 : (Sender as TDBGrid).Canvas.Font.Color  := $00A00000;
         3 : (Sender as TDBGrid).Canvas.Font.Color  := clWindow;
         9 : (Sender as TDBGrid).Canvas.Font.Color  := clRed;
      end;

   end;

   if Column.Title.Caption = 'Fat.' then
   begin

      {Em caso de pedido já entregue, pinta a linha inteira}
      if tbDados.FieldByName('ped_faturado').AsInteger = 2 then
      begin
         (Sender as TDBGrid).Canvas.Font.Color  := clGreen;
         //(Sender as TDBGrid).Canvas.Brush.Color := clGreen;
      end;

   end;

   if Column.Title.Caption = 'Rec.' then
   begin

      {Em caso de pedido já entregue, pinta a linha inteira}
      if tbDados.FieldByName('ped_entregue').AsInteger = 2 then
      begin
         (Sender as TDBGrid).Canvas.Font.Color  := clGreen;
         //(Sender as TDBGrid).Canvas.Brush.Color := clGreen;
      end;

   end;

   {Pinta o Grid}
   (Sender as TDBGrid).Canvas.FillRect(Rect);
   (Sender as TDBGrid).DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TFrPedidosComprasGerenciar.eSearchTextChange(Sender: TObject);
begin
   case eTipoFiltro.ItemIndex of
      0 : begin
         tbDados.Filtered := false;
         tbDados.Filter   := 'PED_NUMERO LIKE ' + QuotedStr('%' + eSearchText.Text + '%');
         tbDados.Filtered := true;
      end;

      1 : begin
         tbDados.Filtered := false;
         tbDados.Filter   := 'FOR_RAZAO_SOCIAL LIKE ' + QuotedStr('%' + eSearchText.Text + '%');
         tbDados.Filtered := true;
      end;

      2 : begin
         tbDados.Filtered := false;
         tbDados.Filter   := 'FOR_CNPJ LIKE ' + QuotedStr('%' + eSearchText.Text + '%');
         tbDados.Filtered := true;
      end;
   end;
end;

procedure TFrPedidosComprasGerenciar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   FreeAndNil( FrPedidosComprasGerenciar );
end;

procedure TFrPedidosComprasGerenciar.FormCreate(Sender: TObject);
begin
   {Ajusta as datas}
   eDataIni.Date := IncDay(Date,-90);
   eDataFim.Date := Date;

   // Ajustar casas decimais
   case FEmpresaClass.Decimal_Qtde of
      2 : tbDadosPED_QTDE_ITENS.DisplayFormat := ',0.00';
      3 : tbDadosPED_QTDE_ITENS.DisplayFormat := ',0.000';
      4 : tbDadosPED_QTDE_ITENS.DisplayFormat := ',0.0000';
   end;

   // Ajustar casas decimais
   case FEmpresaClass.Decimal_Qtde of
      2 : tbItensITM_QTDE.DisplayFormat := ',0.00';
      3 : tbItensITM_QTDE.DisplayFormat := ',0.000';
      4 : tbItensITM_QTDE.DisplayFormat := ',0.0000';
   end;

   // Ajustar casas decimais
   case FEmpresaClass.Decimal_Venda of
      2 : tbItensITM_VLR_UNITARIO.DisplayFormat := ',0.00';
      3 : tbItensITM_VLR_UNITARIO.DisplayFormat := ',0.000';
      4 : tbItensITM_VLR_UNITARIO.DisplayFormat := ',0.0000';
   end;
end;

procedure TFrPedidosComprasGerenciar.ModoImpressao(aValue: boolean = false);
begin
try
      FrPedidosComprasPrint := TFrPedidosComprasPrint.Create(self);

      {Ajusta os datassets para o formulário}
      with FrPedidosComprasPrint do
      begin
         {Determina se será exibido os valores ou não}
         ExibeValores := aValue;

         // Liga o cursor dos pagamentos ao dataset dos pagamentos
         tbPagtos.MasterSource := dsDados;

         dsDados.DataSet  := tbDados;
         dsItens.DataSet  := tbItens;

         {Carrega os dados do emitente}
         tbEmitente.ParamByName('ID').AsInteger := FEmpresaClass.ID;
         tbEmitente.Open();

         {Carrega os dados do cliente}
         tbCliente.ParamByName('ID').AsInteger := tbDados.FieldByName('ID_FORNECEDOR').AsInteger;
         tbCliente.Open();

         {Carrega os dados dos Pagamentos}
         tbPagtos.Open();

         {Exibe a impressão}
         ePrint.Preview();

      end;
   finally
      FreeAndNil( FrPedidosComprasPrint );
   end;
end;

procedure TFrPedidosComprasGerenciar.PngBitBtn1Click(Sender: TObject);
begin
   if eCondicao.ItemIndex < 0 then
   begin
      Application.MessageBox('Selecione uma condição antes de filtrar por data.','TechCore-RTG',mb_IconStop or mb_Ok);
      eDataIni.SetFocus;
      Abort;
   end;

   {Filtra os pedidos conforme a data informada}
   if eDataIni.Date > eDataFim.Date then
   begin
      Application.MessageBox('A data inicial não pode ser maior que a data final.','TechCore-RTG',mb_IconStop or mb_Ok);
      eDataIni.SetFocus;
      Abort;
   end;

   {Efetua o filtro}
   tbDados.Close;
   tbDados.ParamByName('IDATA').AsDateTime := eDataIni.Date;
   tbDados.ParamByName('FDATA').AsDateTime := eDataFim.Date;
   tbDados.Open();
end;

procedure TFrPedidosComprasGerenciar.SchemaADAfterApplyUpdate(Sender: TObject);
begin
   // Limpa a cache
   SchemaAD.CommitUpdates;
end;

procedure TFrPedidosComprasGerenciar.tbDadosAfterOpen(DataSet: TDataSet);
begin
   tbItens.Open();
end;

procedure TFrPedidosComprasGerenciar.tbDadosAfterPost(DataSet: TDataSet);
begin
   tbDados.Refresh;

   {Se o formulário de pedidos estiver aberto, atualiza o cursor dos pedidos}
   if Assigned( FrPedidosCompras ) then
      FrPedidosCompras.tbDados.Refresh;

   {Se aberto o formulário de produtos, atuliza os dados}
   if Assigned( FrProdutos ) then
      FrProdutos.tbDados.Refresh;
end;

procedure TFrPedidosComprasGerenciar.tbDadosFOR_CNPJGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
   if Length(Sender.AsString) <= 11 then
      Text := FormatMaskText('!999\.999\.999\-99;0;_',tbDados.FieldByName('for_cnpj').AsString)
   else
   if Length(Sender.AsString) > 11 then
      Text := FormatMaskText('!99.999\.999\/9999\-99;0;_',tbDados.FieldByName('for_cnpj').AsString);
end;

procedure TFrPedidosComprasGerenciar.tbDadosPED_ENTREGUEGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
   if DisplayText then
   begin
      case sender.AsInteger of
         1 : Text := 'Não';
         2 : Text := 'Sim'
      end;
   end
   else
      Text := Sender.AsString
end;

procedure TFrPedidosComprasGerenciar.tbDadosPED_FATURADOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
   if DisplayText then
   begin
      case sender.AsInteger of
         1 : Text := 'Não';
         2 : Text := 'Sim'
      end;
   end
   else
      Text := Sender.AsString
end;

procedure TFrPedidosComprasGerenciar.tbDadosPED_STATUSGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
   if DisplayText then
   begin
      case Sender.AsInteger of
         1 : Text := 'Orçamento';
         2 : Text := 'Pedido';
         3 : Text := 'Recebido';
         9 : Text := 'Cancelado';
      end;
   end
   else
      Text := Sender.AsString
end;

end.
