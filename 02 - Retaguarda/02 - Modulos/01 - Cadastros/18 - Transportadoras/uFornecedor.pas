unit uFornecedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, RzPanel, RzRadGrp, RzDBRGrp, Vcl.StdCtrls, Vcl.DBCtrls,
  RzDBEdit, System.Actions, Vcl.ActnList, MaskUtils, ACBrUtil,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, ACBrEnterTab, ACBrValidador, ACBrBase, ACBrSocket,
  ACBrCEP, RzButton, JvExExtCtrls, JvExtComponent, JvPanel, JvDBImage,
  Vcl.Buttons, Vcl.ExtCtrls, JvExStdCtrls, JvCombobox, JvDBCombobox,
  RzEdit, RzDBBnEd, Vcl.Mask, Vcl.Grids, Vcl.DBGrids, JvExDBGrids,
  JvDBGrid, Vcl.ComCtrls, JvExComCtrls, JvComCtrls, JvDataSource,
  Vcl.Imaging.pngimage, JvImage;

type
  TFrFornecedor = class(TForm)
    pgControl: TJvPageControl;
    tabPrincipal: TTabSheet;
    JvDBGrid1: TJvDBGrid;
    tabDetalhes: TTabSheet;
    Label15: TLabel;
    Label16: TLabel;
    lRazao: TLabel;
    Label7: TLabel;
    Label28: TLabel;
    lFantasia: TLabel;
    lCnpj: TLabel;
    lIEstadual: TLabel;
    Label13: TLabel;
    Label29: TLabel;
    Label9: TLabel;
    Label5: TLabel;
    Label33: TLabel;
    Label25: TLabel;
    Label8: TLabel;
    Label6: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label34: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label27: TLabel;
    Label26: TLabel;
    Label41: TLabel;
    eCodigo: TDBEdit;
    eDataCadastro: TDBEdit;
    ePais: TDBEdit;
    eCodigoPais: TDBEdit;
    eInscEstadual: TDBEdit;
    eMunicipal: TDBEdit;
    eCep: TRzDBButtonEdit;
    eNumero: TDBEdit;
    eComplemento: TDBEdit;
    eUf: TDBEdit;
    eSkype: TDBEdit;
    eFacebook: TDBEdit;
    eSite: TDBEdit;
    eEmail: TDBEdit;
    eTipoProduto: TJvDBComboBox;
    Panel1: TPanel;
    Panel2: TPanel;
    BtnLogomarca: TSpeedButton;
    SpeedButton1: TSpeedButton;
    eLogo: TJvDBImage;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
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
    SearchCep: TACBrCEP;
    eChecaDoc: TACBrValidador;
    ACBrEnterTab1: TACBrEnterTab;
    tbDados: TFDQuery;
    tbDadosID: TIntegerField;
    SqlAux: TFDQuery;
    ActionManager1: TActionManager;
    actCadastrar: TAction;
    actAlterar: TAction;
    actExcluir: TAction;
    actGravar: TAction;
    actCancelar: TAction;
    actSair: TAction;
    RzDBMemo1: TRzDBMemo;
    Label10: TLabel;
    RzDBRadioGroup1: TRzDBRadioGroup;
    DBEdit1: TDBEdit;
    tbDadosID_EMPRESA: TIntegerField;
    tbDadosFOR_CODIGO: TIntegerField;
    tbDadosFOR_DATA_REG: TSQLTimeStampField;
    tbDadosFOR_RAZAO_SOCIAL: TStringField;
    tbDadosFOR_NOME_FANTASIA: TStringField;
    tbDadosFOR_CNPJ: TStringField;
    tbDadosFOR_IESTADUAL: TStringField;
    tbDadosFOR_IMUNICIPAL: TStringField;
    tbDadosFOR_CEP: TStringField;
    tbDadosFOR_ENDERECO: TStringField;
    tbDadosFOR_NUMERO: TIntegerField;
    tbDadosFOR_COMPLEMENTO: TStringField;
    tbDadosFOR_BAIRRO: TStringField;
    tbDadosFOR_CIDADE: TStringField;
    tbDadosFOR_CODIGO_CIDADE: TIntegerField;
    tbDadosFOR_UF: TStringField;
    tbDadosFOR_CODIGO_UF: TIntegerField;
    tbDadosFOR_PAIS: TStringField;
    tbDadosFOR_CODIGO_PAIS: TIntegerField;
    tbDadosFOR_FONE_FIXO: TStringField;
    tbDadosFOR_FONE_MOVEL: TStringField;
    tbDadosFOR_SKYPE: TStringField;
    tbDadosFOR_FACEBOOK: TStringField;
    tbDadosFOR_EMAIL: TStringField;
    tbDadosFOR_SITE: TStringField;
    tbDadosFOR_TIPO_PRODUTO: TIntegerField;
    tbDadosFOR_TIPO_PESSOA: TIntegerField;
    tbDadosFOR_STATUS: TIntegerField;
    tbDadosFOR_OBSERVACAO: TStringField;
    dsDados: TJvDataSource;
    tbDadosFOR_SEGMENTO: TStringField;
    eRazao: TRzDBEdit;
    eFantasia: TRzDBEdit;
    eCnpj: TRzDBEdit;
    eEndereco: TRzDBEdit;
    eBairro: TRzDBEdit;
    eCidade: TRzDBEdit;
    eFoneFixo: TRzDBEdit;
    eFoneMovel: TRzDBEdit;
    RzPanel2: TRzPanel;
    Label1: TLabel;
    Label2: TLabel;
    Bevel3: TBevel;
    Image2: TImage;
    procedure eCodigoEnter(Sender: TObject);
    procedure eCodigoExit(Sender: TObject);
    procedure tbDadosAfterInsert(DataSet: TDataSet);
    procedure pgControlChanging(Sender: TObject; var AllowChange: Boolean);
    procedure tbDadosAfterPost(DataSet: TDataSet);
    procedure tbDadosBeforeDelete(DataSet: TDataSet);
    procedure tbDadosNewRecord(DataSet: TDataSet);
    procedure tbDadosFOR_STATUSGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
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
    procedure eCepButtonClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure tbDadosFOR_CNPJGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure tbDadosBeforePost(DataSet: TDataSet);
    procedure eCnpjExit(Sender: TObject);
    procedure tbDadosFOR_TIPO_PESSOAChange(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrFornecedor: TFrFornecedor;

implementation

uses
   uTipoFornecedor, uModulo, Classe.Empresa;

{$R *.dfm}

procedure TFrFornecedor.actAlterarExecute(Sender: TObject);
begin
   tbdados.Edit;
end;

procedure TFrFornecedor.actAlterarUpdate(Sender: TObject);
begin
   if tbDados.IsEmpty then
      TAction(Sender).Enabled := false
   else
      TAction(Sender).Enabled := not ( tbDados.State in [dsInsert,dsEdit] );
end;

procedure TFrFornecedor.actCadastrarExecute(Sender: TObject);
begin
   tbDados.Insert;
end;

procedure TFrFornecedor.actCadastrarUpdate(Sender: TObject);
begin
   TAction(Sender).Enabled := not ( tbDados.State in [dsInsert,dsEdit] );
end;

procedure TFrFornecedor.actCancelarExecute(Sender: TObject);
begin
   tbDados.Cancel;
end;

procedure TFrFornecedor.actExcluirExecute(Sender: TObject);
begin
   tbdados.Delete;
end;

procedure TFrFornecedor.actGravarExecute(Sender: TObject);
begin
   tbdados.Post;
end;

procedure TFrFornecedor.actGravarUpdate(Sender: TObject);
begin
   TAction(Sender).Enabled := tbDados.State in [dsInsert,dsEdit];
end;

procedure TFrFornecedor.actSairExecute(Sender: TObject);
begin
   Self.Close;
end;

procedure TFrFornecedor.dsDadosStateChange(Sender: TObject);
begin
   if tbDados.State in [dsInsert,dsEdit] then
      pgControl.ActivePage := tabDetalhes
   else
      pgControl.ActivePage := tabPrincipal;
end;

procedure TFrFornecedor.eCepButtonClick(Sender: TObject);
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
            tbDados.FieldByName('FOR_ENDERECO').AsString       := AnsiUpperCase(SearchCep.Enderecos[0].Logradouro);
            tbDados.FieldByName('FOR_CODIGO_CIDADE').AsInteger := SearchCep.Enderecos[0].IBGE_Municipio.ToInteger;
            tbDados.FieldByName('FOR_BAIRRO').AsString         := AnsiUpperCase(SearchCep.Enderecos[0].Bairro);
            tbDados.FieldByName('FOR_CIDADE').AsString         := AnsiUpperCase(SearchCep.Enderecos[0].Municipio);
            tbDados.FieldByName('FOR_CODIGO_UF').AsInteger     := SearchCep.Enderecos[0].IBGE_UF.ToInteger;
            tbDados.FieldByName('FOR_UF').AsString             := AnsiUpperCase(SearchCep.Enderecos[0].UF);

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

procedure TFrFornecedor.eCodigoEnter(Sender: TObject);
begin
   TEdit(Sender).Color := $00B8E6FE;
end;

procedure TFrFornecedor.eCodigoExit(Sender: TObject);
begin
   TEdit(Sender).Color := clWhite;
end;

procedure TFrFornecedor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   FreeAndNil( FrFornecedor );
end;

procedure TFrFornecedor.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
   {Se houver registro em inclusão ou alteração, imprede a saida}
   if tbDados.State in [dsInsert,dsEdit] then
   begin
      Application.MessageBox('Antes de fechar o formulário, grave ou cancele a alteração ou Inclusão.','TechCore-RTG',mb_IconStop or mb_Ok);
      CanClose := false;
   end;
end;

procedure TFrFornecedor.FormCreate(Sender: TObject);
begin
   {Ajusta o formulário na criação}
   pgControl.ActivePage := tabPrincipal;

   {Carrega todos os grupos de produtos}
   tbDados.ParamByName('ID_EMPRESA').AsInteger := FEmpresaClass.ID;
   tbDados.Open();
end;

procedure TFrFornecedor.pgControlChanging(Sender: TObject; var AllowChange: Boolean);
begin
   AllowChange := dsDados.DataSet.State in [dsInsert,dsEdit];
end;

procedure TFrFornecedor.eCnpjExit(Sender: TObject);
var
   P : pChar;
begin
   TEdit(Sender).Color := clWhite;

   {Checa se o Cnpj informado está correto}
   if tbdados.FieldByName('for_tipo_pessoa').AsInteger = 1 then
   begin
      eChecadoc.TipoDocto := docCNPJ;
      P := pChar('Erro, Cnpj informado não é válido.');
   end
   else
   begin
      eChecadoc.TipoDocto := docCPF;
      P := pChar('Erro, Cpf informado não é válido.');
   end;

   eChecaDoc.Documento := eCnpj.Text;
   if not eChecaDoc.Validar then
   begin
      Application.MessageBox(P,'TechCore-RTG',mb_IconStop or mb_Ok);
      eCnpj.SetFocus;
   end;
end;

procedure TFrFornecedor.tbDadosAfterInsert(DataSet: TDataSet);
begin
   {Checa se continua o cadastro ou cancela}
   try
      FrTipoFornecedor := TFrTipoFornecedor.Create(self);
      if FrTipoFornecedor.ShowModal = mrCancel then
      begin
         tbdados.Cancel;
         Abort;
      end;

      {Posiciona o cursor}
      eRazao.SetFocus;

   finally
      FreeAndNil( FrTipoFornecedor );
   end;
end;

procedure TFrFornecedor.tbDadosAfterPost(DataSet: TDataSet);
begin
   {Atualiza o cursor dos dados da empresa}
   tbDados.Refresh;
end;

procedure TFrFornecedor.tbDadosBeforeDelete(DataSet: TDataSet);
begin
   if Application.MessageBox('Tem certeza que deseja excluir este registro?','TechCore-RTG',mb_IconQuestion or mb_YesNo) = mrNO then
      Abort;
end;

procedure TFrFornecedor.tbDadosBeforePost(DataSet: TDataSet);
var
   P      : pChar;
   tbPesq : TFDQuery;
begin
   {Checa o preenchimento dos campos}
   if eRazao.Text = '' then
   begin
      case tbDados.FieldByName('for_tipo_pessoa').AsInteger of
         1 : P := pChar('Erro, Obrigatório informar a Razão Social.');
         2 : P := pChar('Erro, Obrigatório informar o Nome Completo.');
      end;

      Application.MessageBox(P,'TechCore-RTG',mb_IconStop or mb_Ok);
      eRazao.SetFocus;
      Abort;
   end;

   {Checa o preenchimento dos campos}
   if eFantasia.Text = '' then
   begin
      case tbDados.FieldByName('for_tipo_pessoa').AsInteger of
         1 : P := pChar('Erro, Obrigatório informar o Nome Fantasia.');
         2 : P := pChar('Erro, Obrigatório informar o Apelido.');
      end;

      Application.MessageBox(P,'TechCore-RTG',mb_IconStop or mb_Ok);
      eRazao.SetFocus;
      Abort;
   end;

   if OnlyNumber( eCep.Text ) = '' then
   begin
      Application.MessageBox('Erro, Obrigatório informar o Cep.','TechCore-RTG',mb_IconStop or mb_Ok);
      eCep.SetFocus;
      Abort;
   end;

   if ( eEndereco.Text = '' ) or ( eBairro.Text = '' ) or ( eCidade.Text = '' ) or ( eUf.Text = '' ) or ( eNumero.Text = '' ) then
   begin
      Application.MessageBox('Erro, Obrigatório informar o Endereço corretamente.','TechCore-RTG',mb_IconStop or mb_Ok);
      eEndereco.SetFocus;
      Abort;
   end;

   if (OnlyNumber( eFoneFixo.Text ) = '' ) and ( OnlyNumber( eFoneMovel.Text ) = '' ) then
   begin
      Application.MessageBox('Erro, Obrigatório informar ao menos um Telefone de contato.','TechCore-RTG',mb_IconStop or mb_Ok);
      eFoneFixo.SetFocus;
      Abort;
   end;

   if eTipoProduto.ItemIndex < 0 then
   begin
      Application.MessageBox('Erro, Obrigatório informar o Tipo de Produto fornecido.','TechCore-RTG',mb_IconStop or mb_Ok);
      eTipoProduto.SetFocus;
      Abort;
   end;

   {Checa se o fornecedor já esta cadastrado}
   tbPesq            := TFDQuery.Create(Self);
   tbPesq.Connection := FrModulo.DBConexao;
   try

      case tbDados.State of

         dsInsert :
         begin
            tbPesq.SQL.Add('SELECT 1 FROM C000305 WHERE FOR_CNPJ = :FOR_CNPJ');
            tbPesq.ParamByName('FOR_CNPJ').AsString := OnlyNumber( eCnpj.Text );
            tbPesq.Open();
         end;

         dsEdit :
         begin
            tbPesq.SQL.Add('SELECT 1 FROM C000305 WHERE ID <> :ID AND FOR_CNPJ = :FOR_CNPJ');
            tbPesq.ParamByName('ID').AsInteger      := tbDadosID.AsInteger;
            tbPesq.ParamByName('FOR_CNPJ').AsString := OnlyNumber( eCnpj.Text );
            tbPesq.Open();
         end;

      end;

      {Trata o aviso para o tipo de pessoa}
      case tbDados.FieldByName('for_tipo_pessoa').AsInteger of
         1 : P := pChar('Erro, Já existe cadastro com este número de Cnpj no banco de dados.');
         2 : P := pChar('Erro, Já existe cadastro com este número de Cpf no banco de dados.');
      end;

      if not tbPesq.IsEmpty then
      begin
         Application.MessageBox(P,'TechCore-RTG',mb_IconStop or mb_Ok);
         eCnpj.SetFocus;
         Abort;
      end;

   finally
      FreeAndNil( tbPesq );
   end;

end;

procedure TFrFornecedor.tbDadosFOR_CNPJGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
   {Ajusta o formulário conforme o tipo de cadastro}
   case tbDados.FieldByName('for_tipo_pessoa').AsInteger of

      1 : begin   // Pessoa jurídica

         {Titulos dos campos}
         lRazao.Caption       := 'Razão Social';
         lFantasia.Caption    := 'Nome Fantasia';
         lCnpj.Caption        := 'Cnpj';
         lIEstadual.Caption   := 'Insc. Estadual';

         {Mascaras dos campos}
         Text := FormatMaskText('!99\.999\.999\/9999\-99;0;_',tbDados.FieldByName('for_cnpj').AsString);

      end;

      2 : begin   // Pessoa Física

         {Titulos dos campos}
         lRazao.Caption       := 'Nome Completo';
         lFantasia.Caption    := 'Apelido';
         lCnpj.Caption        := 'Cpf';
         lIEstadual.Caption   := 'Rg.';

         {Mascaras dos campos}
         Text := FormatMaskText('!999\.999\.999\-99;0;_',tbDados.FieldByName('for_cnpj').AsString)
      end;

   end;
end;

procedure TFrFornecedor.tbDadosFOR_STATUSGetText(Sender: TField; var Text: string; DisplayText: Boolean);
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

procedure TFrFornecedor.tbDadosFOR_TIPO_PESSOAChange(Sender: TField);
begin
   {Ajusta o formulário conforme o tipo de cadastro}
   dsDados.DataSet := nil;

   case tbDados.FieldByName('cli_tipo_pessoa').AsInteger of

      1 : begin   // Pessoa jurídica

         {Titulos dos campos}
         lRazao.Caption       := 'Razão Social';
         lFantasia.Caption    := 'Nome Fantasia';
         lCnpj.Caption        := 'Cnpj';
         lIEstadual.Caption   := 'Insc. Estadual';

         {Mascaras dos campos}
         tbDados.FieldByName('FOR_CNPJ').EditMask := '!99.999\.999\/9999\-99;0;_';

      end;

      2 : begin   // Pessoa Física

         {Titulos dos campos}
         lRazao.Caption       := 'Nome Completo';
         lFantasia.Caption    := 'Apelido';
         lCnpj.Caption        := 'Cpf';
         lIEstadual.Caption   := 'Rg.';

         {Mascaras dos campos}
         tbDados.FieldByName('FOR_CNPJ').EditMask := '!999\.999\.999\-99;0;_';
      end;

   end;

   dsDados.DataSet := tbDados;
end;

procedure TFrFornecedor.tbDadosNewRecord(DataSet: TDataSet);
begin
   {Dados básicos do cadastros}
   DataSet.FieldByName('ID_EMPRESA').AsInteger    := FEmpresaClass.ID;
   DataSet.FieldByName('FOR_DATA_REG').AsDateTime := now;
   DataSet.FieldByName('FOR_STATUS').AsInteger    := 1;
end;

end.
