unit uClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, JvDataSource, System.Actions, Vcl.ActnList, MaskUtils,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, ACBrEnterTab, ACBrValidador, ACBrBase, ACBrSocket,
  ACBrCEP, RzPanel, RzButton, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  JvExExtCtrls, JvImage, JvExtComponent, JvPanel, RzRadGrp, RzDBRGrp,
  Vcl.StdCtrls, Vcl.DBCtrls, RzDBEdit, JvDBImage, Vcl.Buttons,
  JvExStdCtrls, JvCombobox, JvDBCombobox, RzEdit, RzDBBnEd, Vcl.Mask,
  Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid, Vcl.ComCtrls,
  JvExComCtrls, JvComCtrls, RzCmboBx, RzDBCmbo, ACBrUtil, Vcl.Menus,
  JvDBControls, JPeg, Vcl.ExtDlgs;

type
  TFrClientes = class(TForm)
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
    tbDadosID_EMPRESA: TIntegerField;
    SqlAux: TFDQuery;
    ActionManager1: TActionManager;
    actCadastrar: TAction;
    actAlterar: TAction;
    actExcluir: TAction;
    actGravar: TAction;
    actCancelar: TAction;
    actSair: TAction;
    dsDados: TJvDataSource;
    tbDadosCLI_CODIGO: TIntegerField;
    tbDadosCLI_DATA_REG: TSQLTimeStampField;
    tbDadosCLI_RAZAO_SOCIAL: TStringField;
    tbDadosCLI_NOME_FANTASIA: TStringField;
    tbDadosCLI_CNPJ: TStringField;
    tbDadosCLI_IESTADUAL: TStringField;
    tbDadosCLI_IMUNICIPAL: TStringField;
    tbDadosCLI_CEP: TStringField;
    tbDadosCLI_ENDERECO: TStringField;
    tbDadosCLI_NUMERO: TIntegerField;
    tbDadosCLI_COMPLEMENTO: TStringField;
    tbDadosCLI_BAIRRO: TStringField;
    tbDadosCLI_CIDADE: TStringField;
    tbDadosCLI_CODIGO_CIDADE: TIntegerField;
    tbDadosCLI_UF: TStringField;
    tbDadosCLI_CODIGO_UF: TIntegerField;
    tbDadosCLI_PAIS: TStringField;
    tbDadosCLI_CODIGO_PAIS: TIntegerField;
    tbDadosCLI_FONE_FIXO: TStringField;
    tbDadosCLI_SKYPE: TStringField;
    tbDadosCLI_FACEBOOK: TStringField;
    tbDadosCLI_EMAIL: TStringField;
    tbDadosCLI_SITE: TStringField;
    tbDadosCLI_TIPO_PESSOA: TIntegerField;
    tbDadosCLI_CONTRIB_ICMS: TIntegerField;
    tbDadosCLI_OBSERVACAO: TStringField;
    tbDadosCLI_STATUS: TIntegerField;
    tbDadosCLI_FONE_MOVEL: TStringField;
    RzPanel1: TRzPanel;
    pgControl: TJvPageControl;
    tabPrincipal: TTabSheet;
    JvDBGrid1: TJvDBGrid;
    tabDetalhes: TTabSheet;
    RzSpacer6: TRzSpacer;
    RzToolButton1: TRzToolButton;
    actSelecionar: TAction;
    QueryCnt: TFDQuery;
    dsQueryCnt: TDataSource;
    QueryCntID: TIntegerField;
    QueryCntID_C000307: TIntegerField;
    QueryCntCNT_NOME: TStringField;
    QueryCntCNT_EMAIL: TStringField;
    QueryCntCNT_FONE_FIXO: TStringField;
    QueryCntCNT_FONE_MOVEL: TStringField;
    pnFundo: TRzPanel;
    eSite: TDBEdit;
    eEmail: TDBEdit;
    eSkype: TDBEdit;
    eFacebook: TDBEdit;
    DBEdit3: TDBEdit;
    RzDBMemo1: TRzDBMemo;
    Panel1: TPanel;
    Panel2: TPanel;
    BtnLogomarca: TSpeedButton;
    SpeedButton1: TSpeedButton;
    eLogo: TJvDBImage;
    DBEdit2: TDBEdit;
    eInscEstadual: TDBEdit;
    eMunicipal: TDBEdit;
    ePais: TDBEdit;
    eCodigoPais: TDBEdit;
    eComplemento: TDBEdit;
    eUf: TDBEdit;
    eCep: TRzDBButtonEdit;
    eNumero: TDBEdit;
    eEndereco: TRzDBEdit;
    RzDBComboBox1: TRzDBComboBox;
    eFantasia: TRzDBEdit;
    eCnpj: TRzDBEdit;
    eContribICMS: TRzDBComboBox;
    eRazao: TRzDBEdit;
    eFoneFixo: TRzDBEdit;
    eFoneMovel: TRzDBEdit;
    eBairro: TRzDBEdit;
    eCidade: TRzDBEdit;
    eDataCadastro: TDBEdit;
    Label9: TLabel;
    Label5: TLabel;
    Label13: TLabel;
    Label29: TLabel;
    Label8: TLabel;
    Label6: TLabel;
    Label33: TLabel;
    Label25: TLabel;
    lRazao: TLabel;
    Label7: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    lCnpj: TLabel;
    lIEstadual: TLabel;
    Label28: TLabel;
    lFantasia: TLabel;
    Label10: TLabel;
    Label1: TLabel;
    eCodigo: TDBEdit;
    Label32: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label45: TLabel;
    Label41: TLabel;
    Label34: TLabel;
    Label44: TLabel;
    QueryCntCNT_ENDERECO: TStringField;
    QueryCntCNT_CEP: TStringField;
    QueryCntCNT_BAIRRO: TStringField;
    QueryCntCNT_CIDADE: TStringField;
    QueryCntCNT_PARENTENSCO: TStringField;
    QueryCntCNT_UF: TStringField;
    RzPanel2: TRzPanel;
    Label26: TLabel;
    Label27: TLabel;
    Bevel3: TBevel;
    Image2: TImage;
    GridCont: TJvDBGrid;
    Label30: TLabel;
    PopCnt: TPopupMenu;
    ExcluirContatos1: TMenuItem;
    PopExcluir: TPopupMenu;
    Excluir1: TMenuItem;
    actContExcluir: TAction;
    ExcluirContato1: TMenuItem;
    N1: TMenuItem;
    tbDadosCLI_FOTO: TBlobField;
    OpenImg: TOpenPictureDialog;
    procedure actCadastrarExecute(Sender: TObject);
    procedure actAlterarExecute(Sender: TObject);
    procedure actGravarExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure actSairExecute(Sender: TObject);
    procedure actCadastrarUpdate(Sender: TObject);
    procedure actAlterarUpdate(Sender: TObject);
    procedure actGravarUpdate(Sender: TObject);
    procedure tbDadosCLI_CNPJGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure tbDadosCLI_STATUSGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure tbDadosNewRecord(DataSet: TDataSet);
    procedure tbDadosBeforeDelete(DataSet: TDataSet);
    procedure tbDadosAfterPost(DataSet: TDataSet);
    procedure eCnpjExit(Sender: TObject);
    procedure eCepButtonClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure tabDetalhesShow(Sender: TObject);
    procedure eCodigoEnter(Sender: TObject);
    procedure eCodigoExit(Sender: TObject);
    procedure tbDadosAfterInsert(DataSet: TDataSet);
    procedure tbDadosBeforePost(DataSet: TDataSet);
    procedure tbDadosCLI_TIPO_PESSOAChange(Sender: TField);
    procedure actSelecionarExecute(Sender: TObject);
    procedure actSelecionarUpdate(Sender: TObject);
    procedure QueryCntBeforeDelete(DataSet: TDataSet);
    procedure actContatosCadUpdate(Sender: TObject);
    procedure dsDadosStateChange(Sender: TObject);
    procedure pgControlChanging(Sender: TObject; var AllowChange: Boolean);
    procedure pgControlContChanging(Sender: TObject;
      var AllowChange: Boolean);
    procedure ExcluirContatos1Click(Sender: TObject);
    procedure QueryCntCNT_NOMESetText(Sender: TField; const Text: string);
    procedure GridContEnter(Sender: TObject);
    procedure GridContExit(Sender: TObject);
    procedure QueryCntCNT_EMAILSetText(Sender: TField; const Text: string);
    procedure actContExcluirExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure actContExcluirUpdate(Sender: TObject);
    procedure BtnLogomarcaClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrClientes: TFrClientes;

