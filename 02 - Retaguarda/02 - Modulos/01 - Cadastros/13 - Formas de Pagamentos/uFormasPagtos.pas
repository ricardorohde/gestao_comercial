unit uFormasPagtos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, Data.DB, Vcl.StdCtrls, Vcl.Mask, RzEdit, RzDBEdit, RzPanel,
  RzRadGrp, RzDBRGrp, Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid,
  Vcl.ComCtrls, JvExComCtrls, JvComCtrls, RzButton, JvDataSource,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, JvExStdCtrls, JvCombobox, JvDBSearchComboBox;

type
  TFrFormasPagtos = class(TForm)
    RzPanel2: TRzPanel;
    Label8: TLabel;
    Label9: TLabel;
    Bevel3: TBevel;
    Image2: TImage;
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
    Label2: TLabel;
    Label3: TLabel;
    RzDBRadioGroup1: TRzDBRadioGroup;
    eCodigo: TRzDBEdit;
    eDataReg: TRzDBEdit;
    eDescricao: TRzDBEdit;
    tbDadosFRM_DATA_REG: TSQLTimeStampField;
    tbDadosFRM_CODIGO: TIntegerField;
    tbDadosFRM_DESCRICAO: TStringField;
    tbDadosFRM_STATUS: TIntegerField;
    procedure pgControlChanging(Sender: TObject; var AllowChange: Boolean);
    procedure tbDadosAfterPost(DataSet: TDataSet);
    procedure tbDadosBeforeDelete(DataSet: TDataSet);
    procedure tbDadosBeforePost(DataSet: TDataSet);
    procedure tbDadosNewRecord(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure tbDadosFRM_STATUSGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure dsDadosStateChange(Sender: TObject);
    procedure actCadastrarUpdate(Sender: TObject);
    procedure actAlterarUpdate(Sender: TObject);
    procedure actGravarUpdate(Sender: TObject);
    procedure actCadastrarExecute(Sender: TObject);
    procedure actAlterarExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure actGravarExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure actSairExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrFormasPagtos: TFrFormasPagtos;

implementation

uses
   Classe.Empresa, uModuloRet;

{$R *.dfm}

procedure TFrFormasPagtos.actAlterarExecute(Sender: TObject);
begin
   tbDados.Edit;
end;

procedure TFrFormasPagtos.actAlterarUpdate(Sender: TObject);
begin
   if tbDados.IsEmpty then
      TAction(Sender).Enabled := false
   else
      TAction(Sender).Enabled := not ( tbDados.State in [dsInsert,dsEdit] );
end;

procedure TFrFormasPagtos.actCadastrarExecute(Sender: TObject);
begin
   tbDados.Insert;
end;

procedure TFrFormasPagtos.actCadastrarUpdate(Sender: TObject);
begin
   TAction(Sender).Enabled := not ( tbDados.State in [dsInsert,dsEdit] );
end;

procedure TFrFormasPagtos.actCancelarExecute(Sender: TObject);
begin
   tbDados.Cancel;
end;

procedure TFrFormasPagtos.actExcluirExecute(Sender: TObject);
begin
   tbDados.Delete;
end;

procedure TFrFormasPagtos.actGravarExecute(Sender: TObject);
begin
   tbDados.Post;
end;

procedure TFrFormasPagtos.actGravarUpdate(Sender: TObject);
begin
   TAction(Sender).Enabled := tbDados.State in [dsInsert,dsEdit];
end;

procedure TFrFormasPagtos.actSairExecute(Sender: TObject);
begin
   Self.Close;
end;

procedure TFrFormasPagtos.dsDadosStateChange(Sender: TObject);
begin
   if tbDados.State in [dsInsert,dsEdit] then
      pgControl.ActivePage := tabDetalhes
   else
      pgControl.ActivePage := tabPrincipal;
end;

procedure TFrFormasPagtos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   FreeAndNil( FrFormasPagtos );
end;

procedure TFrFormasPagtos.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
   {Se houver registro em inclusão ou alteração, imprede a saida}
   if tbDados.State in [dsInsert,dsEdit] then
   begin
      Application.MessageBox('Antes de fechar o formulário, grave ou cancele a alteração ou Inclusão.','TechCore-RTG',mb_IconStop or mb_Ok);
      CanClose := false;
   end;
end;

procedure TFrFormasPagtos.FormCreate(Sender: TObject);
begin
   {Ajusta o formulário na criação}
   pgControl.ActivePage := tabPrincipal;

   {Carrega todos os grupos de produtos}
   tbDados.ParamByName('ID_EMPRESA').AsInteger := FEmpresaClass.ID;
   tbDados.Open();
end;

procedure TFrFormasPagtos.pgControlChanging(Sender: TObject; var AllowChange: Boolean);
begin
   AllowChange := tbDados.State in [dsInsert,dsEdit];
end;

procedure TFrFormasPagtos.tbDadosAfterPost(DataSet: TDataSet);
begin
   DataSet.Refresh;
end;

procedure TFrFormasPagtos.tbDadosBeforeDelete(DataSet: TDataSet);
begin
   if Application.MessageBox('Tem certeza que deseja excluir este registro?','TechCore-RTG',mb_IconQuestion or mb_YesNo) = mrNo then
      Abort;
end;

procedure TFrFormasPagtos.tbDadosBeforePost(DataSet: TDataSet);
begin
   if eCodigo.Text = '' then
   begin
      Application.MessageBox('Erro, Obrigatório informar o Código.','TechCore-RTG',mb_IconStop or mb_Ok);
      eCodigo.SetFocus;
      Abort;
   end;

   if eDescricao.Text = '' then
   begin
      Application.MessageBox('Erro, Obrigatório informar a Descrição.','TechCore-RTG',mb_IconStop or mb_Ok);
      eDescricao.SetFocus;
      Abort;
   end;
end;

procedure TFrFormasPagtos.tbDadosFRM_STATUSGetText(Sender: TField; var Text: string; DisplayText: Boolean);
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

procedure TFrFormasPagtos.tbDadosNewRecord(DataSet: TDataSet);
begin
   {Dados básicos do cadastros}
   DataSet.FieldByName('ID_EMPRESA').AsInteger    := FEmpresaClass.ID;
   DataSet.FieldByName('FRM_DATA_REG').AsDateTime := now;
   DataSet.FieldByName('FRM_STATUS').AsInteger    := 1;
end;

end.
