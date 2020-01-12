unit uImportarVendaCelular;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, RzEdit,
  Vcl.Menus, Vcl.Imaging.pngimage, Vcl.ExtCtrls, JvExExtCtrls, JvImage,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, RzPanel;

type
  TFrImportarVendaCelular = class(TForm)
    Pop00: TPopupMenu;
    edt_venda: TRzNumericEdit;
    CarregarVenda1: TMenuItem;
    N1: TMenuItem;
    Sair1: TMenuItem;
    aQuery: TFDQuery;
    LocalizarVendas1: TMenuItem;
    RzPanel2: TRzPanel;
    Label8: TLabel;
    Image2: TImage;
    RzPanel1: TRzPanel;
    Label2: TLabel;
    Label1: TLabel;
    procedure Sair1Click(Sender: TObject);
    procedure CarregarVenda1Click(Sender: TObject);
    procedure LocalizarVendas1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    CodigoVenda : String;
    CodigoVendedor : Integer;
    vlrDoDesconto  : Real;
  end;

var
  FrImportarVendaCelular: TFrImportarVendaCelular;

implementation

{$R *.dfm}

uses uModulo, Classe.Empresa, uPrincipal, uImportarVendaCelularPesquisar;

procedure TFrImportarVendaCelular.CarregarVenda1Click(Sender: TObject);
begin

   if edt_venda.Text = '' then
   begin
      Application.MessageBox('Informe o código da venda','TechCore-RTG',mb_IconError or mb_ok);
      Abort;
   end;

   // Busca pelo código informado
   aQuery.Close;
   aQuery.SQL.Clear;
   aQuery.SQL.Add('SELECT ID_VENDEDOR, PRE_VLR_DESCONTO FROM C000020 WHERE ID_EMPRESA = :ID_EMPRESA AND PRE_CODIGO_VENDA = :CODIGO_VENDA');
   aQuery.ParamByName('ID_EMPRESA').AsInteger  := FEmpresaClass.ID;
   aQuery.ParamByName('CODIGO_VENDA').AsString := Trim(edt_venda.Text);
   aQuery.Open();

   if aQuery.IsEmpty then
   begin
      Imprime_display('não existe uma venda em aberto com este código.', clRed);
      Sleep(1000);
      Imprime_display_anterior;
      Abort;
   end;

   CodigoVenda    := edt_venda.Text;
   CodigoVendedor := aQuery.FieldByName('ID_VENDEDOR').AsInteger;
   vlrDoDesconto  := aQuery.FieldByName('PRE_VLR_DESCONTO').AsFloat;

   Self.ModalResult := mrOk;

end;

procedure TFrImportarVendaCelular.LocalizarVendas1Click(Sender: TObject);
begin
   try
      FrImportarVendaCelularPesquisar := TFrImportarVendaCelularPesquisar.Create(self);
      if FrImportarVendaCelularPesquisar.ShowModal = mrOk then
         edt_venda.Text := FrImportarVendaCelularPesquisar.QueryPRE_CODIGO_VENDA.AsString;
   finally
      FreeAndNil( FrImportarVendaCelularPesquisar );
   end;
end;

procedure TFrImportarVendaCelular.Sair1Click(Sender: TObject);
begin
   // Zera o código da venda
   CodigoVenda    := EmptyStr;
   CodigoVendedor := 0;

   // Cancela o carregamento da venda
   Self.Close;
end;

end.
