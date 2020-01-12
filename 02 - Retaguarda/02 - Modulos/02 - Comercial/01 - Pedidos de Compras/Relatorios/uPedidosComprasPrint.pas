unit uPedidosComprasPrint;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport, RLFilters, RLPDFFilter,
  Data.DB, JvDataSource, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, MaskUtils;

type
  TFrPedidosComprasPrint = class(TForm)
    ePrint: TRLReport;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLDraw2: TRLDraw;
    RLDraw1: TRLDraw;
    RLPDFFilter1: TRLPDFFilter;
    RLBand2: TRLBand;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel12: TRLLabel;
    RLDraw4: TRLDraw;
    RLLabel10: TRLLabel;
    RLDraw3: TRLDraw;
    RLLabel14: TRLLabel;
    RLDraw5: TRLDraw;
    RLLabel16: TRLLabel;
    RLDraw6: TRLDraw;
    RLLabel18: TRLLabel;
    RLDraw7: TRLDraw;
    RLLabel20: TRLLabel;
    RLDraw8: TRLDraw;
    RLDraw9: TRLDraw;
    RLLabel23: TRLLabel;
    RLDraw10: TRLDraw;
    RLLabel25: TRLLabel;
    RLDraw11: TRLDraw;
    RLLabel27: TRLLabel;
    RLDraw12: TRLDraw;
    RLLabel29: TRLLabel;
    RLDraw13: TRLDraw;
    RLLabel30: TRLLabel;
    RLLabel32: TRLLabel;
    RLBand3: TRLBand;
    RLLabel33: TRLLabel;
    RLLabel34: TRLLabel;
    RLLabel35: TRLLabel;
    RLLabel36: TRLLabel;
    RLLabel37: TRLLabel;
    RLLabel38: TRLLabel;
    RLLabel39: TRLLabel;
    RLBand5: TRLBand;
    RLLabel49: TRLLabel;
    dsDados: TJvDataSource;
    dsItens: TJvDataSource;
    rlTituloOrc: TRLLabel;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    tbCliente: TFDQuery;
    tbEmitente: TFDQuery;
    dsEmitente: TJvDataSource;
    dsCliente: TJvDataSource;
    tbEmitenteEMP_RAZAO: TStringField;
    tbEmitenteEMP_ENDERECO: TStringField;
    tbEmitenteEMP_NUMERO: TIntegerField;
    tbEmitenteEMP_FONEFIXO: TStringField;
    RLDBText15: TRLDBText;
    RLDBText16: TRLDBText;
    RLDBText17: TRLDBText;
    RLDBText18: TRLDBText;
    RLDBText19: TRLDBText;
    RLDBText20: TRLDBText;
    RLDBText21: TRLDBText;
    RLDBText22: TRLDBText;
    RLDBText23: TRLDBText;
    tbClienteFOR_RAZAO_SOCIAL: TStringField;
    tbClienteFOR_CNPJ: TStringField;
    tbClienteFOR_IESTADUAL: TStringField;
    tbClienteFOR_CEP: TStringField;
    tbClienteFOR_ENDERECO: TStringField;
    tbClienteFOR_NUMERO: TIntegerField;
    tbClienteFOR_COMPLEMENTO: TStringField;
    tbClienteFOR_BAIRRO: TStringField;
    tbClienteFOR_CIDADE: TStringField;
    tbClienteFOR_UF: TStringField;
    tbClienteFOR_FONE_FIXO: TStringField;
    RLDBText24: TRLDBText;
    RLDBText25: TRLDBText;
    RLDBText26: TRLDBText;
    RLDBText27: TRLDBText;
    RLDBText28: TRLDBText;
    rlGrupoMaster: TRLGroup;
    rlGrupoDetail: TRLGroup;
    RLBand4: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLGroup1: TRLGroup;
    RLBand6: TRLBand;
    RLLabel40: TRLLabel;
    RLDBMemo1: TRLDBMemo;
    RLLabel41: TRLLabel;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLLabel42: TRLLabel;
    RLLabel43: TRLLabel;
    RLLabel2: TRLLabel;
    RLDBText30: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLLabel44: TRLLabel;
    RLLabel45: TRLLabel;
    RLDBText12: TRLDBText;
    RLLabel47: TRLLabel;
    RLSubDetail1: TRLSubDetail;
    RLBand8: TRLBand;
    RLDBText31: TRLDBText;
    RLDBText32: TRLDBText;
    RLDBText33: TRLDBText;
    RLBand7: TRLBand;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel11: TRLLabel;
    lbCancelado: TRLLabel;
    tbPagtos: TFDQuery;
    tbPagtosID: TIntegerField;
    tbPagtosID_PEDIDO: TIntegerField;
    tbPagtosPAG_VENCIMENTO: TDateField;
    dsPagtos: TJvDataSource;
    tbPagtosPAG_HISTORICO: TStringField;
    tbPagtosPAG_VLR_PARCELA: TFMTBCDField;
    procedure rlTituloOrcBeforePrint(Sender: TObject; var AText: string;
      var PrintIt: Boolean);
    procedure RLDBText16BeforePrint(Sender: TObject; var AText: string;
      var PrintIt: Boolean);
    procedure RLDBText29BeforePrint(Sender: TObject; var AText: string;
      var PrintIt: Boolean);
    procedure tbClienteFOR_CNPJGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure lbCanceladoBeforePrint(Sender: TObject; var AText: string;
      var PrintIt: Boolean);
    procedure RLDBText5BeforePrint(Sender: TObject; var AText: string;
      var PrintIt: Boolean);
    procedure RLBand8BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    ExibeValores : boolean;
  end;

