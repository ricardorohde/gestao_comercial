unit uContasReceber;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls, RzPanel, Data.DB, RzRadGrp, RzDBRGrp, JvExMask, JvToolEdit,
  JvBaseEdits, JvDBControls, Vcl.DBCtrls, JvDBImage, Vcl.Buttons, RzDBBnEd,
  RzDBCmbo, RzCmboBx, Vcl.Mask, RzEdit, RzDBEdit, Vcl.Grids, Vcl.DBGrids,
  JvExDBGrids, JvDBGrid, Vcl.ComCtrls, JvExComCtrls, JvComCtrls, RzButton,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, Dateutils,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, JvDataSource, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, RzBtnEdt, ACBrUtil, JvExStdCtrls, JvCombobox,
  System.Actions, Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls,
  Vcl.ActnMan, System.ImageList, Vcl.ImgList, RzLabel, RzDBLbl, Vcl.ToolWin,
  PngSpeedButton, JvDBCheckBox, Vcl.Menus;

type
  TFrContasReceber = class(TForm)
    ActionManager1: TActionManager;
    ctCadastrar: TAction;
    ctAlterarLancto: TAction;
    ctReceberParcela: TAction;
    ctBaixarParcela: TAction;
    ctSair: TAction;
    pnBaixo: TPanel;
    Panel1: TPanel;
    Panel7: TPanel;
    Label3: TLabel;
    RzDBLabel2: TRzDBLabel;
    Panel5: TPanel;
    Label2: TLabel;
    RzDBLabel3: TRzDBLabel;
    Panel3: TPanel;
    Label1: TLabel;
    RzDBLabel1: TRzDBLabel;
    Panel8: TPanel;
    pnMeio: TPanel;
    JvDBGrid2: TJvDBGrid;
    JvDBGrid1: TJvDBGrid;
    RzPanel2: TRzPanel;
    Label8: TLabel;
    Label9: TLabel;
    Bevel3: TBevel;
    Image2: TImage;
    Action1: TAction;
    RzToolbar1: TRzToolbar;
    btnNew: TRzToolButton;
    btnEdit: TRzToolButton;
    btnCancel: TRzToolButton;
    btnOK: TRzToolButton;
    btnError: TRzToolButton;
    btnExit: TRzToolButton;
    RzSpacer1: TRzSpacer;
    RzSpacer4: TRzSpacer;
    RzSpacer5: TRzSpacer;
    RzSpacer3: TRzSpacer;
    aQuery: TFDQuery;
    actExcluirConta: TAction;
    PopupMenu1: TPopupMenu;
    ExcluirParcela1: TMenuItem;
    ExcluirConta1: TMenuItem;
    N1: TMenuItem;
    QueryContas: TFDQuery;
    dsQueryContas: TDataSource;
    QueryRecebtos: TFDQuery;
    dsQueryRecebtos: TDataSource;
    RzPanel3: TRzPanel;
    eCliente: TRzButtonEdit;
    Label4: TLabel;
    eDataIni: TJvDateEdit;
    Label10: TLabel;
    Label11: TLabel;
    eDatafim: TJvDateEdit;
    eTipo: TRzComboBox;
    Label5: TLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel4: TBevel;
    Bevel5: TBevel;
    PngSpeedButton2: TPngSpeedButton;
    QueryContasREC_DIAS_VENCIDOS: TLargeintField;
    QueryContasREC_STATUS_TEXTO: TStringField;
    QueryContasID_C000110: TIntegerField;
    QueryContasREC_PARCELA: TIntegerField;
    QueryContasREC_VENCIMENTO: TDateField;
    QueryContasREC_DOCUMENTO: TStringField;
    QueryContasREC_ANOTACOES: TStringField;
    QueryContasREC_STATUS: TIntegerField;
    QueryRecebtosID: TLargeintField;
    QueryRecebtosID_C000110: TIntegerField;
    QueryRecebtosID_C000111: TIntegerField;
    QueryRecebtosID_FORMA_PAGTO: TIntegerField;
    QueryRecebtosREC_ANOTACOES: TStringField;
    QueryContasREC_TOTAL_CONTAS: TAggregateField;
    QueryContasREC_TOTAL_RECEBIDO: TAggregateField;
    QueryContasREC_TOTAL_SALDO: TAggregateField;
    QueryContasID_C10: TIntegerField;
    QueryContasID_C11: TIntegerField;
    QueryContasREC_CLIENTE: TStringField;
    QueryContasREC_ORIGEM: TIntegerField;
    QueryRecebtosREC_DATA_RECEBTO: TDateField;
    QueryRecebtosREC_FORMA_PAGTO: TStringField;
    cbOrdenar: TRzComboBox;
    Label6: TLabel;
    Bevel6: TBevel;
    QueryContasREC_DATA_REGISTRO: TDateField;
    QueryRecebtosID_PLN_CTAS: TIntegerField;
    QueryRecebtosREC_PLN_CTAS_DESC: TStringField;
    RzSpacer6: TRzSpacer;
    QueryRecebtosID_CONTA: TIntegerField;
    actJurosMulta: TAction;
    RzToolButton1: TRzToolButton;
    RzSpacer2: TRzSpacer;
    QueryContasID_PLN_CTAS: TIntegerField;
    QueryContasREC_VALOR: TFMTBCDField;
    QueryContasREC_VLR_ATUALIZADO: TFMTBCDField;
    QueryContasREC_VLR_RECEBIDO: TFMTBCDField;
    QueryContasREC_VLR_SALDO: TFMTBCDField;
    QueryContasREC_JUROS: TFMTBCDField;
    QueryContasREC_MULTA: TFMTBCDField;
    QueryContasREC_JUROS_CAREN: TIntegerField;
    QueryContasREC_MULTA_CAREN: TIntegerField;
    QueryRecebtosREC_SALDO: TFMTBCDField;
    QueryRecebtosREC_VLR_JUROS: TFMTBCDField;
    QueryRecebtosREC_VLR_MULTA: TFMTBCDField;
    QueryRecebtosREC_VLR_ACRESCIMOS: TFMTBCDField;
    QueryRecebtosREC_VLR_DESCONTOS: TFMTBCDField;
    QueryRecebtosREC_VLR_CARTORIOS: TFMTBCDField;
    QueryRecebtosREC_VLR_RECEBIDO: TFMTBCDField;
    QueryRecebtosREC_VLR_RECEBER: TFMTBCDField;
    QueryRecebtosREC_TAX_JUROS: TFMTBCDField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnExitClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure eClienteButtonClick(Sender: TObject);
    procedure ctCadastrarExecute(Sender: TObject);
    procedure QueryRecebtosBeforeDelete(DataSet: TDataSet);
    procedure ctAlterarLanctoExecute(Sender: TObject);
    procedure ctReceberParcelaExecute(Sender: TObject);
    procedure ctReceberParcelaUpdate(Sender: TObject);
    procedure ctSairExecute(Sender: TObject);
    procedure ctAlterarLanctoUpdate(Sender: TObject);
    procedure QueryRecebtosNewRecord(DataSet: TDataSet);
    procedure JvDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Action1Execute(Sender: TObject);
    procedure Action1Update(Sender: TObject);
    procedure QueryBeforeDelete(DataSet: TDataSet);
    procedure actExcluirContaExecute(Sender: TObject);
    procedure PngSpeedButton2Click(Sender: TObject);
    procedure QueryContasREC_ORIGEMGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure eClienteAltBtnClick(Sender: TObject);
    procedure QueryContasAfterOpen(DataSet: TDataSet);
    procedure QueryContasAfterPost(DataSet: TDataSet);
    procedure QueryRecebtosAfterPost(DataSet: TDataSet);
    procedure QueryRecebtosAfterDelete(DataSet: TDataSet);
    procedure actJurosMultaExecute(Sender: TObject);
    procedure QueryContasBeforeInsert(DataSet: TDataSet);
  private
    { Private declarations }
    ID_Cliente : Integer;
    SqlPadrao  : String;
  public
    { Public declarations }
  end;

