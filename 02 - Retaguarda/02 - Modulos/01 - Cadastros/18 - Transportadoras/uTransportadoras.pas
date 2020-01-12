unit uTransportadoras;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.Jpeg, Data.DB, FireDAC.Stan.Intf,
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
  Vcl.Imaging.pngimage, JvImage, Vcl.ExtDlgs;

type
  TfrTransportadoras = class(TForm)
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
    tbDadosID_EMPRESA: TIntegerField;
    dsDados: TJvDataSource;
    RzPanel2: TRzPanel;
    Label1: TLabel;
    Label2: TLabel;
    Bevel3: TBevel;
    Image2: TImage;
    RzPanel1: TRzPanel;
    pgControl: TJvPageControl;
    tabPrincipal: TTabSheet;
    JvDBGrid1: TJvDBGrid;
    tabDetalhes: TTabSheet;
    tbDadosTRA_CODIGO: TIntegerField;
    tbDadosTRA_DATA_REG: TSQLTimeStampField;
    tbDadosTRA_RAZAO_SOCIAL: TStringField;
    tbDadosTRA_NOME_FANTASIA: TStringField;
    tbDadosTRA_CNPJ: TStringField;
    tbDadosTRA_IESTADUAL: TStringField;
    tbDadosTRA_IMUNICIPAL: TStringField;
    tbDadosTRA_CEP: TStringField;
    tbDadosTRA_ENDERECO: TStringField;
    tbDadosTRA_NUMERO: TIntegerField;
    tbDadosTRA_COMPLEMENTO: TStringField;
    tbDadosTRA_BAIRRO: TStringField;
    tbDadosTRA_CIDADE: TStringField;
    tbDadosTRA_CODIGO_CIDADE: TIntegerField;
    tbDadosTRA_UF: TStringField;
    tbDadosTRA_CODIGO_UF: TIntegerField;
    tbDadosTRA_PAIS: TStringField;
    tbDadosTRA_CODIGO_PAIS: TIntegerField;
    tbDadosTRA_FONE_FIXO: TStringField;
    tbDadosTRA_FONE_MOVEL: TStringField;
    tbDadosTRA_SKYPE: TStringField;
    tbDadosTRA_FACEBOOK: TStringField;
    tbDadosTRA_EMAIL: TStringField;
    tbDadosTRA_SITE: TStringField;
    tbDadosTRA_SEGMENTO: TStringField;
    tbDadosTRA_TIPO_PESSOA: TIntegerField;
    tbDadosTRA_STATUS: TIntegerField;
    tbDadosTRA_OBSERVACAO: TStringField;
    pnFundo: TRzPanel;
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
    Label41: TLabel;
    Label10: TLabel;
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
    Panel1: TPanel;
    Panel2: TPanel;
    BtnLogomarca: TSpeedButton;
    SpeedButton1: TSpeedButton;
    eLogo: TJvDBImage;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    RzDBMemo1: TRzDBMemo;
    RzDBRadioGroup1: TRzDBRadioGroup;
    eRazao: TRzDBEdit;
    eFantasia: TRzDBEdit;
    eCnpj: TRzDBEdit;
    eEndereco: TRzDBEdit;
    eBairro: TRzDBEdit;
    eCidade: TRzDBEdit;
    eFoneFixo: TRzDBEdit;
    eFoneMovel: TRzDBEdit;
    tbDadosTRA_LOGOTIPO: TMemoField;
    OpenImg: TOpenPictureDialog;
    procedure eCodigoEnter(Sender: TObject);
    procedure eCodigoExit(Sender: TObject);
    procedure tbDadosAfterInsert(DataSet: TDataSet);
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
    procedure tbDadosBeforePost(DataSet: TDataSet);
    procedure eCnpjExit(Sender: TObject);
    procedure tbDadosTRA_CNPJGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure tbDadosTRA_TIPO_PESSOAChange(Sender: TField);
    procedure tbDadosTRA_STATUSGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure BtnLogomarcaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frTransportadoras: TfrTransportadoras;

