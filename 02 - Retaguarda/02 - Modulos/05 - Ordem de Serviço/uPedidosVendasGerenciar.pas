unit uPedidosVendasGerenciar;

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
  RzCmboBx;

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
    tbDadosPED_VLR_FRETE: TBCDField;
    tbDadosPED_VLR_SEGURO: TBCDField;
    tbDadosPED_VLR_OUTROS: TBCDField;
    tbDadosPED_VLR_DESCONTOS: TBCDField;
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
    tbDadosPED_QTDE_ITENS: TBCDField;
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
    tbDadosPED_VLR_SUBTOTAL: TBCDField;
    tbDadosPED_VLR_TOTAL: TBCDField;
    Label1: TLabel;
    Bevel1: TBevel;
    JvDBCalcEdit1: TJvDBCalcEdit;
    tbItensID_TRIBUTOS: TIntegerField;
    tbItensPRD_QTDE: TBCDField;
    tbItensPRD_VLR_UNITARIO: TBCDField;
    tbItensPRD_VLR_TOTAL: TBCDField;
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
    tbDadosPED_VOLUME_PESO_L: TBCDField;
    tbDadosPED_VOLUME_PESO_B: TBCDField;
    tbDadosPED_TIPO_FRETE: TIntegerField;
    tbDadosPED_VLR_JUROS: TBCDField;
    Panel1: TPanel;
    Label6: TLabel;
    JvDBCalcEdit5: TJvDBCalcEdit;
    Panel4: TPanel;
    Label5: TLabel;
    JvDBCalcEdit4: TJvDBCalcEdit;
    Panel3: TPanel;
    Label10: TLabel;
    JvDBCalcEdit2: TJvDBCalcEdit;
    Panel5: TPanel;
    Label7: TLabel;
    JvDBCalcEdit6: TJvDBCalcEdit;
    actCancelarPedido: TAction;
    RzSpacer4: TRzSpacer;
    btnNew2: TRzToolButton;
    Action1: TAction;
    RzToolButton1: TRzToolButton;
    RzSpacer7: TRzSpacer;
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
    procedure actPrintExecute(Sender: TObject);
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrPedidosVendasGerenciar: TFrPedidosVendasGerenciar;

implementation

uses
   Classe.Empresa, uModulo, uPedidosVendas, uPedidosVendasPrint, Classe.NFe, uEmissorNfe, uProdutos;

{$R *.dfm}

procedure TFrPedidosVendasGerenciar.actAprovarExecute(Sender: TObject);
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

procedure TFrPedidosVendasGerenciar.actAprovarUpdate(Sender: TObject);
begin
   {
      1 - Orçamento 
      2 - Pedido 
      3 - Recebido 
      4 - Nota Fiscal
      9 - Cancelado
   }
   if ( tbDados.IsEmpty ) then
      TAction(Sender).Enabled := false
   else
   if tbDados.FieldByName('PED_VLR_TOTAL').AsFloat = 0 then // sem pagamentos definidos
      TAction(Sender).Enabled := false
   else
   if tbDados.FieldByName('PED_STATUS').AsInteger  = 2 then
      TAction(Sender).Enabled := false
   else
   if tbDados.FieldByName('PED_STATUS').AsInteger  = 4 then
      TAction(Sender).Enabled := false
   else
   if tbDados.FieldByName('PED_STATUS').AsInteger  = 9 then
      TAction(Sender).Enabled := false
   else
      TAction(Sender).Enabled := true;
end;