var
  FrContasReceber: TFrContasReceber;

implementation

uses
   Classe.Empresa, uListaClientes, uContasReceberLancto, uContasReceberRecbto, uContasReceberAlteraLancto,
   uPrincipal, uModuloRet, uContasReceberRemoverFaturamento, Classe.Financeiro,
  uContasReceberJuros;

{$R *.dfm}

procedure TFrContasReceber.ctAlterarLanctoExecute(Sender: TObject);
begin
   // Checa se já existem pagamentos para parcela
   if not ( QueryRecebtos.IsEmpty ) then
   begin
      Application.MessageBox('Não é possível alterar, existem pagamentos efetuados para esta parcela.','TechCore-RTG',mb_IconWarning or mb_Ok);
      Abort;
   end;

   // Carrega o formulário para Alterar as parcelas
   try
      FrcontasReceberAlteraLancto                := TFrcontasReceberAlteraLancto.Create(Self);
      FrcontasReceberAlteraLancto.ConectarTabela := true;
      FrcontasReceberAlteraLancto.ID_Registro    := QueryContasID_C11.AsInteger;

      if FrcontasReceberAlteraLancto.ShowModal = mrOk then
         QueryContas.Refresh;
   finally
      FreeAndNil( FrcontasReceberAlteraLancto );
   end;
