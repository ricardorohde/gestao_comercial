unit uBuscarProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, JvExStdCtrls, JvEdit,
  Data.DB, NxDBColumns, NxColumns, NxScrollControl, NxCustomGridControl,
  NxCustomGrid, NxDBGrid, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  JvExExtCtrls, JvImage, Vcl.Menus, Vcl.Mask, RzEdit;

type
  TFrBuscarProduto = class(TForm)
    Panel1: TPanel;
    JvImage3: TJvImage;
    Label7: TLabel;
    Grid: TNextDBGrid;
    NxDBNumberColumn1: TNxDBNumberColumn;
    NxDBTextColumn3: TNxDBTextColumn;
    NxDBNumberColumn2: TNxDBNumberColumn;
    dsProdutos: TDataSource;
    pn_Buscar: TPanel;
    Panel3: TPanel;
    NxDBTextColumn1: TNxDBTextColumn;
    NxDBHtmlColumn1: TNxDBHtmlColumn;
    Pop00: TPopupMenu;
    S1: TMenuItem;
    N1: TMenuItem;
    Panel2: TPanel;
    Label1: TLabel;
    JvImage1: TJvImage;
    S3: TMenuItem;
    eBuscar: TRzEdit;
    Label2: TLabel;
    N2: TMenuItem;
    AtualizarLista1: TMenuItem;
    procedure S1Click(Sender: TObject);
    procedure eBuscarEnter(Sender: TObject);
    procedure JvImage1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure S3Click(Sender: TObject);
    procedure eBuscarExit(Sender: TObject);
    procedure eBuscarKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure eBuscarChange(Sender: TObject);
    procedure AtualizarLista1Click(Sender: TObject);
  private
    { Private declarations }
  public
    iFlag_Consulta : Integer;
  end;

var
  FrBuscarProduto: TFrBuscarProduto;

implementation

{$R *.dfm}

uses uVendas, Classe.Empresa;

procedure TFrBuscarProduto.AtualizarLista1Click(Sender: TObject);
begin
   { -----------------------------------------------------------------------------------
      Autor:      Winston Moreira
      Dat:        20/02/2019
      Descrição:  3º - Se nada foi encontrado nas pesquisas anteriores, tenta buscar
                  uma relação de produtos ou um produto pela descrição
   ------------------------------------------------------------------------------------- }
   with FrVendas do
   begin
      Query.Filtered := false;
      Query.Close;
      Query.SQL.Clear;
      Query.SQL.Add('SELECT * FROM C000405 WHERE ID_EMPRESA = :ID_EMPRESA ORDER BY PRD_DESCRICAO ASC');
      Query.ParamByName('ID_EMPRESA').AsInteger := FEmpresaClass.ID;
      Query.Open();
   end;
end;

procedure TFrBuscarProduto.eBuscarChange(Sender: TObject);
begin
   // Filtra os registros
   with dsProdutos.DataSet do
   begin
      Filtered := false;
      Filter   := 'PRD_DESCRICAO LIKE ' + QuotedStr('%' + eBuscar.Text + '%');
      Filtered := true;
   end;
end;

procedure TFrBuscarProduto.eBuscarEnter(Sender: TObject);
begin
   TEdit(Sender).Color := $00D5FFFF;
end;

procedure TFrBuscarProduto.eBuscarExit(Sender: TObject);
begin
   TEdit(Sender).Color := $00DFDFDF;
end;

procedure TFrBuscarProduto.eBuscarKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   if Key = VK_DOWN then
      Grid.SetFocus;
end;

procedure TFrBuscarProduto.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if not eBuscar.Focused then
   begin

      // Ignora o comando se for pressionada a tecla backspace
      if not Ord(Key) in [8,27] then
         eBuscar.Text := eBuscar.Text + Key;

      eBuscar.SetFocus;
   end;
end;

procedure TFrBuscarProduto.JvImage1Click(Sender: TObject);
begin
   Self.Close;
end;

procedure TFrBuscarProduto.S1Click(Sender: TObject);
begin
   if dsProdutos.DataSet.IsEmpty then
   begin
      Application.MessageBox('Selecione ao menos um produto.','TechCore-PDV',mb_IconStop or mb_Ok);
      Exit;
   end;

   Self.ModalResult := mrOk;
end;

procedure TFrBuscarProduto.S3Click(Sender: TObject);
begin
   Self.Close;
end;

end.
