unit uOrdemServicoCab;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzDlgBtn, Vcl.StdCtrls,
  JvExStdCtrls, JvMemo, Vcl.DBCtrls, JvExMask, JvSpin, JvDBSpinEdit,
  JvCombobox, JvDBSearchComboBox, RzDBBnEd, Vcl.Mask, RzEdit, RzDBEdit,
  Vcl.ExtCtrls, Vcl.Imaging.pngimage, RzPanel, RzDBCmbo, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, JvToolEdit, JvDBControls, ACBrUtil;

type
  TFrOrdemServicoCab = class(TForm)
    RzPanel2: TRzPanel;
    RzDialogButtons1: TRzDialogButtons;
    dsDados: TDataSource;
    RzPanel1: TRzPanel;
    Label8: TLabel;
    Image2: TImage;
    Label5: TLabel;
    ed_cliente: TRzDBButtonEdit;
    ed_cnpj: TRzDBEdit;
    ed_uf: TRzDBEdit;
    RzPanel3: TRzPanel;
    ed_anotacoes: TDBMemo;
    Label4: TLabel;
    ed_atendente: TRzDBLookupComboBox;
    Label1: TLabel;
    Label2: TLabel;
    ed_representante: TDBEdit;
    Label3: TLabel;
    Query: TFDQuery;
    dsQuery: TDataSource;
    ed_prev_entrega: TJvDBDateEdit;
    procedure RzDialogButtons1ClickOk(Sender: TObject);
    procedure ed_clienteEnter(Sender: TObject);
    procedure ed_clienteExit(Sender: TObject);
    procedure ed_clienteButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrOrdemServicoCab: TFrOrdemServicoCab;

implementation

uses
   uListaClientes, Classe.Empresa, uModuloRet;

{$R *.dfm}

procedure TFrOrdemServicoCab.ed_clienteButtonClick(Sender: TObject);
begin
   FrListaClientes := TFrListaClientes.Create(self);
   try
      if FrListaClientes.ShowModal = mrOk then
      begin
         with dsDados.DataSet do
         begin
            FieldByName('ID_CLIENTE').AsInteger         := FrListaClientes.QueryID.AsInteger;
            FieldByName('OS_CLI_RAZAO_SOCIAL').AsString := FrListaClientes.QueryCLI_RAZAO_SOCIAL.AsString;
            FieldByName('OS_CLI_CNPJ').AsString         := FrListaClientes.QueryCLI_CNPJ.AsString;
            FieldByName('OS_CLI_UF').AsString           := FrListaClientes.QueryCLI_UF.AsString;
         end;
      end;
   finally
      FreeAndNil( FrListaClientes );
   end;
end;

procedure TFrOrdemServicoCab.ed_clienteEnter(Sender: TObject);
begin
   TEdit(Sender).Color := $00DFDFDF;
end;

procedure TFrOrdemServicoCab.ed_clienteExit(Sender: TObject);
begin
   TEdit(Sender).Color := clWhite;
end;

procedure TFrOrdemServicoCab.FormCreate(Sender: TObject);
begin
   Query.ParamByName('ID_EMPRESA').AsInteger := FEmpresaClass.ID;
   Query.Open();
end;

procedure TFrOrdemServicoCab.RzDialogButtons1ClickOk(Sender: TObject);
begin
   if ed_cliente.Text = EmptyStr then
   begin
      Application.MessageBox('Obrigatório selecionar o Cliente.','TechCore-RTG',mb_IconStop or mb_Ok);
      ed_cliente.SetFocus;
      Abort;
   end;

   if ed_atendente.Text = EmptyStr then
   begin
      Application.MessageBox('Obrigatório selecionar o Atendente.','TechCore-RTG',mb_IconStop or mb_Ok);
      ed_atendente.SetFocus;
      Abort;
   end;

   if OnlyNumber(ed_prev_entrega.Text) = EmptyStr then
   begin
      Application.MessageBox('Informe em dias a previsão de entrega.','TechCore-RTG',mb_IconStop or mb_Ok);
      ed_prev_entrega.SetFocus;
      Abort;
   end;

   Self.ModalResult := mrOk;

end;

end.
