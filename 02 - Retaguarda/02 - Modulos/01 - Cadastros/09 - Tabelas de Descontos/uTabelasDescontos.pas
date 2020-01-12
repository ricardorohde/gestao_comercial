unit uTabelasDescontos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, JvExMask, JvToolEdit, JvBaseEdits, JvDBControls,
  JvDataSource, FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.Actions,
  Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, RzPanel,
  RzButton, JvExExtCtrls, JvExtComponent, JvPanel, Vcl.StdCtrls, Vcl.Mask,
  RzEdit, RzDBEdit, Vcl.ExtCtrls, RzRadGrp, RzDBRGrp, Vcl.Grids,
  Vcl.DBGrids, JvExDBGrids, JvDBGrid, Vcl.ComCtrls, JvExComCtrls,
  JvComCtrls, ACBrUtil, Vcl.Imaging.pngimage, JvImage;

type
  TFrTabelasDescontos = class(TForm)
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
    dsDados: TJvDataSource;
    tbDadosID_EMPRESA: TIntegerField;
    tbDadosDSC_DATA_REG: TSQLTimeStampField;
    tbDadosDSC_CODIGO: TIntegerField;
    tbDadosDSC_DESCRICAO: TStringField;
    tbDadosDSC_STATUS: TIntegerField;
    RzPanel2: TRzPanel;
    Label13: TLabel;
    Image2: TImage;
    RzPanel1: TRzPanel;
    pgControl: TJvPageControl;
    tabPrincipal: TTabSheet;
    JvDBGrid1: TJvDBGrid;
    tabDetalhes: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    RzDBRadioGroup1: TRzDBRadioGroup;
    RzDBEdit1: TRzDBEdit;
    RzDBEdit2: TRzDBEdit;
    eDescricao: TRzDBEdit;
    eMargem: TJvDBCalcEdit;
    eComissao: TJvDBCalcEdit;
    tbDadosDSC_MARGEM: TFMTBCDField;
    tbDadosDSC_COMISSAO: TFMTBCDField;
    procedure actCadastrarExecute(Sender: TObject);
    procedure actAlterarExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure actGravarExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure actSairExecute(Sender: TObject);
    procedure actCadastrarUpdate(Sender: TObject);
    procedure actAlterarUpdate(Sender: TObject);
    procedure actGravarUpdate(Sender: TObject);
    procedure tbDadosAfterPost(DataSet: TDataSet);
    procedure tbDadosBeforeDelete(DataSet: TDataSet);
    procedure tbDadosBeforePost(DataSet: TDataSet);
    procedure tbDadosDSC_STATUSGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure tbDadosNewRecord(DataSet: TDataSet);
    procedure dsDadosStateChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure pgControlChanging(Sender: TObject; var AllowChange: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrTabelasDescontos: TFrTabelasDescontos;

implementation

uses
   Classe.Empresa, uModuloRet, uPrincipal;

{$R *.dfm}

procedure TFrTabelasDescontos.actAlterarExecute(Sender: TObject);
begin
   tbdados.Edit;
end;

procedure TFrTabelasDescontos.actAlterarUpdate(Sender: TObject);
begin
   if tbDados.IsEmpty then
      TAction(Sender).Enabled := false
   else
      TAction(Sender).Enabled := not ( tbdados.State in [dsInsert,dsEdit] );
end;

procedure TFrTabelasDescontos.actCadastrarExecute(Sender: TObject);
begin
   tbDados.Insert;
end;

procedure TFrTabelasDescontos.actCadastrarUpdate(Sender: TObject);
begin
   TAction(Sender).Enabled := not ( tbdados.State in [dsInsert,dsEdit] );
end;

procedure TFrTabelasDescontos.actCancelarExecute(Sender: TObject);
begin
   tbDados.Cancel;
end;

procedure TFrTabelasDescontos.actExcluirExecute(Sender: TObject);
begin
   tbdados.Delete;
end;

procedure TFrTabelasDescontos.actGravarExecute(Sender: TObject);
begin
   tbdados.Post;
end;

procedure TFrTabelasDescontos.actGravarUpdate(Sender: TObject);
begin
   TAction(Sender).Enabled := tbdados.State in [dsInsert,dsEdit];
end;

procedure TFrTabelasDescontos.actSairExecute(Sender: TObject);
begin
   Self.Close;
end;

procedure TFrTabelasDescontos.dsDadosStateChange(Sender: TObject);
begin
   if tbDados.State in [dsInsert,dsEdit] then
      pgControl.ActivePage := tabDetalhes
   else
      pgControl.ActivePage := tabPrincipal;
end;

procedure TFrTabelasDescontos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   FreeAndNil( FrTabelasDescontos );
end;

procedure TFrTabelasDescontos.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
   {Se houver registro em inclusão ou alteração, imprede a saida}
   if tbDados.State in [dsInsert,dsEdit] then
   begin
      Application.MessageBox('Antes de fechar o formulário, grave ou cancele a alteração ou Inclusão.','TechCore-RTG',mb_IconStop or mb_Ok);
      CanClose := false;
   end;
end;

procedure TFrTabelasDescontos.FormCreate(Sender: TObject);
begin
   {Ajusta o formulário na criação}
   pgControl.ActivePage := tabPrincipal;

   {Carrega todos os grupos de produtos}
   tbDados.ParamByName('ID_EMPRESA').AsInteger := FEmpresaClass.ID;
   tbDados.Open();
end;

procedure TFrTabelasDescontos.pgControlChanging(Sender: TObject; var AllowChange: Boolean);
begin
   AllowChange := tbDados.State in [dsInsert,dsEdit];
end;

procedure TFrTabelasDescontos.tbDadosAfterPost(DataSet: TDataSet);
begin
   DataSet.Refresh;
end;

procedure TFrTabelasDescontos.tbDadosBeforeDelete(DataSet: TDataSet);
begin
   if Application.MessageBox('Tem certeza que deseja excluir este registro?','TechCore-RTG',mb_IconQuestion or mb_YesNo) = mrNo then
      Abort;
end;

procedure TFrTabelasDescontos.tbDadosBeforePost(DataSet: TDataSet);
begin
   if eDescricao.Text = '' then
   begin
      Application.MessageBox('Erro, Obrigatório informar a Descrição.','TechCore-RTG',mb_IconStop or mb_Ok);
      eDescricao.SetFocus;
      Abort;
   end;
end;

procedure TFrTabelasDescontos.tbDadosDSC_STATUSGetText(Sender: TField; var Text: string; DisplayText: Boolean);
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

procedure TFrTabelasDescontos.tbDadosNewRecord(DataSet: TDataSet);
begin
   {Dados básicos do cadastros}
   DataSet.FieldByName('ID_EMPRESA').AsInteger    := FEmpresaClass.ID;
   DataSet.FieldByName('DSC_DATA_REG').AsDateTime := now;
   DataSet.FieldByName('DSC_STATUS').AsInteger    := 1;
end;

end.
