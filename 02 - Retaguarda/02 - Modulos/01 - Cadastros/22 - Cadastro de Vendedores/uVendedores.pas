unit uVendedores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, Vcl.StdCtrls, Vcl.DBCtrls, JvExStdCtrls, JvCombobox,
  JvDBSearchComboBox, JvDataSource, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, Vcl.Mask, RzEdit,
  RzDBEdit, RzPanel, RzRadGrp, RzDBRGrp, Vcl.Grids, Vcl.DBGrids,
  JvExDBGrids, JvDBGrid, Vcl.ComCtrls, JvExComCtrls, JvComCtrls, RzButton,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, JvExControls, JvDBLookup,
  JvDBCombobox;

type
  TFrVendedores = class(TForm)
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
    tabDetalhes: TTabSheet;
    Label1: TLabel;
    Label3: TLabel;
    eCodigo: TRzDBEdit;
    eDataReg: TRzDBEdit;
    eMargem: TRzDBEdit;
    ActionManager1: TActionManager;
    actCadastrar: TAction;
    actAlterar: TAction;
    actExcluir: TAction;
    actGravar: TAction;
    actCancelar: TAction;
    actSair: TAction;
    tbDados: TFDQuery;
    dsDados: TJvDataSource;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    tbFuncionario: TFDQuery;
    dsFuncionario: TJvDataSource;
    eFuncionario: TDBLookupComboBox;
    tbFuncionarioID: TIntegerField;
    tbFuncionarioFUN_CODIGO: TIntegerField;
    tbFuncionarioFUN_NOME: TStringField;
    tbFuncionarioFUN_APELIDO: TStringField;
    tbDadosID: TIntegerField;
    tbDadosID_EMPRESA: TIntegerField;
    tbDadosVND_PERMITE_DESCONTO: TIntegerField;
    tbDadosVND_MAX_DESCONTO: TFMTBCDField;
    tbDadosVND_STATUS: TIntegerField;
    tbDadosVND_CODIGO: TIntegerField;
    tbDadosVND_NOME: TStringField;
    eTabDesconto: TDBLookupComboBox;
    tbDesconto: TFDQuery;
    dsDesconto: TJvDataSource;
    tbDadosID_TAB_DESCONTO: TIntegerField;
    tbDadosVND_DATA_REG: TSQLTimeStampField;
    tbDescontoID: TIntegerField;
    tbDescontoDSC_MARGEM: TFMTBCDField;
    tbDescontoDESCONTO: TStringField;
    txtUsuario: TRzDBEdit;
    Label6: TLabel;
    tbDadosVND_SENHA: TStringField;
    txtSenha: TRzDBEdit;
    Label7: TLabel;
    JvDBComboBox1: TJvDBComboBox;
    JvDBComboBox2: TJvDBComboBox;
    Label9: TLabel;
    Label10: TLabel;
    tbDadosVND_USER: TStringField;
    tbDadosVND_APELIDO: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure tbDadosBeforeDelete(DataSet: TDataSet);
    procedure tbDadosAfterPost(DataSet: TDataSet);
    procedure tbDadosNewRecord(DataSet: TDataSet);
    procedure dsDadosStateChange(Sender: TObject);
    procedure actSairExecute(Sender: TObject);
    procedure actGravarUpdate(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure actExcluirUpdate(Sender: TObject);
    procedure actCancelarUpdate(Sender: TObject);
    procedure actAlterarUpdate(Sender: TObject);
    procedure actCadastrarUpdate(Sender: TObject);
    procedure actCadastrarExecute(Sender: TObject);
    procedure actAlterarExecute(Sender: TObject);
    procedure actGravarExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure tbDadosBeforePost(DataSet: TDataSet);
    procedure dsDadosFieldChanged(Sender: TObject; Field: TField);
    procedure eUsuarioEnter(Sender: TObject);
    procedure eUsuarioExit(Sender: TObject);
    procedure tbDadosVND_STATUSGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure tbDadosVND_USERSetText(Sender: TField; const Text: string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrVendedores: TFrVendedores;

implementation

uses
   Classe.Empresa, uModuloRet;

{$R *.dfm}

procedure TFrVendedores.actAlterarExecute(Sender: TObject);
begin
   tbDados.Edit;
end;

procedure TFrVendedores.actAlterarUpdate(Sender: TObject);
begin
   if tbDados.IsEmpty then
      TAction(Sender).Enabled := false
   else
      TAction(Sender).Enabled := not( tbDados.State in [dsInsert,dsEdit] );
end;

procedure TFrVendedores.actCadastrarExecute(Sender: TObject);
begin
   tbDados.Insert;
end;

procedure TFrVendedores.actCadastrarUpdate(Sender: TObject);
begin
   TAction(Sender).Enabled := not( tbDados.State in [dsInsert,dsEdit] );
end;

procedure TFrVendedores.actCancelarExecute(Sender: TObject);
begin
   tbDados.Cancel;
end;

procedure TFrVendedores.actCancelarUpdate(Sender: TObject);
begin
   if tbDados.IsEmpty then
      TAction(Sender).Enabled := false
   else
      TAction(Sender).Enabled := tbDados.State in [dsInsert,dsEdit];
end;

procedure TFrVendedores.actExcluirExecute(Sender: TObject);
begin
   tbDados.Delete;
end;

procedure TFrVendedores.actExcluirUpdate(Sender: TObject);
begin
   if tbDados.IsEmpty then
      TAction(Sender).Enabled := false
   else
      TAction(Sender).Enabled := not( tbDados.State in [dsInsert,dsEdit] );
end;

procedure TFrVendedores.actGravarExecute(Sender: TObject);
begin
   tbDados.Post
end;

procedure TFrVendedores.actGravarUpdate(Sender: TObject);
begin
   if tbDados.IsEmpty then
      TAction(Sender).Enabled := false
   else
      TAction(Sender).Enabled := tbDados.State in [dsInsert,dsEdit];
end;

procedure TFrVendedores.actSairExecute(Sender: TObject);
begin
   Self.Close;
end;

procedure TFrVendedores.dsDadosFieldChanged(Sender: TObject; Field: TField);
begin
   if tbDados.State in [dsInsert,dsEdit] then
      if Field.Name = 'tbDadosID_FUNCIONARIO' then
         tbDadosVND_CODIGO.AsInteger := tbFuncionarioFUN_CODIGO.AsInteger;

   if tbDados.State in [dsInsert,dsEdit] then
      if Field.Name = 'tbDadosID_TAB_DESCONTO' then
         tbDadosVND_MAX_DESCONTO.AsFloat := tbDescontoDSC_MARGEM.AsFloat;
end;

procedure TFrVendedores.dsDadosStateChange(Sender: TObject);
begin
   if tbDados.State in [dsInsert,dsEdit] then
      pgControl.ActivePage := tabDetalhes
end;

procedure TFrVendedores.eUsuarioEnter(Sender: TObject);
begin
   TEdit(Sender).Color := clSilver;
end;

procedure TFrVendedores.eUsuarioExit(Sender: TObject);
begin
   TEdit(Sender).Color := clWindow;
end;

procedure TFrVendedores.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   FreeAndNil( FrVendedores );
end;

procedure TFrVendedores.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
   {Se houver registro em inclusão ou alteração, imprede a saida}
   if tbDados.State in [dsInsert,dsEdit] then
   begin
      Application.MessageBox('Antes de fechar o formulário, grave ou cancele a alteração ou Inclusão.','TechCore-RTG',mb_IconStop or mb_Ok);
      CanClose := false;
   end;
end;

procedure TFrVendedores.FormCreate(Sender: TObject);
begin
   {Ajusta o formulário na criação}
   pgControl.ActivePage := tabPrincipal;

   // Carrega todos os funcionários
   tbFuncionario.ParamByName('ID_EMPRESA').AsInteger := FEmpresaClass.ID;
   tbFuncionario.Open();

   // Carrega todos as tabelas de descontos
   tbDesconto.ParamByName('ID_EMPRESA').AsInteger := FEmpresaClass.ID;
   tbDesconto.Open();

   {Carrega todos os grupos de produtos}
   tbDados.ParamByName('ID_EMPRESA').AsInteger := FEmpresaClass.ID;
   tbDados.Open();

end;

procedure TFrVendedores.tbDadosAfterPost(DataSet: TDataSet);
begin
   DataSet.Refresh;
end;

procedure TFrVendedores.tbDadosBeforeDelete(DataSet: TDataSet);
begin
   if Application.MessageBox('Tem certeza que deseja excluir este registro?','TechCore-RTG',mb_IconQuestion or mb_YesNo) = mrNo then
      Abort;
end;

procedure TFrVendedores.tbDadosBeforePost(DataSet: TDataSet);
var
   aQuery : TFDQuery;
begin
   // Confere o preenchimento
   if eFuncionario.Text = '' then
   begin
      Application.MessageBox('Selecione o Funcionário','TechCore-RTG',mb_IconStop or mb_Ok);
      eFuncionario.SetFocus;
      Abort;
   end;

   if eTabDesconto.Text = '' then
   begin
      Application.MessageBox('Selecione a Tabela de Desconto','TechCore-RTG',mb_IconStop or mb_Ok);
      eTabDesconto.SetFocus;
      Abort;
   end;

   {se digitado um usuário é necessário informar uma senha}
   if (txtUsuario.Text <> EmptyStr) and (txtSenha.Text = EmptyStr) then
   begin
      Application.MessageBox('Ao informar um usuário é necessário informar uma Senha para o Usuário.','TechCore-RTG',mb_IconStop or mb_ok);
      txtSenha.SetFocus;
      Abort;
   end;

   {tamanho mínimo da senha}
   if (Length(txtSenha.Text) > 0) and (Length(txtSenha.Text) < 6) then
   begin
      Application.MessageBox('A senha deve conter no mínimo 6 caracteres.','TechCore-RTG',mb_IconStop or mb_ok);
      txtSenha.SetFocus;
      Abort;
   end;

   {checa se o usuário informado ja existe no banco de dados}
   try
      aQuery            := TFDQuery.Create(self);
      aQuery.Connection := FrModuloRet.DBConexao;

      aQuery.SQL.Add('Select');
      aQuery.SQL.Add('  1');
      aQuery.SQL.Add('from');
      aQuery.SQL.Add('  c000061');
      aQuery.SQL.Add('where');
      aQuery.SQL.Add('  id_empresa = :id_emp');
      aQuery.SQL.Add('and');
      aQuery.SQL.Add('  vnd_user   = :vnd_user');
      aQuery.ParamByName('id_emp').AsInteger  := FEmpresaClass.ID;
      aQuery.ParamByName('vnd_user').AsString := txtUsuario.Text;
      aQuery.Open();

      if not aQuery.IsEmpty then
      begin
         Application.MessageBox('O nome de usuário informado já existe no banco de dados.','TechCore-RTG',mb_IconStop or mb_ok);
         txtUsuario.SetFocus;
         Abort;
      end;

   finally
      FreeAndNil(aQuery);
   end;

end;

procedure TFrVendedores.tbDadosNewRecord(DataSet: TDataSet);
begin
   {Dados básicos do cadastros}
   DataSet.FieldByName('ID_EMPRESA').AsInteger    := FEmpresaClass.ID;
   DataSet.FieldByName('VND_DATA_REG').AsDateTime := now;
   DataSet.FieldByName('VND_STATUS').AsInteger    := 1;
end;

procedure TFrVendedores.tbDadosVND_STATUSGetText(Sender: TField;var Text: string; DisplayText: Boolean);
begin
   if DisplayText then
   begin
      case Sender.AsInteger of
         1 : Text := 'S';
         2 : Text := 'N';
      end;
   end
   else
      Text := Sender.AsString;
end;

procedure TFrVendedores.tbDadosVND_USERSetText(Sender: TField; const Text: string);
begin
   if Text = EmptyStr then
      Sender.Clear
   else
      Sender.AsString := Text
end;

end.
