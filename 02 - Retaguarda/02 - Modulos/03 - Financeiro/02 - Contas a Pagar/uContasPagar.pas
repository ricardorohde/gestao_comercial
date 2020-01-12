unit uContasPagar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, System.ImageList, Vcl.ImgList, System.Actions, ACBrUtil, DateUtils,
  Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan,
  Vcl.ComCtrls, Vcl.ToolWin, Vcl.XPStyleActnCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, JvExDBGrids, JvDBGrid, RzLabel, RzDBLbl, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, JvDataSource, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  RzEdit, RzBtnEdt, Vcl.Mask, JvExMask, JvToolEdit, RzCmboBx, RzPanel,
  Vcl.Menus, JclPeImage, PngSpeedButton, PngBitBtn, Vcl.Buttons, RzButton;

type
  TFrContasPagar = class(TForm)
    ActionManager1: TActionManager;
    Action1: TAction;
    Action2: TAction;
    Action3: TAction;
    Action4: TAction;
    pnMeio: TPanel;
    JvDBGrid1: TJvDBGrid;
    pnBaixo: TPanel;
    Panel1: TPanel;
    Panel7: TPanel;
    Label3: TLabel;
    RzDBLabel2: TRzDBLabel;
    Panel5: TPanel;
    Label2: TLabel;
    RzDBLabel3: TRzDBLabel;
    Panel3: TPanel;
    Label4: TLabel;
    RzDBLabel1: TRzDBLabel;
    Panel8: TPanel;
    JvDBGrid2: TJvDBGrid;
    Action5: TAction;
    Action6: TAction;
    QueryContas: TFDQuery;
    dsDados: TJvDataSource;
    QueryContasPAG_ORIGEM: TIntegerField;
    Panel4: TPanel;
    QueryContasTOTAL_CONTAS: TAggregateField;
    QueryContasTOTAL_RECEBIDO: TAggregateField;
    QueryContasTOTAL_RECEBER: TAggregateField;
    QueryPagtos: TFDQuery;
    dsPagtos: TJvDataSource;
    Action7: TAction;
    RzPanel2: TRzPanel;
    Label8: TLabel;
    Label9: TLabel;
    Bevel3: TBevel;
    Image2: TImage;
    Icones24x24: TImageList;
    eDataFim: TJvDateEdit;
    Label5: TLabel;
    eDataIni: TJvDateEdit;
    eTipo: TRzComboBox;
    eFornecedor: TRzButtonEdit;
    Label1: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    PngSpeedButton1: TPngSpeedButton;
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
    RzSpacer3: TRzSpacer;
    QueryContasPAG_DIAS_VENCIDOS: TLargeintField;
    QueryContasPAG_STATUS_TEXTO: TStringField;
    QueryContasID_C10: TLargeintField;
    QueryContasID_C11: TLargeintField;
    QueryContasID_C000210: TLargeintField;
    QueryContasPAG_PARCELA: TIntegerField;
    QueryContasPAG_VENCIMENTO: TDateField;
    QueryContasPAG_DATA_INCLUSAO: TDateField;
    QueryContasPAG_DOCUMENTO: TStringField;
    QueryContasPAG_ANOTACOES: TStringField;
    QueryContasPAG_STATUS: TIntegerField;
    QueryContasPAG_FORNECEDOR: TStringField;
    QueryPagtosID: TLargeintField;
    QueryPagtosID_C000210: TLargeintField;
    QueryPagtosID_C000211: TLargeintField;
    QueryPagtosID_FORMA_PAGTO: TIntegerField;
    QueryPagtosPAG_DATA_PAGTO: TDateField;
    QueryPagtosPAG_ANOTACOES: TStringField;
    QueryPagtosPAG_FORMA_PAGTO: TStringField;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel4: TBevel;
    Bevel5: TBevel;
    QueryPagtosID_PLN_CTAS: TIntegerField;
    QueryPagtosPAG_PLN_CTAS_DESC: TStringField;
    actJurosMulta: TAction;
    RzToolButton1: TRzToolButton;
    RzSpacer6: TRzSpacer;
    QueryContasPAG_JUROS_CAREN: TIntegerField;
    QueryContasPAG_MULTA_CAREN: TIntegerField;
    QueryPagtosID_CONTA: TIntegerField;
    QueryContasID_PLANO_CONTAS: TIntegerField;
    QueryContasPAG_VALOR: TFMTBCDField;
    QueryContasPAG_VLR_ATUALIZADO: TFMTBCDField;
    QueryContasPAG_VLR_RECEBIDO: TFMTBCDField;
    QueryContasPAG_VLR_SALDO: TFMTBCDField;
    QueryContasPAG_JUROS: TFMTBCDField;
    QueryContasPAG_MULTA: TFMTBCDField;
    QueryPagtosPAG_SALDO: TFMTBCDField;
    QueryPagtosPAG_TAX_JUROS: TFMTBCDField;
    QueryPagtosPAG_VLR_JUROS: TFMTBCDField;
    QueryPagtosPAG_VLR_MULTA: TFMTBCDField;
    QueryPagtosPAG_VLR_ACRESCIMOS: TFMTBCDField;
    QueryPagtosPAG_VLR_DESCONTOS: TFMTBCDField;
    QueryPagtosPAG_VLR_CARTORIOS: TFMTBCDField;
    QueryPagtosPAG_VLR_RECEBIDO: TFMTBCDField;
    QueryPagtosPAG_VLR_RECEBER: TFMTBCDField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure Action2Execute(Sender: TObject);
    procedure Action3Execute(Sender: TObject);
    procedure Action6Execute(Sender: TObject);
    procedure eFornecedorButtonClick(Sender: TObject);
    procedure eFornecedorAltBtnClick(Sender: TObject);
    procedure QueryContasPAG_ORIGEMGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure QueryPagtosAfterPost(DataSet: TDataSet);
    procedure QueryPagtosAfterDelete(DataSet: TDataSet);
    procedure QueryPagtosBeforeDelete(DataSet: TDataSet);
    procedure Action4Execute(Sender: TObject);
    procedure JvDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure PngSpeedButton1Click(Sender: TObject);
    procedure Action7Execute(Sender: TObject);
    procedure Action7Update(Sender: TObject);
    procedure Action4Update(Sender: TObject);
    procedure QueryPagtosNewRecord(DataSet: TDataSet);
    procedure Action3Update(Sender: TObject);
    procedure actJurosMultaExecute(Sender: TObject);
    procedure QueryContasBeforeInsert(DataSet: TDataSet);
  private
    ID_Fornecedor : Integer;
    SqlPadrao     : String;
  public
    { Public declarations }
  end;

