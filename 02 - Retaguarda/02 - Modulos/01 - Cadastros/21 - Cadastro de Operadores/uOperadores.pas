unit uOperadores;

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
  TFrOperadores = class(TForm)
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
    RzDBRadioGroup1: TRzDBRadioGroup;
    eCodigo: TRzDBEdit;
    eDataReg: TRzDBEdit;
    eApelido: TRzDBEdit;
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
    eSenha: TRzDBEdit;
    Label5: TLabel;
    eUsuario: TRzDBEdit;
    Label6: TLabel;
    chkCancelaVenda: TDBCheckBox;
    chkCancelaItem: TDBCheckBox;
    chkCancelaCupom: TDBCheckBox;
    chkConfiguraTerminal: TDBCheckBox;
    tbFuncionario: TFDQuery;
    dsFuncionario: TJvDataSource;
    eFuncionario: TDBLookupComboBox;
    tbDadosID: TIntegerField;
    tbDadosID_EMPRESA: TIntegerField;
    tbDadosOPR_DATA_REG: TSQLTimeStampField;
    tbDadosOPR_USUARIO: TStringField;
    tbDadosOPR_CANCELA_VENDA: TIntegerField;
    tbDadosOPR_CANCELA_ITEM: TIntegerField;
    tbDadosOPR_CANCELA_CUPOM: TIntegerField;
    tbDadosOPR_CONFIGURA_CAIXA: TIntegerField;
    tbDadosOPR_CODIGO: TIntegerField;
    tbDadosOPR_APELIDO: TStringField;
    tbDadosOPR_NOME: TStringField;
    tbDadosOPR_SENHA: TStringField;
    tbDadosOPR_STATUS: TIntegerField;
    tbFuncionarioID: TIntegerField;
    tbFuncionarioFUN_CODIGO: TIntegerField;
    tbFuncionarioFUN_NOME: TStringField;
    tbFuncionarioFUN_APELIDO: TStringField;
    DBCheckBox1: TDBCheckBox;
    tbDadosOPR_FECHAMENTO_CAIXA: TIntegerField;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    tbDadosF_PERMITE_SANGRIA: TIntegerField;
    tbDadosF_PERMITE_RETIRADA: TIntegerField;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    tbDadosF_SENHA_CANCELA_ITENS: TIntegerField;
    tbDadosF_SENHA_CANCELA_VENDA: TIntegerField;
    tbDadosF_SENHA_CANCELA_CUPOM: TIntegerField;
    DBCheckBox7: TDBCheckBox;
    tbDadosF_PERMITE_SUPRIMENTOS: TIntegerField;
    DBCheckBox8: TDBCheckBox;
    tbDadosF_PRINT_GERENCIAL: TIntegerField;
    DBCheckBox9: TDBCheckBox;
    tbDadosF_LISTAR_CUPONS: TIntegerField;
    DBCheckBox10: TDBCheckBox;
    DBCheckBox11: TDBCheckBox;
    DBCheckBox12: TDBCheckBox;
    tbDadosF_SNH_SANGRIA: TIntegerField;
    tbDadosF_SNH_RETIRADA: TIntegerField;
    tbDadosF_SNH_SUPRIMENTO: TIntegerField;
    tbDadosF_SNH_RESUMO_CAIXA: TIntegerField;
    JvDBComboBox1: TJvDBComboBox;
    Label7: TLabel;
    tbDadosF_USER_ADM: TIntegerField;
    DBCheckBox13: TDBCheckBox;
    tbDadosF_SNH_PRINT_GERENCIAL: TIntegerField;
    DBCheckBox15: TDBCheckBox;
    tbDadosF_ENVIAR_EMAIL: TIntegerField;
    tbDadosF_SNH_ENVIAR_EMAIL: TIntegerField;
    tbDadosF_SNH_LISTAR_CUPONS: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure tbDadosBeforeDelete(DataSet: TDataSet);
    procedure tbDadosAfterPost(DataSet: TDataSet);
    procedure tbDadosNewRecord(DataSet: TDataSet);
    procedure tbDadosOPR_STATUSGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrOperadores: TFrOperadores;

implementation

uses
   Classe.Empresa, uModuloRet;

{$R *.dfm}

procedure TFrOperadores.actAlterarExecute(Sender: TObject);
begin
   tbDados.Edit;
end;

procedure TFrOperadores.actAlterarUpdate(Sender: TObject);
begin
   if tbDados.IsEmpty then
      TAction(Sender).Enabled := false
   else
      TAction(Sender).Enabled := not( tbDados.State in [dsInsert,dsEdit] );
end;

procedure TFrOperadores.actCadastrarExecute(Sender: TObject);
begin
   tbDados.Insert;
end;

procedure TFrOperadores.actCadastrarUpdate(Sender: TObject);
begin
   TAction(Sender).Enabled := not( tbDados.State in [dsInsert,dsEdit] );
end;

procedure TFrOperadores.actCancelarExecute(Sender: TObject);
begin
   tbDados.Cancel;
