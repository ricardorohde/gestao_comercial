unit uPlanoContas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, JvDataSource, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.Actions, Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls,
  Vcl.ActnMan, Vcl.StdCtrls, Vcl.Mask, RzEdit, RzDBEdit, RzPanel, RzRadGrp,
  RzDBRGrp, Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid, Vcl.ComCtrls,
  JvExComCtrls, JvComCtrls, RzButton, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  JvExMask, JvToolEdit, JvBaseEdits, JvDBControls, JvExStdCtrls, JvCombobox,
  JvDBCombobox, RLReport;

type
  TFrPlanoContas = class(TForm)
    RzPanel2: TRzPanel;
    Label8: TLabel;
    Bevel3: TBevel;
    Image2: TImage;
    RzToolbar1: TRzToolbar;
    btnNew: TRzToolButton;
    btnEdit: TRzToolButton;
    btnCancel: TRzToolButton;
    btnOK: TRzToolButton;
    btnError: TRzToolButton;
    btnExit: TRzToolButton;
    RzSpacer1: TRzSpacer;
    RzSpacer2: TRzSpacer;
    RzSpacer3: TRzSpacer;
    RzSpacer4: TRzSpacer;
    RzSpacer5: TRzSpacer;
    RzPanel1: TRzPanel;
    pgControl: TJvPageControl;
    tabPrincipal: TTabSheet;
    JvDBGrid1: TJvDBGrid;
    ActionManager1: TActionManager;
    actCadastrar: TAction;
    actAlterar: TAction;
    actExcluir: TAction;
    actGravar: TAction;
    actCancelar: TAction;
    actSair: TAction;
    Query: TFDQuery;
    dsQuery: TJvDataSource;
    aQuery: TFDQuery;
    QueryID: TIntegerField;
    QueryID_EMPRESA: TIntegerField;
    QueryPLN_DESCRICAO: TStringField;
    QueryPLN_TIPO: TStringField;
    QueryPLN_ATIVO: TStringField;
    QueryPLN_DESCRICAO_II: TStringField;
    QueryPLN_CONTA_CODIGO: TStringField;
    StoreCodigo: TFDStoredProc;
    tabDetalhes: TTabSheet;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    RzDBRadioGroup1: TRzDBRadioGroup;
    JvDBComboBox1: TJvDBComboBox;
    ed_codigo: TRzDBEdit;
    ed_descricao: TRzDBEdit;
    procedure actCadastrarExecute(Sender: TObject);
    procedure actAlterarExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure actGravarExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure actSairExecute(Sender: TObject);
    procedure QueryAfterPost(DataSet: TDataSet);
    procedure QueryBeforeDelete(DataSet: TDataSet);
    procedure QueryNewRecord(DataSet: TDataSet);
    procedure dsQueryStateChange(Sender: TObject);
    procedure pgControlChanging(Sender: TObject; var AllowChange: Boolean);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure actCadastrarUpdate(Sender: TObject);
    procedure actAlterarUpdate(Sender: TObject);
    procedure actGravarUpdate(Sender: TObject);
    procedure QueryBeforeInsert(DataSet: TDataSet);
    procedure QueryAfterOpen(DataSet: TDataSet);
    procedure JvDBGrid1DrawColumnCell(Sender: TObject; const [Ref] Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure ChecarSubContas(strCodigo : String);
    procedure QueryBeforeEdit(DataSet: TDataSet);
    procedure actSairUpdate(Sender: TObject);
  private
    { Private declarations }
    CodigoFormatado : String;
  public
    { Public declarations }
  end;

var
  FrPlanoContas: TFrPlanoContas;

implementation

uses
   Classe.Empresa, uPlanoContasNew, uModuloRet;

{$R *.dfm}

procedure TFrPlanoContas.actAlterarExecute(Sender: TObject);
begin
   Query.Edit;
end;

procedure TFrPlanoContas.actAlterarUpdate(Sender: TObject);
begin
   if Query.IsEmpty then
      TAction(Sender).Enabled := false
   else
      TAction(Sender).Enabled := not ( Query.State in [dsInsert,dsEdit] );
end;

procedure TFrPlanoContas.actCadastrarExecute(Sender: TObject);
begin
   // Carrega o código gerado para a nova conta
   StoreCodigo.Close;
   StoreCodigo.ParamByName('id_empresa').AsInteger := FEmpresaClass.ID;
   StoreCodigo.ParamByName('a_codigo').AsString    := QueryPLN_CONTA_CODIGO.AsString;
   StoreCodigo.ExecProc;

   // Coloca o cursor em modo de isnerção
   Query.Append;

   // Recebe o código gerado
   QueryPLN_CONTA_CODIGO.AsString := StoreCodigo.ParamByName('result').AsString;

   try
      // Cria uam instância do objeto
      FrPlanoContasNew := TFrPlanoContasNew.Create(self);

      // Configura o objeto antes da exibição
      FrPlanoContasNew.dspConta.Caption := CodigoFormatado;

      // Abre e confirma se salva ou cancela as informações
      if FrPlanoContasNew.ShowModal = mrOk then
         Query.Post
      else
         Query.Cancel;
   finally
      FreeAndNil( FrPlanoContasNew );
   end;

end;

procedure TFrPlanoContas.actCadastrarUpdate(Sender: TObject);
begin
   TAction(Sender).Enabled := not ( Query.State in [dsInsert,dsEdit] ) and (Length(QueryPLN_CONTA_CODIGO.AsString) < 6)
end;

procedure TFrPlanoContas.actCancelarExecute(Sender: TObject);
begin
   Query.Cancel;
end;

procedure TFrPlanoContas.actExcluirExecute(Sender: TObject);
begin
   Query.Delete;
end;

procedure TFrPlanoContas.actGravarExecute(Sender: TObject);
begin
   Query.Post;
end;

procedure TFrPlanoContas.actGravarUpdate(Sender: TObject);
begin
   TAction(Sender).Enabled := Query.State in [dsInsert,dsEdit];
end;

procedure TFrPlanoContas.actSairExecute(Sender: TObject);
begin
   Self.Close;
end;

procedure TFrPlanoContas.actSairUpdate(Sender: TObject);
begin
   TAction(Sender).Enabled := not ( Query.State in [dsInsert,dsEdit] )
end;

procedure TFrPlanoContas.ChecarSubContas(strCodigo: String);
begin
   // Checa se a conta a ser excluida possui dependentes
   aQuery.Close;
   aQuery.SQL.Clear;
   aQuery.SQL.Add('select 1 from c000018 where id_empresa = :id_empresa and pln_conta_codigo like :b_codigo || ''%''');
   aQuery.ParamByName('id_empresa').AsInteger := FEmpresaClass.ID;
   aQuery.ParamByName('b_codigo').AsString    := QueryPLN_CONTA_CODIGO.AsString;
   aQuery.Open();

   if aQuery.RecordCount > 1 then
   begin
      Application.MessageBox('Não é possível alterar esta conta, a mesma possue subcontas cadastradas.','TechCore-RTG',mb_IconError or mb_ok);
      Abort;
   end;
end;

procedure TFrPlanoContas.dsQueryStateChange(Sender: TObject);
begin
   if Query.State in [dsEdit] then
      pgControl.ActivePage := tabDetalhes
   else
      pgControl.ActivePage := tabPrincipal;
end;

procedure TFrPlanoContas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   FreeAndNil( FrPlanoContas );
end;

procedure TFrPlanoContas.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
   {Se houver registro em inclusão ou alteração, imprede a saida}
   if Query.State in [dsInsert,dsEdit] then
   begin
      Application.MessageBox('Antes de fechar o formulário, grave ou cancele a alteração ou Inclusão.','TechCore-RTG',mb_IconStop or mb_Ok);
      CanClose := false;
   end;
end;

procedure TFrPlanoContas.FormCreate(Sender: TObject);
begin
   {Ajusta o formulário na criação}
   pgControl.ActivePage := tabPrincipal;

   {Carrega todos os grupos de produtos}
   Query.ParamByName('ID_EMPRESA').AsInteger := FEmpresaClass.ID;
   Query.Open();
end;

procedure TFrPlanoContas.JvDBGrid1DrawColumnCell(Sender: TObject;
  const [Ref] Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
   if Column.FieldName = 'PLN_DESCRICAO_II' then
   begin

      if QueryPLN_TIPO.AsString = 'S' then
      begin
         // Aplicando prto para a cor da fonte
         (Sender as TDBGrid).Canvas.Font.Style := [fsBold];
         (Sender as TDBGrid).Canvas.FillRect(Rect);
         (Sender as TDBGrid).DefaultDrawColumnCell(rect,Datacol,Column,state);
      end;

   end;
end;

procedure TFrPlanoContas.pgControlChanging(Sender: TObject; var AllowChange: Boolean);
begin
   AllowChange := Query.State in [dsInsert,dsEdit];
end;

procedure TFrPlanoContas.QueryAfterOpen(DataSet: TDataSet);
var
   I : Integer;
   A : String;
begin
   if Query.IsEmpty then
   begin

      for I := 1 to 4 do
      begin

         case i of
            1 : A := 'ATIVO';
            2 : A := 'PASSIVO';
            3 : A := 'DESPESAS';
            4 : A := 'RECEITAS';
         end;

         // Após a abertura checa se existem registros, senão cria os dados padrões
         if Query.IsEmpty then
         begin
            aQuery.Close;
            aQuery.SQL.Clear;
            aQuery.SQL.Add('insert into C000018(');
            aQuery.SQL.Add('  id_empresa,pln_conta_codigo,pln_descricao,pln_tipo,pln_ativo');
            aQuery.SQL.Add(')values(');
            aQuery.SQL.Add('  :id_empresa,:pln_codigo,:pln_descricao,:pln_tipo,:pln_ativo)');
            aQuery.ParamByName('id_empresa').AsInteger   := FEmpresaClass.ID;
            aQuery.ParamByName('pln_codigo').AsInteger   := I;
            aQuery.ParamByName('pln_descricao').AsString := A;
            aQuery.ParamByName('pln_tipo').AsString      := 'A';
            aQuery.ParamByName('pln_ativo').AsString     := 'S';
            aQuery.ExecSQL;
         end;
      end;

      Query.Refresh;

   end;

end;

procedure TFrPlanoContas.QueryAfterPost(DataSet: TDataSet);
begin
   DataSet.Refresh;
end;

procedure TFrPlanoContas.QueryBeforeDelete(DataSet: TDataSet);
begin
   // Checa se a conta a ser excluida possui dependentes
   ChecarSubContas(QueryPLN_CONTA_CODIGO.AsString);

   if Application.MessageBox('Tem certeza que deseja excluir este registro?','TechCore-RTG',mb_IconQuestion or mb_YesNo) = mrNo then
      Abort;
end;

procedure TFrPlanoContas.QueryBeforeEdit(DataSet: TDataSet);
begin
   // Checa se a conta a ser excluida possui dependentes
   ChecarSubContas(QueryPLN_CONTA_CODIGO.AsString);
end;

procedure TFrPlanoContas.QueryBeforeInsert(DataSet: TDataSet);
begin
   // Para exibir o código para cadastro
   CodigoFormatado := QueryPLN_CONTA_CODIGO.AsString + ' - ' + QueryPLN_DESCRICAO.AsString;
end;

procedure TFrPlanoContas.QueryNewRecord(DataSet: TDataSet);
begin
   {Dados básicos do cadastros}
   DataSet.FieldByName('ID_EMPRESA').AsInteger := FEmpresaClass.ID;
   DataSet.FieldByName('PLN_ATIVO').AsString   := 'S';
end;

end.