end;

procedure TFrContasReceber.ctAlterarLanctoUpdate(Sender: TObject);
begin
   (Sender as TAction).Enabled := not (QueryContas.IsEmpty);
end;

procedure TFrContasReceber.ctCadastrarExecute(Sender: TObject);
begin
   FrContasReceberLancto := TFrContasReceberLancto.Create(self);
   try
      if FrContasReceberLancto.ShowModal = mrOk then
         QueryContas.Refresh;
   finally
      FreeAndNil( FrContasReceberLancto );
   end;
end;

procedure TFrContasReceber.ctReceberParcelaExecute(Sender: TObject);
begin
   // Checa se o saldo a receber está zerado
   if QueryContas.FieldByName('REC_VLR_SALDO').AsFloat <= 0 then
   begin
      Application.MessageBox('Não existe saldo a receber para esta parcela.','TechCore-RTG',mb_IconWarning or mb_ok);
      Abort;
   end;

   try
      // Coloca o cursor das parcelas em edição
      QueryRecebtos.Append;

      FrContasReceberRecebto              := TFrContasReceberRecebto.Create(self);
      FrContasReceberRecebto.ValorReceber := QueryContas.FieldByName('REC_VLR_SALDO').AsFloat;

      if FrContasReceberRecebto.ShowModal = mrOk then
         QueryRecebtos.Post
      else
         QueryRecebtos.Cancel;

   finally
      FreeAndNil( FrContasReceberRecebto );
   end;
end;

procedure TFrContasReceber.ctReceberParcelaUpdate(Sender: TObject);
begin
   TAction(Sender).Enabled := not ( QueryContas.IsEmpty ) and ( QueryContas.FieldByName('REC_VLR_SALDO').AsFloat > 0 );
end;

procedure TFrContasReceber.ctSairExecute(Sender: TObject);
begin
   Self.Close;
end;

procedure TFrContasReceber.actExcluirContaExecute(Sender: TObject);
begin
   try      
      FrContasReceberRemoverFaturamento := TFrContasReceberRemoverFaturamento.Create(self);
      if FrContasReceberRemoverFaturamento.ShowModal = mrOk then
         QueryContas.Refresh;
   finally
      FreeAndNil( FrContasReceberRemoverFaturamento );
   end;
end;

procedure TFrContasReceber.Action1Execute(Sender: TObject);
begin
   QueryRecebtos.Delete;
end;

procedure TFrContasReceber.Action1Update(Sender: TObject);
begin
   TAction(Sender).Enabled := not ( QueryRecebtos.IsEmpty );
end;