var
  FrPedidosComprasPrint: TFrPedidosComprasPrint;

implementation

uses
   uPedidosCompras, uModuloRet;

{$R *.dfm}

procedure TFrPedidosComprasPrint.lbCanceladoBeforePrint(Sender: TObject; var AText: string; var PrintIt: Boolean);
begin
   PrintIt := false;

   case dsDados.DataSet.FieldByName('ped_status').AsInteger of
      2 :
      begin

         // Se o pedido foi entregue, checa o status do mesmo
         if dsDados.DataSet.FieldByName('ped_entregue').AsInteger = 2 then
         begin
            PrintIt := true;
            aText   := 'Pedido Entregue';
            lbCancelado.Font.Color := clGray;
         end;

      end;

      9 :
      begin
         PrintIt := true;
         aText   := 'Pedido Cancelado';
         lbCancelado.Font.Color := clRed;
      end;

   end;
end;

procedure TFrPedidosComprasPrint.RLBand8BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin
   PrintIt := ExibeValores;
end;

procedure TFrPedidosComprasPrint.RLDBText16BeforePrint(Sender: TObject; var AText: string; var PrintIt: Boolean);
begin
   AText := aText + ' - ' + Format('%.6d',[tbEmitente.FieldByName('emp_numero').AsInteger]);
end;

procedure TFrPedidosComprasPrint.RLDBText29BeforePrint(Sender: TObject; var AText: string; var PrintIt: Boolean);
begin
   case dsDados.DataSet.FieldByName('ped_status').AsInteger of
      1 : AText := 'A VISTA'           + ' - ' + dsDados.DataSet.FieldByName('ped_discriminacao').AsString;
      2 : AText := 'A PRAZO'           + ' - ' + dsDados.DataSet.FieldByName('ped_discriminacao').AsString;
      3 : AText := 'A PRAZO PARCELADO' + ' - ' + dsDados.DataSet.FieldByName('ped_discriminacao').AsString;
      4 : AText := 'OUTROS'            + ' - ' + dsDados.DataSet.FieldByName('ped_discriminacao').AsString;
   end;
end;

procedure TFrPedidosComprasPrint.RLDBText5BeforePrint(Sender: TObject; var AText: string; var PrintIt: Boolean);
begin
   if not (ExibeValores) then
      AText := '0,00';
end;

procedure TFrPedidosComprasPrint.rlTituloOrcBeforePrint(Sender: TObject; var AText: string; var PrintIt: Boolean);
begin
   if dsDados.DataSet.FieldByName('PED_STATUS').AsInteger = 1 then
      AText := 'ORÇAMENTO N.º:'
   else
      AText := 'PEDIDO N.º:';
end;

procedure TFrPedidosComprasPrint.tbClienteFOR_CNPJGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
   if Length(Sender.AsString) <= 11 then
      Text := FormatMaskText('!999\.999\.999\-99;0;_',Sender.AsString)
   else
   if Length(Sender.AsString) > 11 then
      Text := FormatMaskText('!99.999\.999\/9999\-99;0;_',Sender.AsString);
end;

end.
