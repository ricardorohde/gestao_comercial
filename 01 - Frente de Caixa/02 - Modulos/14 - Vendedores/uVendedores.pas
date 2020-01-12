unit uVendedores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, JvExExtCtrls, JvImage, NxScrollControl,
  NxCustomGridControl, NxCustomGrid, NxDBGrid, Vcl.StdCtrls, Vcl.Mask,
  RzEdit, RzCmboBx, RzLabel, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.ImageList, Vcl.ImgList,
  NxDBColumns, NxColumns, Vcl.Menus, RzPanel, RzDlgBtn;

type
  TFrVendedores = class(TForm)
    Query: TFDQuery;
    dsQuery: TDataSource;
    QueryID: TIntegerField;
    QueryID_EMPRESA: TIntegerField;
    QueryF_NOME: TStringField;
    QueryF_CODIGO: TIntegerField;
    QueryF_APELIDO: TStringField;
    QueryF_MARGEM_DESCONTO: TFMTBCDField;
    QueryF_STATUS: TIntegerField;
    ImageList1: TImageList;
    Pop00: TPopupMenu;
    T1: TMenuItem;
    S1: TMenuItem;
    N1: TMenuItem;
    S2: TMenuItem;
    F1: TMenuItem;
    dsCupom: TDataSource;
    RzPanel2: TRzPanel;
    Label8: TLabel;
    Image2: TImage;
    Grid: TNextDBGrid;
    NxDBNumberColumn1: TNxDBNumberColumn;
    NxDBHtmlColumn1: TNxDBHtmlColumn;
    NxDBImageColumn1: TNxDBImageColumn;
    RzDialogButtons1: TRzDialogButtons;
    RzPanel1: TRzPanel;
    ed_tipo_pesquisa: TRzComboBox;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    RzLabel4: TRzLabel;
    RzLabel3: TRzLabel;
    ePesq: TRzEdit;
    I1: TMenuItem;
    procedure T1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure S1Click(Sender: TObject);
    procedure QueryF_APELIDOGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure ePesqKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure F1Click(Sender: TObject);
    procedure ePesqChange(Sender: TObject);
    procedure S2Click(Sender: TObject);
    procedure I1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrVendedores: TFrVendedores;

implementation

uses
   Classe.Empresa, uVendas, uPrincipal, Classe.Cupom;

{$R *.dfm}

procedure TFrVendedores.ePesqChange(Sender: TObject);
begin
   if ed_tipo_pesquisa.ItemIndex = 0 then
   begin
      Query.Filtered := false;
      Query.Filter   := 'f_codigo like ' + QuotedStr('%' + ePesq.Text + '%');
      Query.Filtered := true;
   end;

   if ed_tipo_pesquisa.ItemIndex = 1 then
   begin
      Query.Filtered := false;
      Query.Filter   := 'f_apelido like ' + QuotedStr('%' + ePesq.Text + '%');
      Query.Filtered := true;
   end;

   if ed_tipo_pesquisa.ItemIndex = 2 then
   begin
      Query.Filtered := false;
      Query.Filter   := 'f_nome like ' + QuotedStr('%' + ePesq.Text + '%');
      Query.Filtered := true;
   end;

end;

procedure TFrVendedores.ePesqKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   if Key = VK_DOWN then
      Grid.SetFocus;
end;

procedure TFrVendedores.F1Click(Sender: TObject);
begin
   ePesq.SetFocus;
end;

procedure TFrVendedores.FormCreate(Sender: TObject);
begin
   // Carrega todos os vendedores
   Query.ParamByName('id_empresa').AsInteger := FEmpresaClass.ID;
   Query.Open();
end;

procedure TFrVendedores.I1Click(Sender: TObject);
begin
   FrVendas.T1Click(self);
end;

procedure TFrVendedores.QueryF_APELIDOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
   Text :=        '<font size=11><strong>' + Sender.AsString +'</strong></font>';
   Text := Text + '<br>';
   Text := Text + '<font size=08><strong>' + QueryF_NOME.AsString + '</strong></font>';
end;

procedure TFrVendedores.S1Click(Sender: TObject);
begin
   { -----------------------------------------------------------------------------------
      Autor:      Winston Moreira
      Dat:        22/02/2019
      Descrição:  Verifica se foi selecionado um vendedor
   ------------------------------------------------------------------------------------- }
   if Query.IsEmpty then
   begin
      Imprime_display('selecione um Vendedor.', clRed);
      Sleep(1000);
      Imprime_display('Selecione um Vendedor.', clYellow);
      Abort;
   end;

   if Query.FieldByName('f_status').AsInteger = 2 then
   begin
      Imprime_display('Vendedor com cadastro inativo, contate o Administrador', clRed);
      Sleep(1000);
      Imprime_display('Selecione um Vendedor.', clYellow);
      Abort;
   end;

   // Grava os dados do vendedor no cupom fiscal
   try
      dsCupom.DataSet.Edit;
      dsCupom.DataSet.FieldByName('id_vendedor').AsInteger  := QueryID.AsInteger;
      dsCupom.DataSet.Post;

      Cupom_Fiscal.F_ID_Vendedor := QueryID.AsInteger;
      Self.ModalResult := mrOk;
   except
      Imprime_display('erro ao vincular o vendedor no cupom', clRed);
      Sleep(1000);
      Imprime_display('Selecione um Vendedor.', clYellow);
      Abort;
   end;
end;

procedure TFrVendedores.S2Click(Sender: TObject);
begin
   Self.Close
end;

procedure TFrVendedores.T1Click(Sender: TObject);
begin
   case ed_tipo_pesquisa.ItemIndex of
      0 : ed_tipo_pesquisa.ItemIndex := 1;
      1 : ed_tipo_pesquisa.ItemIndex := 2;
      2 : ed_tipo_pesquisa.ItemIndex := 0;
   end;

   ePesq.SetFocus;
end;

end.
