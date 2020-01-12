unit uProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  RzEdit, RzDBEdit, Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid,
  System.Actions, Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls,
  Vcl.ActnMan, RzPanel, RzButton, Vcl.ComCtrls, JvExComCtrls, JvComCtrls,
  Vcl.ExtCtrls, Vcl.DBCtrls, RzDBCmbo, RzCmboBx, JvExMask, JvToolEdit,
  JvBaseEdits, JvDBControls, JvDBImage, Vcl.Buttons, PngBitBtn, RzDBBnEd,
  RzRadGrp, RzDBRGrp, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, JvDataSource,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, JvExControls, JvDBLookup,
  Vcl.Menus, ACBrBase, ACBrEnterTab, Vcl.Imaging.pngimage, JvExExtCtrls,
  JvImage, MaskUtils, JvExStdCtrls, JvCombobox, JvDBCombobox, RzRadChk,
  RzDBChk, RzDBNav, JPEg, Vcl.ExtDlgs;

type
  TFrProdutos = class(TForm)
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
    ActionManager1: TActionManager;
    actCadastrar: TAction;
    actAlterar: TAction;
    actExcluir: TAction;
    actGravar: TAction;
    actCancelar: TAction;
    actSair: TAction;
    tbDados: TFDQuery;
    dsDados: TJvDataSource;
    tbDadosID: TIntegerField;
    tbDadosID_EMPRESA: TIntegerField;
    tbDadosID_GRUPO: TIntegerField;
    tbDadosID_SUBGRUPO: TIntegerField;
    tbDadosID_MARCA: TIntegerField;
    tbDadosID_TRIBUTOS_SAI: TIntegerField;
    tbDadosID_TRIBUTOS_ENT: TIntegerField;
    tbDadosID_TIPO_PRODUTO: TIntegerField;
    tbDadosPRD_DATA_REG: TSQLTimeStampField;
    tbDadosPRD_CODIGO: TIntegerField;
    tbDadosPRD_CODIGO_TER: TStringField;
    tbDadosPRD_CODIGO_BRR: TStringField;
    tbDadosPRD_REFERENCIA: TStringField;
    tbDadosPRD_DESCRICAO: TStringField;
    tbDadosPRD_NCM: TStringField;
    tbDadosPRD_CEST: TStringField;
    tbDadosPRD_ORIGEM: TIntegerField;
    tbDadosPRD_FOTO: TMemoField;
    tbDadosPRD_PESO_L: TFMTBCDField;
    tbDadosPRD_PESO_B: TFMTBCDField;
    tbDadosPRD_STATUS: TIntegerField;
    tbDadosTIP_DESCRICAO: TStringField;
    tbDadosGRP_DESCRICAO: TStringField;
    tbDadosSUB_DESCRICAO: TStringField;
    tbDadosMRC_DESCRICAO: TStringField;
    tbDadosPRD_UNIDADE: TStringField;
    tbPesq: TFDQuery;
    ACBrEnterTab1: TACBrEnterTab;
    tbFornecedor: TFDQuery;
    dsFornecedor: TJvDataSource;
    tbFornecedorID: TIntegerField;
    tbFornecedorFOR_CODIGO: TIntegerField;
    tbFornecedorFOR_RAZAO_SOCIAL: TStringField;
    tbFornecedorID_PRODUTO: TIntegerField;
    tbFornecedorID_FORNECEDOR: TIntegerField;
    tbDadosPRD_QTDE_ATUAL: TBCDField;
    actOutros: TAction;
    btnAttach: TRzToolButton;
    RzSpacer6: TRzSpacer;
    actCadFornecedor: TAction;
    actExcFornecedor: TAction;
    PopOutros: TPopupMenu;
    tbFornecedorFOR_UF: TStringField;
    tbFornecedorFOR_CNPJ: TStringField;
    IncluirFornecedor1: TMenuItem;
    RemoverFornecedor1: TMenuItem;
    RzPanel1: TRzPanel;
    pgControl: TJvPageControl;
    tabPrincipal: TTabSheet;
    tabDetalhes: TTabSheet;
    RzPanel2: TRzPanel;
    Label20: TLabel;
    Label21: TLabel;
    Bevel3: TBevel;
    Image2: TImage;
    tbDadosPRD_QTDE_INICIAL: TBCDField;
    tbDadosPRD_QTDE_ENTRADA: TBCDField;
    tbDadosPRD_QTDE_SAIDA: TBCDField;
    eGrid: TJvDBGrid;
    pnDetalhes: TRzPanel;
    eCodigo: TRzDBEdit;
    eCodigoTerceiros: TRzDBEdit;
    eDescricao: TRzDBEdit;
    eGrupo: TRzDBButtonEdit;
    eMarca: TRzDBButtonEdit;
    eModificacao: TRzDBEdit;
    eReferencia: TRzDBEdit;
    eSubGrupo: TRzDBButtonEdit;
    eTipo: TRzDBButtonEdit;
    eUnidade: TRzDBEdit;
    ed_valor_custo: TJvDBCalcEdit;
    JvDBCalcEdit1: TJvDBCalcEdit;
    JvDBCalcEdit2: TJvDBCalcEdit;
    Label1: TLabel;
    Label10: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label2: TLabel;
    Label29: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Panel2: TPanel;
    Panel3: TPanel;
    BtnLogomarca: TSpeedButton;
    SpeedButton1: TSpeedButton;
    eLogo: TJvDBImage;
    RzDBEdit1: TRzDBEdit;
    RzGroupBox1: TRzGroupBox;
    Label11: TLabel;
    Label12: TLabel;
    Label15: TLabel;
    eCest: TRzDBEdit;
    eOrigem: TRzDBComboBox;
    eNcm: TRzDBButtonEdit;
    RzSpacer7: TRzSpacer;
    btnNew1: TRzToolButton;
    Action1: TAction;
    tbDadosPRD_VLR_CUSTO: TBCDField;
    ed_qtde: TJvDBCalcEdit;
    Label22: TLabel;
    tbDadosPRD_QTDE: TBCDField;
    tabFornecedor: TTabSheet;
    Panel1: TPanel;
    JvDBGrid3: TJvDBGrid;
    ed_status: TJvDBComboBox;
    Label13: TLabel;
    tbDadosPRD_NCM_EX: TStringField;
    DBNavigator: TJvDBNavigator;
    RzDBCheckBox1: TRzDBCheckBox;
    TabSheet1: TTabSheet;
    Label14: TLabel;
    RzDBEdit2: TRzDBEdit;
    RzDBEdit3: TRzDBEdit;
    QueryKit: TFDQuery;
    dsQueryKit: TDataSource;
    RzDBNavigator1: TRzDBNavigator;
    QueryKitID: TIntegerField;
    QueryKitPRD_ID: TIntegerField;
    QueryKitPRD_DESCRICAO: TStringField;
    QueryKitPRD_UNIDADE: TStringField;
    JvDBGrid1: TJvDBGrid;
    QueryKitPRD_VALOR: TBCDField;
    QueryKitPRD_QTDE: TBCDField;
    actKit: TAction;
    QueryKitID_C000405: TIntegerField;
    tbDadosPRD_KIT: TBooleanField;
    RzDBEdit4: TRzDBEdit;
    Label23: TLabel;
    tbDadosPRD_DESCRICAO_CURTA: TStringField;
    tbDadosPRD_KIT_VALOR: TFMTBCDField;
    OpenImg: TOpenPictureDialog;
    RzDBCheckBox2: TRzDBCheckBox;
    tbDadosPRD_CTRL_ESTQ: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure actSairExecute(Sender: TObject);
    procedure tbDadosPRD_STATUSGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure tbDadosNewRecord(DataSet: TDataSet);
    procedure actCadastrarExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure actAlterarExecute(Sender: TObject);
    procedure actGravarExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure dsDadosStateChange(Sender: TObject);
    procedure tbDadosID_TIPO_PRODUTOChange(Sender: TField);
    procedure tbDadosID_GRUPOChange(Sender: TField);
    procedure tbDadosID_SUBGRUPOChange(Sender: TField);
    procedure tbDadosID_MARCAChange(Sender: TField);
    procedure actCadastrarUpdate(Sender: TObject);
    procedure actAlterarUpdate(Sender: TObject);
    procedure actGravarUpdate(Sender: TObject);
    procedure tbDadosAfterPost(DataSet: TDataSet);
    procedure tbDadosBeforeDelete(DataSet: TDataSet);
    procedure tbDadosBeforePost(DataSet: TDataSet);
    procedure eCodigoTerceirosEnter(Sender: TObject);
    procedure eCodigoTerceirosExit(Sender: TObject);
    procedure eTipoButtonClick(Sender: TObject);
    procedure eGrupoButtonClick(Sender: TObject);
    procedure eSubGrupoButtonClick(Sender: TObject);
    procedure eMarcaButtonClick(Sender: TObject);
    procedure eNcmButtonClick(Sender: TObject);
    procedure tbFornecedorAfterPost(DataSet: TDataSet);
    procedure tbFornecedorBeforeDelete(DataSet: TDataSet);
    procedure actCadFornecedorExecute(Sender: TObject);
    procedure actExcFornecedorExecute(Sender: TObject);
    procedure tbFornecedorFOR_CNPJGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure actOutrosExecute(Sender: TObject);
    procedure actOutrosUpdate(Sender: TObject);
    procedure actExcFornecedorUpdate(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure eGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Action1Update(Sender: TObject);
    procedure pgControlChanging(Sender: TObject; var AllowChange: Boolean);
    procedure QueryKitAfterInsert(DataSet: TDataSet);
    procedure QueryKitBeforeDelete(DataSet: TDataSet);
    procedure QueryKitAfterEdit(DataSet: TDataSet);
    procedure QueryKitAfterDelete(DataSet: TDataSet);
    procedure QueryKitBeforePost(DataSet: TDataSet);
    procedure BtnLogomarcaClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrProdutos: TFrProdutos;

implementation

uses
   Classe.Empresa, uListaTiposProdutos, uListaGruposProdutos, uListaSubGruposProdutos, uListaMarcasProdutos, uListaNCMs, uListaFornecedores, uListaProdutos,
  uModuloRet, uProdutosKits, uPedidosCompras, uPrincipal;

{$R *.dfm}

procedure TFrProdutos.actAlterarExecute(Sender: TObject);
begin
   tbDados.Edit;
end;

procedure TFrProdutos.actAlterarUpdate(Sender: TObject);
begin
   if tbDados.IsEmpty then
      TAction(Sender).Enabled := false
   else
      TAction(Sender).Enabled := not ( tbDados.State in [dsInsert,dsEdit] );
end;

procedure TFrProdutos.actCadastrarExecute(Sender: TObject);
begin
   tbDados.Insert;
end;

procedure TFrProdutos.actCadastrarUpdate(Sender: TObject);
begin
   TAction(Sender).Enabled := not ( tbDados.State in [dsInsert,dsEdit] );
end;

procedure TFrProdutos.actCadFornecedorExecute(Sender: TObject);
begin
   pgControl.ActivePage := tabFornecedor;

   try
      FrListaFornecedores := TFrListaFornecedores.Create(self);
      if FrListaFornecedores.ShowModal = mrOk then
      begin
         tbFornecedor.Insert;
         tbFornecedor.FieldByName('id_produto').AsInteger    := tbDadosID.AsInteger;
         tbFornecedor.FieldByName('id_fornecedor').AsInteger := FrListaFornecedores.tbDadosID.AsInteger;
         tbFornecedor.Post;
      end;
   finally
      FreeAndNil( FrListaFornecedores );
   end;
end;

procedure TFrProdutos.actCancelarExecute(Sender: TObject);
begin
   tbdados.Cancel;
end;

procedure TFrProdutos.actExcFornecedorExecute(Sender: TObject);
begin
   tbFornecedor.Delete;
end;

procedure TFrProdutos.actExcFornecedorUpdate(Sender: TObject);
begin
   if tbFornecedor.IsEmpty then
      TAction(Sender).Enabled := false
   else
      TAction(Sender).Enabled := not ( tbDados.State in [dsInsert,dsEdit] );
end;

procedure TFrProdutos.actExcluirExecute(Sender: TObject);
begin
   tbDados.Delete;
end;

procedure TFrProdutos.actGravarExecute(Sender: TObject);
begin
   tbDados.Post;
end;

procedure TFrProdutos.actGravarUpdate(Sender: TObject);
begin
   TAction(Sender).Enabled := tbDados.State in [dsInsert,dsEdit];
end;

procedure TFrProdutos.Action1Execute(Sender: TObject);
begin
   // Formulário para seleção de produtos
   FrListaProdutos           := TFrListaProdutos.Create(Self);
   FrListaProdutos.TipoQuery := 1; // Determina que é do cadastro de produtos

   try
      if FrListaProdutos.ShowModal = mrOk then
         tbDados.Locate('ID',FrListaProdutos.tbDadosID.AsInteger,[]);
   finally
      FreeAndNil( FrListaProdutos );
   end;
end;

procedure TFrProdutos.Action1Update(Sender: TObject);
begin
   if tbDados.IsEmpty then
      TAction(Sender).Enabled := false
   else
   if tbDados.State in [dsInsert,dsEdit] then
      TAction(Sender).Enabled := false
   else
      TAction(Sender).Enabled := true
end;

procedure TFrProdutos.actOutrosExecute(Sender: TObject);
begin
   //
end;

procedure TFrProdutos.actOutrosUpdate(Sender: TObject);
begin
   if tbDados.IsEmpty then
      TAction(Sender).Enabled := false
   else
   if pgControl.ActivePage = tabPrincipal then
      TAction(Sender).Enabled := false
   else
      TAction(Sender).Enabled := not ( tbDados.State in [dsInsert,dsEdit] );
end;

procedure TFrProdutos.actSairExecute(Sender: TObject);
begin
   Self.Close;
end;

procedure TFrProdutos.BtnLogomarcaClick(Sender: TObject);
var
   iv, ih : integer;
   eImgLogo : TJPEGImage;
begin
   {Se não estiver editando}
   if not (tbDados.State in [dsInsert,dsEdit]) then
      Abort;

   eImgLogo :=  TJPEGImage.Create;
   try
      ChDir('..');
      OpenImg.InitialDir := GetCurrentDir;

      try

         if OpenImg.Execute then
         begin
            eImgLogo.LoadFromFile(OpenImg.FileName);
            ih := eImgLogo.height;
            iv := eImgLogo.width;

            if ( (ih > 150) or (ih < 100) ) or ( (iv > 150) or (iv < 100) ) then
            begin
               Application.MessageBox('Erro, Dimensões da imagem não permitidas.' + #13#10 + 'Dimensões: 150x150','TechCore-RTG',mb_IconStop or mb_Ok);
               Exit;
            end;

            // Exibe o logotipo
            TBlobField(tbDados.FieldByName('prd_foto')).LoadFromFile(OpenImg.FileName);
         end;

      except
         on e:Exception do
            Application.MessageBox(pChar('Este não parece ser um arquivo de imagem válido.' + 'Erro: ' + #13#10 + E.Message),'TechCore-RTG',mb_IconStop or mb_Ok);
      end;

   finally
      FreeAndNil( eImgLogo );
   end;

end;

procedure TFrProdutos.dsDadosStateChange(Sender: TObject);
begin
   pnDetalhes.Enabled  := tbDados.State in [dsInsert,dsEdit];
   DBNavigator.Enabled := not(tbDados.State in [dsInsert, dsEdit]);

   if tbDados.State in [dsInsert,dsEdit] then
   begin
      pgControl.ActivePage := tabDetalhes;
      ecodigo.SetFocus;
   end;
end;

procedure TFrProdutos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   FreeAndNil( FrProdutos );
end;

procedure TFrProdutos.FormCreate(Sender: TObject);
begin
   // Ajustar casas decimais dos produtos
   ed_valor_custo.DecimalPlaces := FEmpresaClass.Decimal_Custo;

   case FEmpresaClass.Decimal_Custo of
      2 : tbDadosPRD_VLR_CUSTO.DisplayFormat := ',0.00';
      3 : tbDadosPRD_VLR_CUSTO.DisplayFormat := ',0.000';
      4 : tbDadosPRD_VLR_CUSTO.DisplayFormat := ',0.0000';
   end;

   // Ajustar casas decimais
   ed_qtde.DecimalPlaces := FEmpresaClass.Decimal_Qtde;

   case FEmpresaClass.Decimal_Qtde of
      2 : tbDadosPRD_QTDE.DisplayFormat := ',0.00';
      3 : tbDadosPRD_QTDE.DisplayFormat := ',0.000';
      4 : tbDadosPRD_QTDE.DisplayFormat := ',0.0000';
   end;

   {Ajuste das casas decimasi dos kits}
   case FEmpresaClass.Decimal_Custo of
      2 : QueryKitPRD_QTDE.DisplayFormat := ',0.00';
      3 : QueryKitPRD_QTDE.DisplayFormat := ',0.000';
      4 : QueryKitPRD_QTDE.DisplayFormat := ',0.0000';
   end;

   case FEmpresaClass.Decimal_Qtde of
      2 : QueryKitPRD_VALOR.DisplayFormat := ',0.00';
      3 : QueryKitPRD_VALOR.DisplayFormat := ',0.000';
      4 : QueryKitPRD_VALOR.DisplayFormat := ',0.0000';
   end;

   {Ajusta o formulário na criação}
   pgControl.ActivePage := tabPrincipal;

   {Carrega todos os produtos cadastrados}
   tbDados.ParamByName('id_empresa').AsInteger := FEmpresaClass.ID;
   tbDados.Open();

   {Carrega os kits se houverem}
   QueryKit.Open();

   {Carrega todos os fornecedores para o produto}
   tbFornecedor.Open();
end;

procedure TFrProdutos.pgControlChanging(Sender: TObject; var AllowChange: Boolean);
begin
   AllowChange := not (tbDados.State in [dsInsert, dsEdit]);
end;

procedure TFrProdutos.QueryKitAfterDelete(DataSet: TDataSet);
begin
   tbDados.Refresh;
end;

procedure TFrProdutos.QueryKitAfterEdit(DataSet: TDataSet);
begin
   FrProdutosKit := TFrProdutosKit.Create(self);
   if FrProdutosKit.ShowModal = mrOk then
      QueryKit.Post
   else
      QueryKit.Cancel;
end;

procedure TFrProdutos.QueryKitAfterInsert(DataSet: TDataSet);
begin
   FrProdutosKit        := TFrProdutosKit.Create(self);
   FrProdutosKit.Prd_ID := tbDadosID.AsInteger;

   if FrProdutosKit.ShowModal = mrOk then
      QueryKit.Post
   else
      QueryKit.Cancel;
end;

procedure TFrProdutos.QueryKitBeforeDelete(DataSet: TDataSet);
begin
   if Application.MessageBox('Tem certeza que deseja excuir este item do kit?','TechCore-RTG',mb_IconQuestion or mb_YesNo) = mrNo then
      Abort;
end;

procedure TFrProdutos.QueryKitBeforePost(DataSet: TDataSet);
begin
   {Checa se foi informado o tributo dos produtos}
end;

procedure TFrProdutos.SpeedButton1Click(Sender: TObject);
begin
   // Se estiver editando, remove a imagem
   if tbDados.State in [dsInsert,dsEdit] then
   begin
      tbDados.FieldByName('prd_foto').Clear;
      eLogo.Picture.Bitmap.FreeImage;
   end;
end;

procedure TFrProdutos.eNcmButtonClick(Sender: TObject);
begin
   try
      FrListaNCMs := TFrListaNCMs.Create(self);
      if FrListaNCMs.ShowModal = mrOk then
      begin
         tbDados.FieldByName('PRD_NCM').AsString    := FrListaNCMs.tbDadosNCM_CODIGO.AsString;
         tbDados.FieldByName('PRD_NCM_EX').AsString := FrListaNCMs.tbDadosNCM_EX.AsString;
         tbDados.FieldByName('PRD_CEST').AsString   := FrListaNCMs.tbDadosNCM_CEST.AsString;
      end;

   finally
      FreeAndNil( FrListaNCMs );
   end;
end;

procedure TFrProdutos.eMarcaButtonClick(Sender: TObject);
begin
  {Carrega todos os tipos de produtos}
   try
      FrListaMarcasProdutos := TFrListaMarcasProdutos.Create(self);

      if FrListaMarcasProdutos.ShowModal = mrOk then
         tbDados.FieldByName('id_marca').AsInteger := FrListaMarcasProdutos.tbDadosID.AsInteger;
   finally
      FreeAndNil( FrListaMarcasProdutos );
   end;
end;

procedure TFrProdutos.eSubGrupoButtonClick(Sender: TObject);
begin
   {Checa se já foi selecionado o grupo}
   if tbDados.FieldByName('id_grupo').IsNull then
   begin
      Application.MessageBox('Erro, Selecione o grupo antes.','TechCore-RTG',mb_IconStop or mb_Ok);
      Abort;
   end;

   {Carrega todos os tipos de produtos}
   try
      FrListaSubGruposProdutos      := TFrListaSubGruposProdutos.Create(self);
      FrListaSubGruposProdutos.Tag  := tbDados.FieldByName('id_grupo').AsInteger;

      if FrListaSubGruposProdutos.ShowModal = mrOk then
         tbDados.FieldByName('id_subgrupo').AsInteger := FrListaSubGruposProdutos.tbDadosID.AsInteger;
   finally
      FreeAndNil( FrListaSubGruposProdutos );
   end;
end;

procedure TFrProdutos.eGridDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
   if tbDados.IsEmpty then Exit;

   {Efetua a coloração de acordo o status}
   if not (gdSelected in State) then
   begin
      if ( tbDados.FieldByName('prd_qtde_atual').AsInteger <= 0 ) and
         ( tbDados.FieldByName('prd_qtde_saida').AsInteger <  0 ) then
         ( Sender as TDBGrid).Canvas.Font.Color := clRed;

      if tbDadosPRD_KIT.AsBoolean = true then
      begin
         (Sender as TDBGrid).Canvas.Brush.Color := $000080FF;
         (Sender as TDBGrid).Canvas.Font.Color  := clWhite;
      end;
   end;

   {Pinta o Grid}
   (Sender as TDBGrid).Canvas.FillRect(Rect);
   (Sender as TDBGrid).DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TFrProdutos.eGrupoButtonClick(Sender: TObject);
begin
   {Carrega todos os tipos de produtos}
   try
      FrListaGruposProdutos := TFrListaGruposProdutos.Create(self);
      if FrListaGruposProdutos.ShowModal = mrOk then
      begin
         tbDados.FieldByName('id_grupo').AsInteger := FrListaGruposProdutos.tbDadosID.AsInteger;
         tbDados.FieldByName('id_subgrupo').Clear;
      end;
   finally
      FreeAndNil( FrListaGruposProdutos );
   end;
end;

procedure TFrProdutos.eTipoButtonClick(Sender: TObject);
begin
   {Carrega todos os tipos de produtos}
   try
      FrListarTiposProdutos := TFrListarTiposProdutos.Create(self);
      if FrListarTiposProdutos.ShowModal = mrOk then
         tbDados.FieldByName('id_tipo_produto').AsInteger := FrListarTiposProdutos.tbDadosID.AsInteger;
   finally
      FreeAndNil( FrListarTiposProdutos );
   end;
end;

procedure TFrProdutos.eCodigoTerceirosEnter(Sender: TObject);
begin
   TEdit(Sender).Color := clSilver;
end;

procedure TFrProdutos.eCodigoTerceirosExit(Sender: TObject);
begin
   TEdit(Sender).Color := clWindow;
end;

procedure TFrProdutos.tbDadosAfterPost(DataSet: TDataSet);
begin
   tbDados.Refresh;
end;

procedure TFrProdutos.tbDadosBeforeDelete(DataSet: TDataSet);
begin
   if Application.MessageBox('Tem certeza que deseja excluir este produto?','TechCore-RTG',mb_IconQuestion or mb_YesNo) = mrNo then
      Abort;
end;

procedure TFrProdutos.tbDadosBeforePost(DataSet: TDataSet);
var
   rValor : Real;
begin
   if eTipo.Text = '' then
   begin
      Application.MessageBox('Erro, Obrigatório informar o Tipo de Produto.','TechCore-RTG',mb_IconStop or mb_Ok);
      eTipo.SetFocus;
      Abort;
   end;

   if eDescricao.Text = '' then
   begin
      Application.MessageBox('Erro, Obrigatório informar a Descrição.','TechCore-RTG',mb_IconStop or mb_Ok);
      eDescricao.SetFocus;
      Abort;
   end;

   if eUnidade.Text = '' then
   begin
      Application.MessageBox('Erro, Obrigatório informar a Unidade.','TechCore-RTG',mb_IconStop or mb_Ok);
      eUnidade.SetFocus;
      Abort;
   end;

   if eGrupo.Text = '' then
   begin
      Application.MessageBox('Erro, Obrigatório informar Grupo.','TechCore-RTG',mb_IconStop or mb_Ok);
      eGrupo.SetFocus;
      Abort;
   end;

   if eNcm.Text = '' then
   begin
      Application.MessageBox('Erro, Obrigatório informar o NCM.','TechCore-RTG',mb_IconStop or mb_Ok);
      eNcm.SetFocus;
      Abort;
   end;

   if eOrigem.ItemIndex < 0 then
   begin
      Application.MessageBox('Erro, Obrigatório informar a Origem.','TechCore-RTG',mb_IconStop or mb_Ok);
      eOrigem.SetFocus;
      Abort;
   end;

   if (QueryKit.IsEmpty) and (tbDadosPRD_KIT.AsBoolean = true) then
   begin
      Application.MessageBox('Não existem itens inseridos neste kit, para definir este produto como kit é necessário inserir os produtos.','TechCore-RTG',mb_IconStop or mb_ok);
      Abort;
   end;

   rValor := ed_valor_custo.Value;
   rValor := (rValor * 100) / 100;

   if rValor < 0 then
   begin
      Application.MessageBox('Erro, Obrigatório informar o Valor de Custo.','TechCore-RTG',mb_IconStop or mb_Ok);
      ed_valor_custo.SetFocus;
      Abort;
   end;

end;

procedure TFrProdutos.tbDadosID_GRUPOChange(Sender: TField);
begin
   {Carrega a descrição}
   try
      tbPesq.SQL.Add('SELECT (LPAD(GRP_CODIGO,2,0) || '' - '' || GRP_DESCRICAO) AS GRP_DESCRICAO FROM C000402 WHERE ID = :ID');
      tbPesq.ParamByName('ID').AsInteger := Sender.AsInteger;
      tbPesq.Open();

      tbDados.FieldByName('GRP_DESCRICAO').AsString := tbPesq.FieldByName('GRP_DESCRICAO').AsString;
   finally
      tbPesq.Close;
      tbPesq.SQL.Clear;
   end;
end;

procedure TFrProdutos.tbDadosID_MARCAChange(Sender: TField);
begin
   {Carrega a descrição}
   try
      tbPesq.SQL.Add('SELECT (LPAD(MRC_CODIGO,2,0) || '' - '' || MRC_DESCRICAO) AS MRC_DESCRICAO FROM C000404 WHERE ID = :ID');
      tbPesq.ParamByName('ID').AsInteger := Sender.AsInteger;
      tbPesq.Open();

      tbDados.FieldByName('MRC_DESCRICAO').AsString := tbPesq.FieldByName('MRC_DESCRICAO').AsString;
   finally
      tbPesq.Close;
      tbPesq.SQL.Clear;
   end;
end;

procedure TFrProdutos.tbDadosID_SUBGRUPOChange(Sender: TField);
begin
   {Carrega a descrição}
   try
      tbPesq.SQL.Add('SELECT (LPAD(SUB_CODIGO,2,0) || '' - '' || SUB_DESCRICAO) AS SUB_DESCRICAO FROM C000403 WHERE ID = :ID');
      tbPesq.ParamByName('ID').AsInteger := Sender.AsInteger;
      tbPesq.Open();

      tbDados.FieldByName('SUB_DESCRICAO').AsString := tbPesq.FieldByName('SUB_DESCRICAO').AsString;
   finally
      tbPesq.Close;
      tbPesq.SQL.Clear;
   end;
end;

procedure TFrProdutos.tbDadosID_TIPO_PRODUTOChange(Sender: TField);
begin
   {Carrega a descrição}
   try
      tbPesq.SQL.Add('SELECT (LPAD(TIP_CODIGO,2,0) || '' - '' || TIP_DESCRICAO) AS TIP_DESCRICAO FROM C000401 WHERE ID = :ID');
      tbPesq.ParamByName('ID').AsInteger := Sender.AsInteger;
      tbPesq.Open();

      tbDados.FieldByName('TIP_DESCRICAO').AsString := tbPesq.FieldByName('TIP_DESCRICAO').AsString;
   finally
      tbPesq.Close;
      tbPesq.SQL.Clear;
   end;
end;

procedure TFrProdutos.tbDadosNewRecord(DataSet: TDataSet);
begin
   {Dados básicos do cadastros}
   DataSet.FieldByName('ID_EMPRESA').AsInteger    := FEmpresaClass.ID;
   DataSet.FieldByName('PRD_DATA_REG').AsDateTime := now;
   DataSet.FieldByName('PRD_STATUS').AsInteger    := 1;
end;

procedure TFrProdutos.tbDadosPRD_STATUSGetText(Sender: TField; var Text: string; DisplayText: Boolean);
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

procedure TFrProdutos.tbFornecedorAfterPost(DataSet: TDataSet);
begin
   tbFornecedor.Refresh;
end;

procedure TFrProdutos.tbFornecedorBeforeDelete(DataSet: TDataSet);
begin
   if Application.MessageBox('Tem certeza que deseja excluir este registro deste fornecedor?','TechCore-RTG',mb_IconQuestion or mb_YesNo) = mrNo then
      Abort;
end;

procedure TFrProdutos.tbFornecedorFOR_CNPJGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
   if Length(Sender.AsString) <= 11 then
      Text := FormatMaskText('!999\.999\.999\-99;0;_',tbFornecedor.FieldByName('FOR_CNPJ').AsString)
   else
   if Length(Sender.AsString) > 11 then
      Text := FormatMaskText('!99.999\.999\/9999\-99;0;_',tbFornecedor.FieldByName('FOR_CNPJ').AsString);
end;

end.
