unit uTabelaPrecos;

interface

uses
   Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
   Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
   FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
   FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
   FireDAC.DApt, Vcl.StdCtrls, Vcl.Buttons, PngBitBtn, RzPanel,
   JvExStdCtrls, JvCombobox, JvDBCombobox, Vcl.Mask, RzEdit, Vcl.ExtCtrls,
   JvDataSource, FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.Actions,
   Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, RzButton,
   JvExExtCtrls, JvExtComponent, JvPanel, Vcl.Grids, Vcl.DBGrids,
   JvExDBGrids, JvDBGrid, Vcl.ComCtrls, JvExComCtrls, JvComCtrls, RzDBEdit,
   Vcl.Imaging.pngimage, JvImage;

type
   TFrTabelaPrecos = class(TForm)
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
      tbDadosID: TIntegerField;
      tbDadosID_EMPRESA: TIntegerField;
      dsDados: TJvDataSource;
      tbDadosPRC_DATA_REG: TSQLTimeStampField;
      tbDadosPRC_CODIGO: TIntegerField;
      tbDadosPRC_DESCRICAO: TStringField;
      tbDadosPRC_TIPO: TIntegerField;
      tbDadosPRC_STATUS: TIntegerField;
      tbPrecos: TFDQuery;
      dsPrecos: TJvDataSource;
      tbPrecosPRD_CODIGO: TIntegerField;
      tbPrecosPRD_DESCRICAO: TStringField;
      tbPrecosPRD_VLR_CUSTO: TBCDField;
      tbPrecosID: TIntegerField;
      tbPrecosID_TABELA: TIntegerField;
      tbPrecosID_PRODUTO: TIntegerField;
      tbPrecosPRC_DATA_REG: TSQLTimeStampField;
      tbPesq: TFDQuery;
      spIncluirProdutos: TFDStoredProc;
      actGerarTabela: TAction;
      actIncluirProdutos: TAction;
      actExcluirProduto: TAction;
      actLimparProdutos: TAction;
      tbPrecosPRC_VLR_VENDA: TBCDField;
      RzPanel2: TRzPanel;
      Label20: TLabel;
      Label21: TLabel;
      Bevel3: TBevel;
      Image2: TImage;
      RzPanel1: TRzPanel;
      pgControl: TJvPageControl;
      tabPrincipal: TTabSheet;
      JvDBGrid1: TJvDBGrid;
      tabDetalhes: TTabSheet;
      Panel1: TPanel;
      Label1: TLabel;
      Label2: TLabel;
      Label3: TLabel;
      Label4: TLabel;
      Label5: TLabel;
      eTipo: TJvDBComboBox;
      eStatus: TJvDBComboBox;
      eCodigo: TRzDBEdit;
      eModificacao: TRzDBEdit;
      eDescricao: TRzDBEdit;
      RzGroupBox1: TRzGroupBox;
      PngBitBtn1: TPngBitBtn;
      PngBitBtn2: TPngBitBtn;
      PngBitBtn3: TPngBitBtn;
      PngBitBtn4: TPngBitBtn;
      RzGroupBox2: TRzGroupBox;
    gGrid: TJvDBGrid;
      procedure pgControlChanging(Sender: TObject; var AllowChange: Boolean);
      procedure tbDadosAfterPost(DataSet: TDataSet);
      procedure tbDadosBeforeDelete(DataSet: TDataSet);
      procedure tbDadosNewRecord(DataSet: TDataSet);
      procedure FormCreate(Sender: TObject);
      procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure actCadastrarExecute(Sender: TObject);
      procedure actExcluirExecute(Sender: TObject);
      procedure actGravarExecute(Sender: TObject);
      procedure actCancelarExecute(Sender: TObject);
      procedure actSairExecute(Sender: TObject);
      procedure actCadastrarUpdate(Sender: TObject);
      procedure actAlterarUpdate(Sender: TObject);
      procedure actGravarUpdate(Sender: TObject);
      procedure tbDadosPRC_STATUSGetText(Sender: TField; var Text: string; DisplayText: Boolean);
      procedure dsDadosStateChange(Sender: TObject);
      procedure tbDadosBeforePost(DataSet: TDataSet);
      procedure eDescricaoEnter(Sender: TObject);
      procedure eDescricaoExit(Sender: TObject);
      procedure tbDadosPRC_TIPOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
      procedure spIncluirProdutosAfterExecute(DataSet: TFDDataSet);
      procedure actGerarTabelaExecute(Sender: TObject);
      procedure actGerarTabelaUpdate(Sender: TObject);
      procedure tbPrecosBeforeDelete(DataSet: TDataSet);
      procedure actExcluirProdutoExecute(Sender: TObject);
      procedure actExcluirProdutoUpdate(Sender: TObject);
      procedure actLimparProdutosExecute(Sender: TObject);
      procedure actIncluirProdutosExecute(Sender: TObject);
      procedure actIncluirProdutosUpdate(Sender: TObject);
      procedure JvDBGrid1DblClick(Sender: TObject);
      procedure actAlterarExecute(Sender: TObject);
      procedure FormShow(Sender: TObject);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrTabelaPrecos: TFrTabelaPrecos;

