unit uPedidosVendasPrint;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport, RLFilters, RLPDFFilter,
  Data.DB, JvDataSource, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, RLHTMLFilter, MaskUtils;

type
  TFrPedidosVendasPrint = class(TForm)
    ePrint: TRLReport;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLDraw2: TRLDraw;
    RLDraw1: TRLDraw;
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
    dsCliente: TJvDataSource;
    RLDBText18: TRLDBText;
    RLDBText19: TRLDBText;
    RLDBText20: TRLDBText;
    RLDBText21: TRLDBText;
    RLDBText22: TRLDBText;
    RLDBText23: TRLDBText;
    RLDBText24: TRLDBText;
    RLDBText25: TRLDBText;
    RLDBText26: TRLDBText;
    RLDBText27: TRLDBText;
    RLDBText28: TRLDBText;
    tbPagtos: TFDQuery;
    dsPagtos: TJvDataSource;
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
    RLDBText29: TRLDBText;
    RLDBText31: TRLDBText;
    RLDBText32: TRLDBText;
    RLBand7: TRLBand;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel11: TRLLabel;
    RLDBText33: TRLDBText;
    tbPagtosID: TIntegerField;
    tbPagtosID_PEDIDO: TIntegerField;
    tbPagtosID_FORMA_PAGTO: TIntegerField;
    tbPagtosPAG_VENCIMENTO: TDateField;
    tbPagtosPAG_OBSERVACAO: TStringField;
    tbPagtosFRM_DESCRICAO: TStringField;
    RLPDFFilter1: TRLPDFFilter;
    tbClienteCLI_RAZAO_SOCIAL: TStringField;
    tbClienteCLI_NOME_FANTASIA: TStringField;
    tbClienteCLI_CNPJ: TStringField;
    tbClienteCLI_IESTADUAL: TStringField;
    tbClienteCLI_CEP: TStringField;
    tbClienteCLI_ENDERECO: TStringField;
    tbClienteCLI_NUMERO: TIntegerField;
    tbClienteCLI_COMPLEMENTO: TStringField;
    tbClienteCLI_BAIRRO: TStringField;
    tbClienteCLI_CIDADE: TStringField;
    tbClienteCLI_UF: TStringField;
    tbClienteCLI_FONE_FIXO: TStringField;
    RLLabel15: TRLLabel;
    RLDBText35: TRLDBText;
    RLLabel17: TRLLabel;
    RLDBText36: TRLDBText;
    lbCancelado: TRLLabel;
    lbRazao: TRLLabel;
    lbEndereco: TRLLabel;
    lbFone: TRLLabel;
    tbPagtosPAG_VLR_SUBTOTAL: TFMTBCDField;
    tbPagtosPAG_JUROS: TFMTBCDField;
    tbPagtosPAG_VLR_TOTAL: TFMTBCDField;
    tbPagtosPAG_VLR_JUROS: TFMTBCDField;
    tbPagtosSUM_PAG_VLR_SUBTOTAL: TFMTBCDField;
    tbPagtosSUM_PAG_VLR_TOTAL: TFMTBCDField;
    procedure rlTituloOrcBeforePrint(Sender: TObject; var AText: string; var PrintIt: Boolean);
    procedure RLDBText29BeforePrint(Sender: TObject; var AText: string; var PrintIt: Boolean);
    procedure RLDBText33BeforePrint(Sender: TObject; var AText: string; var PrintIt: Boolean);
    procedure tbClienteCLI_CNPJGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure lbCanceladoBeforePrint(Sender: TObject; var AText: string; var PrintIt: Boolean);
    procedure RLDBText5BeforePrint(Sender: TObject; var AText: string;   var PrintIt: Boolean);
    procedure RLBand8BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure lbRazaoBeforePrint(Sender: TObject; var AText: string; var PrintIt: Boolean);
    procedure lbEnderecoBeforePrint(Sender: TObject; var AText: string; var PrintIt: Boolean);
    procedure lbFoneBeforePrint(Sender: TObject; var AText: string; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    ExibeValores : boolean;
  end;

var
  FrPedidosVendasPrint: TFrPedidosVendasPrint;

implementation

uses
   uPedidosVendas, uPedidosVendasGerenciar, uModuloRet, Classe.Empresa;

{$R *.dfm}

procedure TFrPedidosVendasPrint.lbCanceladoBeforePrint(Sender: TObject; var AText: string; var PrintIt: Boolean);
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

      4 :
      begin

         PrintIt := true;
         aText   := 'Emitido NF-e';
         lbCancelado.Font.Color := clRed;

         // Se o pedido foi entregue, checa o status do mesmo
         if dsDados.DataSet.FieldByName('ped_entregue').AsInteger = 2 then
         begin
            PrintIt := true;
            aText   := 'Pedido Entregue > Emitido NF-e';
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

procedure TFrPedidosVendasPrint.lbEnderecoBeforePrint(Sender: TObject; var AText: string; var PrintIt: Boolean);
begin
   aText := FEmpresaClass.Endereco + ', ' + Format('%.3d', [FEmpresaClass.Numero]);
end;

procedure TFrPedidosVendasPrint.lbFoneBeforePrint(Sender: TObject; var AText: string; var PrintIt: Boolean);
begin
   aText := FormatMaskText('!\(99\)9999\-9999;0;', FEmpresaClass.FoneFixo);
end;

procedure TFrPedidosVendasPrint.lbRazaoBeforePrint(Sender: TObject; var AText: string; var PrintIt: Boolean);
begin
   aText := FEmpresaClass.RazaoSocial;
end;

procedure TFrPedidosVendasPrint.RLBand8BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin
   PrintIt := ExibeValores;
end;

procedure TFrPedidosVendasPrint.RLDBText29BeforePrint(Sender: TObject; var AText: string; var PrintIt: Boolean);
begin
   case dsDados.DataSet.FieldByName('ped_status').AsInteger of
      1 : AText := 'A VISTA'           + ' - ' + dsDados.DataSet.FieldByName('ped_discriminacao').AsString;
      2 : AText := 'A PRAZO'           + ' - ' + dsDados.DataSet.FieldByName('ped_discriminacao').AsString;
      3 : AText := 'A PRAZO PARCELADO' + ' - ' + dsDados.DataSet.FieldByName('ped_discriminacao').AsString;
      4 : AText := 'OUTROS'            + ' - ' + dsDados.DataSet.FieldByName('ped_discriminacao').AsString;
   end;
end;

procedure TFrPedidosVendasPrint.RLDBText33BeforePrint(Sender: TObject; var AText: string; var PrintIt: Boolean);
begin
   if Length( aText ) > 0 then
      aText := '-> ' + aText;
end;

procedure TFrPedidosVendasPrint.RLDBText5BeforePrint(Sender: TObject; var AText: string; var PrintIt: Boolean);
begin
   if not ExibeValores then
      aText := '0,00';
end;

procedure TFrPedidosVendasPrint.rlTituloOrcBeforePrint(Sender: TObject; var AText: string; var PrintIt: Boolean);
begin
   if dsDados.DataSet.FieldByName('PED_STATUS').AsInteger = 1 then
      AText := 'ORÇAMENTO N.º:'
   else
      AText := 'PEDIDO N.º:';
end;

procedure TFrPedidosVendasPrint.tbClienteCLI_CNPJGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
   if Length(Sender.AsString) <= 11 then
      Text := FormatMaskText('!999\.999\.999\-99;0;_',Sender.AsString)
   else
   if Length(Sender.AsString) > 11 then
      Text := FormatMaskText('!99.999\.999\/9999\-99;0;_',Sender.AsString);
end;

end.
