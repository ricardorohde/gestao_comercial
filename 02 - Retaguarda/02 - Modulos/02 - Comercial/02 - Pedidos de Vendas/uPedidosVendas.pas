unit uPedidosVendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, Vcl.Menus, JvDataSource, FireDAC.Comp.DataSet, MaskUtils,
  FireDAC.Comp.Client, System.Actions, Vcl.ActnList, DateUtils,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, JvToolEdit, Vcl.StdCtrls,
  Vcl.Buttons, PngBitBtn, Vcl.Imaging.pngimage, Vcl.ExtCtrls, RzPanel,
  Vcl.Mask, JvExMask, JvBaseEdits, JvDBControls, Vcl.Grids, Vcl.DBGrids,
  JvExDBGrids, JvDBGrid, RzButton, RzLabel, RzDBLbl;

type
  TFrPedidosVendas = class(TForm)
    RzToolbar1: TRzToolbar;
    btnNew: TRzToolButton;
    btnEdit: TRzToolButton;
    btnCancel: TRzToolButton;
    btnOK: TRzToolButton;
    btnError: TRzToolButton;
    btnExit: TRzToolButton;
    RzSpacer1: TRzSpacer;
    RzSpacer2: TRzSpacer;
    RzSpacer5: TRzSpacer;
    RzSpacer6: TRzSpacer;
    eGrid: TJvDBGrid;
    JvDBGrid2: TJvDBGrid;
    Panel2: TPanel;
    Panel4: TPanel;
    Label5: TLabel;
    JvDBCalcEdit4: TJvDBCalcEdit;
    Panel5: TPanel;
    Label7: TLabel;
    RzPanel2: TRzPanel;
    Label8: TLabel;
    Label9: TLabel;
    Bevel3: TBevel;
    Image2: TImage;
    RzPanel1: TRzPanel;
    Label2: TLabel;
    Panel3: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    JvDBCalcEdit1: TJvDBCalcEdit;
    JvDBCalcEdit2: TJvDBCalcEdit;
    JvDBCalcEdit3: TJvDBCalcEdit;
    PngBitBtn1: TPngBitBtn;
    eDataFim: TJvDateEdit;
    eDataIni: TJvDateEdit;
    ActionManager1: TActionManager;
    actCadastrar: TAction;
    actExcluir: TAction;
    actPrint: TAction;
    actProdutos: TAction;
    actSair: TAction;
    actPopAlterar: TAction;
    actPopFrete: TAction;
    actIncluirProdutos: TAction;
    actAlterarProdutos: TAction;
    actExcluirProdutos: TAction;
    tbDados: TFDQuery;
    tbDadosID: TIntegerField;
    tbDadosID_EMPRESA: TIntegerField;
    tbDadosID_FUNCIONARIO: TIntegerField;
    tbDadosPED_NUMERO: TIntegerField;
    tbDadosPED_DATA_REG: TSQLTimeStampField;
    tbDadosPED_OBSERVACAO: TStringField;
    tbDadosPED_STATUS: TIntegerField;
    tbDadosPED_FATURADO: TIntegerField;
    tbDadosPED_ENTREGUE: TIntegerField;
    tbDadosPED_DATA_ENTREGA: TDateField;
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
    tbDadosID_CLIENTE: TIntegerField;
    tbDadosCLI_RAZAO_SOCIAL: TStringField;
    tbDadosCLI_CNPJ: TStringField;
    tbDadosCLI_UF: TStringField;
    tbDadosPED_DATA_PEDIDO: TDateField;
    tbDadosID_TABELA_PRECOS: TIntegerField;
    tbDadosPED_VENDEDOR: TStringField;
    tbDadosPED_PREV_ENTREGA: TStringField;
    tbItensID_TRIBUTOS: TIntegerField;
    RzSpacer3: TRzSpacer;
    btnNew1: TRzToolButton;
    actPagamentos: TAction;
    RzSpacer7: TRzSpacer;
    Panel1: TPanel;
    Label10: TLabel;
    JvDBCalcEdit7: TJvDBCalcEdit;
    Label11: TLabel;
    JvDBCalcEdit8: TJvDBCalcEdit;
    Bevel4: TBevel;
    N2: TMenuItem;
    Pagamentos1: TMenuItem;
    tbItensPRD_CST: TStringField;
    tbItensPRD_CFOP: TIntegerField;
    tbItensPRD_NCM: TStringField;
    tbItensPRD_CEST: TStringField;
    tbItensPRD_ORIGEM: TIntegerField;
    tbItensPRD_ICMS_MODAL: TIntegerField;
    tbItensPRD_IPI_CODIGO: TStringField;
    tbItensPRD_PIS_CST: TStringField;
    tbItensPRD_COFINS_CST: TStringField;
    N3: TMenuItem;
    actFreteTransporte: TAction;
    FreteeTransporte1: TMenuItem;
    tbDadosID_TRANSPORTADORA: TIntegerField;
    tbDadosTRA_RAZAO_SOCIAL: TStringField;
    tbDadosTRA_CNPJ: TStringField;
    tbDadosTRA_UF: TStringField;
    tbDadosPED_VEICULO_UF: TStringField;
    tbDadosPED_TIPO_FRETE: TIntegerField;
    tbDadosPED_VEICULO_PLACA: TStringField;
    tbDadosPED_VEICULO_RNTC: TStringField;
    tbDadosPED_VOLUME_QTDE: TIntegerField;
    tbDadosPED_VOLUME_ESPECIE: TStringField;
    tbDadosPED_VOLUME_MARCA: TStringField;
    tbDadosPED_VOLUME_NUMERO: TStringField;
    tbItensPRD_INFORMACOES: TStringField;
    tbItensPRD_NCM_EX: TStringField;
    tbItensPRD_QTDE_ITENS: TAggregateField;
    RzDBLabel1: TRzDBLabel;
    aQuery: TFDQuery;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    tbDadosID_PLN_CONTAS: TIntegerField;
    tbDadosPLN_CONTAS_DESC: TStringField;
    tbDadosPED_VALIDADE: TIntegerField;
    actPrintExpedicao: TAction;
    PopPrinter: TPopupMenu;
    ModoAdministrativo1: TMenuItem;
    ModoExpedio1: TMenuItem;
    tbItensPRD_IND_TOT: TIntegerField;
    tbItensPRD_INTEGRA_CALCULO: TStringField;
    tbDadosPED_VLR_FRETE: TFMTBCDField;
    tbDadosPED_VLR_SEGURO: TFMTBCDField;
    tbDadosPED_VLR_OUTROS: TFMTBCDField;
    tbDadosPED_VLR_DESCONTOS: TFMTBCDField;
    tbDadosPED_VLR_PRODUTOS: TFMTBCDField;
    tbDadosPED_VLR_TOTAL: TFMTBCDField;
    tbDadosPED_VLR_SUBTOTAL: TFMTBCDField;
    tbDadosPED_PARA_PAGTOS: TFMTBCDField;
    tbDadosPED_VOLUME_PESO_L: TFMTBCDField;
    tbDadosPED_VOLUME_PESO_B: TFMTBCDField;
    tbItensPRD_VLR_UNITARIO: TBCDField;
    tbItensPRD_QTDE: TBCDField;
    tbItensPRD_VLR_SUBTOTAL: TFMTBCDField;
    tbItensPRD_VLR_FRETE: TFMTBCDField;
    tbItensPRD_VLR_SEGURO: TFMTBCDField;
    tbItensPRD_VLR_OUTROS: TFMTBCDField;
    tbItensPRD_VLR_DESCONTO: TFMTBCDField;
    tbItensPRD_VLR_TOTAL: TFMTBCDField;
    tbItensPRD_ICMS_ALIQ: TFMTBCDField;
    tbItensPRD_ICMS_RBCALC: TFMTBCDField;
    tbItensPRD_ICMS_ST_ALIQ: TFMTBCDField;
    tbItensPRD_ICMS_ST_MODAL: TIntegerField;
    tbItensPRD_ICMS_ST_RBCALC: TFMTBCDField;
    tbItensPRD_ICMS_ST_MVA: TFMTBCDField;
    tbItensPRD_IPI_CST: TStringField;
    tbItensPRD_IPI_ALIQ: TFMTBCDField;
    tbItensPRD_PIS_ALIQ: TFMTBCDField;
    tbItensPRD_PIS_ALIQ_ST: TFMTBCDField;
    tbItensPRD_COFINS_ALIQ: TFMTBCDField;
    tbItensPRD_COFINS_ALIQ_ST: TFMTBCDField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actSairExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure tbDadosID_CLIENTEChange(Sender: TField);
    procedure tbDadosID_FUNCIONARIOChange(Sender: TField);
    procedure tbDadosPED_STATUSGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure tbDadosPED_FATURADOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure tbDadosPED_ENTREGUEGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure eGridDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure actCadastrarExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure tbDadosAfterInsert(DataSet: TDataSet);
    procedure tbDadosCLI_CNPJGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure PngBitBtn1Click(Sender: TObject);
    procedure actPopAlterarExecute(Sender: TObject);
    procedure tbDadosAfterPost(DataSet: TDataSet);
    procedure tbDadosBeforeDelete(DataSet: TDataSet);
    procedure tbDadosNewRecord(DataSet: TDataSet);
    procedure actExcluirUpdate(Sender: TObject);
    procedure actPopAlterarUpdate(Sender: TObject);
    procedure actIncluirProdutosUpdate(Sender: TObject);
    procedure actExcluirProdutosUpdate(Sender: TObject);
    procedure actPopFreteExecute(Sender: TObject);
    procedure actIncluirProdutosExecute(Sender: TObject);
    procedure actPagamentosExecute(Sender: TObject);
    procedure actPagamentosUpdate(Sender: TObject);
    procedure tbItensID_PRODUTOChange(Sender: TField);
    procedure tbItensBeforeDelete(DataSet: TDataSet);
    procedure actExcluirProdutosExecute(Sender: TObject);
    procedure tbItensAfterDelete(DataSet: TDataSet);
    procedure tbItensAfterPost(DataSet: TDataSet);
    procedure actAlterarProdutosExecute(Sender: TObject);
    procedure actFreteTransporteExecute(Sender: TObject);
    procedure tbDadosTRA_CNPJGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure tbDadosID_TRANSPORTADORAChange(Sender: TField);
    procedure tbDadosAfterDelete(DataSet: TDataSet);
    procedure tbItensPRD_QTDE_ITENSGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure tbDadosBeforeInsert(DataSet: TDataSet);
    procedure actPrintExpedicaoExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure actPrintUpdate(Sender: TObject);
    procedure tbItensID_TRIBUTOSChange(Sender: TField);
  private
    { Private declarations }
    procedure ModoImpressao(aValue : boolean = false);
    procedure ConfiguraObjetoPedido;
    procedure CalcularImpostos;
  public
    { Public declarations }
  end;

