unit uSubGruposProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, JvExControls, JvDBLookup, JvDataSource,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, RzPanel, RzButton,
  JvExExtCtrls, JvExtComponent, JvPanel, Vcl.StdCtrls, Vcl.Mask, RzEdit,
  RzDBEdit, Vcl.ExtCtrls, RzRadGrp, RzDBRGrp, Vcl.Grids, Vcl.DBGrids,
  JvExDBGrids, JvDBGrid, Vcl.ComCtrls, JvExComCtrls, JvComCtrls,
  Vcl.Imaging.pngimage, JvImage;

type
  TFrSubGruposProdutos = class(TForm)
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
    tbGrupos: TFDQuery;
    dsGrupos: TJvDataSource;
    tbDadosID: TIntegerField;
    tbDadosID_EMPRESA: TIntegerField;
    tbDadosID_GRUPO: TIntegerField;
    tbDadosSUB_CODIGO: TIntegerField;
    tbDadosSUB_DATA_REG: TSQLTimeStampField;
    tbDadosSUB_DESCRICAO: TStringField;
    tbDadosSUB_STATUS: TIntegerField;
    tbGruposID: TIntegerField;
    tbGruposGRP_DESCRICAO: TStringField;
    tbDadosGRP_DESCRICAO: TStringField;
    RzPanel2: TRzPanel;
    Label42: TLabel;
    Image2: TImage;
    RzPanel1: TRzPanel;
    pgControl: TJvPageControl;
    tabPrincipal: TTabSheet;
    JvDBGrid1: TJvDBGrid;
    tabDetalhes: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    RzDBRadioGroup1: TRzDBRadioGroup;
    RzDBEdit1: TRzDBEdit;
    RzDBEdit2: TRzDBEdit;
    eDescricao: TRzDBEdit;
    eGrupo: TJvDBLookupCombo;
    procedure FormCreate(Sender: TObject);
    procedure pgControlChanging(Sender: TObject; var AllowChange: Boolean);
    procedure dsDadosStateChange(Sender: TObject);
    procedure actCadastrarExecute(Sender: TObject);
    procedure actAlterarExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure actGravarExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure actSairExecute(Sender: TObject);
    procedure actCadastrarUpdate(Sender: TObject);
    procedure actAlterarUpdate(Sender: TObject);
    procedure actGravarUpdate(Sender: TObject);
    procedure actSairUpdate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tbDadosBeforePost(DataSet: TDataSet);
    procedure tbDadosSUB_STATUSGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure tbDadosNewRecord(DataSet: TDataSet);
    procedure tbDadosBeforeDelete(DataSet: TDataSet);
    procedure tbDadosAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrSubGruposProdutos: TFrSubGruposProdutos;

implementation

{$R *.dfm}

uses Classe.Empresa, uModuloRet, uPrincipal;

procedure TFrSubGruposProdutos.actAlterarExecute(Sender: TObject);
begin
   tbDados.Edit;
end;

procedure TFrSubGruposProdutos.actAlterarUpdate(Sender: TObject);
begin
   if tbDados.IsEmpty then
      TAction(Sender).Enabled := false
   else
      TAction(Sender).Enabled := not ( tbDados.State in [dsInsert,dsEdit] );
end;

procedure TFrSubGruposProdutos.actCadastrarExecute(Sender: TObject);
begin
   tbDados.Insert;
end;

procedure TFrSubGruposProdutos.actCadastrarUpdate(Sender: TObject);
begin
   TAction(Sender).Enabled := not ( tbDados.State in [dsInsert,dsEdit] );
end;

procedure TFrSubGruposProdutos.actCancelarExecute(Sender: TObject);
begin
   tbDados.Cancel;
end;

procedure TFrSubGruposProdutos.actExcluirExecute(Sender: TObject);
begin
   tbDados.Delete;
end;

procedure TFrSubGruposProdutos.actGravarExecute(Sender: TObject);
begin
   tbDados.Post;
end;

procedure TFrSubGruposProdutos.actGravarUpdate(Sender: TObject);
begin
   TAction(Sender).Enabled := tbDados.State in [dsInsert,dsEdit];
end;

procedure TFrSubGruposProdutos.actSairExecute(Sender: TObject);
begin
   Self.Close;
end;

procedure TFrSubGruposProdutos.actSairUpdate(Sender: TObject);
begin
   TAction(Sender).Enabled := not ( tbDados.State in [dsInsert,dsEdit] );
end;

procedure TFrSubGruposProdutos.dsDadosStateChange(Sender: TObject);
begin
   if tbDados.State in [dsInsert,dsEdit] then
      pgControl.ActivePage := tabDetalhes
   else
      pgControl.ActivePage := tabPrincipal;
end;

procedure TFrSubGruposProdutos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   FreeandNil( FrSubGruposProdutos );
end;

procedure TFrSubGruposProdutos.FormCreate(Sender: TObject);
begin
   {Ajusta o formulário na criação}
   pgControl.ActivePage := tabPrincipal;

   {Carrega os sub grupos}
   tbDados.ParamByName('id_empresa').AsInteger := FEmpresaClass.ID;
   tbDados.Open();

   {Carrega os grupos cadastrados}
   tbGrupos.ParamByName('id_empresa').AsInteger := FEmpresaClass.ID;
   tbGrupos.Open();

end;

procedure TFrSubGruposProdutos.pgControlChanging(Sender: TObject; var AllowChange: Boolean);
begin
   AllowChange := tbDados.State in [dsInsert,dsEdit];
end;

procedure TFrSubGruposProdutos.tbDadosAfterPost(DataSet: TDataSet);
begin
   DataSet.Refresh;
end;

procedure TFrSubGruposProdutos.tbDadosBeforeDelete(DataSet: TDataSet);
begin
   if Application.MessageBox('Tem certeza que deseja excluir este registro?','TechCore-RTG',mb_IconQuestion or mb_YesNo) = mrNo then
      Abort;
end;

procedure TFrSubGruposProdutos.tbDadosBeforePost(DataSet: TDataSet);
begin
   {Confere o preenchimento}
   if eGrupo.Value = '' then
   begin
      Application.MessageBox('Erro, Obrigatório relacionar o SubGrupo com o Grupo principal.','TechCore-RTG',mb_IconStop or mb_Ok);
      eGrupo.SetFocus;
      Abort;
   end;

   if eDescricao.Text = '' then
   begin
      Application.MessageBox('Erro, Obrigatório informar a Descrição.','TechCore-RTG',mb_IconStop or mb_Ok);
      eDescricao.SetFocus;
      Abort;
   end;

end;

procedure TFrSubGruposProdutos.tbDadosNewRecord(DataSet: TDataSet);
begin
   {Dados básicos do cadastros}
   DataSet.FieldByName('ID_EMPRESA').AsInteger    := FEmpresaClass.ID;
   DataSet.FieldByName('SUB_DATA_REG').AsDateTime := now;
   DataSet.FieldByName('SUB_STATUS').AsInteger    := 1;
end;

procedure TFrSubGruposProdutos.tbDadosSUB_STATUSGetText(Sender: TField; var Text: string; DisplayText: Boolean);
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