procedure TFrPedidosVendasGerenciar.actBaixarExecute(Sender: TObject);
begin
   {Efetua a baixa do pedido no sistema}
   if Application.MessageBox('Tem certeza que deseja efetuar a baixa do pedido, após este processo não será possível efetuar alterações neste pedido.','TechCore-RTG',mb_IconQuestion or mb_YesNo) = mrNo then
      Abort;

   {Coloca o cursor em modo de edição}
   try
      tbDados.Edit;
      tbDados.FieldByName('PED_ENTREGUE').AsInteger := 2; // Recebido
      tbDados.Post;

      Application.MessageBox('Pedido baixado com sucesso.','TechCore-RTG',mb_IconInformation or mb_Ok);

   except
      on e:exception do
         Application.MessageBox(pChar('Erro, não foi possível baixar o pedido.' + #13#10 + 'Erro: ' + e.Message),'TechCore-RTG',mb_IconStop or mb_Ok);
   end;
end;

procedure TFrPedidosVendasGerenciar.actCancelarPedidoExecute(Sender: TObject);
var
   tbPesq : TFDQuery;
begin
   // ----------------------------------------------------------------------------------------- //
   // Se houver uma nota fiscal autorizada vinculada ao pedido, solicita que antes seja         //
   // cancelada a nota fiscal e logo após será possível cancela o pedido                        //
   // ----------------------------------------------------------------------------------------- //
   tbPesq            := TFDQuery.Create(self);
   tbPesq.Connection := FrModulo.DBConexao;
   try
      tbPesq.SQL.Add('SELECT NFE_STATUS FROM C000600 WHERE ID_PEDIDO = :ID_PEDIDO');
      tbPesq.ParamByName('ID_PEDIDO').AsInteger := tbDadosID.AsInteger;
      tbPesq.Open();

      if not tbPesq.IsEmpty then
      begin

         case tbPesq.FieldByName('NFE_STATUS').AsInteger of
            0 :
            begin
               Application.MessageBox('Antes de cancelar o pedido é necessário excluir a nota fiscal vinculada.','TechCore-RTG',mb_IconWarning or mb_Ok);
               Abort;
            end;

            2 :
            begin
               Application.MessageBox('Antes de cancelar o pedido é necessário cancelar a nota fiscal vinculada.','TechCore-RTG',mb_IconWarning or mb_Ok);
               Abort;
            end;
         end;

      end;

   finally
      FreeAndNil( tbPesq );
   end;


   if Application.MessageBox('Tem certeza que deseja cancelar este pedido?','TechCore-RTG',mb_IconQuestion or mb_YesNo) = mrNo then
      Abort;

   {Cancela o pedido}
   try
      tbDados.Edit;
      tbDados.FieldByName('PED_STATUS').AsInteger   := 9;
      tbDados.FieldByName('PED_ENTREGUE').AsInteger := 1;
      tbDados.Post;

      Application.MessageBox('Pedido cancelado com sucesso','TechCore-RTG',mb_IconInformation or mb_Ok);
   except
      on e:exception do
         Application.MessageBox(pChar('Erro ao cancelar o pedido.' + #13#10 + e.Message),'TechCore-RTG',mb_IconStop or mb_Ok);
   end;

end;

procedure TFrPedidosVendasGerenciar.actCancelarPedidoUpdate(Sender: TObject);
begin
   {
      1 - Orçamento 
      2 - Pedido 
      3 - Recebido 
      4 - Nota Fiscal
      9 - Cancelado
   }
   if ( tbDados.IsEmpty ) then
      TAction(Sender).Enabled := false
   else
   if tbDados.FieldByName('PED_ENTREGUE').AsInteger = 1 then
      TAction(Sender).Enabled := false
   else
      TAction(Sender).Enabled := true;
end;

procedure TFrPedidosVendasGerenciar.actGerarNFeExecute(Sender: TObject);
begin
   if Application.MessageBox('Tem certeza que deseja gerar uma nota fiscal deste pedido?','TechCore-RTG',mb_IconQuestion or mb_YesNo) = mrNo then
      Abort;

   {Procedimento para gerar a nota fiscal}
   try

      try
         // Dados básicos da nota fiscal
         SP_Gerar_Nfe.ParamByName('id_pedido').AsInteger      := tbDadosID.AsInteger;
         SP_Gerar_Nfe.ParamByName('nfe_ambiente').AsInteger   := ConfigNFe.NFe_Ambiente;
         SP_Gerar_Nfe.ParamByName('nfe_tipo_danfe').AsInteger := ConfigNFe.NFe_TipoDanfe;

         // Grava o modelo e a série conforme o ambiente
         case ConfigNFe.NFe_Ambiente of
            0 : begin
               SP_Gerar_Nfe.ParamByName('nfe_modelo').AsInteger := ConfigNFe.NFe_PModelo;
               SP_Gerar_Nfe.ParamByName('nfe_serie').AsInteger  := ConfigNFe.NFe_PSerie;
            end;

            1 : begin
               SP_Gerar_Nfe.ParamByName('nfe_modelo').AsInteger := ConfigNFe.NFe_HModelo;
               SP_Gerar_Nfe.ParamByName('nfe_serie').AsInteger  := ConfigNFe.NFe_HSerie;
            end;
         end;

         SP_Gerar_Nfe.Prepare;
         SP_Gerar_Nfe.ExecProc;

      except
         on e:exception do
            Application.MessageBox(pChar('Nota fiscal gerada com erros, refaça a operação' + #13#10 + e.Message),'TechCore-RTG',mb_IconStop or mb_Ok);
      end;

      // Se gerado a nota fiscal com sucesso, altera o status do pedido
      tbDados.Edit;
      tbDados.FieldByName('PED_STATUS').AsInteger := 4;
      tbDados.Post;

      Application.MessageBox('Nota Fiscal gerada com sucesso','TechCore-RTG',mb_IconInformation or mb_Ok);

   except
      on e:exception do
         Application.MessageBox(pChar('Erro ao gerar Nota Fiscal.' + #13#10 + e.Message),'TechCore-RTG',mb_IconStop or mb_Ok);
   end;
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

   {Define os padrões para se gerar a NFe}
   if ( tbDados.IsEmpty ) or
      ( tbItens.IsEmpty ) or
      ( tbDados.FieldByName('PED_STATUS').AsInteger   <> 2 )
   then
      TAction(Sender).Enabled := false
   else
      TAction(Sender).Enabled := true;
end;

procedure TFrPedidosVendasGerenciar.Action1Execute(Sender: TObject);
begin
   {Efetua a baixa do pedido no sistema}
   if Application.MessageBox('Após este processo não será possível efetuar alterações.' + sLineBreak + 'Tem certeza que deseja faturar este pedido?','TechCore-RTG',mb_IconQuestion or mb_YesNo) = mrNo then
      Abort;

   {Coloca o cursor em modo de edição}
   try
      tbDados.Edit;
      tbDados.FieldByName('PED_FATURADO').AsInteger := 2; // Faturado
      tbDados.Post;

      Application.MessageBox('Pedido faturado com sucesso.','TechCore-RTG',mb_IconInformation or mb_Ok);

   except
      on e:exception do
         Application.MessageBox(pChar('Erro, não foi possível faturar o pedido.' + #13#10 + 'Erro: ' + e.Message),'TechCore-RTG',mb_IconStop or mb_Ok);
   end;
end;

procedure TFrPedidosVendasGerenciar.Action1Update(Sender: TObject);
begin
   TAction(Sender).Enabled := not ( tbDados.IsEmpty ) and ( tbDadosPED_FATURADO.AsInteger = 1 ) and ( not ( tbDadosPED_STATUS.AsInteger in [1,4,9] ) );
end;

procedure TFrPedidosVendasGerenciar.actPrintExecute(Sender: TObject);
begin
   try
      FrPedidosVendasPrint := TFrPedidosVendasPrint.Create(self);

      {Ajusta os datassets para o formulário}
      with FrPedidosVendasPrint do
      begin

         // Liga o cursor dos pagamentos ao dataset dos pagamentos
         tbPagtos.MasterSource := dsDados;

         dsDados.DataSet  := tbDados;
         dsItens.DataSet  := tbItens;

         {Carrega os dados do emitente}
         tbEmitente.ParamByName('ID').AsInteger := FEmpresaClass.ID;
         tbEmitente.Open();

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

procedure TFrPedidosVendasGerenciar.actPrintUpdate(Sender: TObject);
begin
   if ( tbDados.IsEmpty ) or
      ( tbItens.IsEmpty ) or
      ( tbDados.FieldByName('PED_VLR_TOTAL').AsFloat <= 0.00 )
   then
      TAction(Sender).Enabled := false
   else
      TAction(Sender).Enabled := not ( tbDados.State in [dsInsert,dsEdit] );
end;

procedure TFrPedidosVendasGerenciar.actReabrirExecute(Sender: TObject);
begin
   if Application.MessageBox('Te mcerteza que deseja Reabrir este Pedido?','TechCore-RTG',mb_IconQuestion or mb_YesNo) = mrNo then
      abort;

   {Reabre o pedido}
   try
      tbDados.Edit;
      tbDados.FieldByName('PED_STATUS').AsInteger := 1;
      tbDados.Post;

      Application.MessageBox('Pedido Reaberto com sucesso.','TechCore-RTG',mb_IconInformation or mb_Ok);

   except
      on e:exception do
         Application.MessageBox(pChar('Erro ao Reabrir este pedido, tente novamente.' + #13#10 + e.Message),'TechCore-RTG',mb_IconStop or mb_Ok);
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
   if ( tbDados.IsEmpty ) then
      TAction(Sender).Enabled := false
   else
   if tbDados.FieldByName('PED_ENTREGUE').AsInteger = 2 then
      TAction(Sender).Enabled := false
   else
   if tbDados.FieldByName('PED_STATUS').AsInteger   = 1 then
      TAction(Sender).Enabled := false
   else
   if tbDados.FieldByName('PED_STATUS').AsInteger   = 4 then
      TAction(Sender).Enabled := false
   else
   if tbDados.FieldByName('PED_STATUS').AsInteger   = 9 then
      TAction(Sender).Enabled := false
   else
      TAction(Sender).Enabled := true
end;

procedure TFrPedidosVendasGerenciar.actSairExecute(Sender: TObject);
begin
   Self.Close;
end;

procedure TFrPedidosVendasGerenciar.eCondicaoClick(Sender: TObject);
begin
   case eCondicao.ItemIndex of
      0 : begin
         tbDados.Close;
         tbDados.SQL.Clear;
         tbDados.SQL.Add('SELECT * FROM VW_PEDIDOS_VENDAS WHERE ID_EMPRESA = :ID_EMP AND PED_DATA_PEDIDO BETWEEN :IDATA AND :FDATA AND PED_STATUS = 1 ORDER BY ID DESC');
         tbDados.ParamByName('ID_EMP').AsInteger := FEmpresaClass.ID;
         tbDados.ParamByName('iData').AsDateTime := eDataIni.Date;
         tbDados.ParamByName('fData').AsDateTime := eDataFim.Date;
         tbDados.Open();
      end;

      1 : begin
         tbDados.Close;
         tbDados.SQL.Clear;
         tbDados.SQL.Add('SELECT * FROM VW_PEDIDOS_VENDAS WHERE ID_EMPRESA = :ID_EMP AND PED_DATA_PEDIDO BETWEEN :IDATA AND :FDATA AND PED_STATUS = 2 ORDER BY ID DESC');
         tbDados.ParamByName('ID_EMP').AsInteger := FEmpresaClass.ID;
         tbDados.ParamByName('iData').AsDateTime := eDataIni.Date;
         tbDados.ParamByName('fData').AsDateTime := eDataFim.Date;
         tbDados.Open();
      end;

      2 : begin
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
   if tbDados.IsEmpty then Exit;

   if Column.Title.Caption = 'Status' then
   begin

      {Efetua a coloração de acordo o status}
      case tbDados.FieldByName('PED_STATUS').AsInteger of
         1 : (Sender as TDBGrid).Canvas.Font.Color  := clBlack;
         2 : (Sender as TDBGrid).Canvas.Font.Color  := $00A00000;
         4 : (Sender as TDBGrid).Canvas.Font.Color  := clGreen;
         9 : (Sender as TDBGrid).Canvas.Font.Color  := clRed;
      end;

   end;

   if Column.Title.Caption = 'Rec.' then
   begin

      {Em caso de pedido já entregue, pinta a linha inteira}
      if tbDados.FieldByName('PED_ENTREGUE').AsInteger = 2 then
         (Sender as TDBGrid).Canvas.Font.Color := clGreen;

   end;

   {Pinta o Grid}
   (Sender as TDBGrid).Canvas.FillRect(Rect);
   (Sender as TDBGrid).DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TFrPedidosVendasGerenciar.eSearchTextChange(Sender: TObject);
begin
   case eTipoFiltro.ItemIndex of
      0 : begin
         tbDados.Filtered := false;
         tbDados.Filter   := 'PED_NUMERO LIKE ' + QuotedStr('%' + eSearchText.Text + '%');
         tbDados.Filtered := true;
      end;

      1 : begin
         tbDados.Filtered := false;
         tbDados.Filter   := 'CLI_RAZAO_SOCIAL LIKE ' + QuotedStr('%' + eSearchText.Text + '%');
         tbDados.Filtered := true;
      end;

      2 : begin
         tbDados.Filtered := false;
         tbDados.Filter   := 'CLI_CNPJ LIKE ' + QuotedStr('%' + eSearchText.Text + '%');
         tbDados.Filtered := true;
      end;
   end;
end;

procedure TFrPedidosVendasGerenciar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   FreeAndNil( FrPedidosVendasGerenciar );
end;

procedure TFrPedidosVendasGerenciar.FormCreate(Sender: TObject);
begin
   {Ajusta as datas}
   eDataIni.Date := IncDay(Date,-90);
   eDataFim.Date := Date;
end;

procedure TFrPedidosVendasGerenciar.PngBitBtn1Click(Sender: TObject);
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

procedure TFrPedidosVendasGerenciar.SP_Gerar_Nfe_PagtoAfterExecute(DataSet: TFDDataSet);
begin
   if Assigned( FrEmissorNfe ) then
      FrEmissorNfe.tbDados.Refresh;
end;

procedure TFrPedidosVendasGerenciar.tbDadosAfterOpen(DataSet: TDataSet);
begin
   tbItens.Open();
end;

procedure TFrPedidosVendasGerenciar.tbDadosAfterPost(DataSet: TDataSet);
begin
   tbDados.Refresh;

   {Se o formulário de pedidos estiver aberto, atualiza o cursor dos pedidos}
   if Assigned( FrPedidosVendas ) then
      FrPedidosVendas.tbDados.Refresh;

   {Se o formulário de nota fiscal estiver aberto, atualiza o cursor das notas}
   if Assigned( FrEmissorNfe ) then
      FrEmissorNfe.tbDados.Refresh;

   {Se aberto o formulário de produtos, atuliza os dados}
   if Assigned( FrProdutos ) then
      FrProdutos.tbDados.Refresh;
end;

procedure TFrPedidosVendasGerenciar.tbDadosCLI_CNPJGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
   if Length(Sender.AsString) <= 11 then
      Text := FormatMaskText('!999\.999\.999\-99;0;_', Sender.AsString)
   else
   if Length(Sender.AsString) > 11 then
      Text := FormatMaskText('!99.999\.999\/9999\-99;0;_', Sender.AsString);
end;

procedure TFrPedidosVendasGerenciar.tbDadosPED_ENTREGUEGetText(Sender: TField; var Text: string; DisplayText: Boolean);
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

procedure TFrPedidosVendasGerenciar.tbDadosPED_FATURADOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
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

procedure TFrPedidosVendasGerenciar.tbDadosPED_STATUSGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
   if DisplayText then
   begin
      case Sender.AsInteger of
         1 : Text := 'Orçamento';
         2 : Text := 'Pedido';
         3 : Text := 'Recebido';
         4 : Text := 'Nota Fiscal';
         9 : Text := 'Cancelado';
      end;
   end
   else
      Text := Sender.AsString
end;

end.