end;

procedure TFrOperadores.actCancelarUpdate(Sender: TObject);
begin
   if tbDados.IsEmpty then
      TAction(Sender).Enabled := false
   else
      TAction(Sender).Enabled := tbDados.State in [dsInsert,dsEdit];
end;

procedure TFrOperadores.actExcluirExecute(Sender: TObject);
begin
   tbDados.Delete;
end;

procedure TFrOperadores.actExcluirUpdate(Sender: TObject);
begin
   if tbDados.IsEmpty then
      TAction(Sender).Enabled := false
   else
      TAction(Sender).Enabled := not( tbDados.State in [dsInsert,dsEdit] );
end;

procedure TFrOperadores.actGravarExecute(Sender: TObject);
begin
   tbDados.Post
end;

procedure TFrOperadores.actGravarUpdate(Sender: TObject);
begin
   if tbDados.IsEmpty then
      TAction(Sender).Enabled := false
   else
      TAction(Sender).Enabled := tbDados.State in [dsInsert,dsEdit];
end;

procedure TFrOperadores.actSairExecute(Sender: TObject);
begin
   Self.Close;
end;

procedure TFrOperadores.dsDadosFieldChanged(Sender: TObject; Field: TField);
begin
   if tbDados.State in [dsInsert,dsEdit] then
      if Field.Name = 'tbDadosID' then
      begin
         tbDadosOPR_CODIGO.AsInteger := tbFuncionarioFUN_CODIGO.AsInteger;
         tbDadosOPR_APELIDO.AsString := tbFuncionarioFUN_APELIDO.AsString;
      end;
end;

procedure TFrOperadores.dsDadosStateChange(Sender: TObject);
begin
   if tbDados.State in [dsInsert,dsEdit] then
      pgControl.ActivePage := tabDetalhes
end;

procedure TFrOperadores.eUsuarioEnter(Sender: TObject);
begin
   TEdit(Sender).Color := clSilver;
end;

procedure TFrOperadores.eUsuarioExit(Sender: TObject);
begin
   TEdit(Sender).Color := clWindow;
end;

procedure TFrOperadores.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   FreeAndNil( FrOperadores );
end;

procedure TFrOperadores.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
   {Se houver registro em inclusão ou alteração, imprede a saida}
   if tbDados.State in [dsInsert,dsEdit] then
   begin
      Application.MessageBox('Antes de fechar o formulário, grave ou cancele a alteração ou Inclusão.','TechCore-RTG',mb_IconStop or mb_Ok);
      CanClose := false;
   end;
end;

procedure TFrOperadores.FormCreate(Sender: TObject);
begin
   {Ajusta o formulário na criação}
   pgControl.ActivePage := tabPrincipal;

   {Carrega todos os grupos de produtos}
   tbDados.ParamByName('ID_EMPRESA').AsInteger := FEmpresaClass.ID;
   tbDados.Open();

   // Carrega todos os funcionários
   tbFuncionario.ParamByName('ID_EMPRESA').AsInteger := FEmpresaClass.ID;
   tbFuncionario.Open();
end;

procedure TFrOperadores.tbDadosAfterPost(DataSet: TDataSet);
begin
   DataSet.Refresh;
end;

procedure TFrOperadores.tbDadosBeforeDelete(DataSet: TDataSet);
begin
   if Application.MessageBox('Tem certeza que deseja excluir este registro?','TechCore-RTG',mb_IconQuestion or mb_YesNo) = mrNo then
      Abort;
end;

procedure TFrOperadores.tbDadosBeforePost(DataSet: TDataSet);
begin
   // Confere o preenchimento
   if eFuncionario.Text = '' then
   begin
      Application.MessageBox('Selecione o Funcionário','TechCore-RTG',mb_IconStop or mb_Ok);
      eFuncionario.SetFocus;
      Abort;
   end;

   if length( eUsuario.Text ) < 6 then
   begin
      Application.MessageBox('Informe o nome de usuário que será utilizado no acesso ao Caixa (mínimo 6 Caracteres).','TechCore-RTG',mb_IconStop or mb_Ok);
      eUsuario.SetFocus;
      Abort;
   end;

   if length( eSenha.Text ) < 6 then
   begin
      Application.MessageBox('Informe a senha de acesso (Mínimo 6 Caracteres)','TechCore-RTG',mb_IconStop or mb_Ok);
      eSenha.SetFocus;
      Abort;
   end;

end;

procedure TFrOperadores.tbDadosNewRecord(DataSet: TDataSet);
begin
   {Dados básicos do cadastros}
   DataSet.FieldByName('ID_EMPRESA').AsInteger    := FEmpresaClass.ID;
   DataSet.FieldByName('OPR_DATA_REG').AsDateTime := now;
   DataSet.FieldByName('OPR_STATUS').AsInteger    := 1;
end;

procedure TFrOperadores.tbDadosOPR_STATUSGetText(Sender: TField; var Text: string; DisplayText: Boolean);
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

end.