implementation

uses
   Classe.Empresa, uTipoCliente, uModuloRet, uListaClientes;

{$R *.dfm}

procedure TFrClientes.actAlterarExecute(Sender: TObject);
begin
   tbDados.Edit
end;

procedure TFrClientes.actAlterarUpdate(Sender: TObject);
begin
   if tbDados.IsEmpty then
      TAction(Sender).Enabled := false
   else
      TAction(Sender).Enabled := not ( tbDados.State in [dsInsert,dsEdit] );
end;

procedure TFrClientes.actCadastrarExecute(Sender: TObject);
begin
   tbDados.Insert
end;

procedure TFrClientes.actCadastrarUpdate(Sender: TObject);
begin
   TAction(Sender).Enabled := not (tbDados.State in [dsInsert,dsEdit])
end;

procedure TFrClientes.actCancelarExecute(Sender: TObject);
begin
   tbDados.Cancel
end;

procedure TFrClientes.actContatosCadUpdate(Sender: TObject);
begin
   TAction(Sender).Enabled := (not tbDados.IsEmpty) and (tbDados.State = dsBrowse);
end;

procedure TFrClientes.actContExcluirExecute(Sender: TObject);
begin
   QueryCnt.Delete;
end;

procedure TFrClientes.actContExcluirUpdate(Sender: TObject);
begin
   TAction(Sender).Enabled := (not (tbDados.State in [dsInsert, dsEdit])) and (not (QueryCnt.State in [dsInsert, dsEdit])) and not (QueryCnt.IsEmpty);