var
  FrContasPagar: TFrContasPagar;

implementation

uses
   Classe.Empresa, uContasPagar_Lancar, uListaFornecedores, uContasPagar_Pagar, uContas_Pagar_Alterar,
  uPrincipal, uModuloRet, uContasPagarExcluir, uContasPagarJuros;

{$R *.dfm}

procedure TFrContasPagar.Action1Execute(Sender: TObject);
begin
   // Carrega o formulário para lançar as contas a pagar
   FrContasPagar_Lancar := TFrContasPagar_Lancar.Create(Self);
   try
      if FrContasPagar_Lancar.ShowModal = mrOk then
         QueryContas.Refresh;
   finally
      FreeAndNil( FrContasPagar_Lancar );
   end;
end;

procedure TFrContasPagar.Action2Execute(Sender: TObject);
begin
   try
      FrContasPagarExcluir := TFrContasPagarExcluir.Create(self);
      if FrContasPagarExcluir.ShowModal = mrOk then
         QueryContas.Refresh;
   finally
      FreeAndNil( FrContasPagarExcluir );
   end;
end;

procedure TFrContasPagar.Action3Execute(Sender: TObject);
begin
   // Checa se já existem pagamentos para parcela
   if not ( QueryPagtos.IsEmpty ) then
   begin
      Application.MessageBox('Não é possível alterar, existem pagamentos efetuados para esta parcela.','TechCore-RTG',mb_IconWarning or mb_Ok);
      Abort;
   end;

   QueryContas.Edit;

   {Carrega o formulário para alterar a parcela}
   try
      FrContas_Pagar_Alterar                := TFrContas_Pagar_Alterar.Create(self);
      FrContas_Pagar_Alterar.ConectarTabela := true;
      FrContas_Pagar_Alterar.ID_Registro    := QueryContasID_C11.AsInteger;

      if FrContas_Pagar_Alterar.ShowModal = mrOk then
      begin
         FrContas_Pagar_Alterar.Query.Post;
         QueryContas.Refresh;
      end;

   finally
      FreeAndNil( FrContas_Pagar_Alterar );
   end;
end;

procedure TFrContasPagar.Action3Update(Sender: TObject);
begin
   (Sender as TAction).Enabled := not (QueryContas.IsEmpty);
end;

