unit uOrdemServico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, System.MaskUtils, SysTem.DateUtils,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, Vcl.Menus, JvDataSource, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, JvToolEdit, Vcl.StdCtrls,
  Vcl.Buttons, PngBitBtn, Vcl.Imaging.pngimage, Vcl.ExtCtrls, RzPanel,
  Vcl.Mask, JvExMask, JvBaseEdits, JvDBControls, Vcl.Grids, Vcl.DBGrids,
  JvExDBGrids, JvDBGrid, RzButton, System.ImageList, Vcl.ImgList,
  JvImageList, RzLabel, RzDBLbl, ACBrUtil;

type
  TFrOrdemServico = class(TForm)
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
    RzSpacer3: TRzSpacer;
    btnNew1: TRzToolButton;
    RzSpacer7: TRzSpacer;
    eGrid: TJvDBGrid;
    JvDBGrid2: TJvDBGrid;
    Panel2: TPanel;
    Panel4: TPanel;
    Label5: TLabel;
    JvDBCalcEdit4: TJvDBCalcEdit;
    Panel5: TPanel;
    Label7: TLabel;
    Panel1: TPanel;
    Label10: TLabel;
    JvDBCalcEdit7: TJvDBCalcEdit;
    RzPanel2: TRzPanel;
    Label8: TLabel;
    Image2: TImage;
    RzPanel1: TRzPanel;
    Label2: TLabel;
    Panel3: TPanel;
    PngBitBtn1: TPngBitBtn;
    eDataFim: TJvDateEdit;
    eDataIni: TJvDateEdit;
    ActionManager1: TActionManager;
    actCadastrar: TAction;
    actExcluir: TAction;
    actPrint: TAction;
    actSair: TAction;
    actPopAlterar: TAction;
    actIncluirProdutos: TAction;
    actAlterarProdutos: TAction;
    actExcluirProdutos: TAction;
    actPagamentos: TAction;
    Query: TFDQuery;
    dsQuery: TJvDataSource;
    QueryProdutos: TFDQuery;
    dsItens: TJvDataSource;
    Pop02: TPopupMenu;
    IncluirProdutos1: TMenuItem;
    AlterarProdutoSelecionado1: TMenuItem;
    N1: TMenuItem;
    ExcluirProdutos1: TMenuItem;
    QueryID: TIntegerField;
    QueryID_EMPRESA: TIntegerField;
    QueryID_CLIENTE: TIntegerField;
    QueryID_ATENDENTE: TIntegerField;
    QueryID_TECNICO: TIntegerField;
    QueryOS_DATA_REG: TSQLTimeStampField;
    QueryOS_DATA_MODIFICACAO: TSQLTimeStampField;
    QueryOS_NUMERO: TIntegerField;
    QueryOS_ANOTACOES_ENT: TStringField;
    QueryOS_ANOTACOES_SAI: TStringField;
    QueryOS_FATURADA: TIntegerField;
    QueryOS_ENTREGUE: TIntegerField;
    QueryOS_DATA_ENTREGA: TSQLTimeStampField;
    QueryOS_STATUS: TIntegerField;
    QueryOS_CLI_RAZAO_SOCIAL: TStringField;
    QueryOS_CLI_CNPJ: TStringField;
    QueryOS_CLI_UF: TStringField;
    QueryOS_NOME_TECNICO: TStringField;
    QueryOS_NOME_ATENDENTE: TStringField;
    JvImageList1: TJvImageList;
    QueryOS_REPRESENTANTE: TStringField;
    QueryOS_PREV_ENTREGA: TDateField;
    QueryProdutosID: TIntegerField;
    QueryProdutosID_C000070: TIntegerField;
    QueryProdutosID_PRODUTO: TIntegerField;
    QueryProdutosPRD_CODIGO_BARRAS: TStringField;
    QueryProdutosPRD_DESCRICAO: TStringField;
    QueryProdutosPRD_UNIDADE: TStringField;
    QueryProdutosPRD_QTDE: TBCDField;
    QueryProdutosPRD_VLR_UNITARIO: TBCDField;
    QueryProdutosPRD_VLR_SUBTOTAL: TBCDField;
    QueryProdutosPRD_ORIGEM: TIntegerField;
    QueryProdutosPRD_NCM: TStringField;
    QueryProdutosPRD_NCM_EX: TStringField;
    QueryProdutosPRD_CEST: TStringField;
    QueryProdutosPRD_INFOS: TStringField;
    QueryOS_VLR_PRODUTOS: TBCDField;
    QueryProdutosPRD_QTDE_ITENS: TAggregateField;
    RzDBLabel1: TRzDBLabel;
    QueryProdutosID_TRIBUTOS: TIntegerField;
    QueryProdutosPRD_INCLUSAO: TIntegerField;
    QueryProdutosPRD_CODIGO: TStringField;
    QueryOS_VLR_FRETE: TFMTBCDField;
    QueryOS_VLR_SEGURO: TFMTBCDField;
    QueryOS_VLR_OUTROS: TFMTBCDField;
    QueryOS_VLR_DESCONTOS: TFMTBCDField;
    QueryProdutosPRD_VLR_TOTAL: TFMTBCDField;
    QueryOS_CLI_IESTADUAL: TStringField;
    Pop03: TPopupMenu;
    Action1: TAction;
    Action2: TAction;
    ImprimirAdministrativo1: TMenuItem;
    ImprimirProduo1: TMenuItem;
    Pop04: TPopupMenu;
    actAnotacoes: TAction;
    Observaes1: TMenuItem;
    aQuery: TFDQuery;
    QueryID_PLN_CONTAS: TIntegerField;
    QueryOS_PARA_PAGTOS: TFMTBCDField;
    QueryPLN_CONTAS_DESC: TStringField;
    QueryOS_VLR_TOTAL: TBCDField;
    procedure QueryOS_CLI_CNPJGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure actSairExecute(Sender: TObject);
    procedure QueryAfterPost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actPopAlterarExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure QueryBeforeDelete(DataSet: TDataSet);
    procedure PngBitBtn1Click(Sender: TObject);
    procedure QueryNewRecord(DataSet: TDataSet);
    procedure actAlterarProdutosExecute(Sender: TObject);
    procedure actExcluirProdutosExecute(Sender: TObject);
    procedure QueryProdutosBeforeDelete(DataSet: TDataSet);
    procedure QueryProdutosAfterPost(DataSet: TDataSet);
    procedure actPagamentosExecute(Sender: TObject);
    procedure QueryProdutosPRD_QTDE_ITENSGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure actIncluirProdutosExecute(Sender: TObject);
    procedure actCadastrarExecute(Sender: TObject);
    procedure eGridDrawColumnCell(Sender: TObject; const [Ref] Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure QueryProdutosAfterDelete(DataSet: TDataSet);
    procedure Action1Execute(Sender: TObject);
    procedure Action2Execute(Sender: TObject);
    procedure actPopAlterarUpdate(Sender: TObject);
    procedure actExcluirUpdate(Sender: TObject);
    procedure actPagamentosUpdate(Sender: TObject);
    procedure actIncluirProdutosUpdate(Sender: TObject);
    procedure actAlterarProdutosUpdate(Sender: TObject);
    procedure actExcluirProdutosUpdate(Sender: TObject);
    procedure actPrintUpdate(Sender: TObject);
    procedure actAnotacoesExecute(Sender: TObject);
    procedure actAnotacoesUpdate(Sender: TObject);
    procedure QueryProdutosNewRecord(DataSet: TDataSet);
    procedure QueryOS_STATUSGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure QueryOS_ENTREGUEGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure QueryOS_FATURADAGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure QueryBeforeInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrOrdemServico: TFrOrdemServico;

implementation

uses
   uOrdemServicoCab, Classe.Empresa, uOrdemServicoProdutos, uOrdemServicoPagtos, uOrdemServicoPrint_A, uOrdemServicoAnotacoes,
  uPrincipal, uModuloRet, Classe.OrdensServicos;

{$R *.dfm}

procedure TFrOrdemServico.actAlterarProdutosExecute(Sender: TObject);
begin
   // Coloca o cursor em modo de edição
   QueryProdutos.Edit;

   try
      FrOrdemServicoProdutos := TFrOrdemServicoProdutos.Create(self);
      if FrOrdemServicoProdutos.ShowModal = mrOk then
         QueryProdutos.Post
      else
         QueryProdutos.Cancel;
   finally
      FreeAndNil( FrOrdemServicoProdutos );
   end;
end;

procedure TFrOrdemServico.actAlterarProdutosUpdate(Sender: TObject);
begin
   {
       1 - Orçamento 
       2 - Em execução 
       3 - Finalizada 
       4 - Entregue
      99 - Cancelada
   }
   TAction(Sender).Enabled := ( QueryOS_STATUS.AsInteger in [1,2,3] ) and (not (Query.IsEmpty)) and ( QueryOS_ENTREGUE.AsInteger = 2);;
end;

procedure TFrOrdemServico.actAnotacoesExecute(Sender: TObject);
begin
   Query.Edit;

   try
      FrOrdemServicoAnotacoes := TFrOrdemServicoAnotacoes.Create(self);
      if FrOrdemServicoAnotacoes.ShowModal = mrOk then
         Query.Post
      else
         Query.Cancel;
   finally
      FreeAndNil( FrOrdemServicoAnotacoes );
   end;
end;

procedure TFrOrdemServico.actAnotacoesUpdate(Sender: TObject);
begin
   {
       1 - Orçamento 
       2 - Em execução 
       3 - Finalizada 
       4 - Entregue
      99 - Cancelada
   }
   TAction(Sender).Enabled := not (Query.IsEmpty);
end;

procedure TFrOrdemServico.actCadastrarExecute(Sender: TObject);
begin
   // Coloca o cursor em edição
   Query.Insert;

   // Cabeçalho para o novo registro
   try
      FrOrdemServicoCab := TFrOrdemServicoCab.Create(self);
      if FrOrdemServicoCab.ShowModal = mrOk then
         Query.Post
      else
         Query.Cancel;
   finally
      FreeAndNil( FrOrdemServicoCab );
   end;
end;

procedure TFrOrdemServico.actExcluirExecute(Sender: TObject);
begin
   Query.Delete;
end;

procedure TFrOrdemServico.actExcluirProdutosExecute(Sender: TObject);
begin
   QueryProdutos.Delete;
end;

procedure TFrOrdemServico.actExcluirProdutosUpdate(Sender: TObject);
begin
   {
       1 - Orçamento 
       2 - Em execução 
       3 - Finalizada 
       4 - Entregue
      99 - Cancelada
   }
   TAction(Sender).Enabled := ( QueryOS_STATUS.AsInteger in [1,2,3] ) and (not (Query.IsEmpty)) and ( QueryOS_ENTREGUE.AsInteger = 2);;
end;

procedure TFrOrdemServico.actExcluirUpdate(Sender: TObject);
begin
   {
       1 - Orçamento 
       2 - Em execução 
       3 - Finalizada 
       4 - Entregue
      99 - Cancelada
   }
   TAction(Sender).Enabled := ( QueryOS_STATUS.AsInteger in [1,2] ) and (not (Query.IsEmpty)) and ( QueryOS_ENTREGUE.AsInteger = 2);;
end;

procedure TFrOrdemServico.actIncluirProdutosExecute(Sender: TObject);
begin
   // Checa se foi definido as formas de pagamentos
   aQuery.Close;
   aQuery.SQL.Clear;
   aQuery.SQL.Add('select 1 from C000072 where id_C000070 = :id_C000070');
   aQuery.ParamByName('id_C000070').AsInteger := QueryID.AsInteger;
   aQuery.Open();

   if not aQuery.IsEmpty then
   begin
      if Application.MessageBox('Existem condições de pagamentos definidas para esta ordem de serviço, se continuar as condições de pagamentos serão excluidas e será necessário refazelas.'
         + #13#10 + 'Tem certeza que deseja continuar?','TechCore-RTG',mb_IconQuestion or Mb_YesNo)= mrNo then
         begin
            aQuery.Close;
            Abort;
         end;

         aQuery.Close;
   end;

   // Coloca o cursor em modo de edição
   QueryProdutos.Insert;

   try
      FrOrdemServicoProdutos := TFrOrdemServicoProdutos.Create(self);
      if FrOrdemServicoProdutos.ShowModal = mrOk then
         QueryProdutos.Post
      else
         QueryProdutos.Cancel;

   finally
      FreeAndNil( FrOrdemServicoProdutos );
   end;
end;

procedure TFrOrdemServico.actIncluirProdutosUpdate(Sender: TObject);
begin
   {
       1 - Orçamento 
       2 - Em execução 
       3 - Finalizada 
       4 - Entregue
      99 - Cancelada
   }
   TAction(Sender).Enabled := ( QueryOS_STATUS.AsInteger in [1,2,3] ) and (not (Query.IsEmpty)) and ( QueryOS_ENTREGUE.AsInteger = 2);;
end;

procedure TFrOrdemServico.Action1Execute(Sender: TObject);
begin
   try
      FrOrdemServicoPrint_A := TFrOrdemServicoPrint_A.Create(self);

      // Ajusta o formulário antesde visualizar qa impressão
      FrOrdemServicoPrint_A.dsQuery.DataSet          := Self.Query;
      FrOrdemServicoPrint_A.dsQueryProdutos.DataSet  := Self.QueryProdutos;

      // parâmetros gerais
      FrOrdemServicoPrint_A.id_cliente    := Query.FieldByName('ID_CLIENTE').AsInteger;
      FrOrdemServicoPrint_A.id_c000070    := Query.FieldByName('ID').AsInteger;
      FrOrdemServicoPrint_A.exibe_valores := true;

      FrOrdemServicoPrint_A.Print.Preview();
   finally
      FreeAndNil( FrOrdemServicoPrint_A );
   end;
end;

procedure TFrOrdemServico.Action2Execute(Sender: TObject);
begin
   try
      FrOrdemServicoPrint_A := TFrOrdemServicoPrint_A.Create(self);

      // Ajusta o formulário antesde visualizar qa impressão
      FrOrdemServicoPrint_A.dsQuery.DataSet          := Self.Query;
      FrOrdemServicoPrint_A.dsQueryProdutos.DataSet  := Self.QueryProdutos;

      // parâmetros gerais
      FrOrdemServicoPrint_A.id_cliente    := Query.FieldByName('ID_CLIENTE').AsInteger;
      FrOrdemServicoPrint_A.id_c000070    := Query.FieldByName('ID').AsInteger;
      FrOrdemServicoPrint_A.exibe_valores := false;

      FrOrdemServicoPrint_A.Print.Preview();
   finally
      FreeAndNil( FrOrdemServicoPrint_A );
   end;
end;

procedure TFrOrdemServico.actPagamentosExecute(Sender: TObject);
begin
   // Checa se os valores dos pagamentos
   try
      FrOrdemServicoPagtos := TFrOrdemServicoPagtos.Create(self);
      FrOrdemServicoPagtos.ValorReceber := Query.FieldByName('os_para_pagtos').AsFloat;
      FrOrdemServicoPagtos.ShowModal;
   finally
      Query.Refresh;
      FreeAndNil( FrOrdemServicoPagtos );
   end;
end;

procedure TFrOrdemServico.actPagamentosUpdate(Sender: TObject);
begin
   {
       1 - Orçamento 
       2 - Em execução 
       3 - Finalizada 
       4 - Entregue
      99 - Cancelada
   }
   TAction(Sender).Enabled := ( QueryOS_STATUS.AsInteger in [1,2,3] ) and (not (Query.IsEmpty)) and ( QueryOS_ENTREGUE.AsInteger = 2) and (not(QueryProdutos.IsEmpty));
end;

procedure TFrOrdemServico.actPopAlterarExecute(Sender: TObject);
begin
   // Coloca o cursor em edição
   Query.Edit;

   // Cabeçalho para o novo registro
   try
      FrOrdemServicoCab := TFrOrdemServicoCab.Create(self);
      if FrOrdemServicoCab.ShowModal = mrOk then
         Query.Post
      else
         Query.Cancel;
   finally
      FreeAndNil( FrOrdemServicoCab );
   end;
end;

procedure TFrOrdemServico.actPopAlterarUpdate(Sender: TObject);
begin
   {
       1 - Orçamento 
       2 - Em execução 
       3 - Finalizada 
       4 - Entregue
      99 - Cancelada
   }
   TAction(Sender).Enabled := not (Query.IsEmpty);
end;

procedure TFrOrdemServico.actPrintUpdate(Sender: TObject);
begin
   {
       0 - Orçamento 
       1 - Em execução 
       2 - Finalizada 
       3 - Entregue
      99 - Cancelada
   }
   TAction(Sender).Enabled := not (Query.IsEmpty);
end;

procedure TFrOrdemServico.actSairExecute(Sender: TObject);
begin
   Self.Close;
end;

procedure TFrOrdemServico.eGridDrawColumnCell(Sender: TObject; const [Ref] Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
   if Query.IsEmpty then Exit;

   if Column.Title.Caption = 'Status' then
   begin

      {Efetua a coloração de acordo o status}
      case Query.FieldByName('OS_STATUS').AsInteger of
          1 :
         begin
            (Sender as TDBGrid).Canvas.Font.Color  := clBlack;
            (Sender as TDBGrid).Canvas.Brush.Color := clSilver;
         end;

          2 :
         begin
            (Sender as TDBGrid).Canvas.Font.Color  := clWhite;
            (Sender as TDBGrid).Canvas.Brush.Color := clBlue;
         end;

          3 :
         begin
            (Sender as TDBGrid).Canvas.Font.Color  := clWhite;
            (Sender as TDBGrid).Canvas.Brush.Color := clGreen;
         end;

         99 :
         begin
            (Sender as TDBGrid).Canvas.Font.Color  := clWhite;
            (Sender as TDBGrid).Canvas.Brush.Color := clRed;
         end;

      end;

   end;

   if Column.Title.Caption = 'Ent.' then
   begin

      {Em caso de pedido já entregue, pinta a linha inteira}
      if Query.FieldByName('OS_ENTREGUE').AsInteger = 1 then
      begin
         (Sender as TDBGrid).Canvas.Font.Color  := clWhite;
         (Sender as TDBGrid).Canvas.Brush.Color := clGreen;
      end;

   end;

   if Column.Title.Caption = 'Fat.' then
   begin

      {Em caso de documento já faturado, pinta a linha inteira}
      if Query.FieldByName('OS_FATURADA').AsInteger = 1 then
      begin
         (Sender as TDBGrid).Canvas.Font.Color  := clWhite;
         (Sender as TDBGrid).Canvas.Brush.Color := clGreen;
      end;

   end;

   {Pinta o Grid}
   (Sender as TDBGrid).Canvas.FillRect(Rect);
   (Sender as TDBGrid).DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TFrOrdemServico.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   FreeAndNil( FrOrdemServico );
end;

procedure TFrOrdemServico.FormCreate(Sender: TObject);
begin
   // Carrega a classe ordem de serviço
   if not Assigned(ClassOrdensServicos) then
      ClassOrdensServicos := TOrdemServico.Create(FEmpresaClass.ID);

   // Configura a formatação das casa decimais para vendas
   case FEmpresaClass.Decimal_Venda of
      2 : begin
         // Produtos
         QueryProdutosPRD_VLR_UNITARIO.DisplayFormat := ',0.00';
         QueryProdutosPRD_VLR_SUBTOTAL.DisplayFormat := ',0.00';
      end;

      3 : begin
         // Produtos
         QueryProdutosPRD_VLR_UNITARIO.DisplayFormat := ',0.000';
         QueryProdutosPRD_VLR_SUBTOTAL.DisplayFormat := ',0.000';
      end;

      4 : begin
         // Produtos
         QueryProdutosPRD_VLR_UNITARIO.DisplayFormat := ',0.0000';
         QueryProdutosPRD_VLR_SUBTOTAL.DisplayFormat := ',0.0000';
      end;
   end;

   // Ajusta as casa decimais para a quantidade
   case FEmpresaClass.Decimal_Qtde of
      2 : QueryProdutosPRD_QTDE.DisplayFormat := ',0.00';
      3 : QueryProdutosPRD_QTDE.DisplayFormat := ',0.000';
      4 : QueryProdutosPRD_QTDE.DisplayFormat := ',0.0000';
   end;

   eDataIni.Date := IncDay(Date, -30);
   eDataFim.Date := Date;

   // Carrega as ordens de serviços
   Query.ParamByName('ID_EMPRESA').AsInteger := FEmpresaClass.ID;
   Query.ParamByName('ADATA').AsDateTime     := eDataIni.Date;
   Query.ParamByName('FDATA').AsDateTime     := eDataFim.Date;
   Query.Open();

   // Carrega os produtos
   QueryProdutos.Open();
end;

procedure TFrOrdemServico.PngBitBtn1Click(Sender: TObject);
begin
   Query.Close;
   Query.ParamByName('ID_EMPRESA').AsInteger := FEmpresaClass.ID;
   Query.ParamByName('ADATA').AsDateTime     := eDataIni.Date;
   Query.ParamByName('FDATA').AsDateTime     := eDataFim.Date;
   Query.Open();
end;

procedure TFrOrdemServico.QueryAfterPost(DataSet: TDataSet);
begin
   DataSet.Refresh;
end;

procedure TFrOrdemServico.QueryBeforeDelete(DataSet: TDataSet);
begin
   if Application.MessageBox('Tem certeza que deseja excluir este registro?','TechCore-RTG',mb_IconQuestion or mb_YesNo) = mrNo then
      Abort;
end;

procedure TFrOrdemServico.QueryBeforeInsert(DataSet: TDataSet);
begin
   {Confere se foi definido o plano de contas}
   if not FEmpresaClass.PlnOS > 0 then
   begin
      Application.MessageBox('Antes de continuar, é necessário definir um plano de contas padrão.','TechCore-RTG', mb_IconStop or mb_ok);
      Abort;
   end;
end;

procedure TFrOrdemServico.QueryNewRecord(DataSet: TDataSet);
begin
   // Faz o vinculo do registro com a empresa ativa
   DataSet.FieldByName('ID_EMPRESA').AsInteger    := FEmpresaClass.ID;
   DataSet.FieldByName('id_pln_contas').AsInteger := FEmpresaClass.PlnOS;
end;

procedure TFrOrdemServico.QueryOS_CLI_CNPJGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
   if Length(Sender.AsString) <= 11 then
      Text := FormatMaskText('!999\.999\.999\-99;0;_',Sender.AsString)
   else
   if Length(Sender.AsString) > 11 then
      Text := FormatMaskText('!99.999\.999\/9999\-99;0;_',Sender.AsString);
end;

procedure TFrOrdemServico.QueryOS_ENTREGUEGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
   if DisplayText then
   begin
      case Sender.AsInteger of
         1 : Text := 'Sim';
         2 : Text := 'Não';
      end;
   end
   else
      Text := EmptyStr;
end;

procedure TFrOrdemServico.QueryOS_FATURADAGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
   if DisplayText then
   begin
      case Sender.AsInteger of
         1 : Text := 'Sim';
         2 : Text := 'Não';
      end;
   end
   else
      Text := EmptyStr;
end;

procedure TFrOrdemServico.QueryOS_STATUSGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
   if DisplayText then
   begin
      case Sender.AsInteger of
          1: Text := 'Orçamento';
          2: Text := 'Em Execução';
          3: Text := 'Finalizada';
         99: Text := 'Cancelada';
         else
            Text := EmptyStr;
      end;
   end
   else
      Text := EmptyStr;
end;

procedure TFrOrdemServico.QueryProdutosAfterDelete(DataSet: TDataSet);
begin
   Query.Refresh;
end;

procedure TFrOrdemServico.QueryProdutosAfterPost(DataSet: TDataSet);
begin
   // Atualiza o cursor das notas fiscais
   Query.Refresh;

   // Atualiza o cursor dos produtos
   DataSet.Refresh;
end;

procedure TFrOrdemServico.QueryProdutosBeforeDelete(DataSet: TDataSet);
begin
   if Application.MessageBox('Tem certeza que deseja excluir este Produto?','TechCore-RTG',mb_IconQuestion or mb_YesNo) = mrNo then
      Abort;
end;

procedure TFrOrdemServico.QueryProdutosNewRecord(DataSet: TDataSet);
begin
   DataSet.FieldByName('ID_C000070').AsInteger := QueryID.AsInteger;
end;

procedure TFrOrdemServico.QueryProdutosPRD_QTDE_ITENSGetText(Sender: TField; var Text: string; DisplayText: Boolean);
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
