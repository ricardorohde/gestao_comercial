unit uListaClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, MaskUtils,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, RzPanel, RzDlgBtn, JvDataSource, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid,
  Vcl.ExtCtrls, Vcl.Imaging.pngimage, Vcl.StdCtrls, Vcl.Menus, Vcl.Mask,
  RzEdit, RzCmboBx, JvExStdCtrls, JvCombobox;

type
  TFrListaClientes = class(TForm)
    eGrid: TJvDBGrid;
    Query: TFDQuery;
    QueryID: TIntegerField;
    QueryID_EMPRESA: TIntegerField;
    dsQuery: TJvDataSource;
    RzDialogButtons2: TRzDialogButtons;
    RzPanel2: TRzPanel;
    Label8: TLabel;
    Label9: TLabel;
    Bevel3: TBevel;
    Image2: TImage;
    QueryCLI_CODIGO: TIntegerField;
    QueryCLI_DATA_REG: TSQLTimeStampField;
    QueryCLI_RAZAO_SOCIAL: TStringField;
    QueryCLI_CNPJ: TStringField;
    QueryCLI_UF: TStringField;
    QueryCLI_STATUS: TIntegerField;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    eSearch: TRzEdit;
    PopupMenu1: TPopupMenu;
    ipodePesquisa1: TMenuItem;
    N1: TMenuItem;
    Sair1: TMenuItem;
    QueryCLI_NOME_FANTASIA: TStringField;
    eTipo: TJvComboBox;
    procedure FormCreate(Sender: TObject);
    procedure RzDialogButtons2ClickOk(Sender: TObject);
    procedure QueryCLI_CNPJGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure QueryCLI_STATUSGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure ipodePesquisa1Click(Sender: TObject);
    procedure eSearchChange(Sender: TObject);
    procedure eSearchKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure eGridKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Sair1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrListaClientes: TFrListaClientes;

implementation

uses
   Classe.Empresa, uModuloRet;

{$R *.dfm}

procedure TFrListaClientes.eGridKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   if ( Key = VK_UP ) and ( Query.Bof ) then
      eSearch.SetFocus;
end;

procedure TFrListaClientes.eSearchChange(Sender: TObject);
begin
   case eTipo.ItemIndex of
      0 : begin
         Query.Filtered := false;
         Query.Filter   := 'CLI_CNPJ LIKE ' + QuotedStr('%' + eSearch.Text + '%');
         Query.Filtered := true;
      end;

      1 : begin
         Query.Filtered := false;
         Query.Filter   := 'CLI_RAZAO_SOCIAL LIKE ' + QuotedStr('%' + eSearch.Text + '%');
         Query.Filtered := true;
      end;

      2 : begin
         Query.Filtered := false;
         Query.Filter   := 'CLI_NOME_FANTASIA LIKE ' + QuotedStr('%' + eSearch.Text + '%');
         Query.Filtered := true;
      end;
   end;
end;

procedure TFrListaClientes.eSearchKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   if Key = VK_DOWN then
      eGrid.SetFocus;
end;

procedure TFrListaClientes.FormCreate(Sender: TObject);
begin
   {Carrega os tipo de produtos}
   Query.ParamByName('id_empresa').AsInteger := FEmpresaClass.ID;
   Query.Open();
end;

procedure TFrListaClientes.ipodePesquisa1Click(Sender: TObject);
begin
   case eTipo.ItemIndex of
      0 : eTipo.ItemIndex := 1;
      1 : eTipo.ItemIndex := 2;
      2 : eTipo.ItemIndex := 0;
   end;

   eSearch.SetFocus;
end;

procedure TFrListaClientes.RzDialogButtons2ClickOk(Sender: TObject);
begin
   if Query.IsEmpty then
   begin
      Application.MessageBox('Erro, Selecione um registro antes de continuar.','TechCore-RTG',mb_IconStop or mb_Ok);
      Abort;
   end;

   if Query.FieldByName('cli_status').AsInteger = 2 then
   begin
      Application.MessageBox('Erro, Registro inativo.','TechCore-RTG',mb_IconStop or mb_Ok);
      Abort;
   end;

   Self.ModalResult := mrOk;
end;

procedure TFrListaClientes.Sair1Click(Sender: TObject);
begin
   Self.Close;
end;

procedure TFrListaClientes.QueryCLI_CNPJGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
   if Length(Sender.AsString) <= 11 then
      Text := FormatMaskText('!999\.999\.999\-99;0;_',Query.FieldByName('cli_cnpj').AsString)
   else
   if Length(Sender.AsString) > 11 then
      Text := FormatMaskText('!99.999\.999\/9999\-99;0;_',Query.FieldByName('cli_cnpj').AsString);
end;

procedure TFrListaClientes.QueryCLI_STATUSGetText(Sender: TField; var Text: string; DisplayText: Boolean);
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
