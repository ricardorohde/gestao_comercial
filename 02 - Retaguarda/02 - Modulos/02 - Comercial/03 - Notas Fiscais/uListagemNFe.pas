unit uListagemNFe;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.ExtCtrls,
  RzPanel, RzDlgBtn, Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid, Biblioteca,
  System.Actions, Vcl.ActnList, Vcl.Menus, Vcl.StdCtrls, RzCmboBx,
  Vcl.Mask, RzEdit;

type
  TFrListagemNFe = class(TForm)
    eGrid: TJvDBGrid;
    RzDialogButtons1: TRzDialogButtons;
    DataSource1: TDataSource;
    Query: TFDQuery;
    QueryNFE_NUMERO: TIntegerField;
    QueryNFE_CHAVE_ACESSO: TStringField;
    QueryNFE_STATUS: TIntegerField;
    QueryNFE_TIPO_OPERACAO: TIntegerField;
    Pop00: TPopupMenu;
    ActionList1: TActionList;
    actSelect: TAction;
    Selecionar1: TMenuItem;
    N1: TMenuItem;
    Sair1: TMenuItem;
    Panel1: TPanel;
    cbTipoOperacao: TRzComboBox;
    Label1: TLabel;
    Label2: TLabel;
    txtPesq: TRzEdit;
    Label3: TLabel;
    Label4: TLabel;
    TipodeOperao1: TMenuItem;
    Pequisar1: TMenuItem;
    cbStatusNfe: TRzComboBox;
    Label5: TLabel;
    Label6: TLabel;
    StatusNFe1: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure eGridDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure actSelectUpdate(Sender: TObject);
    procedure TipodeOperao1Click(Sender: TObject);
    procedure Pequisar1Click(Sender: TObject);
    procedure QueryNFE_STATUSGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure StatusNFe1Click(Sender: TObject);
    procedure cbTipoOperacaoChange(Sender: TObject);
    procedure cbStatusNfeChange(Sender: TObject);
    procedure actSelectExecute(Sender: TObject);
    procedure eGridDblClick(Sender: TObject);
    procedure QueryNFE_TIPO_OPERACAOGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
  private
    { Private declarations }
    procedure ListarNotasFiscais(nfe_tipo_operacao : integer = 99; nfe_status : integer = 2);
  public
    { Public declarations }
    IDEmitente : Integer;
    StatusNFE  : Integer;
  end;

var
  FrListagemNFe: TFrListagemNFe;

implementation

{$R *.dfm}

uses uModuloRet, Classe.Empresa;

procedure TFrListagemNFe.FormShow(Sender: TObject);
begin
   ListarNotasFiscais
end;

procedure TFrListagemNFe.TipodeOperao1Click(Sender: TObject);
begin
   case cbTipoOperacao.ItemIndex of
      0 : cbTipoOperacao.ItemIndex := 1;
      1 : cbTipoOperacao.ItemIndex := 2;
      2 : cbTipoOperacao.ItemIndex := 0;
   end;

   cbTipoOperacaoChange(Sender);
   txtPesq.SetFocus;
end;

procedure TFrListagemNFe.ListarNotasFiscais(nfe_tipo_operacao : integer = 99; nfe_status : integer = 2);
begin
   // Script para listagem dos dados
   Query.Close;
   Query.SQL.Clear;
   Query.SQL.Add('Select');
   Query.SQL.Add('   nfe_numero,');
   Query.SQL.Add('   nfe_chave_acesso,');
   Query.SQL.Add('   nfe_status,');
   Query.SQL.Add('   nfe_tipo_operacao');
   Query.SQL.Add('from');
   Query.SQL.Add('   C000600');
   Query.SQL.Add('where');
   Query.SQL.Add('   id_empresa = :id_emp');
   Query.SQL.Add('and');
   Query.SQL.Add('   nfe_status = :nfe_sts');

   case nfe_tipo_operacao of
      0,1 : begin
         Query.SQL.Add('and');
         Query.SQL.Add('   nfe_tipo_operacao = :nfe_tipo');
      end;
   end;

   // Ordenação
   Query.SQL.Add('order by id desc');

   case nfe_tipo_operacao of
      0,1 : Query.ParamByName('nfe_tipo').AsInteger := nfe_tipo_operacao;
   end;

   Query.ParamByName('id_emp').AsInteger  := IDEmitente;
   Query.ParamByName('nfe_sts').AsInteger := nfe_status;
   Query.Open();

end;

procedure TFrListagemNFe.Pequisar1Click(Sender: TObject);
begin
   txtPesq.SetFocus;