var
  FrPedidosVendas: TFrPedidosVendas;

implementation

uses
   Classe.Empresa, uPedidosVendasCab, uPedidosVendasFreteOutros, uPedidosVendasPagtos, uPedidosVendasPrint,
   uPedidosVendasGerenciar, uPedidosVendasFrete, uModuloRet, uPedidosVendasProdutos,
  Classe.PedidoVendas;

{$R *.dfm}

procedure TFrPedidosVendas.actAlterarProdutosExecute(Sender: TObject);
begin
   tbItens.Edit;

   // Cria ou configura o objeto pedido
   ConfiguraObjetoPedido;

   try
      FrPedidosVendasProdutos := TFrPedidosVendasProdutos.Create(self);

      if FrPedidosVendasProdutos.ShowModal = mrOk then
         tbItens.Post
      else
         tbItens.Cancel;
   finally
      FreeAndNil( FrPedidosVendasProdutos );
   end;
end;

procedure TFrPedidosVendas.actCadastrarExecute(Sender: TObject);
begin
   tbDados.Insert;
end;

procedure TFrPedidosVendas.actExcluirExecute(Sender: TObject);
begin
   tbDados.Delete;
end;

procedure TFrPedidosVendas.actExcluirProdutosExecute(Sender: TObject);
begin
   tbItens.Delete;
