unit uEmissorNfeFrete;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzDBBnEd, Vcl.StdCtrls, Vcl.Mask,
  RzEdit, RzDBEdit, RzCmboBx, RzDBCmbo, RzPanel, Vcl.ExtCtrls, RzDlgBtn,
  Data.DB, JvDataSource, Vcl.Menus, ACBrUtil, JvExMask, JvSpin,
  JvDBSpinEdit;

type
  TFremissorNfeFrete = class(TForm)
    RzDialogButtons1: TRzDialogButtons;
    RzGroupBox1: TRzGroupBox;
    eTipoFrete: TRzDBComboBox;
    eGrupoTransportadora: TRzGroupBox;
    eTransportadora: TRzDBButtonEdit;
    eCnpj: TRzDBEdit;
    eUF: TRzDBEdit;
    eGrupoVeigulo: TRzGroupBox;
    ePlacaVeiculo: TRzDBEdit;
    eUFVeiculo: TRzDBEdit;
    dsDados: TJvDataSource;
    Pop01: TPopupMenu;
    ransportadora1: TMenuItem;
    N1: TMenuItem;
    Sair1: TMenuItem;
    RzGroupBox2: TRzGroupBox;
    JvDBSpinEdit1: TJvDBSpinEdit;
    Label1: TLabel;
    RzDBEdit1: TRzDBEdit;
    RzDBEdit2: TRzDBEdit;
    RzDBEdit3: TRzDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    RzDBEdit4: TRzDBEdit;
    Label5: TLabel;
    RzDBEdit5: TRzDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    procedure eTransportadoraButtonClick(Sender: TObject);
    procedure RzDialogButtons1ClickOk(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FremissorNfeFrete: TFremissorNfeFrete;

implementation

uses
   uListaTransportadoras;

{$R *.dfm}

procedure TFremissorNfeFrete.eTransportadoraButtonClick(Sender: TObject);
begin
   if eTipoFrete.ItemIndex = 5 then
   begin
      Application.MessageBox('Erro, Selecione a modalide de frete que seja diferente de (9).','TechCore-RTG',mb_IconStop or mb_Ok);
      eTipoFrete.SetFocus;
      Abort;
   end;

   FrListaTransportadoras := TFrListaTransportadoras.Create(self);
   try
      if FrListaTransportadoras.ShowModal = mrOk then
         dsDados.DataSet.FieldByName('ID_TRANSPORTADORA').AsInteger := FrListaTransportadoras.tbDadosID.AsInteger;
   finally
      FreeAndNil( FrListaTransportadoras);
   end;
end;

procedure TFremissorNfeFrete.RzDialogButtons1ClickOk(Sender: TObject);
begin
   Self.ModalResult := mrOk;
end;

procedure TFremissorNfeFrete.Sair1Click(Sender: TObject);
begin
   Self.Close;
end;

end.