procedure TFrContasReceber.actJurosMultaExecute(Sender: TObject);
begin
   try
      FrContasReceberJuros:= TFrContasReceberJuros.Create(self);
      if FrContasReceberJuros.ShowModal = mrOk then
         QueryContas.Refresh
   finally
      FreeAndNil( FrContasReceberJuros );
   end;
end;

procedure TFrContasReceber.btnExitClick(Sender: TObject);
begin
   Self.Close;
end;

procedure TFrContasReceber.eClienteAltBtnClick(Sender: TObject);
begin
   eCliente.Clear;
end;

procedure TFrContasReceber.eClienteButtonClick(Sender: TObject);
begin
   FrListaClientes := TFrListaClientes.Create(self);
   try
      if FrListaClientes.ShowModal = mrOk then
      begin
         ID_Cliente    := FrListaClientes.QueryID.AsInteger;
         eCliente.Text := FrListaClientes.QueryCLI_RAZAO_SOCIAL.AsString;
      end;
   finally
      FreeAndNil( FrListaClientes );
   end;
end;

procedure TFrContasReceber.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   FreeAndNil( FrContasReceber );
end;

procedure TFrContasReceber.FormCreate(Sender: TObject);
begin
   // Armazena o Script padrão da Query
   SqlPadrao := QueryContas.SQL.Text;

   // 1º Ajusta as datas antes de iniciar
   eDataIni.Date := Date;
   eDataFim.Date := IncDay(Date, 30);

   // 2º Carrega as contas
   QueryContas.SQL.Add('WHERE');
   QueryContas.SQL.Add('   T2.ID_EMPRESA = :ID_EMPRESA');
   QueryContas.SQL.Add('AND');
   QueryContas.SQL.Add('   T1.REC_VENCIMENTO BETWEEN :A_DATA AND :B_DATA');
   QueryContas.SQL.Add('ORDER BY');
   QueryContas.SQL.Add('   T1.REC_PARCELA ASC');
   QueryContas.ParamByName('ID_Empresa').AsInteger := FEmpresaClass.ID;
   QueryContas.ParamByName('A_Data').AsDateTime    := eDataIni.Date;
   QueryContas.ParamByName('B_Data').AsDateTime    := eDataFim.Date;
   QueryContas.Open();

   JvDBGrid2.Columns[0].Width := 80;
   JvDBGrid2.Columns[0].Width := 75;

end;

procedure TFrContasReceber.JvDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
   if QueryContas.IsEmpty then Exit;

   {Efetua a coloração de acordo o status}
   if not (gdSelected in State) then
   begin
      case QueryContas.FieldByName('rec_status').AsInteger of
         90 : (Sender as TDBGrid).Canvas.Font.Color := clBlack;
         91 : (Sender as TDBGrid).Canvas.Font.Color := clGreen;
         92 : (Sender as TDBGrid).Canvas.Font.Color := clRed;
      end;
   end
   else
   begin
      (Sender as TDBGrid).Canvas.Font.Color  := clHighlightText; // Fonte
      (Sender as TDBGrid).Canvas.Brush.Color := $00804000;       // Fundo
   end;

   {Pinta o Grid}
   (Sender as TDBGrid).Canvas.FillRect(Rect);
   (Sender as TDBGrid).DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TFrContasReceber.PngSpeedButton2Click(Sender: TObject);
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

   // Prepara o script inicial
   Str := SqlPadrao + ' WHERE T2.ID_EMPRESA = :ID_EMPRESA AND T1.REC_VENCIMENTO BETWEEN :IDATA AND :FDATA';

   // 2º Se informado o cliente
   If eCliente.Text <> '' then
      Str := Str + ' AND T2.ID_CLIENTE = :ID_CLIENTE';

   // 3º Termina com a ordenação do resultado
   case cbOrdenar.ItemIndex of
      0 : Str := Str + ' ORDER BY T2.REC_CLIENTE, T1.REC_PARCELA ASC';    
      1 : Str := Str + ' ORDER BY T1.REC_VENCIMENTO, T1.REC_PARCELA ASC';    
      2 : Str := Str + ' ORDER BY T1.REC_VALOR, T1.REC_PARCELA ASC';          
      3 : Str := Str + ' ORDER BY T1.REC_PARCELA ASC';  
   end;

   // 3º Monta o script no cursor
   QueryContas.Close;
   QueryContas.SQL.Clear;
   QueryContas.SQL.Add(Str);
   QueryContas.ParamByName('ID_EMPRESA').AsInteger := FEmpresaClass.ID;
   QueryContas.ParamByName('IDATA').AsDateTime     := eDataIni.Date;
   QueryContas.ParamByName('FDATA').AsDateTime     := eDataFim.Date;

   // 4º Se informado o cliente
   if eCliente.Text <> '' then
      QueryContas.ParamByName('ID_CLIENTE').AsInteger := id_cliente;

   // 5º Executa o script de pesquisa
   QueryContas.Open();

   // Se for por status específico
   if eTipo.ItemIndex <> 0 then
   begin
      QueryContas.Filtered := false;
      QueryContas.Filter   := 'REC_STATUS_TEXTO LIKE ' + QuotedStr('%' + eTipo.Text + '%');
      QueryContas.Filtered := true;
   end
   else
      QueryContas.Filtered := false;