end;

procedure TFrPedidosVendas.actExcluirProdutosUpdate(Sender: TObject);
begin
   if tbItens.IsEmpty then
      TAction(Sender).Enabled := false
   else
   if tbDados.FieldByName('ped_status').AsInteger in [2,3,9] then
      TAction(Sender).Enabled := false
   else
      TAction(Sender).Enabled := not ( (tbItens.State in [dsInsert,dsEdit]) or (tbDados.State in [dsInsert,dsEdit]) );
end;

procedure TFrPedidosVendas.actExcluirUpdate(Sender: TObject);
begin
   if tbDados.IsEmpty then
      TACtion(Sender).Enabled := false
   else
   if tbDados.FieldByName('ped_status').AsInteger = 2 then  // Definido como pedido
      TAction(Sender).Enabled := false
   else
   if tbDados.FieldByName('ped_status').AsInteger = 4 then  // Definido como nota fiscal
      TAction(Sender).Enabled := false
   else
   if tbDados.FieldByName('ped_status').AsInteger = 9 then  // Definido como cancelado
      TAction(Sender).Enabled := false
   else
      TACtion(Sender).Enabled := true;
end;

procedure TFrPedidosVendas.actFreteTransporteExecute(Sender: TObject);
begin
   tbDados.Edit;

   FrPedidosVendasFrete := TFrPedidosVendasFrete.Create(self);
   try
      if FrPedidosVendasFrete.ShowModal = mrOk then
         tbDados.Post
      else
         tbDados.Cancel;
   finally
      FreeAndNil( FrPedidosVendasFrete );
   end;
end;

