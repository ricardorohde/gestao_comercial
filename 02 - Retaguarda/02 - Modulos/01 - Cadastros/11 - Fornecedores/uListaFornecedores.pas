unit uListaFornecedores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, MaskUtils,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, RzPanel, RzDlgBtn, JvDataSource, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid,
  Vcl.ExtCtrls, Vcl.Imaging.pngimage, Vcl.StdCtrls, JvExStdCtrls,
  JvCombobox, Vcl.Mask, RzEdit, Vcl.Menus;

type
  TFrListaFornecedores = class(TForm)
    eGrid: TJvDBGrid;
    tbDados: TFDQuery;
    tbDadosID: TIntegerField;
    tbDadosID_EMPRESA: TIntegerField;
    dsDados: TJvDataSource;
    RzDialogButtons2: TRzDialogButtons;
    tbDadosFOR_CODIGO: TIntegerField;
    tbDadosFOR_DATA_REG: TSQLTimeStampField;
    tbDadosFOR_RAZAO_SOCIAL: TStringField;
    tbDadosFOR_CNPJ: TStringField;
    tbDadosFOR_UF: TStringField;
    tbDadosFOR_STATUS: TIntegerField;
    RzPanel2: TRzPanel;
    Label8: TLabel;
    Image2: TImage;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    eSearch: TRzEdit;
    eTipo: TJvComboBox;
    PopupMenu1: TPopupMenu;
    ipodePesquisa1: TMenuItem;
    N1: TMenuItem;
    Sair1: TMenuItem;
    tbDadosFOR_NOME_FANTASIA: TStringField;
    procedure tbDadosFOR_STATUSGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure tbDadosFOR_CNPJGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure RzDialogButtons2ClickOk(Sender: TObject);
    procedure ipodePesquisa1Click(Sender: TObject);
    procedure eSearchChange(Sender: TObject);
    procedure eSearchKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrListaFornecedores: TFrListaFornecedores;

implementation

uses
   Classe.Empresa, uModuloRet;

{$R *.dfm}

procedure TFrListaFornecedores.eSearchChange(Sender: TObject);
begin
   case eTipo.ItemIndex of
      0 : begin
         tbDados.Filtered := false;
         tbDados.Filter   := 'FOR_CNPJ LIKE ' + QuotedStr('%' + eSearch.Text + '%');
         tbDados.Filtered := true;
      end;

      1 : begin
         tbDados.Filtered := false;
         tbDados.Filter   := 'FOR_RAZAO_SOCIAL LIKE ' + QuotedStr('%' + eSearch.Text + '%');
         tbDados.Filtered := true;
      end;

      2 : begin
         tbDados.Filtered := false;
         tbDados.Filter   := 'FOR_NOME_FANTASIA LIKE ' + QuotedStr('%' + eSearch.Text + '%');
         tbDados.Filtered := true;
      end;
   end;
end;

procedure TFrListaFornecedores.eSearchKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   if Key = VK_DOWN then
      eGrid.SetFocus;
end;

procedure TFrListaFornecedores.FormCreate(Sender: TObject);
begin
   {Carrega os tipo de produtos}
   tbDados.ParamByName('id_empresa').AsInteger := FEmpresaClass.ID;
   tbDados.Open();
end;

procedure TFrListaFornecedores.ipodePesquisa1Click(Sender: TObject);
begin
   case eTipo.ItemIndex of
      0 : eTipo.ItemIndex := 1;
      1 : eTipo.ItemIndex := 2;
      2 : eTipo.ItemIndex := 0;
   end;

   eSearch.SetFocus
end;

procedure TFrListaFornecedores.RzDialogButtons2ClickOk(Sender: TObject);
begin
   if tbDados.IsEmpty then
   begin
      Application.MessageBox('Erro, Selecione um registro antes de continuar.','TechCore-RTG',mb_IconStop or mb_Ok);
      Abort;
   end;

   if tbDados.FieldByName('for_status').AsInteger = 2 then
   begin
      Application.MessageBox('Erro, Registro inativo.','TechCore-RTG',mb_IconStop or mb_Ok);
      Abort;
   end;

   Self.ModalResult := mrOk;
end;

procedure TFrListaFornecedores.tbDadosFOR_CNPJGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
   if Length(Sender.AsString) <= 11 then
      Text := FormatMaskText('!999\.999\.999\-99;0;_',tbDados.FieldByName('for_cnpj').AsString)
   else
   if Length(Sender.AsString) > 11 then
      Text := FormatMaskText('!99.999\.999\/9999\-99;0;_',tbDados.FieldByName('for_cnpj').AsString);
end;

procedure TFrListaFornecedores.tbDadosFOR_STATUSGetText(Sender: TField; var Text: string; DisplayText: Boolean);
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