procedure TFrContasPagar.Action4Execute(Sender: TObject);
begin
   // Checa se o saldo a receber está zerado
   if QueryContas.FieldByName('PAG_VLR_SALDO').AsFloat <= 0 then
   begin
      Application.MessageBox('Não existe saldo a pagar para esta parcela.','TechCore-RTG',mb_IconWarning or mb_ok);
      Abort;
   end;

   // Coloca o cursor das parcelas em edição
   QueryPagtos.Insert;

   // Cria o formulário de recebimento
   try
      FrContasPagar_Pagar              := TFrContasPagar_Pagar.Create(self);
      FrContasPagar_Pagar.ValorReceber := QueryContas.FieldByName('PAG_VLR_SALDO').AsFloat;

      if FrContasPagar_Pagar.ShowModal = mrOk then
         QueryPagtos.Post
      else
         QueryPagtos.Cancel;
   finally
      FreeAndNil( FrContasPagar_Pagar );
   end;
end;

procedure TFrContasPagar.Action4Update(Sender: TObject);
begin
   TAction(Sender).Enabled := not(QueryContas.IsEmpty);
end;

procedure TFrContasPagar.Action6Execute(Sender: TObject);
begin
   Self.Close;
end;

procedure TFrContasPagar.Action7Execute(Sender: TObject);
begin
   QueryPagtos.Delete;
end;

procedure TFrContasPagar.Action7Update(Sender: TObject);
begin
   TAction(Sender).Enabled := not(QueryPagtos.IsEmpty);
end;

procedure TFrContasPagar.actJurosMultaExecute(Sender: TObject);
begin
   try
      FrContasPagarJuros := TFrContasPagarJuros.Create(self);
      if FrContasPagarJuros.ShowModal = mrOk then
         QueryContas.Refresh
   finally
      FreeAndNil( FrContasPagarJuros );
   end;
end;

procedure TFrContasPagar.eFornecedorAltBtnClick(Sender: TObject);
begin
   eFornecedor.Clear;
end;

procedure TFrContasPagar.eFornecedorButtonClick(Sender: TObject);
begin
   FrListaFornecedores := TFrListaFornecedores.Create(self);
   try
      if FrListaFornecedores.ShowModal = mrOk then
      begin
         ID_Fornecedor    := FrListaFornecedores.tbDadosID.AsInteger;
         eFornecedor.Text := FrListaFornecedores.tbDadosFOR_RAZAO_SOCIAL.AsString;
      end;
   finally
      FreeAndNil( FrListaFornecedores );
   end;
end;

procedure TFrContasPagar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   FreeAndNil( FrContasPagar );
end;

procedure TFrContasPagar.FormCreate(Sender: TObject);
begin
   // Armazena o Script padrão da Query
   SqlPadrao := QueryContas.SQL.Text;

   // 1º Ajusta as datas antes de iniciar
   eDataIni.Date := Date;
   eDataFim.Date := IncDay(Date, 30);

   // 2º Carrega os registro
   QueryContas.SQL.Add('WHERE');
   QueryContas.SQL.Add('   T2.ID_EMPRESA = :ID_EMPRESA');
   QueryContas.SQL.Add('AND');
   QueryContas.SQL.Add('   T1.PAG_VENCIMENTO BETWEEN :IDATA AND :FDATA');
   QueryContas.SQL.Add('ORDER BY');
   QueryContas.SQL.Add('   T1.PAG_VENCIMENTO, T1.PAG_PARCELA ASC');
   QueryContas.ParamByName('ID_EMPRESA').AsInteger := FEmpresaClass.ID;
   QueryContas.ParamByName('IDATA').AsDateTime     := eDataIni.Date;
   QueryContas.ParamByName('FDATA').AsDateTime     := eDataFim.Date;
   QueryContas.Open();

   // 3º Carrega os pagamentos efetuados
   QueryPagtos.Open();

   JvDBGrid2.Columns[0].Width := 80;
end;

procedure TFrContasPagar.JvDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
   if QueryContas.IsEmpty then Exit;

   {Efetua a coloração de acordo o status}
   if not (gdSelected in State) then
   begin
      case QueryContas.FieldByName('pag_status').AsInteger of
         90 : (Sender as TDBGrid).Canvas.Font.Color := clBlack;
         91 : (Sender as TDBGrid).Canvas.Font.Color := clGreen;
         92 : (Sender as TDBGrid).Canvas.Font.Color := clRed;
      end;
   end
   else
   begin
      (Sender as TDBGrid).Canvas.Font.Color  := clHighlightText; // Fonte
      (Sender as TDBGrid).Canvas.Brush.Color := clMaroon;        // Fundo
   end;

   {Pinta o Grid}
   (Sender as TDBGrid).Canvas.FillRect(Rect);
   (Sender as TDBGrid).DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TFrContasPagar.PngSpeedButton1Click(Sender: TObject);