implementation

uses
   Classe.Empresa, uListaProdutos, uModuloRet;

{$R *.dfm}

procedure TFrTabelaPrecos.actAlterarExecute(Sender: TObject);
begin
   tbDados.Edit;
end;

procedure TFrTabelaPrecos.actAlterarUpdate(Sender: TObject);
begin
   if tbDados.IsEmpty then
      TAction(Sender).Enabled := false
   else
      TAction(Sender).Enabled := not(tbDados.State in [dsInsert, dsEdit]);
end;

procedure TFrTabelaPrecos.actCadastrarExecute(Sender: TObject);
begin
   tbDados.Insert;
end;

procedure TFrTabelaPrecos.actCadastrarUpdate(Sender: TObject);
begin
   TAction(Sender).Enabled := not(tbDados.State in [dsInsert, dsEdit]);
end;

procedure TFrTabelaPrecos.actCancelarExecute(Sender: TObject);
begin
   tbDados.Cancel;
end;

procedure TFrTabelaPrecos.actExcluirExecute(Sender: TObject);
begin
   tbDados.Delete;
end;

procedure TFrTabelaPrecos.actExcluirProdutoExecute(Sender: TObject);
begin
   tbPrecos.Delete;
end;

procedure TFrTabelaPrecos.actExcluirProdutoUpdate(Sender: TObject);
begin
   if tbPrecos.IsEmpty then
      TAction(Sender).Enabled := false
   else
      TAction(Sender).Enabled := not(tbDados.State in [dsInsert, dsEdit]);
end;

procedure TFrTabelaPrecos.actGerarTabelaExecute(Sender: TObject);
begin
   { Carrega todos os produtos para tabela atual }
   Self.Tag := Application.MessageBox('Tem certeza que deseja Carregar todos os Produtos para esta tabela?', 'TechCore-RTG', mb_IconQuestion or mb_YesNo);
   if (Self.Tag = 7) then
      Abort;

   { Procedure responsável por inserir todos os produtos na tabela }
   spIncluirProdutos.Close;
   spIncluirProdutos.ParamByName('ID_EMPRESA').AsInteger := FEmpresaClass.ID;
   spIncluirProdutos.ParamByName('ID_TABELA').AsInteger := tbDadosID.AsInteger;
   spIncluirProdutos.Prepare;
   spIncluirProdutos.ExecProc;
end;

procedure TFrTabelaPrecos.actGerarTabelaUpdate(Sender: TObject);
begin
   if not tbPrecos.IsEmpty then
      TAction(Sender).Enabled := false
   else
      TAction(Sender).Enabled := not(tbDados.State in [dsInsert, dsEdit]);
end;

procedure TFrTabelaPrecos.actGravarExecute(Sender: TObject);
begin
   tbDados.Post;
end;

procedure TFrTabelaPrecos.actGravarUpdate(Sender: TObject);
begin
   TAction(Sender).Enabled := tbDados.State in [dsInsert, dsEdit];
end;

procedure TFrTabelaPrecos.actIncluirProdutosExecute(Sender: TObject);
var
   SqlAux: TFDQuery;
Label
   Inicio;
