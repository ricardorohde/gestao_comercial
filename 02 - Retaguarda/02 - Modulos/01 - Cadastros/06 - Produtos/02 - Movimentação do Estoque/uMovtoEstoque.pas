unit uMovtoEstoque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, Vcl.StdCtrls, Vcl.Mask, RzEdit, RzDBEdit, JvDataSource,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, RzPanel, RzRadGrp, RzDBRGrp,
  RzButton, Vcl.ExtCtrls, JvExExtCtrls, JvExtComponent, JvPanel,
  System.Actions, Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls,
  Vcl.ActnMan, Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid, Vcl.ComCtrls,
  JvExComCtrls, JvComCtrls, RzRadChk, RzDBChk, Vcl.DBCtrls,
  Vcl.Imaging.pngimage, JvImage, RzCmboBx, RzDBCmbo, RzDBBnEd, JvExMask,
  JvToolEdit, JvBaseEdits, JvDBControls, Vcl.Menus,
  Vcl.Buttons, JvgSpeedButton, Vcl.ButtonGroup, System.ImageList,
  Vcl.ImgList, PngImageList, RzGroupBar;

type
  TFrMovtoEstoque = class(TForm)
    ActionManager1: TActionManager;
    actCadastrar: TAction;
    actExcluir: TAction;
    actGravar: TAction;
    actCancelar: TAction;
    actSair: TAction;
    Query: TFDQuery;
    dsQuery: TJvDataSource;
    RzPanel2: TRzPanel;
    Label42: TLabel;
    Image2: TImage;
    QueryID: TIntegerField;
    QueryID_EMPRESA: TIntegerField;
    QueryID_PRODUTO: TIntegerField;
    QueryMOV_TIPO: TIntegerField;
    QueryMOV_OBSERVACAO: TStringField;
    QueryPRD_DESCRICAO: TStringField;
    QueryPRD_UNIDADE: TStringField;
    QueryPRD_QTDE: TBCDField;
    QueryMOV_DATA_REG: TSQLTimeStampField;
    Label7: TLabel;
    eGrid: TJvDBGrid;
    Image1: TImage;
    PopupMenu1: TPopupMenu;
    I1: TMenuItem;
    E1: TMenuItem;
    N1: TMenuItem;
    S1: TMenuItem;
    RzPanel1: TRzPanel;
    JvgSpeedButton2: TJvgSpeedButton;
    txtObservacoes: TRzDBMemo;
    QueryMOV_DOCTO: TStringField;
    QueryMOV_JUSTIFICATIVA: TStringField;
    RzGroupBar1: TRzGroupBar;
    RzGroup1: TRzGroup;
    txtDataIni: TDateTimePicker;
    txtDataFim: TDateTimePicker;
    Button1: TButton;
    QueryPRD_CODIGO: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure pgControlChanging(Sender: TObject; var AllowChange: Boolean);
    procedure actCadastrarExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure actGravarExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure QueryNewRecord(DataSet: TDataSet);
    procedure actCadastrarUpdate(Sender: TObject);
    procedure actAlterarUpdate(Sender: TObject);
    procedure actGravarUpdate(Sender: TObject);
    procedure actSairUpdate(Sender: TObject);
    procedure QueryAfterPost(DataSet: TDataSet);
    procedure RzDBEdit2Enter(Sender: TObject);
    procedure RzDBEdit2Exit(Sender: TObject);
    procedure QueryMOV_TIPOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure Image1Click(Sender: TObject);
    procedure actSairExecute(Sender: TObject);
    procedure JvgSpeedButton2Click(Sender: TObject);
    procedure eGridDrawColumnCell(Sender: TObject; const [Ref] Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure QueryBeforeDelete(DataSet: TDataSet);
    procedure QueryAfterDelete(DataSet: TDataSet);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrMovtoEstoque: TFrMovtoEstoque;

implementation

{$R *.dfm}

uses uPrincipal, Classe.Empresa, uModuloRet, uListaProdutos,
  uMovtoEstoqueAltInc;

procedure TFrMovtoEstoque.actAlterarUpdate(Sender: TObject);
begin
   if Query.IsEmpty then
      TAction(Sender).Enabled := false
   else
      TAction(Sender).Enabled := not ( Query.State in [dsInsert,dsEdit] );
end;

procedure TFrMovtoEstoque.actCadastrarExecute(Sender: TObject);
begin
   Query.Insert;

   {carrega o formulário}
   try
      frmovtoEstoqueAltInc := TfrmovtoEstoqueAltInc.Create(self);
      if frmovtoEstoqueAltInc.ShowModal = mrOk then
         Query.Post
      else
         Query.Cancel;
   finally
      FreeAndNil(frmovtoEstoqueAltInc);
   end;
end;

procedure TFrMovtoEstoque.actCadastrarUpdate(Sender: TObject);
begin
   TAction(Sender).Enabled := not ( Query.State in [dsInsert,dsEdit] );
end;

procedure TFrMovtoEstoque.actCancelarExecute(Sender: TObject);
begin
   Query.Cancel;
end;

procedure TFrMovtoEstoque.actExcluirExecute(Sender: TObject);
begin
   Query.Delete;
end;

procedure TFrMovtoEstoque.actGravarExecute(Sender: TObject);
begin
   Query.Post;
end;

procedure TFrMovtoEstoque.actGravarUpdate(Sender: TObject);
begin
   TAction(Sender).Enabled := Query.State in [dsInsert,dsEdit];
end;

procedure TFrMovtoEstoque.actSairExecute(Sender: TObject);
begin
   Self.Close;
end;

procedure TFrMovtoEstoque.actSairUpdate(Sender: TObject);
begin
   TAction(Sender).Enabled := not ( Query.State in [dsInsert,dsEdit] );
end;

procedure TFrMovtoEstoque.Button1Click(Sender: TObject);
begin
   {Carrega todos os grupos de produtos}
   Query.Close;
   Query.ParamByName('a_data').AsDateTime    := txtDataIni.Date;
   Query.ParamByName('b_data').AsDateTime    := txtDataFim.Date;
   Query.ParamByName('id_empresa').AsInteger := FEmpresaClass.ID;
   Query.Open();

end;

procedure TFrMovtoEstoque.eGridDrawColumnCell(Sender: TObject; const [Ref] Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
   if Query.IsEmpty then Exit;

   if Column.Title.Caption = '#' then
   begin

      case Query.FieldByName('mov_tipo').AsInteger of
         1 : (Sender as TDBGrid).Canvas.Brush.Color := clGreen;
         2 : (Sender as TDBGrid).Canvas.Brush.Color := clRed;
      end;

      (Sender as TDBGrid).Canvas.Font.Color := clWindow;

   end;

   {Pinta o Grid}
   (Sender as TDBGrid).Canvas.FillRect(Rect);
   (Sender as TDBGrid).DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TFrMovtoEstoque.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
   if Application.MessageBox('Tem certeza que deseja fechar?','TechCore-RTG',mb_IconQuestion or mb_YesNo) = mrNo then
      CanClose := false;
end;

procedure TFrMovtoEstoque.FormCreate(Sender: TObject);
begin
   {Campos data}
   txtDataIni.Date := Date;
   txtDataFim.Date := Date;

   {Ajusta a quantidade de casas decimais da quantidade}
   case FEmpresaClass.Decimal_Qtde of
      2 : QueryPRD_QTDE.DisplayFormat := ',0.00';
      3 : QueryPRD_QTDE.DisplayFormat := ',0.000';
      4 : QueryPRD_QTDE.DisplayFormat := ',0.0000';
   end;

   {Carrega todos os grupos de produtos}
   Query.ParamByName('a_data').AsDateTime    := txtDataIni.Date;
   Query.ParamByName('b_data').AsDateTime    := txtDataFim.Date;
   Query.ParamByName('id_empresa').AsInteger := FEmpresaClass.ID;
   Query.Open();

   // Ajusta as colunas do grid
   eGrid.Columns[0].Width := 118;
   eGrid.Columns[1].Width := 16;

   // força os caracteres em maisculo no campo observações
   TEdit(txtObservacoes).CharCase := ecUpperCase;
end;

procedure TFrMovtoEstoque.Image1Click(Sender: TObject);
var
  P1, P2: TPoint;
begin
  P1.X := Image1.Left;
  P1.Y := Image1.Top + Image1.Height;
  P2 := ClientToScreen(P1);
  PopupMenu1.PopUp(P2.X, P2.Y);
end;

procedure TFrMovtoEstoque.JvgSpeedButton2Click(Sender: TObject);
begin
   Self.Close;
end;

procedure TFrMovtoEstoque.pgControlChanging(Sender: TObject; var AllowChange: Boolean);
begin
   AllowChange := Query.State in [dsInsert,dsEdit];
end;

procedure TFrMovtoEstoque.QueryAfterDelete(DataSet: TDataSet);
begin
   {gera um log da movimentação}
   FrPrincipal.ucMain.log(FrPrincipal.ucMain.CurrentUser.UserName + ' Excluiu a movimentação do estoque');
end;

procedure TFrMovtoEstoque.QueryAfterPost(DataSet: TDataSet);
begin
   DataSet.Refresh;

   {gera um log da movimentação}
   FrPrincipal.ucMain.log(FrPrincipal.ucMain.CurrentUser.UserName + ' Efetuou a movimentação do estoque');
end;

procedure TFrMovtoEstoque.QueryBeforeDelete(DataSet: TDataSet);
begin
   if Application.MessageBox('Tem certeza que deseja excluir este resgistro?','TechCore-RTG',mb_IconQuestion or mb_YesNo) = mrNo then
      Abort;
end;

procedure TFrMovtoEstoque.QueryMOV_TIPOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
   if DisplayText then
   begin
      case Sender.AsInteger of
         1 : Text := 'E';
         2 : Text := 'S';
      end;
   end
   else
      Text := Sender.AsString;
end;

procedure TFrMovtoEstoque.QueryNewRecord(DataSet: TDataSet);
begin
   {Dados básicos do cadastros}
   DataSet.FieldByName('id_empresa').AsInteger := FEmpresaClass.ID;
end;

procedure TFrMovtoEstoque.RzDBEdit2Enter(Sender: TObject);
begin
   TEdit(Sender).Color := clSilver;
end;

procedure TFrMovtoEstoque.RzDBEdit2Exit(Sender: TObject);
begin
   TEdit(Sender).Color := clWindow;
end;

end.