procedure TFrPedidosVendas.actIncluirProdutosExecute(Sender: TObject);
begin
   // Checa se foi definido as formas de pagamentos
   aQuery.Close;
   aQuery.SQL.Clear;
   aQuery.SQL.Add('select 1 from C000102 where id_pedido = :id_pedido');
   aQuery.ParamByName('id_pedido').AsInteger := tbDadosID.AsInteger;
   aQuery.Open();

   if not aQuery.IsEmpty then
   begin
      if Application.MessageBox('Existem condições de pagamentos definidas para este pedido, se continuar as condições de pagamentos serão excluidas e será necessário refazelas.'
         + #13#10 + 'Tem certeza que deseja continuar?','TechCore-RTG',mb_IconQuestion or Mb_YesNo)= mrNo then
      begin
         aQuery.Close;
         Abort;
      end;

      aQuery.Close;
   end;

   // Cria ou configura o objeto pedido
   ConfiguraObjetoPedido;

   // Coloca o cursor em modo de inserção
   tbItens.Insert;

   try
      // Cria o formulário
      FrPedidosVendasProdutos := TFrPedidosVendasProdutos.Create(self);

      // Se encontrado o produto
      if FrPedidosVendasProdutos.ShowModal = mrOk then
         tbItens.Post
      else
         tbItens.Cancel;

   finally
      FreeAndNil( FrPedidosVendasProdutos );
   end;
end;

procedure TFrPedidosVendas.actIncluirProdutosUpdate(Sender: TObject);
begin
   if tbDados.IsEmpty then
      TACtion(Sender).Enabled := false
   else
   if tbDados.FieldByName('ped_status').AsInteger = 2 then  // Definido como pedido
      TAction(Sender).Enabled := false
   else
   if tbDados.FieldByName('ped_status').AsInteger = 4 then  // Definido como nota fiscal
      TAction(Sender).Enabled := false
   else
   if tbDados.FieldByName('ped_status').AsInteger = 9 then  // Definido como cancelado
      TAction(Sender).Enabled := false
   else
      TACtion(Sender).Enabled := true;
end;

procedure TFrPedidosVendas.actPagamentosExecute(Sender: TObject);
begin
   // Cria o objeto se o objeto não existe
   if not Assigned(ClassPedidoVendas) then
      ClassPedidoVendas := TPedidosVendas.Create;

   // Armazena o id od pedido
   ClassPedidoVendas.IDPedido := tbDados.FieldByName('id').AsInteger;

   // Formulário de formas de pagamentos
   FrPedidosVendasPagtos              := TFrPedidosVendasPagtos.Create(self);
   FrPedidosVendasPagtos.ValorReceber := tbDados.FieldByName('PED_PARA_PAGTOS').AsFloat;
   try
      FrPedidosVendasPagtos.ShowModal;
   finally
      tbDados.Refresh;
      FreeAndNil( FrPedidosVendasPagtos );
   end;
end;

procedure TFrPedidosVendas.actPagamentosUpdate(Sender: TObject);
begin
   if tbItens.IsEmpty then
      TACtion(Sender).Enabled := false
   else
   if tbDados.FieldByName('ped_status').AsInteger = 2 then  // Definido como pedido
      TAction(Sender).Enabled := false
   else
   if tbDados.FieldByName('ped_status').AsInteger = 4 then  // Definido como nota fiscal
      TAction(Sender).Enabled := false
   else
   if tbDados.FieldByName('ped_status').AsInteger = 9 then  // Definido como cancelado
      TAction(Sender).Enabled := false
   else
      TACtion(Sender).Enabled := true;
end;

procedure TFrPedidosVendas.actPopAlterarExecute(Sender: TObject);
begin
   tbDados.Edit;

   try
      FrPedidosVendasCab := TFrPedidosVendasCab.Create(self);
      if FrPedidosVendasCab.ShowModal = mrOk then
         tbDados.Post
      else
         tbDados.Cancel;
   finally
      FreeAndNil( FrPedidosVendasCab );
   end;
end;

procedure TFrPedidosVendas.actPopAlterarUpdate(Sender: TObject);
begin
   if tbDados.IsEmpty then
      TACtion(Sender).Enabled := false
   else
   if tbDados.FieldByName('ped_status').AsInteger = 2 then  // Definido como pedido
      TAction(Sender).Enabled := false
   else
   if tbDados.FieldByName('ped_status').AsInteger = 4 then  // Definido como nota fiscal
      TAction(Sender).Enabled := false
   else
   if tbDados.FieldByName('ped_status').AsInteger = 9 then  // Definido como cancelado
      TAction(Sender).Enabled := false
   else
      TACtion(Sender).Enabled := true;
end;

procedure TFrPedidosVendas.actPopFreteExecute(Sender: TObject);
begin
   tbDados.Edit;

   try
      FrPedidosVendasFreteOutros := TFrPedidosVendasFreteOutros.Create(self);
      if FrPedidosVendasFreteOutros.ShowModal = mrOk then
         dsDados.DataSet.Post
      else
         dsDados.DataSet.Cancel;
   finally
      FreeAndNil( FrPedidosVendasFreteOutros );
   end;
end;

procedure TFrPedidosVendas.actPrintExecute(Sender: TObject);
begin
   ModoImpressao(true);
end;

procedure TFrPedidosVendas.actPrintExpedicaoExecute(Sender: TObject);
begin
   ModoImpressao();
end;

procedure TFrPedidosVendas.actPrintUpdate(Sender: TObject);
begin
   TAction(Sender).Enabled := not (tbDados.IsEmpty)
end;

procedure TFrPedidosVendas.actSairExecute(Sender: TObject);
begin
   Self.Close;
end;

procedure TFrPedidosVendas.CalcularImpostos;
var
   ValorProduto, ValorICMS, ValorIPI, ValorPIS, ValorCOFINS : Double;
begin
   {------------------------------------------------------------------------------
      Data:       06/10/2019
      Autor:      Winston Moreira
      Aplicação:  Calcular o valor do ICMS
      Descrição:  Se foi informado a aliquota do ICMS, então efetua o calculo do
                  valor.
   ------------------------------------------------------------------------------}
   with dsItens.DataSet do
   begin

      // Valor do IPI
      if FieldByName('prd_ipi_aliq').AsFloat > 0 then
         ValorIPI := (FieldByName('prd_vlr_subtotal').AsFloat * FieldByName('prd_ipi_aliq').AsFloat) / 100;

      // Valor do PIS
      if FieldByName('prd_pis_aliq').AsFloat > 0 then
         ValorPIS := (FieldByName('prd_vlr_subtotal').AsFloat * FieldByName('prd_pis_aliq').AsFloat) / 100;

      // Valor do COFINS
      if FieldByName('prd_cofins_aliq').AsFloat > 0 then
         ValorCOFINS := (FieldByName('prd_vlr_subtotal').AsFloat * FieldByName('prd_cofins_aliq').AsFloat) / 100;

      // Valor do ICMS
      if FieldByName('prd_icms_aliq').AsFloat > 0 then
         ValorICMS := (FieldByName('prd_vlr_total').AsFloat * FieldByName('prd_icms_aliq').AsFloat) / 100;

      // Valor do ICMS ST
      if FieldByName('prd_icms_st_aliq').AsFloat > 0 then
      begin
         ValorProduto := FieldByName('prd_vlr_subtotal').AsFloat;
         ValorICMS    := FieldByName('prd_vlr_icms').AsFloat;
         ValorIPI     := FieldByName('prd_vlr_ipi').AsFloat;

         FieldByName('prd_vlr_icms_st').AsFloat := (FieldByName('prd_vlr_subtotal').AsFloat * FieldByName('prd_ipi_aliq').AsFloat) / 100;
      end;

   end;
end;

procedure TFrPedidosVendas.ConfiguraObjetoPedido;
begin
   // Carrega os dados do pedido para a objeto
   if not Assigned(ClassPedidoVendas) then
      ClassPedidoVendas := TPedidosVendas.Create;

   // Configura o objeto
   ClassPedidoVendas.IDPedido       := tbDadosID.AsInteger;
   ClassPedidoVendas.IDCliente      := tbDadosID_Cliente.AsInteger;
   ClassPedidoVendas.IDTabelaPrecos := tbDadosID_Tabela_Precos.AsInteger;
   ClassPedidoVendas.PedidoNumero   := tbDadosPed_Numero.AsInteger;
end;

procedure TFrPedidosVendas.eGridDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
   if tbDados.IsEmpty then
      Exit;

   if Column.Title.Caption = 'Status' then
   begin

      {Efetua a coloração de acordo o status}
      case tbDados.FieldByName('ped_status').AsInteger of
         1 : (Sender as TDBGrid).Canvas.Font.Color  := clBlack;
         2 : (Sender as TDBGrid).Canvas.Font.Color  := $00A00000;
         4 : (Sender as TDBGrid).Canvas.Font.Color := clGreen;
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

   if Column.Title.Caption = 'Ent.' then
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

procedure TFrPedidosVendas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if Assigned(ClassPedidoVendas) then
      FreeAndNil(ClassPedidoVendas);

   FreeAndNil( FrPedidosVendas );
end;

procedure TFrPedidosVendas.FormCreate(Sender: TObject);
begin
   {Ajusta as datas}
   eDataIni.Date := IncDay(Date,-90);
   eDataFim.Date := Date;

   {Ajusta o grid}
   eGrid.Columns[0].Width := 80;
   eGrid.Columns[1].Width := 110;

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

   {Carrega todos os pedidos no período de 90 dias}
   tbDados.ParamByName('ID_EMPRESA').AsInteger := FEmpresaClass.ID;
   tbDados.ParamByName('iData').AsDateTime     := eDataIni.Date;
   tbDados.ParamByName('fData').AsDateTime     := eDataFim.Date;
   tbDados.Open();

   {Carrega os itens dos pedidos}
   tbItens.Open();
end;

procedure TFrPedidosVendas.ModoImpressao(aValue: boolean);
begin
   if tbItens.IsEmpty then
   begin
      Application.MessageBox('Antes de Imprimir, insira produtos no pedido.','TecChore-RTG',mb_IconExclamation or mb_ok);
      Abort;
   end;

   try
      FrPedidosVendasPrint := TFrPedidosVendasPrint.Create(self);

      {Ajusta os datassets para o formulário}
      with FrPedidosVendasPrint do
      begin

         {Determina se será exibido os valores ou não}
         ExibeValores := aValue;

         // Liga o cursor dos pagamentos ao dataset dos pagamentos
         tbPagtos.MasterSource := dsDados;

         dsDados.DataSet  := tbDados;
         dsItens.DataSet  := tbItens;

         {Carrega os dados do cliente}
         tbCliente.ParamByName('ID').AsInteger := tbDados.FieldByName('ID_CLIENTE').AsInteger;
         tbCliente.Open();

         {Carrega os dados dos Pagamentos}
         tbPagtos.Open();

         {Exibe a impressão}
         ePrint.Prepare;
         ePrint.PreviewModal;

      end;

   finally
      FreeAndNil( FrPedidosVendasPrint );
   end;
end;

procedure TFrPedidosVendas.PngBitBtn1Click(Sender: TObject);
begin
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

procedure TFrPedidosVendas.tbDadosAfterDelete(DataSet: TDataSet);
begin
   {Se o formulário de gerencimento dos pedidos estiver aberto, atualiza o cursor dos pedidos}
   if Assigned( FrPedidosVendasGerenciar ) then
      FrPedidosVendasGerenciar.tbDados.Refresh;
end;

procedure TFrPedidosVendas.tbDadosAfterInsert(DataSet: TDataSet);
begin
   try
      FrPedidosVendasCab := TFrPedidosVendasCab.Create(self);
      if FrPedidosVendasCab.ShowModal = mrOk then
         tbDados.Post
      else
         tbDados.Cancel;
   finally
      FreeAndNil( FrPedidosVendasCab );
   end;
end;

procedure TFrPedidosVendas.tbDadosAfterPost(DataSet: TDataSet);
begin
   tbDados.Refresh;

   {Se o formulário de gerencimento dos pedidos estiver aberto, atualiza o cursor dos pedidos}
   if Assigned( FrPedidosVendasGerenciar ) then
      FrPedidosVendasGerenciar.tbDados.Refresh;
end;

procedure TFrPedidosVendas.tbDadosBeforeDelete(DataSet: TDataSet);
begin
   if Application.MessageBox('Tem certeza que deseja excluir este registro?','TechCore-RTG',mb_IconQuestion or mb_YesNo) = mrNO then
      Abort;
end;

procedure TFrPedidosVendas.tbDadosBeforeInsert(DataSet: TDataSet);
begin
   {Confere se foi definido o plano de contas}
   if not FEmpresaClass.PlnPedidoV > 0 then
   begin
      Application.MessageBox('Antes de continuar, é necessário definir um plano de contas padrão.','TechCore-RTG', mb_IconStop or mb_ok);
      Abort;
   end;
end;

procedure TFrPedidosVendas.tbDadosCLI_CNPJGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
   if Length(Sender.AsString) <= 11 then
      Text := FormatMaskText('!999\.999\.999\-99;0;_',Sender.AsString)
   else
   if Length(Sender.AsString) > 11 then
      Text := FormatMaskText('!99.999\.999\/9999\-99;0;_',Sender.AsString);
end;

procedure TFrPedidosVendas.tbDadosID_CLIENTEChange(Sender: TField);
var
   tbPesq : TFDQuery;
begin
   tbPesq            := TFDQuery.Create(Self);
   tbPesq.Connection := FrModuloRet.DBConexao;
   try
      tbPesq.SQL.Add('SELECT (LPAD(CLI_CODIGO,3,0) || '' - '' || CLI_RAZAO_SOCIAL) AS CLI_RAZAO_SOCIAL, CLI_CNPJ, CLI_UF FROM C000307 WHERE ID = :ID');
      tbPesq.ParamByName('ID').AsInteger := Sender.AsInteger;
      tbPesq.Open();

      {Exibe os dados resgatados}
      tbDados.FieldByName('CLI_RAZAO_SOCIAL').AsString := tbPesq.FieldByName('CLI_RAZAO_SOCIAL').AsString;
      tbDados.FieldByName('CLI_CNPJ').AsString         := tbPesq.FieldByName('CLI_CNPJ').AsString;
      tbDados.FieldByName('CLI_UF').AsString           := tbPesq.FieldByName('CLI_UF').AsString;
   finally
      FreeAndNil( tbPesq );
   end;
end;

procedure TFrPedidosVendas.tbDadosID_FUNCIONARIOChange(Sender: TField);
var
   tbPesq : TFDQuery;
begin
   tbPesq            := TFDQuery.Create(Self);
   tbPesq.Connection := FrModuloRet.DBConexao;
   try
      tbPesq.SQL.Add('SELECT (LPAD(FUN_CODIGO,3,0) || '' - '' || FUN_APELIDO) AS FUN_COMPRADOR FROM C000301 WHERE ID = :ID');
      tbPesq.ParamByName('ID').AsInteger := Sender.AsInteger;
      tbPesq.Open();

      {Exibe os dados resgatados}
      tbDados.FieldByName('PED_VENDEDOR').AsString := tbPesq.FieldByName('FUN_COMPRADOR').AsString;
   finally
      FreeAndNil( tbPesq );
   end;
end;

procedure TFrPedidosVendas.tbDadosID_TRANSPORTADORAChange(Sender: TField);
var
   tbPesq : TFDQuery;
begin
   tbPesq            := TFDQuery.Create(Self);
   tbPesq.Connection := FrModuloRet.DBConexao;
   try
      tbPesq.SQL.Add('SELECT (LPAD(TRA_CODIGO,3,0) || '' - '' || TRA_RAZAO_SOCIAL) AS TRA_RAZAO_SOCIAL, TRA_CNPJ, TRA_UF FROM C000310 WHERE ID = :ID');
      tbPesq.ParamByName('ID').AsInteger := Sender.AsInteger;
      tbPesq.Open();

      {Exibe os dados resgatados}
      tbDados.FieldByName('TRA_RAZAO_SOCIAL').AsString := tbPesq.FieldByName('TRA_RAZAO_SOCIAL').AsString;
      tbDados.FieldByName('TRA_CNPJ').AsString         := tbPesq.FieldByName('TRA_CNPJ').AsString;
      tbDados.FieldByName('TRA_UF').AsString           := tbPesq.FieldByName('TRA_UF').AsString;
   finally
      FreeAndNil( tbPesq );
   end;
end;

procedure TFrPedidosVendas.tbDadosNewRecord(DataSet: TDataSet);
begin
   {Insere algumas informações padrões}
   DataSet.FieldByName('id_empresa').AsInteger       := FEmpresaClass.ID;
   DataSet.FieldByName('ped_data_reg').AsDateTime    := Now;
   DataSet.FieldByName('ped_data_pedido').AsDateTime := Date;
   DataSet.FieldByName('ped_status').AsInteger       := 1;  // Orçamento
   DataSet.FieldByName('id_pln_contas').AsInteger    := FEmpresaClass.PlnPedidoV;
end;

procedure TFrPedidosVendas.tbDadosPED_ENTREGUEGetText(Sender: TField; var Text: string; DisplayText: Boolean);
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

procedure TFrPedidosVendas.tbDadosPED_FATURADOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
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

procedure TFrPedidosVendas.tbDadosPED_STATUSGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
   if DisplayText then
   begin
      case Sender.AsInteger of
         1 : Text := 'Orçamento';
         2 : Text := 'Pedido';
         3 : Text := 'Entregue';
         4 : Text := 'Nota Fiscal';
         9 : Text := 'Cancelado';
      end;
   end
   else
      Text := Sender.AsString
end;

procedure TFrPedidosVendas.tbDadosTRA_CNPJGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
   if Length(Sender.AsString) <= 11 then
      Text := FormatMaskText('!999\.999\.999\-99;0;_',Sender.AsString)
   else
   if Length(Sender.AsString) > 11 then
      Text := FormatMaskText('!99.999\.999\/9999\-99;0;_',Sender.AsString);
end;

procedure TFrPedidosVendas.tbItensAfterDelete(DataSet: TDataSet);
begin
   tbDados.Refresh;
end;

procedure TFrPedidosVendas.tbItensAfterPost(DataSet: TDataSet);
begin
   // Atualiza o cursor das notas fiscais
   tbDados.Refresh;

   // Atualiza o cursor dos produtos
   tbItens.Refresh;
end;

procedure TFrPedidosVendas.tbItensBeforeDelete(DataSet: TDataSet);
begin
   if Application.MessageBox(pChar('Tem certeza que deseja excluir este produto?'
                                   + #13#10
                                   + #13#10
                                   + 'ITEM' + Format('%.2d',[DataSet.RecNo]) + ': '
                                   + DataSet.FieldByName('prd_descricao').AsString)
                                   ,'TechCore-RTG',mb_IconQuestion or mb_YesNo) = mrNo
   then
      Abort;
end;

procedure TFrPedidosVendas.tbItensID_PRODUTOChange(Sender: TField);
var
   tbPesq : TFDQuery;
begin
   try
      aQuery.Close;
      aQuery.SQL.Clear;
      aQuery.SQL.Add('Select');
      aQuery.SQL.Add('  prd_ncm,    prd_ncm_ex,     prd_origem,    prd_cest,');
      aQuery.SQL.Add('  prd_codigo, prd_codigo_brr, prd_descricao, prd_unidade');
      aQuery.SQL.Add('from');
      aQuery.SQL.Add('  C000405');
      aQuery.SQL.Add('where');
      aQuery.SQL.Add('  id =:id');
      aQuery.ParamByName('id').AsInteger := Sender.AsInteger;
      aQuery.Open();

      with tbItens do
      begin
         FieldByName('prd_codigo').AsInteger    := aQuery.FieldByName('prd_codigo').AsInteger;
         FieldByName('prd_codigo_brr').AsString := aQuery.FieldByName('prd_codigo_brr').AsString;
         FieldByName('prd_descricao').AsString  := aQuery.FieldByName('prd_descricao').AsString;
         FieldByName('prd_unidade').AsString    := aquery.FieldByName('prd_unidade').AsString;
         FieldByName('prd_ncm').AsString        := aquery.FieldByName('prd_ncm').AsString;
         FieldByName('prd_ncm_ex').AsString     := aquery.FieldByName('prd_ncm_ex').AsString;
         FieldByName('prd_cest').AsString       := aquery.FieldByName('prd_cest').AsString;
         FieldByName('prd_origem').AsInteger    := aquery.FieldByName('prd_origem').AsInteger;
      end;

   finally
      FreeAndNil( tbPesq );
   end;
end;

procedure TFrPedidosVendas.tbItensID_TRIBUTOSChange(Sender: TField);
var
   ClienteContribuinteICMS : boolean;
begin

   try
      // Checa se o cliente é ou não contribuinte do icms
      aQuery.Close;
      aQuery.SQL.Clear;
      aQuery.SQL.Add('select cli_contrib_icms from C000307 where id=:id');
      aQuery.ParamByName('id').AsInteger := tbDados.FieldByName('id_cliente').AsInteger;
      aQuery.Open();

      case aQuery.FieldByName('cli_contrib_icms').AsInteger of
           1 : ClienteContribuinteICMS := true;
         2,9 : ClienteContribuinteICMS := false;
      end;

      // Carrega todos os tributos vinculado ao produto
      aQuery.Close;
      aQuery.SQL.Clear;
      aQuery.SQL.Add('Select');
      aQuery.SQL.Add('  trb_integra_calculo, trb_ind_tot,         trb_icms_modal,  trb_icms_rbCalc, trb_icms_st_aliq,');
      aQuery.SQL.Add('  trb_icms_st_modal,   trb_icms_st_rbCalc,  trb_icms_st_mva, trb_ipi_cst,     trb_ipi_aliq,');
      aQuery.SQL.Add('  trb_ipi_codigo,      trb_pis_cst,         trb_pis_aliq,    trb_pis_aliq_st, trb_cofins_cst,');
      aQuery.SQL.Add('  trb_cofins_aliq,     trb_cofins_aliq_st,');

      // Carrega os dados para contribuinte ou não contribuinte
      if ClienteContribuinteICMS then
      begin
         aQuery.SQL.Add('  trb_icms_cfop as trb_cfop,');
         aQuery.SQL.Add('  trb_icms_cst  as trb_cst,');
         aQuery.SQL.Add('  trb_icms_aliq as trb_aliq');
      end
      else
      begin
         aQuery.SQL.Add('  trb_icms_nc_cfop as trb_cfop,');
         aQuery.SQL.Add('  trb_icms_nc_cst  as trb_cst,');
         aQuery.SQL.Add('  trb_icms_nc_aliq as trb_aliq');
      end;

      aQuery.SQL.Add('from');
      aQuery.SQL.Add('  C000015');
      aQuery.SQL.Add('where');
      aQuery.SQL.Add('  id=:id');

      aQuery.ParamByName('id').AsInteger := Sender.AsInteger;
      aQuery.Open();

      with dsItens.DataSet do
      begin

         FieldByName('prd_ind_tot').AsInteger        := aQuery.FieldByName('trb_ind_tot').AsInteger;
         FieldByName('prd_integra_calculo').AsString := aQuery.FieldByName('trb_integra_calculo').AsString;
         FieldByName('prd_cst').AsString             := aQuery.FieldByName('trb_cst').AsString;
         FieldByName('prd_cfop').AsInteger           := aQuery.FieldByName('trb_cfop').AsInteger;
         FieldByName('prd_icms_aliq').AsFloat        := aQuery.FieldByName('trb_aliq').AsFloat;
         FieldByName('prd_icms_modal').AsInteger     := aQuery.FieldByName('trb_icms_modal').AsInteger;
         FieldByName('prd_icms_rbCalc').AsFloat      := aQuery.FieldByName('trb_icms_rbCalc').AsFloat;
         FieldByName('prd_icms_st_aliq').AsFloat     := aQuery.FieldByName('trb_icms_st_aliq').AsFloat;
         FieldByName('prd_icms_st_modal').AsInteger  := aQuery.FieldByName('trb_icms_st_modal').AsInteger;
         FieldByName('prd_icms_st_rbCalc').AsFloat   := aQuery.FieldByName('trb_icms_st_rbCalc').AsFloat;
         FieldByName('prd_icms_st_mva').AsFloat      := aQuery.FieldByName('trb_icms_st_mva').AsFloat;
         FieldByName('prd_ipi_cst').AsString         := aQuery.FieldByName('trb_ipi_cst').AsString;
         FieldByName('prd_ipi_aliq').AsFloat         := aQuery.FieldByName('trb_ipi_aliq').AsFloat;
         FieldByName('prd_ipi_codigo').AsString      := aQuery.FieldByName('trb_ipi_codigo').AsString;
         FieldByName('prd_pis_cst').AsString         := aQuery.FieldByName('trb_pis_cst').AsString;
         FieldByName('prd_pis_aliq').AsFloat         := aQuery.FieldByName('trb_pis_aliq').AsFloat;
         FieldByName('prd_pis_aliq_st').AsFloat      := aQuery.FieldByName('trb_pis_aliq_st').AsFloat;
         FieldByName('prd_cofins_cst').AsString      := aQuery.FieldByName('trb_cofins_cst').AsString;
         FieldByName('prd_cofins_aliq').AsFloat      := aQuery.FieldByName('trb_cofins_aliq').AsFloat;
         FieldByName('prd_cofins_aliq_st').AsFloat   := aQuery.FieldByName('trb_cofins_aliq_st').AsFloat;

      end;

   finally
      aQuery.Close;
   end;

end;

procedure TFrPedidosVendas.tbItensPRD_QTDE_ITENSGetText(Sender: TField; var Text: string; DisplayText: Boolean);
var
   Qtde : Integer;
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
