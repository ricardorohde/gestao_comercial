unit uListaNCMs;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, JvDataSource, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid, RzPanel, RzDlgBtn,
  Vcl.ExtCtrls, Vcl.Menus, Vcl.StdCtrls, JvExStdCtrls, JvEdit, JvCombobox,
  Vcl.Imaging.pngimage;

type
  TFrListaNCMs = class(TForm)
    RzDialogButtons1: TRzDialogButtons;
    eGrid: TJvDBGrid;
    tbDados: TFDQuery;
    tbDadosID: TIntegerField;
    dsDados: TJvDataSource;
    tbDadosNCM_CODIGO: TStringField;
    tbDadosNCM_DESCRICAO: TStringField;
    tbDadosNCM_STATUS: TIntegerField;
    Panel2: TPanel;
    eTipo: TJvComboBox;
    eSearch: TJvEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    PopupMenu1: TPopupMenu;
    ipodePesquisa1: TMenuItem;
    ParmetrosdaPesquisa1: TMenuItem;
    tbDadosNCM_CEST: TStringField;
    tbDadosNCM_EX: TStringField;
    RzPanel1: TRzPanel;
    Image1: TImage;
    Label5: TLabel;
    Label6: TLabel;
    Bevel1: TBevel;
    procedure tbDadosNCM_STATUSGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure ipodePesquisa1Click(Sender: TObject);
    procedure ParmetrosdaPesquisa1Click(Sender: TObject);
    procedure RzDialogButtons1ClickOk(Sender: TObject);
    procedure eSearchChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrListaNCMs: TFrListaNCMs;

implementation

uses
   Classe.Empresa, uModuloRet;

{$R *.dfm}

procedure TFrListaNCMs.eSearchChange(Sender: TObject);
begin
   case eTipo.ItemIndex of
      0 : begin
         tbDados.Filtered := false;
         tbDados.Filter   := 'NCM_CODIGO LIKE ' + QuotedStr('%' + eSearch.Text + '%');
         tbDados.Filtered := true;
      end;

      1 : begin
         tbDados.Filtered := false;
         tbDados.Filter   := 'NCM_DESCRICAO LIKE ' + QuotedStr('%' + eSearch.Text + '%');
         tbDados.Filtered := true;
      end;
   end;
end;

procedure TFrListaNCMs.FormCreate(Sender: TObject);
begin
   {Carrega a lista de NCMs}
   tbDados.Open();
end;

procedure TFrListaNCMs.ipodePesquisa1Click(Sender: TObject);
begin
   case eTipo.ItemIndex of
      0 : eTipo.ItemIndex := 1;
      1 : eTipo.ItemIndex := 0;
   end;

   eSearch.SetFocus;
end;

procedure TFrListaNCMs.ParmetrosdaPesquisa1Click(Sender: TObject);
begin
   eSearch.SetFocus;
end;

procedure TFrListaNCMs.RzDialogButtons1ClickOk(Sender: TObject);
begin
   if tbDados.IsEmpty then
   begin
      Application.MessageBox('Erro, Selecione um registro antes de continuar.','TechCore-RTG',mb_IconStop or mb_Ok);
      Abort;
   end;

   if tbDados.FieldByName('ncm_status').AsInteger = 2 then
   begin
      Application.MessageBox('Erro, Registro inativo.','TechCore-RTG',mb_IconStop or mb_Ok);
      Abort;
   end;

   Self.ModalResult := mrOk;
end;

procedure TFrListaNCMs.tbDadosNCM_STATUSGetText(Sender: TField; var Text: string; DisplayText: Boolean);
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
