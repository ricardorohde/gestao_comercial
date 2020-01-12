unit uContasReceberAlteraLancto;

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
  TFrcontasReceberAlteraLancto = class(TForm)
    pn_bottom: TRzDialogButtons;
    dsDados: TJvDataSource;
    ACBrEnterTab1: TACBrEnterTab;
    pn_meio: TPanel;
    eHistorico: TDBEdit;
    Label4: TLabel;
    eDataVencto: TJvDBDateEdit;
    Label2: TLabel;
    Label3: TLabel;
    eValor: TJvDBCalcEdit;
    pn_top: TRzPanel;
    Label1: TLabel;
    Image2: TImage;
    Bevel1: TBevel;
    Label5: TLabel;
    Query: TFDQuery;
    QueryREC_VALOR: TFMTBCDField;
    QueryREC_VENCIMENTO: TDateField;
    QueryREC_ANOTACOES: TStringField;
    QueryID: TIntegerField;
    procedure pn_bottomClickOk(Sender: TObject);
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
  FrcontasReceberAlteraLancto: TFrcontasReceberAlteraLancto;

implementation

{$R *.dfm}

uses uContasReceber, uModuloRet;

procedure TFrcontasReceberAlteraLancto.eDataVenctoEnter(Sender: TObject);
begin
   TEdit(Sender).Color := clBtnFace;
end;

procedure TFrcontasReceberAlteraLancto.eDataVenctoExit(Sender: TObject);
begin
   TEdit(Sender).Color := clWhite;
end;

procedure TFrcontasReceberAlteraLancto.FormShow(Sender: TObject);
begin
   if ConectarTabela then
   begin
      Query.Close;
      Query.ParamByName('ID').AsInteger := ID_Registro;
      Query.Open();
   end;
end;

procedure TFrcontasReceberAlteraLancto.pn_bottomClickOk(Sender: TObject);
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

   // Se for true grava os dados na tabela
   if ConectarTabela then
      Query.Post;

   // Fecha o formulário
   Self.ModalResult := mrOk;
end;

end.
