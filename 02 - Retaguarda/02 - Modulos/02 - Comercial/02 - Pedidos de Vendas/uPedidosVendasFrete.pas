unit uPedidosVendasFrete;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzDBBnEd, Vcl.StdCtrls, Vcl.Mask,
  RzEdit, RzDBEdit, RzCmboBx, RzDBCmbo, RzPanel, Vcl.ExtCtrls, RzDlgBtn,
  Data.DB, JvDataSource, Vcl.Menus, ACBrUtil, JvExMask, JvSpin,
  JvDBSpinEdit;

type
  TFrPedidosVendasFrete = class(TForm)
    RzDialogButtons1: TRzDialogButtons;
    RzGroupBox1: TRzGroupBox;
    eTipoFrete: TRzDBComboBox;
    RzGroupBox2: TRzGroupBox;
    eTransportadora: TRzDBButtonEdit;
    eCnpj: TRzDBEdit;
    eUF: TRzDBEdit;
    RzGroupBox3: TRzGroupBox;
    ePlacaVeiculo: TRzDBEdit;
    eUFVeiculo: TRzDBEdit;
    dsDados: TJvDataSource;
    Pop01: TPopupMenu;
    ransportadora1: TMenuItem;
    N1: TMenuItem;
    Sair1: TMenuItem;
    RzGroupBox4: TRzGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    JvDBSpinEdit1: TJvDBSpinEdit;
    RzDBEdit1: TRzDBEdit;
    RzDBEdit2: TRzDBEdit;
    RzDBEdit3: TRzDBEdit;
    RzDBEdit4: TRzDBEdit;
    RzDBEdit5: TRzDBEdit;
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
  FrPedidosVendasFrete: TFrPedidosVendasFrete;

implementation

uses
   uListaTransportadoras;

{$R *.dfm}

procedure TFrPedidosVendasFrete.eTransportadoraButtonClick(Sender: TObject);
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

procedure TFrPedidosVendasFrete.RzDialogButtons1ClickOk(Sender: TObject);
begin
   if ( not ( eTipoFrete.ItemIndex in [3,4,5] ) ) and ( eTransportadora.Text = '' )  then
   begin
      Application.MessageBox('Erro, Selecione uma transportadora e informe os dados do veiculo.','TechCore-RTG',mb_IconStop or mb_Ok);
      eTransportadora.SetFocus;
      Abort;
   end;

   if ( eTipoFrete.ItemIndex <> 5 ) and ( OnlyNumber( ePlacaVeiculo.Text ) = '' )  then
   begin
      Application.MessageBox('Erro, Informe a placa do veículo.','TechCore-RTG',mb_IconStop or mb_Ok);
      ePlacaVeiculo.SetFocus;
      Abort;
   end;

   if ( eTipoFrete.ItemIndex <> 5 ) and ( eUFVeiculo.Text = '' )  then
   begin
      Application.MessageBox('Erro, Informe a placa do veículo.','TechCore-RTG',mb_IconStop or mb_Ok);
      eUFVeiculo.SetFocus;
      Abort;
   end;

   Self.ModalResult := mrOk;
end;

procedure TFrPedidosVendasFrete.Sair1Click(Sender: TObject);
begin
   Self.Close;
end;

end.
