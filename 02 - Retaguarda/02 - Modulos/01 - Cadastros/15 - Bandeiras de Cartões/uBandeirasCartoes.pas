unit uBandeirasCartoes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, JvDataSource, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.Actions, Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls,
  Vcl.ActnMan, Vcl.StdCtrls, Vcl.Mask, RzEdit, RzDBEdit, RzPanel, RzRadGrp,
  RzDBRGrp, Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid, Vcl.ComCtrls,
  JvExComCtrls, JvComCtrls, RzButton, Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TFrBandeirasCartoes = class(TForm)
    RzPanel2: TRzPanel;
    Label8: TLabel;
    Label9: TLabel;
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
    Label2: TLabel;
    Label3: TLabel;
    RzDBRadioGroup1: TRzDBRadioGroup;
    eCodigo: TRzDBEdit;
    eDataReg: TRzDBEdit;
    eDescricao: TRzDBEdit;
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
    tbDadosBND_DATA_REG: TSQLTimeStampField;
    tbDadosBND_CODIGO: TIntegerField;
    tbDadosBND_DESCRICAO: TStringField;
    tbDadosBND_STATUS: TIntegerField;
    procedure pgControlChanging(Sender: TObject; var AllowChange: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure tbDadosAfterPost(DataSet: TDataSet);
    procedure tbDadosBeforeDelete(DataSet: TDataSet);
    procedure tbDadosBeforePost(DataSet: TDataSet);
    procedure tbDadosNewRecord(DataSet: TDataSet);
    procedure dsDadosStateChange(Sender: TObject);
    procedure tbDadosBND_STATUSGetText(Sender: TField; var Text: string;
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
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrBandeirasCartoes: TFrBandeirasCartoes;

implementation

uses
   Classe.Empresa, uModuloRet;

{$R *.dfm}

procedure TFrBandeirasCartoes.actAlterarExecute(Sender: TObject);
begin
   tbDados.Edit;
end;

procedure TFrBandeirasCartoes.actAlterarUpdate(Sender: TObject);
begin
   if tbDados.IsEmpty then
      TAction(Sender).Enabled := false
   else
      TAction(Sender).Enabled := not ( tbDados.State in [dsInsert,dsEdit] );
end;

procedure TFrBandeirasCartoes.actCadastrarExecute(Sender: TObject);
begin
   tbDados.Insert;
end;

procedure TFrBandeirasCartoes.actCadastrarUpdate(Sender: TObject);
begin
   TAction(Sender).Enabled := not ( tbDados.State in [dsInsert,dsEdit] );
end;

procedure TFrBandeirasCartoes.actCancelarExecute(Sender: TObject);
begin
   tbDados.Cancel;
end;

procedure TFrBandeirasCartoes.actExcluirExecute(Sender: TObject);
begin
   tbDados.Delete;
end;

procedure TFrBandeirasCartoes.actGravarExecute(Sender: TObject);
begin
   tbDados.Post;
end;

procedure TFrBandeirasCartoes.actGravarUpdate(Sender: TObject);
begin
   TAction(Sender).Enabled := tbDados.State in [dsInsert,dsEdit];
end;

procedure TFrBandeirasCartoes.actSairExecute(Sender: TObject);
begin
   Self.Close;
end;

procedure TFrBandeirasCartoes.dsDadosStateChange(Sender: TObject);
begin
   if tbDados.State in [dsInsert,dsEdit] then
      pgControl.ActivePage := tabDetalhes
   else
      pgControl.ActivePage := tabPrincipal;
end;

procedure TFrBandeirasCartoes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   FreeAndNil( FrBandeirasCartoes );
end;

procedure TFrBandeirasCartoes.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
   {Se houver registro em inclusão ou alteração, imprede a saida}
   if tbDados.State in [dsInsert,dsEdit] then
   begin
      Application.MessageBox('Antes de fechar o formulário, grave ou cancele a alteração ou Inclusão.','TechCore-RTG - Bandeiras de Cartões',mb_IconStop or mb_Ok);
      CanClose := false;
   end;
end;

procedure TFrBandeirasCartoes.FormCreate(Sender: TObject);
begin
   {Ajusta o formulário na criação}
   pgControl.ActivePage := tabPrincipal;

   {Carrega todos os grupos de produtos}
   tbDados.ParamByName('ID_EMPRESA').AsInteger := FEmpresaClass.ID;
   tbDados.Open();
end;

procedure TFrBandeirasCartoes.pgControlChanging(Sender: TObject; var AllowChange: Boolean);
begin
   AllowChange := tbDados.State in [dsInsert,dsEdit];
end;

procedure TFrBandeirasCartoes.tbDadosAfterPost(DataSet: TDataSet);
begin
   DataSet.Refresh;
end;

procedure TFrBandeirasCartoes.tbDadosBeforeDelete(DataSet: TDataSet);
begin
   if Application.MessageBox('Tem certeza que deseja excluir este registro?','TechCore-RTG',mb_IconQuestion or mb_YesNo) = mrNo then
      Abort;
end;

procedure TFrBandeirasCartoes.tbDadosBeforePost(DataSet: TDataSet);
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

procedure TFrBandeirasCartoes.tbDadosBND_STATUSGetText(Sender: TField; var Text: string; DisplayText: Boolean);
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

procedure TFrBandeirasCartoes.tbDadosNewRecord(DataSet: TDataSet);
begin
   {Dados básicos do cadastros}
   DataSet.FieldByName('ID_EMPRESA').AsInteger    := FEmpresaClass.ID;
   DataSet.FieldByName('BND_DATA_REG').AsDateTime := now;
   DataSet.FieldByName('BND_STATUS').AsInteger    := 1;
end;

end.
