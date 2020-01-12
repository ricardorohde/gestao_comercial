unit uListaPlanoContas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, Data.DB, JvDBSearchComboBox, Vcl.Grids, Vcl.DBGrids,
  JvExDBGrids, JvDBGrid, RzDlgBtn, Vcl.Menus, JvDataSource,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, JvExStdCtrls,
  JvCombobox, Vcl.Mask, RzEdit, Vcl.ExtCtrls, Vcl.Imaging.pngimage, RzPanel;

type
  TFrListaPlanoContas = class(TForm)
    RzPanel2: TRzPanel;
    Label8: TLabel;
    Bevel3: TBevel;
    Image2: TImage;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    eSearch: TRzEdit;
    Query: TFDQuery;
    dsQuery: TJvDataSource;
    PopupMenu1: TPopupMenu;
    ipodePesquisa1: TMenuItem;
    N1: TMenuItem;
    Sair1: TMenuItem;
    RzDialogButtons1: TRzDialogButtons;
    eGrid: TJvDBGrid;
    ed_tipo_pesquisa: TJvDBSearchComboBox;
    ListQuery: TFDQuery;
    dsListQuery: TDataSource;
    QueryID: TIntegerField;
    QueryID_EMPRESA: TIntegerField;
    QueryPLN_CONTA_CODIGO: TStringField;
    QueryPLN_DESCRICAO: TStringField;
    QueryPLN_DESCRICAO_II: TStringField;
    QueryPLN_TIPO: TStringField;
    QueryPLN_ATIVO: TStringField;
    QueryPLN_DESCRICAO_III: TStringField;
    procedure eGridDrawColumnCell(Sender: TObject; const [Ref] Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Sair1Click(Sender: TObject);
    procedure eSearchKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ListarContas(aValue : string = '');
    procedure FormCreate(Sender: TObject);
    procedure ipodePesquisa1Click(Sender: TObject);
    procedure eSearchChange(Sender: TObject);
    procedure RzDialogButtons1ClickOk(Sender: TObject);
    procedure ed_tipo_pesquisaChange(Sender: TObject);
  private
    { Private declarations }
      StrInicial : String;
  public
    { Public declarations }
  end;

var
  FrListaPlanoContas: TFrListaPlanoContas;

implementation

{$R *.dfm}

uses Classe.Empresa, uModuloRet;

procedure TFrListaPlanoContas.eSearchChange(Sender: TObject);
begin
   Query.Filtered := false;
   Query.Filter   := 'PLN_DESCRICAO LIKE ' + QuotedStr(eSearch.Text + '%');
   Query.Filtered := true;
end;

procedure TFrListaPlanoContas.eSearchKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   if Key = VK_DOWN then
      eGrid.SetFocus;
end;

procedure TFrListaPlanoContas.FormCreate(Sender: TObject);
begin
   StrInicial := Query.SQL.Text;

   {Carrega os grupos principais de contas}
   ListQuery.ParamByName('id_empresa').AsInteger := FEmpresaClass.ID;
   ListQuery.Open();

   {Carrega todos os planos de contas}
   ListarContas();
end;

procedure TFrListaPlanoContas.ipodePesquisa1Click(Sender: TObject);
begin
   // Avança para o próximo registro
   ListQuery.Next;

   // Checa se já chegou a o fim da lista
   if ListQuery.Eof then
      ListQuery.First;

   // Força a selecionar o tipo
   ed_tipo_pesquisaChange(nil);

   // Posiciona o cursor
   eSearch.SetFocus;

end;

procedure TFrListaPlanoContas.ListarContas(aValue : string = '');
begin
   Query.Close;
   Query.SQL.Clear;
   Query.SQL.Add(StrInicial);
   Query.ParamByName('id_empresa').AsInteger      := FEmpresaClass.ID;
   Query.ParamByName('pln_conta_codigo').AsString := aValue;
   Query.Open();
end;

procedure TFrListaPlanoContas.RzDialogButtons1ClickOk(Sender: TObject);
begin
   if Query.IsEmpty then
   begin
      Application.MessageBox('Selecione um plano de contas antes de prosseguir','TechCore-RTG',mb_IconError or mb_ok);
      Abort;
   end;

   if QueryPLN_TIPO.AsString = 'S' then
   begin
      Application.MessageBox('Não é permitido selecionar um conta do tipo Sintética','TechCore-RTG',mb_IconError or mb_ok);
      Abort;
   end;

   Self.ModalResult := mrOk;

end;

procedure TFrListaPlanoContas.ed_tipo_pesquisaChange(Sender: TObject);
begin
   // Seleciona o tipo de conta
   ListarContas(ListQuery.FieldByName('pln_conta_codigo').AsString);
end;

procedure TFrListaPlanoContas.eGridDrawColumnCell(Sender: TObject;
  const [Ref] Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
   if Column.FieldName = 'PLN_DESCRICAO_II' then
   begin

      if QueryPLN_TIPO.AsString = 'S' then
      begin
         // Aplicando prto para a cor da fonte
         (Sender as TDBGrid).Canvas.Font.Style := [fsBold];
         (Sender as TDBGrid).Canvas.FillRect(Rect);
         (Sender as TDBGrid).DefaultDrawColumnCell(rect,Datacol,Column,state);
      end;

   end;
end;

procedure TFrListaPlanoContas.Sair1Click(Sender: TObject);
begin
   Self.Close;
end;

end.
