unit uOrdemServicoGerenciar;

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
  RzCmboBx, RzLabel, RzDBLbl;

type
  TFrOrdemServicoGerenciar = class(TForm)
    RzToolbar1: TRzToolbar;
    btnNew: TRzToolButton;
    btnEdit: TRzToolButton;
    btnOK: TRzToolButton;
    btnExit: TRzToolButton;
    RzSpacer1: TRzSpacer;
    RzSpacer2: TRzSpacer;
    eGrid: TJvDBGrid;
    Panel2: TPanel;
    ActionManager1: TActionManager;
    Query: TFDQuery;
    dsQuery: TJvDataSource;
    QueryProdutos: TFDQuery;
    dsItens: TJvDataSource;
    Pop01: TPopupMenu;
    IncluirProdutos1: TMenuItem;
    AlterarProdutoSelecionado1: TMenuItem;
    actPrint: TAction;
    actAprovar: TAction;
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
    Image2: TImage;
    RzPanel1: TRzPanel;
    RzSpacer3: TRzSpacer;
    RzSpacer5: TRzSpacer;
    Panel4: TPanel;
    Label5: TLabel;
    JvDBCalcEdit4: TJvDBCalcEdit;
    Panel3: TPanel;
    Label10: TLabel;
    JvDBCalcEdit2: TJvDBCalcEdit;
    Panel5: TPanel;
    Label7: TLabel;
    actCancelarPedido: TAction;
    btnNew2: TRzToolButton;
    Action1: TAction;
    RzToolButton1: TRzToolButton;
    RzSpacer7: TRzSpacer;
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
    QueryOS_PREV_ENTREGA: TDateField;
    QueryOS_ENTREGUE: TIntegerField;
    QueryOS_DATA_ENTREGA: TSQLTimeStampField;
    QueryOS_STATUS: TIntegerField;
    QueryOS_CLI_RAZAO_SOCIAL: TStringField;
    QueryOS_CLI_CNPJ: TStringField;
    QueryOS_CLI_UF: TStringField;
    QueryOS_NOME_TECNICO: TStringField;
    QueryOS_NOME_ATENDENTE: TStringField;
    QueryOS_REPRESENTANTE: TStringField;
    QueryProdutosID: TIntegerField;
    QueryProdutosID_C000070: TIntegerField;
    QueryProdutosID_PRODUTO: TIntegerField;
    QueryProdutosPRD_CODIGO_BARRAS: TStringField;
    QueryProdutosPRD_DESCRICAO: TStringField;
    QueryProdutosPRD_UNIDADE: TStringField;
    QueryProdutosPRD_NCM: TStringField;
    QueryProdutosPRD_NCM_EX: TStringField;
    QueryProdutosPRD_CEST: TStringField;
    QueryProdutosPRD_QTDE: TBCDField;
    QueryProdutosPRD_VLR_UNITARIO: TBCDField;
    QueryProdutosPRD_VLR_SUBTOTAL: TBCDField;
    QueryProdutosPRD_ORIGEM: TIntegerField;
    QueryProdutosPRD_INFOS: TStringField;
    QueryProdutosPRD_QTDE_ITENS: TAggregateField;
    RzDBLabel1: TRzDBLabel;
    JvDBGrid2: TJvDBGrid;
    actPrintAD: TAction;
    actPrintPR: TAction;
    Action2: TAction;
    QueryProdutosPRD_CODIGO: TStringField;
    QueryProdutosPRD_INCLUSAO: TIntegerField;
    QueryProdutosPRD_CST: TStringField;
    QueryProdutosPRD_CFOP: TIntegerField;
    QueryProdutosPRD_VLR_TOTAL: TFMTBCDField;
    aQuery: TFDQuery;
    dsQueryFatContas: TDataSource;
    Query110: TFDQuery;
    Query110ID: TIntegerField;
    Query110ID_EMPRESA: TIntegerField;
    Query110ID_CLIENTE: TIntegerField;
    Query110ID_ORIGEM: TIntegerField;
    Query110ID_CONTAS: TIntegerField;
    Query110REC_DATA_REGISTRO: TSQLTimeStampField;
    Query110REC_STATUS: TIntegerField;
    Query110REC_ORIGEM: TIntegerField;
    Query110REC_CLIENTE: TStringField;
    Query110REC_DOCUMENTO: TStringField;
    Query111: TFDQuery;
    Query111ID: TIntegerField;
    Query111ID_C000110: TIntegerField;
    Query111REC_PARCELA: TIntegerField;
    Query111REC_DOCUMENTO: TStringField;
    Query111REC_VENCIMENTO: TDateField;
    Query111REC_ANOTACOES: TStringField;
    Query111REC_STATUS: TIntegerField;
    SchemaAD: TFDSchemaAdapter;
    QueryBaixar: TFDQuery;
    QueryEstq: TFDQuery;
    SchemaBaixar: TFDSchemaAdapter;
    Query110REC_JUROS_CAREN: TIntegerField;
    Query110REC_MULTA_CAREN: TIntegerField;
    QueryID_PLN_CONTAS: TIntegerField;
    Query110ID_PLN_CTAS: TIntegerField;
    QueryOS_VLR_FRETE: TFMTBCDField;
    QueryOS_VLR_SEGURO: TFMTBCDField;
    QueryOS_VLR_OUTROS: TFMTBCDField;
    QueryOS_VLR_DESCONTOS: TFMTBCDField;
    QueryOS_VLR_PRODUTOS: TBCDField;
    QueryOS_VLR_TOTAL: TBCDField;
    Query110REC_VLR_CONTA: TFMTBCDField;
    Query110REC_JUROS: TFMTBCDField;
    Query110REC_MULTA: TFMTBCDField;
    Query111REC_VALOR: TFMTBCDField;
    Query111REC_VLR_ATUALIZADO: TFMTBCDField;
    Query111REC_VLR_RECEBIDO: TFMTBCDField;
    Query111REC_VLR_SALDO: TFMTBCDField;
    procedure actSairExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure eCondicaoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure eGridDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure PngBitBtn1Click(Sender: TObject);
    procedure QueryAfterPost(DataSet: TDataSet);
    procedure actAprovarUpdate(Sender: TObject);
    procedure eSearchTextChange(Sender: TObject);
    procedure eDataIniEnter(Sender: TObject);
    procedure eDataIniExit(Sender: TObject);
    procedure QueryAfterOpen(DataSet: TDataSet);
    procedure actBaixarExecute(Sender: TObject);
    procedure actGerarNFeUpdate(Sender: TObject);
    procedure actCancelarPedidoExecute(Sender: TObject);
    procedure actCancelarPedidoUpdate(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure Action1Update(Sender: TObject);
    procedure QueryOS_CLI_CNPJGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure QueryProdutosPRD_QTDE_ITENSGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure actBaixarUpdate(Sender: TObject);
    procedure actPrintADExecute(Sender: TObject);
    procedure actPrintPRExecute(Sender: TObject);
    procedure actAprovarExecute(Sender: TObject);
    procedure Action2Execute(Sender: TObject);
    procedure actPrintUpdate(Sender: TObject);
    procedure QueryOS_FATURADAGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure QueryOS_ENTREGUEGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure QueryOS_STATUSGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure SchemaADAfterApplyUpdate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrOrdemServicoGerenciar: TFrOrdemServicoGerenciar;

implementation

uses
   Classe.Empresa, uProdutos, uOrdemServico, uOrdemServicoStatus,
  uOrdemServicoPrint_A, uModuloRet, Classe.Financeiro,
  Classe.OrdensServicos;

{$R *.dfm}

procedure TFrOrdemServicoGerenciar.actAprovarExecute(Sender: TObject);
begin
   // Checa se existem faturamento para a ordem de serviço
   aQuery.Close;
   aQuery.SQL.Clear;
   aQuery.SQL.Add('select 1 from C000072 where id_C000070 = :id_C000070');
   aQuery.ParamByName('id_C000070').AsInteger := QueryID.AsInteger;
   aQuery.Open();

   if aQuery.IsEmpty then
   begin
      Application.MessageBox('Não existem condições de pagamentos definidas para esta ordem de serviço.','TecChore-RTG',mb_IconWarning or mb_ok);
      aQuery.Close;
      Abort;
   end;

   // Colcoa o cursor no modo de alteração
   Query.Edit;

   try
      FrOrdemServicoStatus := TFrOrdemServicoStatus.Create(self);
      if FrOrdemServicoStatus.ShowModal = mrOk then
         Query.Post
      else
         Query.Cancel;
   finally
      FreeAndNil( FrOrdemServicoStatus );
   end;
end;

procedure TFrOrdemServicoGerenciar.actAprovarUpdate(Sender: TObject);
begin
   {
       1 - Orçamento 
       2 - Em execução 
       3 - Finalizada 
       4 - Entregue
      99 - Cancelada
   }
   TAction(Sender).Enabled := ( QueryOS_STATUS.AsInteger in [1,2,3] )
      and (not (Query.IsEmpty))
      and (QueryOS_FATURADA.AsInteger = 2)
      and (QueryOS_ENTREGUE.AsInteger = 2);
end;

procedure TFrOrdemServicoGerenciar.actBaixarExecute(Sender: TObject);
begin
   {Efetua a baixa do pedido no sistema}
   if Application.MessageBox('Tem certeza que deseja efetuar a baixa da Ordem de Serviço, após este processo não será possível efetuar alterações neste pedido.','TechCore-RTG',mb_IconQuestion or mb_YesNo) = mrNo then
      Abort;

   {Coloca o cursor em modo de edição}
   try
      Query.Edit;
      Query.FieldByName('OS_ENTREGUE').AsInteger := 1; // Entregue
      Query.Post;

      Application.MessageBox('Ordem de Serviço baixada com sucesso.','TechCore-RTG',mb_IconInformation or mb_Ok);

   except
      on e:exception do
         Application.MessageBox(pChar('Erro, não foi possível baixar o pedido.' + #13#10 + 'Erro: ' + e.Message),'TechCore-RTG',mb_IconStop or mb_Ok);
   end;
end;

procedure TFrOrdemServicoGerenciar.actBaixarUpdate(Sender: TObject);
begin
   {
       1 - Orçamento 
       2 - Em execução 
       3 - Finalizada 
       4 - Entregue
      99 - Cancelada
   }

   TAction(Sender).Enabled := (QueryOS_STATUS.AsInteger = 3) and (QueryOS_ENTREGUE.AsInteger = 2) and (not(Query.IsEmpty));
end;

procedure TFrOrdemServicoGerenciar.actCancelarPedidoExecute(Sender: TObject);
var
   pQuery : TFDQuery;
begin

   try
      {Checa se existem pagamentos efetuados a ordem de serviço}
      pQuery            := TFDQuery.Create(self);
      pQuery.Connection := FrModuloRet.DBConexao;

      pQuery.SQL.Add('Select');
      pQuery.SQL.Add('  1');
      pQuery.SQL.Add('from');
      pQuery.SQL.Add('  C000112 as T1');
      pQuery.SQL.Add('Join');
      pQuery.SQL.Add('  C000110 as T2');
      pQuery.SQL.Add('on');
      pQuery.SQL.Add('  T1.ID_C000110 = T2.ID');
      pQuery.SQL.Add('Where');
      pQuery.SQL.Add('  T2.ID_ORIGEM  = :ID_ORIGEM');
      pQuery.SQL.Add('and');
      pQuery.SQL.Add('  T2.REC_ORIGEM = 4');
      pQuery.ParamByName('id_origem').AsInteger := QueryID.AsInteger;
      pQuery.Open();

      if not pQuery.IsEmpty then
      begin
         Application.MessageBox('Não é possível excluir, existem pagamentos efetuados para esta ordem de serviço.','TechCore-RTG', mb_IconStop or mb_ok);
         Abort;
      end;

   finally
      FreeAndNil( pQuery );
   end;


   if Application.MessageBox('Tem certeza que deseja cancelar esta Ordem de Serviço?','TechCore-RTG',mb_IconQuestion or mb_YesNo) = mrNo then
      Abort;

   {Cancela o pedido}
   try
      Query.Edit;
      Query.FieldByName('OS_STATUS').AsInteger   := 99;  // Cancelada
      Query.FieldByName('OS_ENTREGUE').AsInteger := 2;   // Entrega pendente
      Query.FieldByName('OS_FATURADA').AsInteger := 2;   // Não faturada
      Query.Post;

      Application.MessageBox('Ordem de Serviço cancelada com sucesso','TechCore-RTG',mb_IconInformation or mb_Ok);
   except
      on e:exception do
         Application.MessageBox(pChar('Erro ao cancelar a Ordem de Serviço.' + #13#10 + e.Message),'TechCore-RTG',mb_IconStop or mb_Ok);
   end;

end;

procedure TFrOrdemServicoGerenciar.actCancelarPedidoUpdate(Sender: TObject);
begin
   {
       1 - Orçamento 
       2 - Em execução 
       3 - Finalizada 
       4 - Entregue
      99 - Cancelada
   }
   TAction(Sender).Enabled := ( QueryOS_STATUS.AsInteger in [2,3] ) and (not(Query.IsEmpty));
end;

procedure TFrOrdemServicoGerenciar.actGerarNFeUpdate(Sender: TObject);
begin
   {
       1 - Orçamento 
       2 - Em execução 
       3 - Finalizada 
       4 - Entregue
      99 - Cancelada
   }

   {Define os padrões para se gerar a NFe}
   if ( Query.IsEmpty ) or
      ( QueryProdutos.IsEmpty ) or
      ( Query.FieldByName('OS_STATUS').AsInteger   <> 3 )
   then
      TAction(Sender).Enabled := false
   else
      TAction(Sender).Enabled := true;
end;

procedure TFrOrdemServicoGerenciar.Action1Execute(Sender: TObject);
begin
   if Application.MessageBox('Tem certeza que deseja faturar esta ordem de serviço?','TechCore-RTG',mb_IconQuestion or mb_YesNo) = mrNo then
      Abort;

   try
      try
         // 1º Prepara a query de contas
         Query110.Open();
         Query110.Insert;
         Query110.FieldByName('ID_EMPRESA').AsInteger   := FEmpresaClass.ID;
         Query110.FieldByName('ID_CLIENTE').AsInteger   := QueryID_CLIENTE.AsInteger;
         Query110.FieldByName('ID_ORIGEM').AsInteger    := QueryID.AsInteger;
         Query110.FieldByName('ID_PLN_CTAS').AsInteger  := QueryID_PLN_CONTAS.AsInteger;
         Query110.FieldByName('REC_ORIGEM').AsInteger   := 4;
         Query110.FieldByName('REC_VLR_CONTA').AsFloat  := QueryOS_VLR_TOTAL.AsFloat;
         Query110.FieldByName('REC_DOCUMENTO').AsString := Format('%.6d', [QueryOS_NUMERO.AsInteger]);

         // Multa e Juros pre definidos
         Query110.FieldByName('rec_juros').AsFloat         := ClassFinanceiro.JurosTaxa;
         Query110.FieldByName('rec_juros_caren').AsInteger := ClassFinanceiro.JurosCarencia;
         Query110.FieldByName('rec_multa').AsFloat         := ClassFinanceiro.MultaTaxa;
         Query110.FieldByName('rec_multa_caren').AsFloat   := ClassFinanceiro.MultaCarencia;
         Query110.Post;

         aQuery.Close;
         aQuery.SQL.Clear;
         aQuery.SQL.Add('SELECT * FROM C000072 WHERE id_c000070 = :ID ORDER BY PAG_VENCTO ASC');
         aQuery.ParamByName('ID').AsInteger := QueryID.AsInteger;
         aQuery.Open();
         aQuery.First;

         Query111.Open();

         repeat

            with Query111 do begin
               Append;
               FieldByName('REC_PARCELA').AsInteger     := aQuery.RecNo;
               FieldByName('REC_VALOR').AsFloat         := aQuery.FieldByName('PAG_VLR_TOTAL').AsFloat;
               FieldByName('REC_DOCUMENTO').AsString    := QueryOS_NUMERO.AsString;
               FieldByName('REC_VENCIMENTO').AsDateTime := aQuery.FieldByName('PAG_VENCTO').AsDateTime;
               FieldByName('REC_ANOTACOES').AsString    := 'Ordem de Serviço N.º: ' + Format('%.6d', [QueryOS_NUMERO.AsInteger]);
               Post;
            end;

            aQuery.Next;
         until (aQuery.Eof);

         SchemaAD.ApplyUpdates(0);
      except
         on e:exception do
            Application.MessageBox(pchar('Erro ao faturar a Ordem de Serviço:' + e.Message),'Techcore-RTG',mb_IconError or mb_ok);
      end;

   finally
      Query110.Close;
      Query111.Close;
      aQuery.Close;
   end;
end;

procedure TFrOrdemServicoGerenciar.Action1Update(Sender: TObject);
begin
   {
       1 - Orçamento 
       2 - Em execução 
       3 - Finalizada 
       4 - Entregue
      99 - Cancelada
   }

   TAction(Sender).Enabled := (QueryOS_FATURADA.AsInteger = 2) and ( QueryOS_ENTREGUE.AsInteger = 1 ) and (QueryOS_STATUS.AsInteger = 3);
end;

procedure TFrOrdemServicoGerenciar.Action2Execute(Sender: TObject);
begin
   // Colcoa o cursor no modo de alteração
   Query.Edit;

   try
      FrOrdemServicoStatus := TFrOrdemServicoStatus.Create(self);
      if FrOrdemServicoStatus.ShowModal = mrOk then
         Query.Post
      else
         Query.Cancel;
   finally
      FreeAndNil( FrOrdemServicoStatus );
   end;
end;

procedure TFrOrdemServicoGerenciar.actPrintADExecute(Sender: TObject);
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

procedure TFrOrdemServicoGerenciar.actPrintPRExecute(Sender: TObject);
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

procedure TFrOrdemServicoGerenciar.actPrintUpdate(Sender: TObject);
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

procedure TFrOrdemServicoGerenciar.actSairExecute(Sender: TObject);
begin
   Self.Close;
end;

procedure TFrOrdemServicoGerenciar.eCondicaoClick(Sender: TObject);
var
   StrSql : String;
begin
   case eCondicao.ItemIndex of
      0 : StrSql := 'SELECT * FROM C000070 WHERE ID_EMPRESA = :ID_EMP AND CAST(OS_DATA_REG AS DATE) BETWEEN :ADATA AND :FDATA AND OS_STATUS =  1 ORDER BY ID DESC';
      1 : StrSql := 'SELECT * FROM C000070 WHERE ID_EMPRESA = :ID_EMP AND CAST(OS_DATA_REG AS DATE) BETWEEN :ADATA AND :FDATA AND OS_STATUS =  2 ORDER BY ID DESC';
      2 : StrSql := 'SELECT * FROM C000070 WHERE ID_EMPRESA = :ID_EMP AND CAST(OS_DATA_REG AS DATE) BETWEEN :ADATA AND :FDATA AND OS_STATUS =  3 AND OS_ENTREGUE = 2 ORDER BY ID DESC';
      3 : StrSql := 'SELECT * FROM C000070 WHERE ID_EMPRESA = :ID_EMP AND CAST(OS_DATA_REG AS DATE) BETWEEN :ADATA AND :FDATA AND OS_ENTREGUE =  1 ORDER BY ID DESC';
      4 : StrSql := 'SELECT * FROM C000070 WHERE ID_EMPRESA = :ID_EMP AND CAST(OS_DATA_REG AS DATE) BETWEEN :ADATA AND :FDATA AND OS_STATUS = 99 ORDER BY ID DESC';
      5 : StrSql := 'SELECT * FROM C000070 WHERE ID_EMPRESA = :ID_EMP AND CAST(OS_DATA_REG AS DATE) BETWEEN :ADATA AND :FDATA ORDER BY ID DESC';
   end;

   Query.Close;
   Query.SQL.Clear;
   Query.SQL.Add(StrSql);
   Query.ParamByName('ID_EMP').AsInteger := FEmpresaClass.ID;
   Query.ParamByName('ADATA').AsDateTime := eDataIni.Date;
   Query.ParamByName('FDATA').AsDateTime := eDataFim.Date;
   Query.Open();

end;

procedure TFrOrdemServicoGerenciar.eDataIniEnter(Sender: TObject);
begin
   TEdit(Sender).Brush.Color := $00CFCFCF;
end;

procedure TFrOrdemServicoGerenciar.eDataIniExit(Sender: TObject);
begin
   TEdit(Sender).Brush.Color := clWindow;
end;

procedure TFrOrdemServicoGerenciar.eGridDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
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
      end
      else
      begin
         (Sender as TDBGrid).Canvas.Font.Color  := clBlack;
         (Sender as TDBGrid).Canvas.Brush.Color := clSilver;
      end;

   end;

   if Column.Title.Caption = 'Fat.' then
   begin

      {Em caso de documento já faturado, pinta a linha inteira}
      if Query.FieldByName('OS_FATURADA').AsInteger = 1 then
      begin
         (Sender as TDBGrid).Canvas.Font.Color  := clWhite;
         (Sender as TDBGrid).Canvas.Brush.Color := clGreen;
      end
      else
      begin
         (Sender as TDBGrid).Canvas.Font.Color  := clBlack;
         (Sender as TDBGrid).Canvas.Brush.Color := clSilver;
      end;

   end;

   {Pinta o Grid}
   (Sender as TDBGrid).Canvas.FillRect(Rect);
   (Sender as TDBGrid).DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TFrOrdemServicoGerenciar.eSearchTextChange(Sender: TObject);
begin
   case eTipoFiltro.ItemIndex of
      0 : begin
         Query.Filtered := false;
         Query.Filter   := 'OS_NUMERO LIKE ' + QuotedStr('%' + eSearchText.Text + '%');
         Query.Filtered := true;
      end;

      1 : begin
         Query.Filtered := false;
         Query.Filter   := 'OS_CLI_RAZAO_SOCIAL LIKE ' + QuotedStr('%' + eSearchText.Text + '%');
         Query.Filtered := true;
      end;

      2 : begin
         Query.Filtered := false;
         Query.Filter   := 'OS_CLI_CNPJ LIKE ' + QuotedStr('%' + eSearchText.Text + '%');
         Query.Filtered := true;
      end;
   end;
end;

procedure TFrOrdemServicoGerenciar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   FreeAndNil( FrOrdemServicoGerenciar );
end;

procedure TFrOrdemServicoGerenciar.FormCreate(Sender: TObject);
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

end;

procedure TFrOrdemServicoGerenciar.PngBitBtn1Click(Sender: TObject);
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
   Query.Close;
   Query.ParamByName('ADATA').AsDateTime := eDataIni.Date;
   Query.ParamByName('FDATA').AsDateTime := eDataFim.Date;
   Query.Open();
end;

procedure TFrOrdemServicoGerenciar.QueryAfterOpen(DataSet: TDataSet);
begin
   // Carrega os produtos
   QueryProdutos.Open();
end;

procedure TFrOrdemServicoGerenciar.QueryAfterPost(DataSet: TDataSet);
begin
   Query.Refresh;

   {Se o formulário de pedidos estiver aberto, atualiza o cursor dos pedidos}
   if Assigned( FrOrdemServico ) then
      FrOrdemServico.Query.Refresh;
end;

procedure TFrOrdemServicoGerenciar.QueryOS_CLI_CNPJGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
   if Length(Sender.AsString) <= 11 then
      Text := FormatMaskText('!999\.999\.999\-99;0;_',Sender.AsString)
   else
   if Length(Sender.AsString) > 11 then
      Text := FormatMaskText('!99.999\.999\/9999\-99;0;_',Sender.AsString);
end;

procedure TFrOrdemServicoGerenciar.QueryOS_ENTREGUEGetText(Sender: TField; var Text: string; DisplayText: Boolean);
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

procedure TFrOrdemServicoGerenciar.QueryOS_FATURADAGetText(Sender: TField; var Text: string; DisplayText: Boolean);
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

procedure TFrOrdemServicoGerenciar.QueryOS_STATUSGetText(Sender: TField; var Text: string; DisplayText: Boolean);
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

procedure TFrOrdemServicoGerenciar.QueryProdutosPRD_QTDE_ITENSGetText(Sender: TField; var Text: string; DisplayText: Boolean);
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

procedure TFrOrdemServicoGerenciar.SchemaADAfterApplyUpdate(Sender: TObject);
begin
   // Limpa a cache
   SchemaAD.CommitUpdates;

   // Atualiza o status do faturamento
   Query.Edit;
   Query.FieldByName('OS_FATURADA').AsInteger := 1; // Faturado
   Query.Post;

   // Exibe a msg de confirmação
   Application.MessageBox('Ordem de Serviço faturada com sucesso!','TechCore-RTG',mb_IconInformation or mb_ok);
end;

end.