implementation

uses
   Classe.Empresa, uTipoTransportadora, uModuloRet;

{$R *.dfm}

procedure TfrTransportadoras.actAlterarExecute(Sender: TObject);
begin
   tbdados.Edit;
end;

procedure TfrTransportadoras.actAlterarUpdate(Sender: TObject);
begin
   if tbDados.IsEmpty then
      TAction(Sender).Enabled := false
   else
      TAction(Sender).Enabled := not ( tbDados.State in [dsInsert,dsEdit] );
end;

procedure TfrTransportadoras.actCadastrarExecute(Sender: TObject);
begin
   tbDados.Insert;
end;

procedure TfrTransportadoras.actCadastrarUpdate(Sender: TObject);
begin
   TAction(Sender).Enabled := not ( tbDados.State in [dsInsert,dsEdit] );
end;

procedure TfrTransportadoras.actCancelarExecute(Sender: TObject);
begin
   tbDados.Cancel;
end;

procedure TfrTransportadoras.actExcluirExecute(Sender: TObject);
begin
   tbdados.Delete;
end;

procedure TfrTransportadoras.actGravarExecute(Sender: TObject);
begin
   tbdados.Post;
end;

procedure TfrTransportadoras.actGravarUpdate(Sender: TObject);
begin
   TAction(Sender).Enabled := tbDados.State in [dsInsert,dsEdit];
end;

procedure TfrTransportadoras.actSairExecute(Sender: TObject);
begin
   Self.Close;
end;

procedure TfrTransportadoras.BtnLogomarcaClick(Sender: TObject);
var
   iv, ih : integer;
   eImgLogo : TJPEGImage;
