unit uListaSubGruposProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, JvDataSource, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid, RzPanel, RzDlgBtn,
  Vcl.ExtCtrls, Vcl.Imaging.pngimage, Vcl.Menus, Vcl.StdCtrls, Vcl.Mask,
  RzEdit, RzCmboBx;

type
  TFrListaSubGruposProdutos = class(TForm)
    RzDialogButtons1: TRzDialogButtons;
    eGrid: TJvDBGrid;
    tbDados: TFDQuery;
    tbDadosID: TIntegerField;
    dsDados: TJvDataSource;
    tbDadosID_EMPRESA: TIntegerField;
    tbDadosID_GRUPO: TIntegerField;
    tbDadosSUB_CODIGO: TIntegerField;
    tbDadosSUB_DATA_REG: TSQLTimeStampField;
    tbDadosSUB_DESCRICAO: TStringField;
    tbDadosSUB_STATUS: TIntegerField;
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
    RzPanel1: TRzPanel;
    Image1: TImage;
    Label5: TLabel;
    Label6: TLabel;
    Bevel1: TBevel;
    procedure RzDialogButtons1ClickOk(Sender: TObject);
    procedure tbDadosSUB_STATUSGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure FormShow(Sender: TObject);
    procedure ipodePesquisa1Click(Sender: TObject);
    procedure ParmetrosdaPesquisa1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure eSearchChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrListaSubGruposProdutos: TFrListaSubGruposProdutos;

implementation

uses
   Classe.Empresa, uModuloRet;

{$R *.dfm}

procedure TFrListaSubGruposProdutos.eSearchChange(Sender: TObject);
begin
   case eTipo.ItemIndex of
      0 : begin
         tbDados.Filtered := false;
         tbDados.Filter   := 'SUB_CODIGO LIKE ' + QuotedStr('%' + eSearch.Text + '%');
         tbDados.Filtered := true;
      end;

      1 : begin
         tbDados.Filtered := false;
         tbDados.Filter   := 'SUB_DESCRICAO LIKE ' + QuotedStr('%' + eSearch.Text + '%');
         tbDados.Filtered := true;
      end;
   end;
end;

procedure TFrListaSubGruposProdutos.FormCreate(Sender: TObject);
begin
   {define o tipo de pesquisa inicial}
   eTipo.ItemIndex := 1;
end;

procedure TFrListaSubGruposProdutos.FormShow(Sender: TObject);
begin
   {Carrega os subgrupos de produtos}
   tbDados.ParamByName('id_empresa').AsInteger := FEmpresaClass.ID;
   tbDados.ParamByName('id_grupo').AsInteger   := Self.Tag;
   tbDados.Open();
end;

procedure TFrListaSubGruposProdutos.ipodePesquisa1Click(Sender: TObject);
begin
   case eTipo.ItemIndex of
      0 : eTipo.ItemIndex := 1;
      1 : eTipo.ItemIndex := 0;
   end;

   {posiciona o cursor no campo de pesquisa}
   eSearch.SetFocus;
   eSearch.Clear;
end;

procedure TFrListaSubGruposProdutos.ParmetrosdaPesquisa1Click(
  Sender: TObject);
begin
   eSearch.SetFocus;
end;

procedure TFrListaSubGruposProdutos.RzDialogButtons1ClickOk(Sender: TObject);
begin
   if tbDados.IsEmpty then
   begin
      Application.MessageBox('Erro, Selecione um registro antes de continuar.','TechCore-RTG',mb_IconStop or mb_Ok);
      Abort;
   end;

   if tbDados.FieldByName('sub_status').AsInteger = 2 then
   begin
      Application.MessageBox('Erro, Registro inativo.','TechCore-RTG',mb_IconStop or mb_Ok);
      Abort;
   end;

   Self.ModalResult := mrOk;
end;

procedure TFrListaSubGruposProdutos.Sair1Click(Sender: TObject);
begin
   Self.Close
end;

procedure TFrListaSubGruposProdutos.tbDadosSUB_STATUSGetText(Sender: TField; var Text: string; DisplayText: Boolean);
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
