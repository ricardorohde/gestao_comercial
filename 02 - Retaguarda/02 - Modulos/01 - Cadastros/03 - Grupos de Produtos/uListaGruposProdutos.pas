unit uListaGruposProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, JvDataSource, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid, RzPanel, RzDlgBtn,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Imaging.pngimage, Vcl.Menus, Vcl.Mask,
  RzEdit, RzCmboBx;

type
  TFrListaGruposProdutos = class(TForm)
    RzDialogButtons1: TRzDialogButtons;
    eGrid: TJvDBGrid;
    tbDados: TFDQuery;
    dsDados: TJvDataSource;
    tbDadosID: TIntegerField;
    tbDadosID_EMPRESA: TIntegerField;
    tbDadosGRP_CODIGO: TIntegerField;
    tbDadosGRP_DATA_REG: TSQLTimeStampField;
    tbDadosGRP_DESCRICAO: TStringField;
    tbDadosGRP_STATUS: TIntegerField;
    RzPanel1: TRzPanel;
    Image1: TImage;
    Label5: TLabel;
    Label6: TLabel;
    Bevel1: TBevel;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    eTipo: TRzComboBox;
    eSearch: TRzEdit;
    PopupMenu1: TPopupMenu;
    ipodePesquisa1: TMenuItem;
    ParmetrosdaPesquisa1: TMenuItem;
    N1: TMenuItem;
    Sair1: TMenuItem;
    procedure tbDadosGRP_STATUSGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure RzDialogButtons1ClickOk(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ipodePesquisa1Click(Sender: TObject);
    procedure ParmetrosdaPesquisa1Click(Sender: TObject);
    procedure eSearchChange(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure eSearchKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure eGridKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrListaGruposProdutos: TFrListaGruposProdutos;

implementation

uses
   Classe.Empresa, uModuloRet;

{$R *.dfm}

procedure TFrListaGruposProdutos.eGridKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   if (Key = VK_UP) and (tbDados.Bof) then
      eSearch.SetFocus;
end;

procedure TFrListaGruposProdutos.eSearchChange(Sender: TObject);
begin
   case eTipo.ItemIndex of
      0 : begin
         tbDados.Filtered := false;
         tbDados.Filter   := 'GRP_CODIGO LIKE ' + QuotedStr('%' + eSearch.Text + '%');
         tbDados.Filtered := true;
      end;

      1 : begin
         tbDados.Filtered := false;
         tbDados.Filter   := 'GRP_DESCRICAO LIKE ' + QuotedStr('%' + eSearch.Text + '%');
         tbDados.Filtered := true;
      end;
   end;
end;

procedure TFrListaGruposProdutos.eSearchKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   if Key = VK_DOWN then
      eGrid.SetFocus;
end;

procedure TFrListaGruposProdutos.FormCreate(Sender: TObject);
begin
   {Carrega os grupos de produtos}
   tbDados.ParamByName('id_empresa').AsInteger := FEmpresaClass.ID;
   tbDados.Open();

   {define o tipo de pesquisa inicial}
   eTipo.ItemIndex := 1;
end;

procedure TFrListaGruposProdutos.ipodePesquisa1Click(Sender: TObject);
begin
   case eTipo.ItemIndex of
      0 : eTipo.ItemIndex := 1;
      1 : eTipo.ItemIndex := 0;
   end;

   {posiciona o cursor no campo de pesquisa}
   eSearch.SetFocus;
   eSearch.Clear;
end;

procedure TFrListaGruposProdutos.ParmetrosdaPesquisa1Click(Sender: TObject);
begin
   eSearch.SetFocus;
end;

procedure TFrListaGruposProdutos.RzDialogButtons1ClickOk(Sender: TObject);
begin
   if tbDados.IsEmpty then
   begin
      Application.MessageBox('Erro, Selecione um registro antes de continuar.','TechCore-RTG',mb_IconStop or mb_Ok);
      Abort;
   end;

   if tbDados.FieldByName('grp_status').AsInteger = 2 then
   begin
      Application.MessageBox('Erro, Registro inativo.','TechCore-RTG',mb_IconStop or mb_Ok);
      Abort;
   end;

   Self.ModalResult := mrOk;
end;

procedure TFrListaGruposProdutos.Sair1Click(Sender: TObject);
begin
   Self.Close;
end;

procedure TFrListaGruposProdutos.tbDadosGRP_STATUSGetText(Sender: TField; var Text: string; DisplayText: Boolean);
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
