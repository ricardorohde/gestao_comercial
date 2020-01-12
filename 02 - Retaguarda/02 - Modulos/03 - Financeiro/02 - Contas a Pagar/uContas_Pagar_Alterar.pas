unit uContas_Pagar_Alterar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzPanel, RzDlgBtn, JvBaseEdits, DateUtils,
  JvDBControls, JvExMask, JvToolEdit, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  RzLabel, Vcl.Imaging.pngimage, Vcl.ExtCtrls, Data.DB, JvDataSource,
  RzStatus, RzDBStat, JvSpin, JvDBSpinEdit, ACBrBase, ACBrEnterTab, ACBrUtil,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFrContas_Pagar_Alterar = class(TForm)
    RzDialogButtons1: TRzDialogButtons;
    dsQuery: TJvDataSource;
    Panel1: TPanel;
    eHistorico: TDBEdit;
    Label4: TLabel;
    eDataVencto: TJvDBDateEdit;
    Label2: TLabel;
    Label3: TLabel;
    eValor: TJvDBCalcEdit;
    RzPanel2: TRzPanel;
    Label9: TLabel;
    Image2: TImage;
    Label5: TLabel;
    Bevel1: TBevel;
    Query: TFDQuery;
    ACBrEnterTab2: TACBrEnterTab;
    QueryID: TLargeintField;
    QueryID_C000210: TLargeintField;
    QueryPAG_PARCELA: TIntegerField;
    QueryPAG_DOCUMENTO: TStringField;
    QueryPAG_VENCIMENTO: TDateField;
    QueryPAG_ANOTACOES: TStringField;
    QueryPAG_STATUS: TIntegerField;
    QueryPAG_VALOR: TFMTBCDField;
    QueryPAG_VLR_ATUALIZADO: TFMTBCDField;
    QueryPAG_VLR_RECEBIDO: TFMTBCDField;
    QueryPAG_VLR_SALDO: TFMTBCDField;
    procedure RzDialogButtons1ClickOk(Sender: TObject);
    procedure eDataVenctoEnter(Sender: TObject);
    procedure eDataVenctoExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    ID_Registro : Integer;
    ConectarTabela : boolean;
  end;

var
  FrContas_Pagar_Alterar: TFrContas_Pagar_Alterar;

implementation

{$R *.dfm}

uses uModuloRet;

procedure TFrContas_Pagar_Alterar.eDataVenctoEnter(Sender: TObject);
begin
   TEdit(Sender).Color := clBtnFace;
end;

procedure TFrContas_Pagar_Alterar.eDataVenctoExit(Sender: TObject);
begin
   TEdit(Sender).Color := clWhite;
end;

procedure TFrContas_Pagar_Alterar.FormShow(Sender: TObject);
begin
   if ConectarTabela then
   begin
      Query.Close;
      Query.ParamByName('ID').AsInteger := ID_Registro;
      Query.Open();

      {Coloca o cursor em modo de edição}
      Query.Edit;
   end;
end;

procedure TFrContas_Pagar_Alterar.RzDialogButtons1ClickOk(Sender: TObject);
begin
   if eDataVencto.Field.IsNull then
   begin
      Application.MessageBox('Obrigatório informar a Data de Vencimento','TechCore-RTG',mb_IconStop or mb_Ok);
      eDataVencto.SetFocus;
      Abort;
   end;

   if eValor.Value <= 0.00 then
   begin
      Application.MessageBox('Obrigatório informar o Valor da Parcela','TechCore-RTG',mb_IconStop or mb_Ok);
      eValor.SetFocus;
      Abort;
   end;

   Self.ModalResult := mrOk;
end;

end.