end;

procedure TFrClientes.actExcluirExecute(Sender: TObject);
begin
   tbDados.Delete;
end;

procedure TFrClientes.actGravarExecute(Sender: TObject);
begin
   tbDados.Post
end;

procedure TFrClientes.actGravarUpdate(Sender: TObject);
begin
   TAction(Sender).Enabled := tbDados.State in [dsInsert,dsEdit]
end;

procedure TFrClientes.actSairExecute(Sender: TObject);
begin
   Self.Close;
end;

procedure TFrClientes.actSelecionarExecute(Sender: TObject);
begin
   try
      FrListaClientes := TFrListaClientes.Create(self);
      if FrListaClientes.ShowModal = mrOk then
      begin
         pgControl.ActivePage := tabPrincipal;
         tbDados.Locate('ID', FrListaClientes.QueryID.AsInteger, []);
      end;
   finally
      FreeAndNil( FrListaClientes );
   end;
end;

procedure TFrClientes.actSelecionarUpdate(Sender: TObject);
begin
   TAction(Sender).Enabled := not (tbDados.State in [dsInsert, dsEdit])
end;

procedure TFrClientes.BtnLogomarcaClick(Sender: TObject);
var
   iv, ih : integer;
   eImgLogo : TJPEGImage;
begin
   {Se não estiver editando}
   if not (tbDados.State in [dsInsert,dsEdit]) then
      Abort;

   eImgLogo :=  TJPEGImage.Create;
   try
      ChDir('..\Logotipos');
      OpenImg.InitialDir := GetCurrentDir;

      try

         if OpenImg.Execute then
         begin
            eImgLogo.LoadFromFile(OpenImg.FileName);
            ih := eImgLogo.height;
            iv := eImgLogo.width;

            if ( (ih > 203) or (ih < 100) ) or ( (iv > 203) or (iv < 100) ) then
            begin
               Application.MessageBox('Erro, Dimensões do logotipo não permitidas.' + #13#10 + 'Dimensões: 203x100','TechCore-RTG',mb_IconStop or mb_Ok);
               Exit;
            end;

            // Exibe o logotipo
            TBlobField(tbDados.FieldByName('cli_foto')).LoadFromFile(OpenImg.FileName);
         end;

      except
         on e:Exception do
            Application.MessageBox(pChar('Este não parece ser um arquivo de imagem válido.' + 'Erro: ' + #13#10 + E.Message),'TechCore-RTG',mb_IconStop or mb_Ok);
      end;

   finally
      FreeAndNil( eImgLogo );
   end;
end;

procedure TFrClientes.dsDadosStateChange(Sender: TObject);
begin
   if tbDados.State in [dsInsert, dsEdit] then
   begin
      pgControl.ActivePage := tabDetalhes;
      dsQueryCnt.AutoEdit  := false
   end
   else
      dsQueryCnt.AutoEdit  := true;

end;

procedure TFrClientes.eCepButtonClick(Sender: TObject);
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
            tbDados.FieldByName('CLI_ENDERECO').AsString       := AnsiUpperCase(SearchCep.Enderecos[0].Logradouro);
            tbDados.FieldByName('CLI_CODIGO_CIDADE').AsInteger := SearchCep.Enderecos[0].IBGE_Municipio.ToInteger;
            tbDados.FieldByName('CLI_BAIRRO').AsString         := AnsiUpperCase(SearchCep.Enderecos[0].Bairro);
            tbDados.FieldByName('CLI_CIDADE').AsString         := AnsiUpperCase(SearchCep.Enderecos[0].Municipio);
            tbDados.FieldByName('CLI_CODIGO_UF').AsInteger     := SearchCep.Enderecos[0].IBGE_UF.ToInteger;
            tbDados.FieldByName('CLI_UF').AsString             := AnsiUpperCase(SearchCep.Enderecos[0].UF);

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

procedure TFrClientes.eCnpjExit(Sender: TObject);
var
   P : pChar;
begin
   TEdit(Sender).Color := clWhite;

   {Checa se o Cnpj informado está correto}
   if tbdados.FieldByName('cli_tipo_pessoa').AsInteger = 1 then
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

procedure TFrClientes.eCodigoEnter(Sender: TObject);
begin
   TEdit(Sender).Color := clBtnFace;
end;

procedure TFrClientes.eCodigoExit(Sender: TObject);
begin
   TEdit(Sender).Color := clWhite;
end;

procedure TFrClientes.ExcluirContatos1Click(Sender: TObject);
begin
   if GridCont.Focused then
      QueryCnt.Delete;
end;

procedure TFrClientes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   FreeAndNil( FrClientes );
end;

procedure TFrClientes.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
   {Se houver registro em inclusão ou alteração, imprede a saida}
   if tbDados.State in [dsInsert,dsEdit] then
   begin
      Application.MessageBox('Antes de fechar o formulário, grave ou cancele a alteração ou Inclusão.','TechCore-RTG',mb_IconStop or mb_Ok);
      CanClose := false;
   end;
end;

procedure TFrClientes.FormCreate(Sender: TObject);
begin
   {Ajusta o formulário na criação}
   pgControl.ActivePage     := tabPrincipal;

   {Carrega todos os grupos de produtos}
   tbDados.ParamByName('ID_EMPRESA').AsInteger := FEmpresaClass.ID;
   tbDados.Open();

   {Carrega os contatos}
   QueryCnt.Open();
end;

procedure TFrClientes.GridContEnter(Sender: TObject);
begin
   ACBrEnterTab1.EnterAsTab := false
end;

procedure TFrClientes.GridContExit(Sender: TObject);
begin
   ACBrEnterTab1.EnterAsTab := true
end;

procedure TFrClientes.pgControlChanging(Sender: TObject; var AllowChange: Boolean);
begin
   AllowChange := (tbDados.State = dsBrowse) and (QueryCnt.State = dsBrowse);
end;

procedure TFrClientes.pgControlContChanging(Sender: TObject; var AllowChange: Boolean);
begin
   AllowChange := QueryCnt.State = dsBrowse;
end;

procedure TFrClientes.QueryCntBeforeDelete(DataSet: TDataSet);
begin
   if Application.MessageBox('Tem certeza que deseja excluir o registro do contato selecionado?','TechCore-RTG - Contatos',mb_IconQuestion or mb_YesNo) = mrNO then
      Abort;
end;

procedure TFrClientes.QueryCntCNT_EMAILSetText(Sender: TField; const Text: string);
begin
   Sender.AsString := LowerCase(Text);
end;

procedure TFrClientes.QueryCntCNT_NOMESetText(Sender: TField; const Text: string);
begin
   Sender.AsString := UpperCase(Text);
end;

procedure TFrClientes.SpeedButton1Click(Sender: TObject);
begin
   // Se estiver editando, remove a imagem
   if tbDados.State in [dsInsert,dsEdit] then
   begin
      tbDados.FieldByName('cli_foto').Clear;
      eLogo.Picture.Bitmap.FreeImage;
   end;
end;

procedure TFrClientes.tabDetalhesShow(Sender: TObject);
begin
   eRazao.SetFocus;
end;

procedure TFrClientes.tbDadosAfterInsert(DataSet: TDataSet);
begin
   {Checa se continua o cadastro ou cancela}
   try
      FrTipoCliente := TFrTipoCliente.Create(self);
      if FrTipoCliente.ShowModal = mrCancel then
      begin
         tbdados.Cancel;
         Abort;
      end;

      {Posiciona o cursor}
      eRazao.SetFocus;

   finally
      FreeAndNil( FrTipoCliente );
   end;
end;

procedure TFrClientes.tbDadosAfterPost(DataSet: TDataSet);
begin
   {Atualiza o cursor dos dados da empresa}
   tbDados.Refresh;
end;

procedure TFrClientes.tbDadosBeforeDelete(DataSet: TDataSet);
begin
   if Application.MessageBox('Tem certeza que deseja excluir este registro?','TechCore-RTG - Clientes',mb_IconQuestion or mb_YesNo) = mrNO then
      Abort;
end;

procedure TFrClientes.tbDadosBeforePost(DataSet: TDataSet);
var
   P      : pChar;
   tbPesq : TFDQuery;
begin
   {Checa o preenchimento dos campos}
   if eRazao.Text = '' then
   begin
      case tbDados.FieldByName('cli_tipo_pessoa').AsInteger of
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
      case tbDados.FieldByName('cli_tipo_pessoa').AsInteger of
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

   if eContribICMS.ItemIndex < 0 then
   begin
      Application.MessageBox('Erro, Obrigatório informar se é ou não Contribuinte do ICMS.','TechCore-RTG',mb_IconStop or mb_Ok);
      eContribICMS.SetFocus;
      Abort;
   end;

   {Checa se o fornecedor já esta cadastrado}
   tbPesq            := TFDQuery.Create(Self);
   tbPesq.Connection := FrModuloRet.DBConexao;
   try

      case tbDados.State of

         dsInsert :
         begin
            tbPesq.SQL.Add('SELECT 1 FROM C000307 WHERE CLI_CNPJ = :CLI_CNPJ AND ID_EMPRESA = :ID_EMPRESA');
            tbPesq.ParamByName('CLI_CNPJ').AsString    := OnlyNumber( eCnpj.Text );
            tbPesq.ParamByName('ID_EMPRESA').AsInteger := FEmpresaClass.ID;
            tbPesq.Open();
         end;

         dsEdit :
         begin
            tbPesq.SQL.Add('SELECT 1 FROM C000307 WHERE ID <> :ID AND CLI_CNPJ = :CLI_CNPJ AND ID_EMPRESA = :ID_EMPRESA');
            tbPesq.ParamByName('ID').AsInteger         := tbDadosID.AsInteger;
            tbPesq.ParamByName('CLI_CNPJ').AsString    := OnlyNumber( eCnpj.Text );
            tbPesq.ParamByName('ID_EMPRESA').AsInteger := FEmpresaClass.ID;
            tbPesq.Open();
         end;

      end;

      {Trata o aviso para o tipo de pessoa}
      case tbDados.FieldByName('cli_tipo_pessoa').AsInteger of
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

procedure TFrClientes.tbDadosCLI_CNPJGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
   if DisplayText then
   begin
      {Ajusta o formulário conforme o tipo de cadastro}
      case tbDados.FieldByName('cli_tipo_pessoa').AsInteger of

         1 : begin   // Pessoa jurídica

            {Titulos dos campos}
            lRazao.Caption       := 'Razão Social';
            lFantasia.Caption    := 'Nome Fantasia';
            lCnpj.Caption        := 'Cnpj';
            lIEstadual.Caption   := 'Insc. Estadual';

            {Mascaras dos campos}
            Text := FormatMaskText('!99.999\.999\/9999\-99;0;_',tbDados.FieldByName('cli_cnpj').AsString);

         end;

         2 : begin   // Pessoa Física

            {Titulos dos campos}
            lRazao.Caption       := 'Nome Completo';
            lFantasia.Caption    := 'Apelido';
            lCnpj.Caption        := 'Cpf';
            lIEstadual.Caption   := 'Rg.';

            {Mascaras dos campos}
            Text := FormatMaskText('!999\.999\.999\-99;0;_',tbDados.FieldByName('cli_cnpj').AsString)
         end;

      end;
   end;
end;

procedure TFrClientes.tbDadosCLI_STATUSGetText(Sender: TField; var Text: string; DisplayText: Boolean);
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

procedure TFrClientes.tbDadosCLI_TIPO_PESSOAChange(Sender: TField);
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
         tbDados.FieldByName('CLI_CNPJ').EditMask := '!99.999\.999\/9999\-99;0;_';

         {Contribuinte ou não de ICMS}
         tbDados.FieldByName('CLI_CONTRIB_ICMS').AsInteger := 1;

      end;

      2 : begin   // Pessoa Física

         {Titulos dos campos}
         lRazao.Caption       := 'Nome Completo';
         lFantasia.Caption    := 'Apelido';
         lCnpj.Caption        := 'Cpf';
         lIEstadual.Caption   := 'Rg.';

         {Mascaras dos campos}
         tbDados.FieldByName('CLI_CNPJ').EditMask := '!999\.999\.999\-99;0;_';

         {Contribuinte ou não de ICMS}
         tbDados.FieldByName('CLI_CONTRIB_ICMS').AsInteger := 9;
      end;

   end;

   dsDados.DataSet := tbDados;
end;

procedure TFrClientes.tbDadosNewRecord(DataSet: TDataSet);
begin
   {Dados básicos do cadastros}
   DataSet.FieldByName('ID_EMPRESA').AsInteger    := FEmpresaClass.ID;
   DataSet.FieldByName('CLI_DATA_REG').AsDateTime := now;
   DataSet.FieldByName('CLI_STATUS').AsInteger    := 1;

   {Dados dos Pais}
   DataSet.FieldByName('cli_pais').AsString         := 'BRASIL';
   DataSet.FieldByName('cli_codigo_pais').AsInteger := 1058;
end;

end.
