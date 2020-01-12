unit uPedidosCompras;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  JvExExtCtrls, JvImage, JvExtComponent, JvPanel, System.Actions, MaskUtils,
  Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, RzPanel,
  RzButton, Data.DB, Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, DateUtils,
  FireDAC.Comp.Client, Vcl.ComCtrls, JvExComCtrls, JvComCtrls, JvDataSource,
  Vcl.StdCtrls, Vcl.Mask, JvExMask, JvToolEdit, Vcl.Buttons, PngBitBtn,
  Vcl.Menus, JvBaseEdits, JvDBControls, RzDBGrid, System.ImageList,
  Vcl.ImgList, Vcl.DBCtrls;

type
  TFrPedidosCompras = class(TForm)
    RzToolbar1: TRzToolbar;
    btnNew: TRzToolButton;
    btnEdit: TRzToolButton;
    btnCancel: TRzToolButton;
    btnOK: TRzToolButton;
    btnError: TRzToolButton;
    btnExit: TRzToolButton;
    RzSpacer1: TRzSpacer;
    RzSpacer2: TRzSpacer;
    RzSpacer4: TRzSpacer;
    RzSpacer5: TRzSpacer;
    ActionManager1: TActionManager;
    actCadastrar: TAction;
    actExcluir: TAction;
    actPrint: TAction;
    actCancelar: TAction;
    actSair: TAction;
    tbDados: TFDQuery;
    eGrid: TJvDBGrid;
    JvDBGrid2: TJvDBGrid;
    Panel2: TPanel;
    dsDados: TJvDataSource;
    tbDadosID: TIntegerField;
    tbDadosID_EMPRESA: TIntegerField;
    tbDadosID_FORNECEDOR: TIntegerField;
    tbDadosID_FUNCIONARIO: TIntegerField;
    tbDadosPED_NUMERO: TIntegerField;
    tbDadosPED_DATA_REG: TSQLTimeStampField;
    tbDadosPED_DATA_PEDIDO: TDateField;
    tbDadosPED_PRAZO_ENTREGA: TStringField;
    tbDadosPED_VEND_NOME: TStringField;
    tbDadosPED_VEND_FONE_FIXO: TStringField;
    tbDadosPED_OBSERVACAO: TStringField;
    tbDadosPED_STATUS: TIntegerField;
    tbDadosPED_VEND_FONE_MOVEL: TStringField;
    tbDadosFOR_RAZAO_SOCIAL: TStringField;
    tbDadosFOR_CNPJ: TStringField;
    tbDadosFOR_UF: TStringField;
    tbDadosPED_VEND_SKYPE: TStringField;
    tbDadosPED_FATURADO: TIntegerField;
    tbDadosPED_ENTREGUE: TIntegerField;
    tbDadosPED_DATA_ENTREGA: TDateField;
    Pop01: TPopupMenu;
    AlterarCabealho1: TMenuItem;
    FreteSeguroeDesconto1: TMenuItem;
    actPopAlterar: TAction;
    actPopFrete: TAction;
    RzSpacer6: TRzSpacer;
    tbDadosPED_SOLICITANTE: TStringField;
    Panel4: TPanel;
    Label5: TLabel;
    JvDBCalcEdit4: TJvDBCalcEdit;
    Panel6: TPanel;
    Label6: TLabel;
    JvDBCalcEdit5: TJvDBCalcEdit;
    Panel5: TPanel;
    Label7: TLabel;
    tbItens: TFDQuery;
    dsItens: TJvDataSource;
    tbItensID: TIntegerField;
    tbItensID_PEDIDO: TIntegerField;
    tbItensID_PRODUTO: TIntegerField;
    tbItensPRD_CODIGO: TIntegerField;
    tbItensPRD_CODIGO_BRR: TStringField;
    tbItensPRD_DESCRICAO: TStringField;
    tbItensPRD_UNIDADE: TStringField;
    actIncluirProdutos: TAction;
    actAlterarProdutos: TAction;
    actExcluirProdutos: TAction;
    Pop02: TPopupMenu;
    IncluirProdutos1: TMenuItem;
    AlterarProdutoSelecionado1: TMenuItem;
    N1: TMenuItem;
    ExcluirProdutos1: TMenuItem;
    tbDadosPED_COMPRADOR: TStringField;
    RzPanel2: TRzPanel;
    Label8: TLabel;
    Label9: TLabel;
    Bevel3: TBevel;
    Image2: TImage;
    RzPanel1: TRzPanel;
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
    Label2: TLabel;
    eDataIni: TJvDateEdit;
    tbDadosPED_VEND_EMAIL: TStringField;
    tbDadosPED_PREVISAO_PAGTO: TDateField;
    Action1: TAction;
    RzToolButton1: TRzToolButton;
    RzSpacer7: TRzSpacer;
    tbDadosPED_VALIDADE: TIntegerField;
    tbDadosPED_QTDE_ITENS: TLargeintField;
    DBText1: TDBText;
    aQuery: TFDQuery;
    tbDadosID_PLN_CONTAS: TIntegerField;
    PopPrinter: TPopupMenu;
    ImprimirAdministrativo1: TMenuItem;
    ImprimirExpedio1: TMenuItem;
    actPrintExpedicao: TAction;
    tbDadosPED_VLR_FRETE: TFMTBCDField;
    tbDadosPED_VLR_SEGURO: TFMTBCDField;
    tbDadosPED_VLR_OUTROS: TFMTBCDField;
    tbDadosPED_VLR_DESCONTOS: TFMTBCDField;
    tbDadosPED_VLR_SUBTOTAL: TFMTBCDField;
    tbDadosPED_VLR_TOTAL: TFMTBCDField;
    tbItensITM_QTDE: TFMTBCDField;
    tbItensITM_VLR_UNITARIO: TBCDField;
    tbItensITM_VLR_TOTAL: TFMTBCDField;
    procedure actCadastrarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actSairExecute(Sender: TObject);
    procedure tbDadosNewRecord(DataSet: TDataSet);
    procedure tbDadosFOR_CNPJGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure tbDadosAfterPost(DataSet: TDataSet);
    procedure tbDadosPED_STATUSGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure eGridDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure tbDadosPED_FATURADOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure tbDadosPED_ENTREGUEGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actAlterarUpdate(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure tbDadosBeforeDelete(DataSet: TDataSet);
    procedure actPopAlterarExecute(Sender: TObject);
    procedure actExcluirUpdate(Sender: TObject);
    procedure actPopFreteExecute(Sender: TObject);
    procedure actIncluirProdutosExecute(Sender: TObject);
    procedure tbItensID_PRODUTOChange(Sender: TField);
    procedure tbItensAfterPost(DataSet: TDataSet);
    procedure actAlterarProdutosExecute(Sender: TObject);
    procedure actExcluirProdutosExecute(Sender: TObject);
    procedure tbItensBeforeDelete(DataSet: TDataSet);
    procedure actExcluirProdutosUpdate(Sender: TObject);
    procedure actIncluirProdutosUpdate(Sender: TObject);
    procedure tbItensAfterDelete(DataSet: TDataSet);
    procedure PngBitBtn1Click(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure Action1Update(Sender: TObject);
    procedure actPrintUpdate(Sender: TObject);
    procedure tbDadosBeforeInsert(DataSet: TDataSet);
    procedure actPrintExecute(Sender: TObject);
    procedure actPrintExpedicaoExecute(Sender: TObject);
  private
    { Private declarations }
    procedure ModoImpressao(aValue : boolean = false);
  public
    { Public declarations }
  end;

var
  FrPedidosCompras: TFrPedidosCompras;

implementation

uses
   uPedidosComprasCab, Classe.Empresa, uPedidosComprasFreteOutros, uPedidosComprasProdutos.dcu, uPedidosComprasGerenciar, uPedidosComprasPrint,
   uPedidosComprasPagtos, uModuloRet;

{$R *.dfm}

procedure TFrPedidosCompras.actAlterarProdutosExecute(Sender: TObject);
begin
   {Coloca o cursor em modo de edição}
   tbItens.Edit;

   {Cria o formulário dos produtos}
   FrPedidosComprasProdutos := TFrPedidosComprasProdutos.Create(self);
   try
      if FrPedidosComprasProdutos.ShowModal = mrOk then
         tbItens.Post
      else
         tbItens.Cancel
   finally
      FreeAndNil( FrPedidosComprasProdutos );
   end;
end;

procedure TFrPedidosCompras.actAlterarUpdate(Sender: TObject);
begin
   if tbdados.IsEmpty then
      TAction(Sender).Enabled := false
   else
   if tbDados.FieldByName('PED_STATUS').AsInteger in [2,3,9] then
      TAction(Sender).Enabled := false
   else
      TAction(Sender).Enabled := not ( tbDados.State in [dsInsert, dsEdit] );
end;

procedure TFrPedidosCompras.actCadastrarExecute(Sender: TObject);
begin
   tbDados.Insert;

   try
      FrPedidosComprasCab := TFrPedidosComprasCab.Create(self);
      if FrPedidosComprasCab.ShowModal = mrOk then
         tbDados.Post
      else
         tbDados.Cancel;
   finally
      FreeAndNil( FrPedidosComprasCab );
   end;
end;

procedure TFrPedidosCompras.actExcluirExecute(Sender: TObject);
begin
   tbDados.Delete;
end;

procedure TFrPedidosCompras.actExcluirProdutosExecute(Sender: TObject);
begin
   tbItens.Delete;
end;

procedure TFrPedidosCompras.actExcluirProdutosUpdate(Sender: TObject);
begin
   if tbItens.IsEmpty then
      TAction(Sender).Enabled := false
   else
   if tbDados.FieldByName('PED_STATUS').AsInteger in [2,3,9] then
      TAction(Sender).Enabled := false
   else
      TAction(Sender).Enabled := not ( (tbItens.State in [dsInsert,dsEdit]) or (tbDados.State in [dsInsert,dsEdit]) );
end;

procedure TFrPedidosCompras.actExcluirUpdate(Sender: TObject);
begin
   if tbdados.IsEmpty then
      TAction(Sender).Enabled := false
   else
   if tbDados.FieldByName('PED_STATUS').AsInteger = 2 then
      TAction(Sender).Enabled := false
   else
   if tbDados.FieldByName('PED_STATUS').AsInteger = 9 then
      TAction(Sender).Enabled := false
   else
      TAction(Sender).Enabled := not ( tbDados.State in [dsInsert, dsEdit] );
end;

procedure TFrPedidosCompras.actPrintExecute(Sender: TObject);
begin
   ModoImpressao(true);
end;

procedure TFrPedidosCompras.actPrintExpedicaoExecute(Sender: TObject);
begin
   ModoImpressao;
end;

procedure TFrPedidosCompras.actPrintUpdate(Sender: TObject);
begin
   (Sender as TAction).Enabled := not(tbDados.IsEmpty) and not(tbItens.IsEmpty);
end;

procedure TFrPedidosCompras.actIncluirProdutosExecute(Sender: TObject);
begin
   // Checa se foi definido as formas de pagamentos
   aQuery.Close;
   aQuery.SQL.Clear;
   aQuery.SQL.Add('select 1 from C000311 where id_pedido = :id_pedido');
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

   // Coloca o cursor em modo de edição
   tbItens.Insert;

   try
      FrPedidosComprasProdutos             := TFrPedidosComprasProdutos.Create(self);
      if FrPedidosComprasProdutos.ShowModal = mrOk then
         tbItens.Refresh;
   finally
      FreeAndNil( FrPedidosComprasProdutos );
   end;

end;

procedure TFrPedidosCompras.actIncluirProdutosUpdate(Sender: TObject);
begin
   (Sender as TAction).Enabled := not(tbDados.IsEmpty) and not(tbDadosPED_STATUS.AsInteger in [3,9]);
end;

procedure TFrPedidosCompras.Action1Execute(Sender: TObject);
begin
   try
      FrPedidosComprasPagtos := TFrPedidosComprasPagtos.Create(self);
      FrPedidosComprasPagtos.ValorPedido := tbDadosPED_VLR_TOTAL.AsFloat;
      FrPedidosComprasPagtos.ShowModal;
   finally
      FreeAndNil( FrPedidosComprasPagtos );
   end;
end;

procedure TFrPedidosCompras.Action1Update(Sender: TObject);
begin
   (Sender as TAction).Enabled := not(tbDados.IsEmpty) and not(tbDadosPED_STATUS.AsInteger in [2,9]) and not(tbItens.IsEmpty);
end;

procedure TFrPedidosCompras.actPopAlterarExecute(Sender: TObject);
begin
   tbDados.Edit;

   try
      FrPedidosComprasCab := TFrPedidosComprasCab.Create(self);
      if FrPedidosComprasCab.ShowModal = mrOk then
         tbDados.Post
      else
         tbDados.Cancel;
   finally
      FreeAndNil( FrPedidosComprasCab );
   end;
end;

procedure TFrPedidosCompras.actPopFreteExecute(Sender: TObject);
begin
   tbDados.Edit;

   try
      FrPedidosComprasFreteOutros := TFrPedidosComprasFreteOutros.Create(self);
      if FrPedidosComprasFreteOutros.ShowModal = mrOk then
         dsDados.DataSet.Post
      else
         dsDados.DataSet.Cancel;
   finally
      FreeAndNil( FrPedidosComprasFreteOutros );
   end;
end;

procedure TFrPedidosCompras.actSairExecute(Sender: TObject);
begin
   Self.Close;
end;

procedure TFrPedidosCompras.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   FreeAndNil( FrPedidosCompras );
end;

procedure TFrPedidosCompras.FormCreate(Sender: TObject);
begin
   {Ajusta as datas}
   eDataIni.Date := IncDay(Date,-90);
   eDataFim.Date := Date;

   {Ajusta o grid}
   eGrid.Columns[0].Width := 50;

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

   {Carrega todos os pedidos no período de 90 dias}
   tbDados.ParamByName('ID_EMPRESA').AsInteger := FEmpresaClass.ID;
   tbDados.ParamByName('iData').AsDateTime     := eDataIni.Date;
   tbDados.ParamByName('fData').AsDateTime     := eDataFim.Date;
   tbDados.Open();

   {Carrega os itens dos pedidos}
   tbItens.Open();
end;

procedure TFrPedidosCompras.ModoImpressao(aValue: boolean = false);
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

procedure TFrPedidosCompras.PngBitBtn1Click(Sender: TObject);
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

procedure TFrPedidosCompras.eGridDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
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

procedure TFrPedidosCompras.tbDadosAfterPost(DataSet: TDataSet);
begin
   tbDados.Refresh;

   {Se o formulário de gerencimento dos pedidos estiver aberto, atualiza o cursor dos pedidos}
   if Assigned( FrPedidosComprasGerenciar ) then
      FrPedidosComprasGerenciar.tbDados.Refresh;
end;

procedure TFrPedidosCompras.tbDadosBeforeDelete(DataSet: TDataSet);
begin
   if Application.MessageBox('Tem certeza que deseja excluir este registro?','TechCore-RTG',mb_IconQuestion or mb_YesNo) = mrNO then
      Abort;
end;

procedure TFrPedidosCompras.tbDadosBeforeInsert(DataSet: TDataSet);
begin
   {Confere se foi definido o plano de contas}
   if not FEmpresaClass.PlnPedidoC > 0 then
   begin
      Application.MessageBox('Antes de continuar, é necessário definir um plano de contas padrão.','TechCore-RTG', mb_IconStop or mb_ok);
      Abort;
   end;
end;

procedure TFrPedidosCompras.tbDadosFOR_CNPJGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
   if Length(Sender.AsString) <= 11 then
      Text := FormatMaskText('!999\.999\.999\-99;0;_',tbDados.FieldByName('for_cnpj').AsString)
   else
   if Length(Sender.AsString) > 11 then
      Text := FormatMaskText('!99.999\.999\/9999\-99;0;_',tbDados.FieldByName('for_cnpj').AsString);
end;

procedure TFrPedidosCompras.tbDadosNewRecord(DataSet: TDataSet);
begin
   {Insere algumas informações padrões}
   DataSet.FieldByName('ID_EMPRESA').AsInteger       := FEmpresaClass.ID;
   DataSet.FieldByName('PED_DATA_REG').AsDateTime    := Now;
   DataSet.FieldByName('PED_DATA_PEDIDO').AsDateTime := Date;
   DataSet.FieldByName('PED_STATUS').AsInteger       := 1;  // Orçamento
   DataSet.FieldByName('ID_PLN_CONTAS').AsInteger    := FEmpresaClass.PlnPedidoC;
end;

procedure TFrPedidosCompras.tbDadosPED_ENTREGUEGetText(Sender: TField; var Text: string; DisplayText: Boolean);
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

procedure TFrPedidosCompras.tbDadosPED_FATURADOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
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

procedure TFrPedidosCompras.tbDadosPED_STATUSGetText(Sender: TField; var Text: string; DisplayText: Boolean);
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

procedure TFrPedidosCompras.tbItensAfterDelete(DataSet: TDataSet);
begin
   tbDados.Refresh;
end;

procedure TFrPedidosCompras.tbItensAfterPost(DataSet: TDataSet);
begin
   tbDados.Refresh;
   tbItens.Refresh;

   {Se o formulário de gerencimento dos pedidos estiver aberto, atualiza o cursor dos pedidos}
   if Assigned( FrPedidosComprasGerenciar ) then
      FrPedidosComprasGerenciar.tbDados.Refresh;
end;

procedure TFrPedidosCompras.tbItensBeforeDelete(DataSet: TDataSet);
begin
   if Application.MessageBox('Tem certeza que deseja excluir este registro?','TechCore-RTG',mb_IconQuestion or mb_YesNo) = mrNO then
      Abort;
end;

procedure TFrPedidosCompras.tbItensID_PRODUTOChange(Sender: TField);
var
   tbPesq : TFDQuery;
begin
   tbPesq            := TFDQuery.Create(self);
   tbPesq.Connection := FrModuloRet.DBConexao;
   try
      tbPesq.SQL.Add('SELECT PRD_CODIGO, PRD_CODIGO_BRR, PRD_DESCRICAO, PRD_UNIDADE FROM C000405 WHERE ID = :ID');
      tbPesq.ParamByName('ID').AsInteger := sender.AsInteger;
      tbPesq.Open();

      tbItens.FieldByName('PRD_CODIGO').AsInteger    := tbPesq.FieldByName('PRD_CODIGO').AsInteger;
      tbItens.FieldByName('PRD_CODIGO_BRR').AsString := tbPesq.FieldByName('PRD_CODIGO_BRR').AsString;
      tbItens.FieldByName('PRD_DESCRICAO').AsString  := tbPesq.FieldByName('PRD_DESCRICAO').AsString;
      tbItens.FieldByName('PRD_UNIDADE').AsString    := tbPesq.FieldByName('PRD_UNIDADE').AsString;
   finally
      FreeAndNil( tbPesq );
   end;

end;

end.
