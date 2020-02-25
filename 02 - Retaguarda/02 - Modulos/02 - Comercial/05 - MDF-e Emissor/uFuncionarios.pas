unit uFuncionarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, JvExComCtrls,
  JvComCtrls, Vcl.ExtCtrls, JvExExtCtrls, JvExtComponent, JvPanel, RzEdit,
  RzDBEdit, RzDBBnEd, JvExMask, JvToolEdit, JvDBControls, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, JvExDBGrids,
  JvDBGrid, JvExControls, JvDBLookup, FireDAC.Stan.Intf, ACBrUtil,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, JvDataSource, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  RzPanel, RzButton, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, ACBrEnterTab, ACBrSocket,
  ACBrCEP, ACBrBase, ACBrValidador, Vcl.Imaging.pngimage, JvImage, RzCmboBx;

type
  TFrFuncionarios = class(TForm)
    pgControl: TJvPageControl;
    tabPrincipal: TTabSheet;
    tabDetalhes: TTabSheet;
    Label15: TLabel;
    eCodigo: TDBEdit;
    eDataCadastro: TDBEdit;
    Label16: TLabel;
    Label2: TLabel;
    eNome: TDBEdit;
    eDataNasc: TJvDBDateEdit;
    Label30: TLabel;
    Label48: TLabel;
    eApelido: TDBEdit;
    Label19: TLabel;
    eCpf: TDBEdit;
    eRg: TDBEdit;
    Label1: TLabel;
    Label9: TLabel;
    Label5: TLabel;
    eEndereco: TDBEdit;
    eCep: TRzDBButtonEdit;
    eNumero: TDBEdit;
    Label33: TLabel;
    Label25: TLabel;
    eComplemento: TDBEdit;
    eBairro: TDBEdit;
    Label8: TLabel;
    Label6: TLabel;
    eCidade: TDBEdit;
    DBEdit2: TDBEdit;
    Label41: TLabel;
    Label11: TLabel;
    eUf: TDBEdit;
    DBEdit3: TDBEdit;
    eFoneFixo: TDBEdit;
    Label12: TLabel;
    Label3: TLabel;
    eFoneMovel: TDBEdit;
    eSkype: TDBEdit;
    Label4: TLabel;
    Label34: TLabel;
    eFacebook: TDBEdit;
    eEmail: TDBEdit;
    Label45: TLabel;
    eTabPrecos: TJvDBLookupCombo;
    Label7: TLabel;
    JvDBGrid1: TJvDBGrid;
    tbDados: TFDQuery;
    dsDados: TJvDataSource;
    eOutrosDetalhes: TDBEdit;
    Label10: TLabel;
    tbDadosID: TIntegerField;
    tbDadosID_EMPRESA: TIntegerField;
    tbDadosFUN_DATA_REG: TSQLTimeStampField;
    tbDadosFUN_NOME: TStringField;
    tbDadosFUN_APELIDO: TStringField;
    tbDadosFUN_CPF: TStringField;
    tbDadosFUN_RG: TStringField;
    tbDadosFUN_ENDERECO: TStringField;
    tbDadosFUN_CEP: TStringField;
    tbDadosFUN_BAIRRO: TStringField;
    tbDadosFUN_CIDADE: TStringField;
    tbDadosFUN_CODIGO_CIDADE: TIntegerField;
    tbDadosFUN_UF: TStringField;
    tbDadosFUN_CODIGO_UF: TIntegerField;
    tbDadosFUN_FONE_FIXO: TStringField;
    tbDadosFUN_FONE_MOVEL: TStringField;
    tbDadosFUN_SKYPE: TStringField;
    tbDadosFUN_FACEBOOK: TStringField;
    tbDadosFUN_EMAIL: TStringField;
    tbDadosFUN_STATUS: TIntegerField;
    tbDadosFUN_VENDEDOR: TIntegerField;
    tbDadosFUN_OPERADOR: TIntegerField;
    tbDadosFUN_SUPERVISOR: TIntegerField;
    tbDadosFUN_CODIGO: TIntegerField;
    tbDadosFUN_DATA_NASC: TDateField;
    tbDadosFUN_NUMERO: TStringField;
    tbDadosFUN_COMPLEMENTO: TStringField;
    tbDadosID_TABELA_DECONTO: TIntegerField;
    tbDadosFUN_OUTROS: TIntegerField;
    tbDadosFUN_OUTROS_DETALHES: TStringField;
    ActionManager1: TActionManager;
    actCadastrar: TAction;
    actAlterar: TAction;
    actExcluir: TAction;
    actGravar: TAction;
    actCancelar: TAction;
    actSair: TAction;
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
    eChecaDoc: TACBrValidador;
    SearchCep: TACBrCEP;
    ACBrEnterTab1: TACBrEnterTab;
    tbDesconto: TFDQuery;
    dsDesconto: TJvDataSource;
    tbDadosFUN_COMPRADOR: TIntegerField;
    RzPanel2: TRzPanel;
    Label13: TLabel;
    Label14: TLabel;
    Bevel3: TBevel;
    Image2: TImage;
    RzComboBox1: TRzComboBox;
    Label20: TLabel;
    tbDadosFUN_LOGAR: TStringField;
    RzGroupBox1: TRzGroupBox;
    eVendedor: TDBCheckBox;
    DBCheckBox1: TDBCheckBox;
    eOperador: TDBCheckBox;
    eSupervisor: TDBCheckBox;
    eOutros: TDBCheckBox;
    procedure pgControlChanging(Sender: TObject; var AllowChange: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure tbDadosAfterPost(DataSet: TDataSet);
    procedure tbDadosBeforeDelete(DataSet: TDataSet);
    procedure tbDadosBeforePost(DataSet: TDataSet);
    procedure tbDadosFUN_STATUSGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure eOutrosClick(Sender: TObject);
    procedure actCadastrarExecute(Sender: TObject);
    procedure actAlterarExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure actGravarExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure actSairExecute(Sender: TObject);
    procedure actCadastrarUpdate(Sender: TObject);
    procedure actAlterarUpdate(Sender: TObject);
    procedure actGravarUpdate(Sender: TObject);
    procedure dsDadosStateChange(Sender: TObject);
    procedure eCpfExit(Sender: TObject);
    procedure eCpfEnter(Sender: TObject);
    procedure eCodigoExit(Sender: TObject);
    procedure eCodigoEnter(Sender: TObject);
    procedure tbDadosNewRecord(DataSet: TDataSet);
    procedure eCepButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrFuncionarios: TFrFuncionarios;

implementation

uses
   Classe.Empresa, uModuloRet;

{$R *.dfm}

procedure TFrFuncionarios.actAlterarExecute(Sender: TObject);
begin
   tbDados.Edit;
end;

procedure TFrFuncionarios.actAlterarUpdate(Sender: TObject);
begin
   if tbDados.IsEmpty then
      TAction(Sender).Enabled := false
   else
      TAction(Sender).Enabled := not ( tbDados.State in [dsInsert,dsEdit] );
end;

procedure TFrFuncionarios.actCadastrarExecute(Sender: TObject);
begin
   tbDados.Insert;
end;

procedure TFrFuncionarios.actCadastrarUpdate(Sender: TObject);
begin
   TAction(Sender).Enabled := not ( tbDados.State in [dsInsert,dsEdit] );
end;

procedure TFrFuncionarios.actCancelarExecute(Sender: TObject);
begin
   tbdados.Cancel;
end;

procedure TFrFuncionarios.actExcluirExecute(Sender: TObject);
begin
   tbDados.Delete;
end;

procedure TFrFuncionarios.actGravarExecute(Sender: TObject);
begin
   tbDados.Post;
end;

procedure TFrFuncionarios.actGravarUpdate(Sender: TObject);
begin
   TAction(Sender).Enabled := tbDados.State in [dsInsert,dsEdit];
end;

procedure TFrFuncionarios.actSairExecute(Sender: TObject);
begin
   Self.Close;
end;

procedure TFrFuncionarios.dsDadosStateChange(Sender: TObject);
begin
   if tbDados.State in [dsInsert,dsEdit] then
      pgControl.ActivePage := tabDetalhes
   else
      pgControl.ActivePage := tabPrincipal;
end;

procedure TFrFuncionarios.eCepButtonClick(Sender: TObject);
begin
   // Efetua a busca do cep informado
   if (eCep.Text <> '') then
   begin
      case (SearchCep.BuscarPorCEP(eCep.Text)) of
         0 : begin
            Application.MessageBox('Não foram encontrados resultados para o CEP informado.','TechCore-RTG',mb_IconStop or mb_Ok);
            eCep.Clear;
         end;

         1 : begin
            tbDados.FieldByName('FUN_ENDERECO').AsString       := AnsiUpperCase(SearchCep.Enderecos[0].Logradouro);
            tbDados.FieldByName('FUN_CODIGO_CIDADE').AsInteger := SearchCep.Enderecos[0].IBGE_Municipio.ToInteger;
            tbDados.FieldByName('FUN_BAIRRO').AsString         := AnsiUpperCase(SearchCep.Enderecos[0].Bairro);
            tbDados.FieldByName('FUN_CIDADE').AsString         := AnsiUpperCase(SearchCep.Enderecos[0].Municipio);
            tbDados.FieldByName('FUN_CODIGO_UF').AsInteger     := SearchCep.Enderecos[0].IBGE_UF.ToInteger;
            tbDados.FieldByName('FUN_UF').AsString             := AnsiUpperCase(SearchCep.Enderecos[0].UF);

            eNumero.SetFocus;
         end;

         2..100 : begin
            Application.MessageBox('Foram encontrados mais de um endereço para este CEP.','TechCore-RTG',mb_IconStop or mb_Ok);
            eCep.Clear;
         end;
      end;
   end
   else
      Application.MessageBox('Informe o número do CEP que deseja consultar.','TechCore-RTG',mb_IconStop or mb_Ok);
end;

procedure TFrFuncionarios.eCodigoEnter(Sender: TObject);
begin
   TEdit(Sender).Color := $00B8E6FE;
end;

procedure TFrFuncionarios.eCodigoExit(Sender: TObject);
begin
   TEdit(Sender).Color := clWhite;
end;

procedure TFrFuncionarios.eCpfEnter(Sender: TObject);
begin
   TEdit(Sender).Color := $00B8E6FE;
end;

procedure TFrFuncionarios.eCpfExit(Sender: TObject);
begin
   TEdit(Sender).Color := clWhite;

   {Checa se o Cnpj informado está correto}
   eChecaDoc.Documento := eCpf.Text;
   if not eChecaDoc.Validar then
   begin
      Application.MessageBox('Erro, Cpf informado não é válido.','TechCore-RTG',mb_IconStop or mb_Ok);
      eCpf.SetFocus;
   end;
end;

procedure TFrFuncionarios.eOutrosClick(Sender: TObject);
begin
   eOutrosDetalhes.Enabled := eOutros.Checked;
end;

procedure TFrFuncionarios.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   FreeAndNil( FrFuncionarios );
end;

procedure TFrFuncionarios.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
   {Se houver registro em inclusão ou alteração, imprede a saida}
   if tbDados.State in [dsInsert,dsEdit] then
   begin
      Application.MessageBox('Antes de fechar o formulário, grave ou cancele a alteração ou Inclusão.','TechCore-RTG',mb_IconStop or mb_Ok);
      CanClose := false;
   end;
end;

procedure TFrFuncionarios.FormCreate(Sender: TObject);
begin
   {Ajusta o formulário na criação}
   pgControl.ActivePage := tabPrincipal;

   {Carrega todos os grupos de produtos}
   tbDados.ParamByName('ID_EMPRESA').AsInteger := FEmpresaClass.ID;
   tbDados.Open();

   {Carrega as tabelas de descontos}
   tbDesconto.ParamByName('ID_EMPRESA').AsInteger := FEmpresaClass.ID;
   tbDesconto.Open();
end;

procedure TFrFuncionarios.pgControlChanging(Sender: TObject; var AllowChange: Boolean);
begin
   AllowChange := tbDados.State in [dsInsert,dsEdit];
end;

procedure TFrFuncionarios.tbDadosAfterPost(DataSet: TDataSet);
begin
   DataSet.Refresh;
end;

procedure TFrFuncionarios.tbDadosBeforeDelete(DataSet: TDataSet);
begin
   if Application.MessageBox('Tem certeza que deseja excluir este registro?','TechCore-RTG',mb_IconQuestion or mb_YesNo) = mrNo then
      Abort;
end;

procedure TFrFuncionarios.tbDadosBeforePost(DataSet: TDataSet);
begin
   if eNome.Text = '' then
   begin
      Application.MessageBox('Erro, Obrigatório informar o Nome Completo.','TechCore-RTG',mb_IconStop or mb_Ok);
      eNome.SetFocus;
      Abort;
   end;

   if eApelido.Text = '' then
   begin
      Application.MessageBox('Erro, Obrigatório informar o Apelido.','TechCore-RTG',mb_IconStop or mb_Ok);
      eApelido.SetFocus;
      Abort;
   end;

   if eCpf.Text = '' then
   begin
      Application.MessageBox('Erro, Obrigatório informar o Cpf.','TechCore-RTG',mb_IconStop or mb_Ok);
      eCpf.SetFocus;
      Abort;
   end;

   if eCep.Text = '' then
   begin
      Application.MessageBox('Erro, Obrigatório informar o Cep.','TechCore-RTG',mb_IconStop or mb_Ok);
      eCep.SetFocus;
      Abort;
   end;

   if (eEndereco.Text = '' ) or ( eCidade.Text = '' ) or (eUf.Text = '') then
   begin
      Application.MessageBox('Erro, Obrigatório informar o Endereço Completo.','TechCore-RTG',mb_IconStop or mb_Ok);
      eEndereco.SetFocus;
      Abort;
   end;

   if ( OnlyNumber( eFoneFixo.Text ) = '' ) and ( OnlyNumber(eFoneMovel.Text) = '' ) then
   begin
      Application.MessageBox('Erro, Obrigatório informar ao menos um Telefone de Contato.','TechCore-RTG',mb_IconStop or mb_Ok);
      eFoneFixo.SetFocus;
      Abort;
   end;

   if ( not eVendedor.Checked ) and ( not eOperador.Checked ) and ( not eSupervisor.Checked ) then
   begin
      Application.MessageBox('Erro, Obrigatório informar ao menos uma Função','TechCore-RTG',mb_IconStop or mb_Ok);
      eVendedor.SetFocus;
      Abort;
   end;

   if ( eOutros.Checked ) and (eOutrosDetalhes.Text = '') then
   begin
      Application.MessageBox('Erro, Ao selecionar a função outros, é necessário informar os detalhes.','TechCore-RTG',mb_IconStop or mb_Ok);
      eOutrosDetalhes.SetFocus;
      Abort;
   end;

end;

procedure TFrFuncionarios.tbDadosFUN_STATUSGetText(Sender: TField; var Text: string; DisplayText: Boolean);
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

procedure TFrFuncionarios.tbDadosNewRecord(DataSet: TDataSet);
begin
   {Dados básicos do cadastros}
   DataSet.FieldByName('ID_EMPRESA').AsInteger    := FEmpresaClass.ID;
   DataSet.FieldByName('FUN_DATA_REG').AsDateTime := now;
   DataSet.FieldByName('FUN_STATUS').AsInteger    := 1;
end;

end.
