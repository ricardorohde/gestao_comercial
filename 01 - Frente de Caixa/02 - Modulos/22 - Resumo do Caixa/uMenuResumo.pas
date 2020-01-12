unit uMenuResumo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, PngSpeedButton,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.StdCtrls, JvExStdCtrls, JvCombobox,
  JvDBSearchComboBox, ACBrBase, ACBrPosPrinter, ACBrUtil,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, JvExExtCtrls, JvImage,
  RzPanel, RzDlgBtn, Vcl.Mask, JvExMask, JvToolEdit, ACBrEnterTab;

type
  TFrMenuResumo = class(TForm)
    aData: TJvDateEdit;
    bData: TJvDateEdit;
    RzDialogButtons1: TRzDialogButtons;
    Panel1: TPanel;
    JvImage3: TJvImage;
    Label7: TLabel;
    JvImage1: TJvImage;
    Label2: TLabel;
    ACBrEnterTab1: TACBrEnterTab;
    procedure FormCreate(Sender: TObject);
    procedure RzDialogButtons1ClickOk(Sender: TObject);
    procedure JvImage1Click(Sender: TObject);
  private

  public
    { Public declarations }
  end;

var
  FrMenuResumo: TFrMenuResumo;

implementation

uses
   Classe.Empresa, Classe.Caixa, uModulo, uSenhaConfig, uPrincipal;

{$R *.dfm}

{ TFrMenuResumo }

procedure TFrMenuResumo.FormCreate(Sender: TObject);
begin
   // Ajusta as datas
   aData.Date := Date;
   bData.Date := Date;
end;

procedure TFrMenuResumo.JvImage1Click(Sender: TObject);
begin
   Self.Close;
end;

procedure TFrMenuResumo.RzDialogButtons1ClickOk(Sender: TObject);
var
   aQuery : TFDQuery;
begin
   { -----------------------------------------------------------------------------------
      Autor:      Winston Moreira
      Data:       05/03/2019
      Descrição:  Verifica se existem movimento no período informado
   ------------------------------------------------------------------------------------- }
   aQuery := nil;

   aQuery            := TFDQuery.Create(self);
   aQuery.Connection := FrModulo.DBCon_Local;
   aQuery.SQL.Add('select 1 from C000050 where cast(f_cupom_data as date) between :DataIni and :DataFim and id_empresa = :id_empresa and f_cupom_status = :f_cupom_status');
   aQuery.ParamByName('DataIni').AsDateTime       := aData.Date;
   aQuery.ParamByName('DataFim').AsDateTime       := bData.Date;
   aQuery.ParamByName('id_empresa').AsInteger     := FEmpresaClass.ID;
   aQuery.ParamByName('f_cupom_status').AsInteger := 1;
   aQuery.Open();

   if aQuery.IsEmpty then
   begin
      Application.MessageBox('Não existe movimento no período selecionado.','TechCore-PDV',mb_IconStop or mb_Ok);
      aData.SetFocus;
      Abort;
   end;

   // Imprime o relatório
   resumo_caixa_imprimir(aData.Date, bData.Date);

end;

end.
