unit uModeloCadastro;

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
  Vcl.ExtCtrls;

type
  TFrModeloCadastro = class(TForm)
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
    Label3: TLabel;
    Label4: TLabel;
    RzDBRadioGroup1: TRzDBRadioGroup;
    eCodigo: TRzDBEdit;
    eDataReg: TRzDBEdit;
    eDescricao: TRzDBEdit;
    tbDadosID: TIntegerField;
    tbDadosID_EMPRESA: TIntegerField;
    tbDadosCAX_DATA_REG: TSQLTimeStampField;
    tbDadosCAX_DESCRICAO: TStringField;
    tbDadosCAX_STATUS: TIntegerField;
    tbDadosCAX_TIPO: TIntegerField;
    tbDadosCAX_CODIGO: TIntegerField;
    procedure tbDadosCAX_TIPOGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure tbDadosAfterPost(DataSet: TDataSet);
    procedure tbDadosBeforeDelete(DataSet: TDataSet);
    procedure tbDadosBeforePost(DataSet: TDataSet);
    procedure tbDadosCalcFields(DataSet: TDataSet);
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrModeloCadastro: TFrModeloCadastro;

implementation

uses
   Classe.Empresa;

{$R *.dfm}

procedure TFrModeloCadastro.actAlterarExecute(Sender: TObject);
begin
   tbDados.Edit;
end;

procedure TFrModeloCadastro.actAlterarUpdate(Sender: TObject);
begin
   if tbDados.IsEmpty then
      TAction(Sender).Enabled := false
   else
      TAction(Sender).Enabled := not( tbDados.State in [dsInsert,dsEdit] );
end;

procedure TFrModeloCadastro.actCadastrarExecute(Sender: TObject);
begin
   tbDados.Insert;
end;

procedure TFrModeloCadastro.actCadastrarUpdate(Sender: TObject);
begin
   TAction(Sender).Enabled := not( tbDados.State in [dsInsert,dsEdit] );
end;

procedure TFrModeloCadastro.actCancelarExecute(Sender: TObject);
begin
   tbDados.Cancel;
end;

procedure TFrModeloCadastro.actCancelarUpdate(Sender: TObject);
begin
   if tbDados.IsEmpty then
      TAction(Sender).Enabled := false
   else
      TAction(Sender).Enabled := tbDados.State in [dsInsert,dsEdit];
end;

procedure TFrModeloCadastro.actExcluirExecute(Sender: TObject);
begin
   tbDados.Delete;
end;

procedure TFrModeloCadastro.actExcluirUpdate(Sender: TObject);
begin
   if tbDados.IsEmpty then
      TAction(Sender).Enabled := false
   else
      TAction(Sender).Enabled := not( tbDados.State in [dsInsert,dsEdit] );
end;

procedure TFrModeloCadastro.actGravarExecute(Sender: TObject);
begin
   tbDados.Post;
end;

procedure TFrModeloCadastro.actGravarUpdate(Sender: TObject);
begin
   if tbDados.IsEmpty then
      TAction(Sender).Enabled := false
   else
      TAction(Sender).Enabled := tbDados.State in [dsInsert,dsEdit];
end;

procedure TFrModeloCadastro.actSairExecute(Sender: TObject);
begin
   Self.Close
end;

procedure TFrModeloCadastro.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   FreeAndNil( FrCadastroCaixas );
end;

procedure TFrModeloCadastro.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
   {Se houver registro em inclusão ou alteração, imprede a saida}
   if tbDados.State in [dsInsert,dsEdit] then
   begin
      Application.MessageBox('Antes de fechar o formulário, grave ou cancele a alteração ou Inclusão.','TechCore-RTG',mb_IconStop or mb_Ok);
      CanClose := false;
   end;
end;

procedure TFrModeloCadastro.FormCreate(Sender: TObject);
begin
   {Ajusta o formulário na criação}
   pgControl.ActivePage := tabPrincipal;

   {Carrega todos os grupos de produtos}
   tbDados.ParamByName('ID_EMPRESA').AsInteger := FEmpresaClass.ID;
   tbDados.Open();
end;

procedure TFrModeloCadastro.tbDadosAfterPost(DataSet: TDataSet);
begin
   DataSet.Refresh;
end;

procedure TFrModeloCadastro.tbDadosBeforeDelete(DataSet: TDataSet);
begin
   if Application.MessageBox('Tem certeza que deseja excluir este registro?','TechCore-RTG',mb_IconQuestion or mb_YesNo) = mrNo then
      Abort;
end;

procedure TFrModeloCadastro.tbDadosBeforePost(DataSet: TDataSet);
begin
   if eDescricao.Text = '' then
   begin
      Application.MessageBox('Erro, Obrigatório informar a Descrição.','TechCore-RTG',mb_IconStop or mb_Ok);
      eDescricao.SetFocus;
      Abort;
   end;
end;

procedure TFrModeloCadastro.tbDadosCalcFields(DataSet: TDataSet);
begin
   {Dados básicos do cadastros}
   DataSet.FieldByName('ID_EMPRESA').AsInteger    := FEmpresaClass.ID;
   DataSet.FieldByName('CAX_DATA_REG').AsDateTime := now;
   DataSet.FieldByName('CAX_STATUS').AsInteger    := 1;
end;

procedure TFrModeloCadastro.tbDadosCAX_STATUSGetText(Sender: TField; var Text: string; DisplayText: Boolean);
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

procedure TFrModeloCadastro.tbDadosCAX_TIPOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
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

end.