end;

procedure TFrListagemNFe.QueryNFE_STATUSGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
   if (DisplayText) and (not Query.IsEmpty) then
   begin
      case Sender.Asinteger of
         0 : Text := 'Em Digitação';
         1 : Text := 'Aguardando';
         2 : Text := 'Autorizada';
         3 : Text := 'Cancelada';
         4 : Text := 'Rejeitada';
         5 : Text := 'Denegada';
      end;
   end
   else
      Text := Sender.AsString
end;

procedure TFrListagemNFe.QueryNFE_TIPO_OPERACAOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
   if (DisplayText) and (not Query.IsEmpty) then
   begin
      case Sender.Asinteger of
         0 : Text := 'NF-e de Entrada';
         1 : Text := 'NF-e de Saida';
      end;
   end
   else
      Text := Sender.AsString
end;

procedure TFrListagemNFe.StatusNFe1Click(Sender: TObject);
begin

   case cbStatusNfe.ItemIndex of
      0 : cbStatusNfe.ItemIndex := 1;
      1 : cbStatusNfe.ItemIndex := 2;
      2 : cbStatusNfe.ItemIndex := 3;
      3 : cbStatusNfe.ItemIndex := 4;
      4 : cbStatusNfe.ItemIndex := 5;
      5 : cbStatusNfe.ItemIndex := 0;
   end;

   cbStatusNfeChange(sender);
   txtPesq.SetFocus;
end;

procedure TFrListagemNFe.actSelectExecute(Sender: TObject);
begin
   Self.ModalResult := mrOk;
end;

procedure TFrListagemNFe.actSelectUpdate(Sender: TObject);
begin
   TAction(Sender).Enabled := not Query.IsEmpty;
end;

procedure TFrListagemNFe.cbStatusNfeChange(Sender: TObject);
begin
   ListarNotasFiscais(cbTipoOperacao.Value.ToInteger(),cbStatusNfe.Value.ToInteger());
end;

procedure TFrListagemNFe.cbTipoOperacaoChange(Sender: TObject);
begin
   ListarNotasFiscais(cbTipoOperacao.Value.ToInteger(),cbStatusNfe.Value.ToInteger());
end;

procedure TFrListagemNFe.eGridDblClick(Sender: TObject);
begin
   if not Query.IsEmpty then
      actSelectExecute(sender)
end;

procedure TFrListagemNFe.eGridDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
   if Query.IsEmpty then
      exit;

   if Column.Title.Caption = 'Status' then
   begin

      { Efetua a coloração de acordo o status }
      case Query.FieldByName('nfe_status').Asinteger of
         0:
            begin
               (Sender as TDBGrid).Canvas.Font.Color := clBlack;
               (Sender as TDBGrid).Canvas.Brush.Color := clSilver;
            end;
         1:
            begin
               (Sender as TDBGrid).Canvas.Font.Color := clBlack;
               (Sender as TDBGrid).Canvas.Brush.Color := $0018C8E7;
            end;
         2:
            begin
               (Sender as TDBGrid).Canvas.Font.Color := clWindow;
               (Sender as TDBGrid).Canvas.Brush.Color := $00408000;
            end;
         3:
            begin
               (Sender as TDBGrid).Canvas.Font.Color := clWindow;
               (Sender as TDBGrid).Canvas.Brush.Color := clBlack;
            end;
         4:
            begin
               (Sender as TDBGrid).Canvas.Font.Color := clWindow;
               (Sender as TDBGrid).Canvas.Brush.Color := clMaroon;
            end;
         5:
            begin
               (Sender as TDBGrid).Canvas.Font.Color := clWindow;
               (Sender as TDBGrid).Canvas.Brush.Color := $000071E1;
            end;
      end;

   end;

   if Column.Title.Caption = 'Tipo de Operção' then
   begin

      { Efetua a coloração de acordo o status }
      case Query.FieldByName('nfe_tipo_operacao').Asinteger of
         0:
            begin
               (Sender as TDBGrid).Canvas.Font.Color := clBlack;
               (Sender as TDBGrid).Canvas.Brush.Color := clSilver;
            end;
         1:
            begin
               (Sender as TDBGrid).Canvas.Font.Color := clBlack;
               (Sender as TDBGrid).Canvas.Brush.Color := $0018C8E7;
            end;
      end;

   end;

   { Pinta o Grid }
   (Sender as TDBGrid).Canvas.FillRect(Rect);
   (Sender as TDBGrid).DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

end.