var
   Str : String;
begin
   // Checa se foi informado o período da pesquisa
   if ( OnlyNumber( eDataIni.Text ) = '' ) or ( OnlyNumber( eDataFim.Text ) = '' ) then
   begin
      Application.MessageBox('Informe o período de pesquisa','TechCore-RTG',mb_IconStop or mb_Ok);
      eDataIni.SetFocus;
      Abort;
   end;

   // 1º Gera um script padrão para listar as contas
   Str := SqlPadrao + ' WHERE ID_EMPRESA = :ID_EMPRESA AND PAG_VENCIMENTO BETWEEN :IDATA AND :FDATA';

   // 2º Se informado o cliente
   If eFornecedor.Text <> '' then
      Str := Str + ' AND T2.ID_FORNECEDOR = :ID_FORNECEDOR';

   // 3º Termina com a ordenação do resultado
   Str := Str + ' ORDER BY T1.PAG_VENCIMENTO, T1.PAG_PARCELA ASC';

   // 3º Monta o script no cursor
   QueryContas.Close;
   QueryContas.SQL.Clear;
   QueryContas.SQL.Add(Str);
   QueryContas.ParamByName('ID_EMPRESA').AsInteger := FEmpresaClass.ID;
   QueryContas.ParamByName('IDATA').AsDateTime     := eDataIni.Date;
   QueryContas.ParamByName('FDATA').AsDateTime     := eDataFim.Date;

   // 4º Se informado o cliente
   if eFornecedor.Text <> '' then
      QueryContas.ParamByName('ID_FORNECEDOR').AsInteger := ID_Fornecedor;

   // 5º Executa o script de pesquisa
   QueryContas.Open();

   // Se for por status específico
   if eTipo.ItemIndex <> 0 then
   begin
      QueryContas.Filtered := false;
      QueryContas.Filter   := 'PAG_STATUS_TEXTO LIKE ' + QuotedStr('%' + eTipo.Text + '%');
      QueryContas.Filtered := true;
   end
   else
      QueryContas.Filtered := false;
end;

procedure TFrContasPagar.QueryContasBeforeInsert(DataSet: TDataSet);
begin
   {Confere se foi definido o plano de contas}
   if not FEmpresaClass.PlnCtasP > 0 then
   begin
      Application.MessageBox('Antes de continuar, é necessário definir um plano de contas padrão.','TechCore-RTG', mb_IconStop or mb_ok);
      Abort;
   end;
end;

procedure TFrContasPagar.QueryContasPAG_ORIGEMGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
   // Descreve a origem da cobrança
   if DisplayText then
   begin
      case Sender.AsInteger of
         1 : Text := 'Pedido de Compras';
         2 : Text := 'NF-e de Entrada';
         3 : Text := 'Avulso';
      end;
   end;
end;

procedure TFrContasPagar.QueryPagtosAfterDelete(DataSet: TDataSet);
begin
   // Atualiza o cursor de contas
   QueryContas.Refresh;

   // Atualiza o cursor de pagamentos
   QueryPagtos.Refresh;

   // Confirma a gravação dos dados
   Application.MessageBox('Pagamento extornado com sucesso.','TechCore-RTG',mb_IconInformation or mb_Ok);
end;

procedure TFrContasPagar.QueryPagtosAfterPost(DataSet: TDataSet);
begin
   // Atualiza o cursor de contas
   QueryContas.Refresh;

   // Atualiza o cursor de pagamentos
   QueryPagtos.Refresh;

   // Confirma a gravação dos dados
   Application.MessageBox('Dados gravados com sucesso.','TechCore-RTG',mb_IconInformation or mb_Ok);
end;

procedure TFrContasPagar.QueryPagtosBeforeDelete(DataSet: TDataSet);
begin
   if Application.MessageBox('Tem certeza que deseja efetuar o extorno deste pagamento?','TechCore-RTG',mb_IconQuestion or mb_YesNo) = mrNo then
      Abort;
end;

procedure TFrContasPagar.QueryPagtosNewRecord(DataSet: TDataSet);
begin
   // Define algumas informações padrões
   DataSet.FieldByName('pag_data_pagto').AsDateTime := Date;
   DataSet.FieldByName('id_C000210').AsInteger      := QueryContas.FieldByName('id_C10').AsInteger;
   DataSet.FieldByName('pag_saldo').AsFloat         := QueryContas.FieldByName('pag_vlr_saldo').AsFloat;
   DataSet.FieldByName('id_pln_ctas').AsInteger     := QueryContas.FieldByName('id_plano_contas').AsInteger;
end;

end.