end;

procedure TFrContasReceber.QueryBeforeDelete(DataSet: TDataSet);
begin
   if Application.MessageBox('Tem certeza que deseja excluir esta parcela?','TechCore-RTG',mb_IconQuestion or mb_YesNo) = mrNo then
      Abort;
end;

procedure TFrContasReceber.QueryContasAfterOpen(DataSet: TDataSet);
begin
   // Carrega todas as parcelas vinculadas
   QueryRecebtos.Open();
end;

procedure TFrContasReceber.QueryContasAfterPost(DataSet: TDataSet);
begin
   DataSet.Refresh;
end;

procedure TFrContasReceber.QueryContasBeforeInsert(DataSet: TDataSet);
begin
   {Confere se foi definido o plano de contas}
   if not FEmpresaClass.PlnCtasR > 0 then
   begin
      Application.MessageBox('Antes de continuar, é necessário definir um plano de contas padrão.','TechCore-RTG', mb_IconStop or mb_ok);
      Abort;
   end;
end;

procedure TFrContasReceber.QueryContasREC_ORIGEMGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
   // Descreve a origem da cobrança
   if DisplayText then
   begin
      case Sender.AsInteger of
         1 : Text := 'Pedido de Vendas';
         2 : Text := 'Nota Fiscal';
         3 : Text := 'Avulso';
         4 : Text := 'Ordem de Serviço'
      end;
   end;
end;

procedure TFrContasReceber.QueryRecebtosAfterDelete(DataSet: TDataSet);
begin
   // Atualiza o cursor das parcelas
   QueryRecebtos.Refresh;
   
   // Atualiza o cursor de contas
   QueryContas.Refresh;
end;

procedure TFrContasReceber.QueryRecebtosAfterPost(DataSet: TDataSet);
begin
   // Atualiza o cursor das parcelas
   QueryRecebtos.Refresh;
   
   // Atualiza o cursor de contas
   QueryContas.Refresh;
end;

procedure TFrContasReceber.QueryRecebtosBeforeDelete(DataSet: TDataSet);
begin
   if Application.MessageBox('Tem certeza que deseja efetuar o extorno deste pagamento?','TechCore-RTG',mb_IconQuestion or mb_YesNo) = mrNo then
      Abort;
end;

procedure TFrContasReceber.QueryRecebtosNewRecord(DataSet: TDataSet);
begin
   // Define algumas informações padrões
   DataSet.FieldByName('rec_data_recebto').AsDateTime := Date;
   DataSet.FieldByName('id_C000110').AsInteger        := QueryContas.FieldByName('id_C10').AsInteger;
   DataSet.FieldByName('rec_saldo').AsFloat           := QueryContas.FieldByName('rec_vlr_saldo').AsFloat;
   DataSet.FieldByName('id_pln_ctas').AsInteger       := QueryContas.FieldByName('id_pln_ctas').AsInteger;
end;

end.