begin

   eImgLogo :=  TJPEGImage.Create;
   try
      // Determina o caminho dos logotipos
      chDir( ExtractFilePath(Application.ExeName) );
      ChDir( '..\Logotipos');

      OpenImg.InitialDir := GetCurrentDir;

      try

         if OpenImg.Execute then
         begin
            eImgLogo.LoadFromFile(OpenImg.FileName);
            iv := eImgLogo.height;
            ih := eImgLogo.width;

            if ( ih > 200 ) or ( ih < 100 ) or ( iv > 160 ) or ( iv < 100 ) then
            begin
               Application.MessageBox('Erro, Dimensões do logotipo não permitidas.' + #13#10 + 'Dimensões: 200hx160v','TechCore-RTG',mb_IconStop or mb_Ok);
               Exit;
            end;

            // Exibe o logotipo
            TBlobField(tbDados.FieldByName('TRA_LOGOTIPO')).LoadFromFile(OpenImg.FileName);

         end;

      except
         on e:Exception do
            Application.MessageBox(pChar('Este não parece ser um arquivo de imagem válido.' + 'Erro: ' + #13#10 + E.Message),'TechCore-RTG',mb_IconStop or mb_Ok);
      end;

   finally
      FreeAndNil( eImgLogo );
   end;

end;

procedure TfrTransportadoras.dsDadosStateChange(Sender: TObject);
begin
   // Habilita / Desabilita o o fundo para edição
   pnFundo.Enabled := tbDados.State in [ dsInsert,dsEdit ];

   // Altera entre as abas
   if tbDados.State in [dsInsert,dsEdit] then
      pgControl.ActivePage := tabDetalhes
   else
      pgControl.ActivePage := tabPrincipal;
end;

procedure TfrTransportadoras.eCepButtonClick(Sender: TObject);
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
            tbDados.FieldByName('TRA_ENDERECO').AsString       := AnsiUpperCase(SearchCep.Enderecos[0].Logradouro);
            tbDados.FieldByName('TRA_CODIGO_CIDADE').AsInteger := SearchCep.Enderecos[0].IBGE_Municipio.ToInteger;
            tbDados.FieldByName('TRA_BAIRRO').AsString         := AnsiUpperCase(SearchCep.Enderecos[0].Bairro);
            tbDados.FieldByName('TRA_CIDADE').AsString         := AnsiUpperCase(SearchCep.Enderecos[0].Municipio);
            tbDados.FieldByName('TRA_CODIGO_UF').AsInteger     := SearchCep.Enderecos[0].IBGE_UF.ToInteger;
            tbDados.FieldByName('TRA_UF').AsString             := AnsiUpperCase(SearchCep.Enderecos[0].UF);

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

procedure TfrTransportadoras.eCodigoEnter(Sender: TObject);
begin
   TEdit(Sender).Color := $00B8E6FE;
end;

procedure TfrTransportadoras.eCodigoExit(Sender: TObject);
begin
   TEdit(Sender).Color := clWhite;
end;

procedure TfrTransportadoras.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   FreeAndNil( frTransportadoras );
end;

procedure TfrTransportadoras.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
   {Se houver registro em inclusão ou alteração, imprede a saida}
   if tbDados.State in [dsInsert,dsEdit] then
   begin
      Application.MessageBox('Antes de fechar o formulário, grave ou cancele a alteração ou Inclusão.','TechCore-RTG',mb_IconStop or mb_Ok);
      CanClose := false;
   end;
end;

procedure TfrTransportadoras.FormCreate(Sender: TObject);
begin
   {Ajusta o formulário na criação}
   pgControl.ActivePage := tabPrincipal;

   {Carrega todos os grupos de produtos}
   tbDados.ParamByName('ID_EMPRESA').AsInteger := FEmpresaClass.ID;
   tbDados.Open();
end;

procedure TfrTransportadoras.eCnpjExit(Sender: TObject);
var
   P : pChar;
begin
   TEdit(Sender).Color := clWhite;

   {Checa se o Cnpj informado está correto}
   if tbdados.FieldByName('tra_tipo_pessoa').AsInteger = 1 then
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

procedure TfrTransportadoras.tbDadosAfterInsert(DataSet: TDataSet);
begin
   {Checa se continua o cadastro ou cancela}
   try
      FrTipoTransportadora := TFrTipoTransportadora.Create(self);
      if FrTipoTransportadora.ShowModal = mrCancel then
      begin
         tbdados.Cancel;
         Abort;
      end;

      {Posiciona o cursor}
      eRazao.SetFocus;

   finally
      FreeAndNil( FrTipoTransportadora );
   end;
end;

procedure TfrTransportadoras.tbDadosAfterPost(DataSet: TDataSet);
begin
   {Atualiza o cursor dos dados da empresa}
   tbDados.Refresh;
end;

procedure TfrTransportadoras.tbDadosBeforeDelete(DataSet: TDataSet);
begin
   if Application.MessageBox('Tem certeza que deseja excluir este registro?','TechCore-RTG',mb_IconQuestion or mb_YesNo) = mrNO then
      Abort;
end;

procedure TfrTransportadoras.tbDadosBeforePost(DataSet: TDataSet);
var
   P      : pChar;
   tbPesq : TFDQuery;
begin
   {Checa o preenchimento dos campos}
   if eRazao.Text = '' then
   begin
      case tbDados.FieldByName('tra_tipo_pessoa').AsInteger of
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
      case tbDados.FieldByName('tra_tipo_pessoa').AsInteger of
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

   {Checa se o fornecedor já esta cadastrado}
   tbPesq            := TFDQuery.Create(Self);
   tbPesq.Connection := FrModuloRet.DBConexao;
   try

      case tbDados.State of

         dsInsert :
         begin
            tbPesq.SQL.Add('SELECT 1 FROM C000310 WHERE TRA_CNPJ = :TRA_CNPJ AND ID_EMPRESA = :ID_EMPRESA');
            tbPesq.ParamByName('TRA_CNPJ').AsString    := OnlyNumber( eCnpj.Text );
            tbPesq.ParamByName('ID_EMPRESA').AsInteger := FEmpresaClass.ID;
            tbPesq.Open();
         end;

         dsEdit :
         begin
            tbPesq.SQL.Add('SELECT 1 FROM C000310 WHERE ID <> :ID AND TRA_CNPJ = :TRA_CNPJ AND ID_EMPRESA = :ID_EMPRESA');
            tbPesq.ParamByName('ID').AsInteger         := tbDadosID.AsInteger;
            tbPesq.ParamByName('TRA_CNPJ').AsString    := OnlyNumber( eCnpj.Text );
            tbPesq.ParamByName('ID_EMPRESA').AsInteger := FEmpresaClass.ID;
            tbPesq.Open();
         end;

      end;

      {Trata o aviso para o tipo de pessoa}
      case tbDados.FieldByName('tra_tipo_pessoa').AsInteger of
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

procedure TfrTransportadoras.tbDadosFOR_STATUSGetText(Sender: TField; var Text: string; DisplayText: Boolean);
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

procedure TfrTransportadoras.tbDadosNewRecord(DataSet: TDataSet);
begin
   {Dados básicos do cadastros}
   DataSet.FieldByName('ID_EMPRESA').AsInteger    := FEmpresaClass.ID;
   DataSet.FieldByName('TRA_DATA_REG').AsDateTime := now;
   DataSet.FieldByName('TRA_STATUS').AsInteger    := 1;
end;

procedure TfrTransportadoras.tbDadosTRA_CNPJGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
   if DisplayText then
   begin

      {Ajusta o formulário conforme o tipo de cadastro}
      case tbDados.FieldByName('tra_tipo_pessoa').AsInteger of

         1 : begin   // Pessoa jurídica

            {Titulos dos campos}
            lRazao.Caption       := 'Razão Social';
            lFantasia.Caption    := 'Nome Fantasia';
            lCnpj.Caption        := 'Cnpj';
            lIEstadual.Caption   := 'Insc. Estadual';

            {Mascaras dos campos}
            Text := FormatMaskText('!99\.999\.999\/9999\-99;0;_',Sender.AsString);

         end;

         2 : begin   // Pessoa Física

            {Titulos dos campos}
            lRazao.Caption       := 'Nome Completo';
            lFantasia.Caption    := 'Apelido';
            lCnpj.Caption        := 'Cpf';
            lIEstadual.Caption   := 'Rg.';

            {Mascaras dos campos}
            Text := FormatMaskText('!999\.999\.999\-99;0;_',Sender.AsString)
         end;

      end;

   end;
end;

procedure TfrTransportadoras.tbDadosTRA_STATUSGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
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

procedure TfrTransportadoras.tbDadosTRA_TIPO_PESSOAChange(Sender: TField);
begin
   {Ajusta o formulário conforme o tipo de cadastro}
   dsDados.DataSet := nil;

   case tbDados.FieldByName('tra_tipo_pessoa').AsInteger of

      1 : begin   // Pessoa jurídica

         {Titulos dos campos}
         lRazao.Caption       := 'Razão Social';
         lFantasia.Caption    := 'Nome Fantasia';
         lCnpj.Caption        := 'Cnpj';
         lIEstadual.Caption   := 'Insc. Estadual';
         eMunicipal.Enabled   := true;

         {Mascaras dos campos}
         tbDados.FieldByName('tra_cnpj').EditMask := '!99.999\.999\/9999\-99;0;_';

      end;

      2 : begin   // Pessoa Física

         {Titulos dos campos}
         lRazao.Caption       := 'Nome Completo';
         lFantasia.Caption    := 'Apelido';
         lCnpj.Caption        := 'Cpf';
         lIEstadual.Caption   := 'Rg.';
         eMunicipal.Enabled   := false;

         {Mascaras dos campos}
         tbDados.FieldByName('tra_CNPJ').EditMask := '!999\.999\.999\-99;0;_';
      end;

   end;

   dsDados.DataSet := tbDados;
end;

end.
