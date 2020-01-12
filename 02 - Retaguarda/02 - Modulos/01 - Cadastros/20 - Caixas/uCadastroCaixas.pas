unit uCadastroCaixas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, Data.DB, Vcl.StdCtrls, Vcl.Mask, RzEdit, RzDBEdit, RzPanel,
  RzRadGrp, RzDBRGrp, Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid,
  Vcl.ComCtrls, JvExComCtrls, JvComCtrls, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, JvDataSource, RzButton, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, RzRadChk, RzDBChk;

type
  TFrCadastroCaixas = class(TForm)
    pnTitulo: TPanel;
    imTituloLeft: TImage;
    Label1: TLabel;
    ImgTituloRigth: TImage;
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
    dsDados: TJvDataSource;
    tbDados: TFDQuery;
    ActionManager1: TActionManager;
    actCadastrar: TAction;
    actAlterar: TAction;
    actExcluir: TAction;
    actGravar: TAction;
    actCancelar: TAction;
    actSair: TAction;
    pgControl: TJvPageControl;
    tabPrincipal: TTabSheet;
    JvDBGrid1: TJvDBGrid;
    tabDetalhes: TTabSheet;
    Label2: TLabel;
    Label4: TLabel;
    RzDBRadioGroup1: TRzDBRadioGroup;
    eCodigo: TRzDBEdit;
    eDescricao: TRzDBEdit;
    tbDadosID: TIntegerField;
    tbDadosCAX_DESCRICAO: TStringField;
    tbDadosCAX_STATUS: TIntegerField;
    tbDadosCAX_CODIGO: TIntegerField;
    RzDBCheckBox1: TRzDBCheckBox;
    tbDadosCAX_UTILIZADO: TStringField;
    procedure tbDadosCAX_TIPOGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure tbDadosAfterPost(DataSet: TDataSet);
    procedure tbDadosBeforeDelete(DataSet: TDataSet);
    procedure tbDadosBeforePost(DataSet: TDataSet);
    procedure tbDadosCAX_STATUSGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure actGravarUpdate(Sender: TObject);
    procedure actExcluirUpdate(Sender: TObject);
    procedure actCancelarUpdate(Sender: TObject);
    procedure actAlterarUpdate(Sender: TObject);
    procedure actCadastrarExecute(Sender: TObject);
    procedure actAlterarExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure actGravarExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure actSairExecute(Sender: TObject);
    procedure actCadastrarUpdate(Sender: TObject);
    procedure dsDadosStateChange(Sender: TObject);
    procedure ImgTituloRigthClick(Sender: TObject);
    procedure tbDadosNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrCadastroCaixas: TFrCadastroCaixas;

implementation

uses
   Classe.Empresa, uModuloRet;

{$R *.dfm}

procedure TFrCadastroCaixas.actAlterarExecute(Sender: TObject);
begin
   tbDados.Edit;
end;

procedure TFrCadastroCaixas.actAlterarUpdate(Sender: TObject);
begin
   if tbDados.IsEmpty then
      TAction(Sender).Enabled := false
   else
      TAction(Sender).Enabled := not( tbDados.State in [dsInsert,dsEdit] );
end;

procedure TFrCadastroCaixas.actCadastrarExecute(Sender: TObject);
begin
   tbDados.Insert;
end;

procedure TFrCadastroCaixas.actCadastrarUpdate(Sender: TObject);
begin
   TAction(Sender).Enabled := not( tbDados.State in [dsInsert,dsEdit] );
end;

procedure TFrCadastroCaixas.actCancelarExecute(Sender: TObject);
begin
   tbDados.Cancel;
end;

procedure TFrCadastroCaixas.actCancelarUpdate(Sender: TObject);
begin
   if tbDados.IsEmpty then
      TAction(Sender).Enabled := false
   else
      TAction(Sender).Enabled := tbDados.State in [dsInsert,dsEdit];
end;

procedure TFrCadastroCaixas.actExcluirExecute(Sender: TObject);
begin
   tbDados.Delete;
end;

procedure TFrCadastroCaixas.actExcluirUpdate(Sender: TObject);
begin
   if tbDados.IsEmpty then
      TAction(Sender).Enabled := false
   else
      TAction(Sender).Enabled := not( tbDados.State in [dsInsert,dsEdit] );
end;

procedure TFrCadastroCaixas.actGravarExecute(Sender: TObject);
begin
   tbDados.Post;
end;

procedure TFrCadastroCaixas.actGravarUpdate(Sender: TObject);
begin
   if tbDados.IsEmpty then
      TAction(Sender).Enabled := false
   else
      TAction(Sender).Enabled := tbDados.State in [dsInsert,dsEdit];
end;

procedure TFrCadastroCaixas.actSairExecute(Sender: TObject);
begin
   Self.Close
end;

procedure TFrCadastroCaixas.dsDadosStateChange(Sender: TObject);
begin
   if tbDados.State in [dsInsert,dsEdit] then
      pgControl.ActivePage := tabDetalhes;
end;

procedure TFrCadastroCaixas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   FreeAndNil( FrCadastroCaixas );
end;

procedure TFrCadastroCaixas.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
   {Se houver registro em inclusão ou alteração, imprede a saida}
   if tbDados.State in [dsInsert,dsEdit] then
   begin
      Application.MessageBox('Antes de fechar o formulário, grave ou cancele a alteração ou Inclusão.','TechCore-RTG',mb_IconStop or mb_Ok);
      CanClose := false;
   end;
end;

procedure TFrCadastroCaixas.FormCreate(Sender: TObject);
begin
   {Ajusta o formulário na criação}
   pgControl.ActivePage := tabPrincipal;

   {Carrega todos os grupos de produtos}
   tbDados.Open();
end;

procedure TFrCadastroCaixas.ImgTituloRigthClick(Sender: TObject);
begin
   Self.Close;
end;

procedure TFrCadastroCaixas.tbDadosAfterPost(DataSet: TDataSet);
begin
   DataSet.Refresh;
end;

procedure TFrCadastroCaixas.tbDadosBeforeDelete(DataSet: TDataSet);
begin
   if Application.MessageBox('Tem certeza que deseja excluir este registro?','TechCore-RTG',mb_IconQuestion or mb_YesNo) = mrNo then
      Abort;
end;

procedure TFrCadastroCaixas.tbDadosBeforePost(DataSet: TDataSet);
begin
   if eDescricao.Text = '' then
   begin
      Application.MessageBox('Erro, Obrigatório informar a Descrição.','TechCore-RTG',mb_IconStop or mb_Ok);
      eDescricao.SetFocus;
      Abort;
   end;
end;

procedure TFrCadastroCaixas.tbDadosCAX_STATUSGetText(Sender: TField; var Text: string; DisplayText: Boolean);
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

procedure TFrCadastroCaixas.tbDadosCAX_TIPOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
   if DisplayText then
   begin
      case Sender.AsInteger of
         1 : Text := 'Retaguarda';
         2 : Text := 'Frente de Caixa'
      end;
   end
   else
      Text := Sender.AsString;
end;

procedure TFrCadastroCaixas.tbDadosNewRecord(DataSet: TDataSet);
begin
   {Dados básicos do cadastros}
   DataSet.FieldByName('CAX_STATUS').AsInteger    := 1;
end;

end.