begin

   { Formulário para a pesquisa do produto }
   try
      FrListaProdutos := TFrListaProdutos.Create(Self);
      FrListaProdutos.TipoQuery := 1; // Listagem simples

   Inicio:

      if FrListaProdutos.ShowModal = mrCancel then
         Abort;

      { impede de fazer a releitura da tabela, utilizada para inclusão continua }
      FrListaProdutos.tab_precos := true;

      { Cria o cursor temporário }
      SqlAux := TFDQuery.Create(Self);
      SqlAux.Connection := FrModuloRet.DBConexao;

      { Checa se o produto já se econtra na lista de produtos da tabela }
      SqlAux.Close;
      SqlAux.SQL.Clear;
      SqlAux.SQL.Add('SELECT 1 FROM C000304 WHERE ID_PRODUTO = :ID_PRODUTO AND ID_TABELA = :ID_TABELA');
      SqlAux.ParamByName('ID_PRODUTO').AsInteger := FrListaProdutos.tbDadosID.AsInteger;
      SqlAux.ParamByName('ID_TABELA').AsInteger := tbDadosID.AsInteger;
      SqlAux.Open();

      if not SqlAux.IsEmpty then
      begin
         Application.MessageBox('Erro, O Produto já faz parte da tabela de preços selecionada.', 'TechCore-RTG', mb_IconStop or mb_Ok);

         { retorna ao início }
         Goto Inicio;
      end;

      try
         { Insere o produto na tabela selecionada }
         SqlAux.Close;
         SqlAux.SQL.Clear;
         SqlAux.SQL.Add('INSERT INTO C000304 (ID_TABELA,ID_PRODUTO) VALUES (:ID_TABELA, :ID_PRODUTO)');
         SqlAux.ParamByName('ID_TABELA').AsInteger := tbDadosID.AsInteger;
         SqlAux.ParamByName('ID_PRODUTO').AsInteger := FrListaProdutos.tbDadosID.AsInteger;
         SqlAux.ExecSQL;

      except
         on e: exception do
            Application.MessageBox(pChar('Não foi possivel incluir este produto na tabela de preço selecionada.' + #13#10 + 'Erro: ' + e.Message), 'TechCore-RTG',
               mb_IconStop or mb_Ok);
      end;

      { Atualiza o cursor dos produtos }
      tbPrecos.Close;
      tbPrecos.Open();

      { retorna ao início }
      Goto Inicio;

   finally
      FreeAndNil(SqlAux);
      FreeAndNil(FrListaProdutos);
   end;
end;

procedure TFrTabelaPrecos.actIncluirProdutosUpdate(Sender: TObject);
begin
   TAction(Sender).Enabled := not(tbDados.State in [dsInsert, dsEdit]);
end;

procedure TFrTabelaPrecos.actLimparProdutosExecute(Sender: TObject);
var
   SqlAux: TFDQuery;
begin
   if Application.MessageBox('Tem certeza que deseja excluir todos os Produto desta Tabela?', 'TechCore-RTG', mb_IconQuestion or mb_YesNo) = mrNo then
      Abort;

   SqlAux := TFDQuery.Create(Self);
   SqlAux.Connection := tbDados.Connection;
   try
      SqlAux.SQL.Add('DELETE FROM C000304 WHERE ID_TABELA = :ID');
      SqlAux.ParamByName('ID').AsInteger := tbDadosID.AsInteger;
      SqlAux.ExecSQL;
   finally
      FreeAndNil(SqlAux);
      tbPrecos.Refresh;
   end;
end;

procedure TFrTabelaPrecos.actSairExecute(Sender: TObject);
begin
   Self.Close;
end;

procedure TFrTabelaPrecos.dsDadosStateChange(Sender: TObject);
begin
   { Impede de alterar o tipo }
   if tbDados.State = dsInsert then
      eTipo.Enabled := true
   else
      eTipo.Enabled := false;

   { Alterna para os detalhes }
   if tbDados.State in [dsInsert, dsEdit] then
      pgControl.ActivePage := tabDetalhes
end;

procedure TFrTabelaPrecos.eDescricaoEnter(Sender: TObject);
begin
   TEdit(Sender).Color := $00B8E6FE;
end;

procedure TFrTabelaPrecos.eDescricaoExit(Sender: TObject);
begin
   TEdit(Sender).Color := clWhite;
end;

procedure TFrTabelaPrecos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   FreeAndNil(FrTabelaPrecos);
end;

procedure TFrTabelaPrecos.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
   { Se houver registro em inclusão ou alteração, imprede a saida }
   if tbDados.State in [dsInsert, dsEdit] then
   begin
      Application.MessageBox('Antes de fechar o formulário, grave ou cancele a alteração ou Inclusão.', 'TechCore-RTG', mb_IconStop or mb_Ok);
      CanClose := false;
   end;
end;

procedure TFrTabelaPrecos.FormCreate(Sender: TObject);
begin
   { Ajusta o formulário na criação }
   pgControl.ActivePage := tabPrincipal;

   // Ajustar casas decimais
   case FEmpresaClass.Decimal_Custo of
      2:
         tbPrecosPRD_VLR_CUSTO.DisplayFormat := ',0.00';
      3:
         tbPrecosPRD_VLR_CUSTO.DisplayFormat := ',0.000';
      4:
         tbPrecosPRD_VLR_CUSTO.DisplayFormat := ',0.0000';
   end;

   // Ajustar casas decimais
   case FEmpresaClass.Decimal_Venda of
      2:
         tbPrecosPRC_VLR_VENDA.DisplayFormat := ',0.00';
      3:
         tbPrecosPRC_VLR_VENDA.DisplayFormat := ',0.000';
      4:
         tbPrecosPRC_VLR_VENDA.DisplayFormat := ',0.0000';
   end;

   // Ajusta o grid
   gGrid.Columns[0].Width := 130;

end;

procedure TFrTabelaPrecos.FormShow(Sender: TObject);
begin
   { Carrega todos os grupos de produtos }
   tbDados.ParamByName('ID_EMPRESA').AsInteger := FEmpresaClass.ID;
   tbDados.Open();

   { Carrega todos os produtos da tabela }
   tbPrecos.Open();
end;

procedure TFrTabelaPrecos.JvDBGrid1DblClick(Sender: TObject);
begin
   pgControl.ActivePage := tabDetalhes
end;

procedure TFrTabelaPrecos.pgControlChanging(Sender: TObject; var AllowChange: Boolean);
begin
   AllowChange := not(tbDados.IsEmpty);
end;

procedure TFrTabelaPrecos.spIncluirProdutosAfterExecute(DataSet: TFDDataSet);
begin
   tbPrecos.Refresh;
end;

procedure TFrTabelaPrecos.tbDadosAfterPost(DataSet: TDataSet);
begin
   DataSet.Refresh;
end;

procedure TFrTabelaPrecos.tbDadosBeforeDelete(DataSet: TDataSet);
begin
   if Application.MessageBox('Tem certeza que deseja excluir este registro?', 'TechCore-RTG', mb_IconQuestion or mb_YesNo) = mrNo then
      Abort;
end;

procedure TFrTabelaPrecos.tbDadosBeforePost(DataSet: TDataSet);
begin
   if eDescricao.Text = '' then
   begin
      Application.MessageBox('Erro, Obrigatório informar a Descrição.', 'TechCore-RTG', mb_IconStop or mb_Ok);
      eDescricao.SetFocus;
      Abort;
   end;

   if eTipo.ItemIndex < 0 then
   begin
      Application.MessageBox('Erro, Obrigatório informar o Tipo de Tabela.', 'TechCore-RTG', mb_IconStop or mb_Ok);
      eTipo.SetFocus;
      Abort;
   end;

   { Se for inclusão, checa o tipo de tabela }
   if tbDados.State = dsInsert then
   begin
      try
         tbPesq.SQL.Add('SELECT 1 FROM C000303 WHERE PRC_TIPO = 1');
         tbPesq.Open();

         if (not tbPesq.IsEmpty) and (eTipo.ItemIndex = 0) then
         begin
            Application.MessageBox('Erro, Não é permitido cadastrar mais de uma Tabela PDV.', 'TechCore-RTG', mb_IconStop or mb_Ok);
            eDescricao.SetFocus;
            Abort;
         end;
      finally
         tbPesq.Close;
         tbPesq.SQL.Clear;
      end;
   end;

end;

procedure TFrTabelaPrecos.tbDadosNewRecord(DataSet: TDataSet);
begin
   { Dados básicos do cadastros }
   DataSet.FieldByName('ID_EMPRESA').AsInteger := FEmpresaClass.ID;
   DataSet.FieldByName('PRC_DATA_REG').AsDateTime := now;
   DataSet.FieldByName('PRC_STATUS').AsInteger := 1;
end;

procedure TFrTabelaPrecos.tbDadosPRC_STATUSGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
   if DisplayText then
   begin
      case Sender.AsInteger of
         1:
            Text := 'S';
         2:
            Text := 'N';
      end;
   end
   else
      Text := Sender.AsString;
end;

procedure TFrTabelaPrecos.tbDadosPRC_TIPOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
   if DisplayText then
   begin
      case Sender.AsInteger of
         1:
            Text := 'Tabela PDV';
         2:
            Text := 'Tabela Retaguarda';
      end;
   end
   else
      Text := Sender.AsString;
end;

procedure TFrTabelaPrecos.tbPrecosBeforeDelete(DataSet: TDataSet);
begin
   if Application.MessageBox('Tem certeza que deseja excluir este Produto?', 'TechCore-RTG', mb_IconQuestion or mb_YesNo) = mrNo then
      Abort;
end;

end.
