unit uListarCupons;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, NxDBColumns, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, JvExExtCtrls, JvImage, NxColumns, NxScrollControl,
  NxCustomGridControl, NxCustomGrid, NxDBGrid, Vcl.Buttons, PngSpeedButton,
  Vcl.StdCtrls, Vcl.Mask, JvExMask, JvToolEdit, JvExStdCtrls, JvCombobox,
  Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, PngBitBtn, System.DateUtils, System.ImageList,
  Vcl.ImgList, RzPanel, RzButton, JvImageList, System.Actions,
  Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan,
  JvDBSearchComboBox, pcnConversao, ACBrUtil, ACBrBase, ACBrPosPrinter, ACBrSATExtratoESCPOS;

type
  TFrListarCupons = class(TForm)
    Panel1: TPanel;
    ed_status: TJvComboBox;
    Label1: TLabel;
    ed_adata: TJvDateEdit;
    ed_fdata: TJvDateEdit;
    Label2: TLabel;
    Label3: TLabel;
    PngSpeedButton1: TPngSpeedButton;
    Panel2: TPanel;
    JvImage3: TJvImage;
    Label7: TLabel;
    JvImage1: TJvImage;
    dsQueryLista: TDataSource;
    QueryLista: TFDQuery;
    NextDBGrid1: TNextDBGrid;
    NxDBDateColumn1: TNxDBDateColumn;
    NxDBDateColumn2: TNxDBDateColumn;
    NxDBNumberColumn1: TNxDBNumberColumn;
    NxDBTextColumn1: TNxDBTextColumn;
    NxDBTextColumn2: TNxDBTextColumn;
    NxDBNumberColumn2: TNxDBNumberColumn;
    QueryListaF_CUPOM_DATA: TSQLTimeStampField;
    QueryListaF_VLR_CUPOM: TFMTBCDField;
    QueryListaF_CUPOM_NUMERO: TIntegerField;
    QueryListaF_CUPOM_STATUS: TIntegerField;
    QueryListaOPR_APELIDO: TStringField;
    QueryListaF_APELIDO: TStringField;
    ImageList1: TImageList;
    NxDBImageColumn1: TNxDBImageColumn;
    QueryListaF_XML: TMemoField;
    QueryListaF_XML_CANCELADO: TMemoField;
    RzToolbar1: TRzToolbar;
    btnNew: TRzToolButton;
    btnEdit: TRzToolButton;
    btnCancel: TRzToolButton;
    btnOK: TRzToolButton;
    RzSpacer1: TRzSpacer;
    RzSpacer2: TRzSpacer;
    QueryListaF_CAIXA: TIntegerField;
    QueryListaHORA_EMISSAO: TTimeField;
    QueryListaF_VLR_NCM_IMP: TFMTBCDField;
    QueryListaF_VLR_NCM_NAC: TFMTBCDField;
    QueryListaF_VLR_NCM_EST: TFMTBCDField;
    QueryListaF_VLR_NCM_MUN: TFMTBCDField;
    QueryListaF_NCM_FONTE: TStringField;
    QueryListaF_NCM_CHAVE: TStringField;
    QueryListaF_XML_CANCELADO_CHAVE: TStringField;
    nxColChave: TNxDBTextColumn;
    QueryListaF_XML_CHAVE: TStringField;
    QueryListaF_CUPOM_CPF: TStringField;
    QueryListaID: TIntegerField;
    QueryListaID_EMPRESA: TIntegerField;
    QueryListaID_CAIXA: TIntegerField;
    QueryListaID_OPERADOR: TIntegerField;
    QueryListaID_VENDEDOR: TIntegerField;
    QueryListaID_CLIENTE: TIntegerField;
    QueryListaF_VLR_SUBTOTAL: TFMTBCDField;
    QueryListaF_VLR_DESCONTO: TFMTBCDField;
    QueryListaF_VLR_PAGO: TFMTBCDField;
    QueryListaF_VLR_TROCO: TFMTBCDField;
    QueryListaF_CUPOM_DIRETIVA: TIntegerField;
    RzSpacer4: TRzSpacer;
    QueryListaF_VLR_RECEBER: TFMTBCDField;
    NxDBNumberColumn3: TNxDBNumberColumn;
    NxDBNumberColumn4: TNxDBNumberColumn;
    ActionManager1: TActionManager;
    Action1: TAction;
    Action2: TAction;
    Action3: TAction;
    Action4: TAction;
    procedure PngSpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure JvImage1Click(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure Action3Execute(Sender: TObject);
    procedure Action4Execute(Sender: TObject);
    procedure Action2Execute(Sender: TObject);
    procedure QueryListaAfterPost(DataSet: TDataSet);
    procedure Action1Update(Sender: TObject);
    procedure Action2Update(Sender: TObject);
    procedure Action3Update(Sender: TObject);
  private
    String_Cupom_Xml : AnsiString;

    r_TotalLei_IMP  : Real;
    r_TotalLei_NAC  : Real;
    r_TotalLei_EST  : Real;
    r_TotalLei_MUN  : Real;

    procedure Cupom_Gerencial_Cabecalho;
    procedure Cupom_Gerencial_Itens;
    procedure Cupom_Gerencial_Total;
    procedure Cupom_Gerencial_Total_Formas;
    procedure Cupom_Gerencial_Rodape;
    procedure Cupom_Gerencial_Imprimir;

    function Gerar_Cupom_Fiscal : Boolean;
  public
    { Public declarations }
  end;

var
  FrListarCupons: TFrListarCupons;

implementation

uses
   uVendas, Classe.Empresa, Classe.Caixa, uPrincipal, uModulo, Classe.Operador, Classe.Cupom,
  Classe.Vendedor;

{$R *.dfm}


procedure TFrListarCupons.Cupom_Gerencial_Cabecalho;
begin
   // Inicia a objeto de strings
   FBuffer := TStringList.Create;

   // Inicia a criação do cabeçalho
   FBuffer.Clear;

   // Identificações básicas
  FBuffer.Add('</ae><c>' +
                  PadSpace(
                     'Lj: '     + Format('%.2d', [FEmpresaClass.Codigo])
                     + ' '
                     + 'Cx: '   + Format('%.2d', [QueryLista.FieldByName('f_caixa').AsInteger])
                     + ' '
                     + 'Oper: ' + QueryLista.FieldByName('opr_apelido').AsString
                     + '|'
                     + 'COO: '  + Format('%.6d', [QueryLista.FieldByName('f_cupom_numero').AsInteger]),
                     Trunc(FrVendas.ACBrPosPrinter1.ColunasFonteCondensada),
                     '|')

  );

   // Titulo do cupom
   FBuffer.Add('</linha_simples>');
   FBuffer.Add('</ce><c>' + FEmpresaClass.RazaoSocial);
   FBuffer.Add('</ce><c>' + FEmpresaClass.NomeFantasia);
   FBuffer.Add('</ce><c>' + FEmpresaClass.Endereco + ',' + Format('%.3d', [FEmpresaClass.Numero]));
   FBuffer.Add('</ce><c>' + FEmpresaClass.Bairro + ' - ' + FEmpresaClass.Cidade + ' - ' + 'CEP: ' + FEmpresaClass.Cep);

   FBuffer.Add('</linha_simples>');
   FBuffer.Add('</ce></fn><n>SIMPLES CONFERENCIA</n>');
   FBuffer.Add('</ce></fb><c>' + DateToStr(Date) + ' - ' + TimeToStr(Time));

end;

procedure TFrListarCupons.Cupom_Gerencial_Imprimir;
var
   i,n : Integer;
begin

   with FrVendas.ACBrPosPrinter1 do
   begin
      if Ativo then
         Desativar;

      if Modelo = ppEscPosEpson  then
      begin
         EspacoEntreLinhas := 50;
         LinhasEntreCupons := 5;
      end;

      if Modelo = ppEscBematech then
      begin
         EspacoEntreLinhas := 1;
         LinhasEntreCupons := 3;
      end;

      Porta  := ObjCaixa.Caixa_Printer_Porta_G;
      Modelo := TACBrPosPrinterModelo(ObjCaixa.Caixa_Printer_Model_G);
      Ativar;
   end;

   Cupom_Gerencial_Cabecalho;
   Cupom_Gerencial_Itens;
   Cupom_Gerencial_Total;
   Cupom_Gerencial_Total_Formas;
   Cupom_Gerencial_Rodape;

   // Determinao tipo de corte do papel
   FBuffer.Add('</corte_total>');

   try

      for n := 1 to ObjCaixa.Caixa_Cupom_Vias_G do
      begin
         for i := 0 to FBuffer.Count - 1 do
            FrVendas.ACBrPosPrinter1.Buffer.Add( FBuffer[I] );

         FrVendas.ACBrPosPrinter1.Imprimir();   // Imprime o Buffer
      end;

   finally
      FrVendas.ACBrPosPrinter1.Desativar;
      FreeAndNil( FBuffer );
   end;

end;

procedure TFrListarCupons.Cupom_Gerencial_Itens;
var
   aQuery, kQuery : TFDQuery;
   nRec   : Integer;
begin
   nRec := 0;

   FBuffer.Add('</ae><c></linha_simples>');
   FBuffer.Add(PadSpace('#|COD|DESC|QTD|UN|VL UN R$|(VLTR R$)*|VL ITEM R$',
                                  FrVendas.ACBrPosPrinter1.ColunasFonteCondensada, '|'));
   FBuffer.Add('</linha_simples>');

   // Carrega os produtos inseridos no cupom
   try
      aQuery := TFDQuery.Create(self);
      aQuery.Connection := FrModulo.DBCon_Local;

      aQuery.SQL.Add('SELECT * FROM C000051 WHERE ID_C000050 = :ID_C000050 ORDER BY F_ITEM ASC');
      aQuery.ParamByName('id_C000050').AsInteger := QueryListaID.AsInteger;
      aQuery.Open();

      // Posiciona o cursor no primeiro registro
      aQuery.First;

      repeat

         // Ao carregar o produto verifica se é um kit e processa o kit
         if aQuery.FieldByName('f_id_kit').AsInteger > 0 then
         begin

            try
               kQuery            := TFDQuery.Create(self);
               kQuery.Connection := FrModulo.DBCon_Local;

               kQuery.SQL.Add('select * from C000405_kit where id_C000405 = :id');
               kQuery.ParamByName('id').AsInteger := aQuery.FieldByName('f_id_kit').AsInteger;
               kQuery.Open();

               // Posiciona o cursor no primeiro item
               kQuery.First;

               repeat
                  // Acrescenta um no contador
                  Inc(nRec);

                  FBuffer.Add('<ae><c>'
                     + Format('%.2d', [nRec])
                     + ' '
                     + Format('%.13d', [kQuery.FieldByName('prd_codigo').AsInteger])
                     + ' '
                     + kQuery.FieldByName('prd_descricao').AsString
                  );

                  FBuffer.Add('<ad><c>' +
                     PadSpace(
                           '                                  '
                           + '|'
                           + (kQuery.FieldByName('prd_qtde').AsInteger * aQuery.FieldByName('f_qtde').AsInteger).ToString()
                           + '|'
                           + kQuery.FieldByName('prd_unidade').AsString
                           + '|'
                           + FormatFloat(',0.00', kQuery.FieldByName('prd_valor').AsFloat)
                           + '|'
                           + FormatFloat(',0.00', kQuery.FieldByName('prd_total').AsFloat * aQuery.FieldByName('f_qtde').AsInteger),
                        Trunc(FrVendas.ACBrPosPrinter1.ColunasFonteCondensada),
                        '|'
                     )
                  );

                  // Proximo item
                  kQuery.Next
               until (kQuery.Eof);

            finally
               FreeAndNil(kQuery);
            end;

         end
         else
         begin

            FBuffer.Add('<ae><c>'
               + Format('%.2d', [aQuery.FieldByName('f_item').AsInteger])
               + ' '
               + Format('%.13d', [aQuery.FieldByName('f_codigo').AsInteger])
               + ' '
               + aQuery.FieldByName('f_descricao').AsString
            );

            FBuffer.Add('<ad><c>' +
               PadSpace(
                     '                                  '
                     + '|'
                     + aQuery.FieldByName('f_qtde').AsString
                     + '|'
                     + aQuery.FieldByName('f_unidade').AsString
                     + '|'
                     + FormatFloat(',0.00', aQuery.FieldByName('f_vlr_unitario').AsFloat)
                     + '|'
                     + FormatFloat(',0.00', aQuery.FieldByName('f_vlr_total').AsFloat),
                  Trunc(FrVendas.ACBrPosPrinter1.ColunasFonteCondensada),
                  '|'
               )
            );
         end;

         // Próximo produto
         aQuery.Next;
      until ( aQuery.Eof);

   finally
      FreeAndNil( aQuery );
   end;

end;

procedure TFrListarCupons.Cupom_Gerencial_Rodape;
begin
   FBuffer.Add('</linha_simples>');
   FBuffer.Add('<ae><c>Vendedor: ' + QueryListaF_APELIDO.AsString + '</c>');

   if QueryLista.FieldByName('f_cupom_status').AsInteger = 2 then
      FBuffer.Add('<ce></fn>Cancelado');

   FBuffer.Add('</linha_simples>');
   FBuffer.Add('<ae><c>TechCore-PDV - http://techcore.com.br</c>');
end;

procedure TFrListarCupons.Cupom_Gerencial_Total;
begin

   // Exibe o SubTotal do Cupom
   FBuffer.Add('<ae><c>' +
      PadSpace(
         'Subtotal'
         + '|'
         + FormatFloat(',0.00', QueryListaF_VLR_SUBTOTAL.AsFloat),
         Trunc(FrVendas.ACBrPosPrinter1.ColunasFonteCondensada),
         '|'
      )
   );

   // Exibe o desconto do cupom se houver
   FBuffer.Add('<ae><c>' +
      PadSpace(
         'Descontos'
         + '|'
         + FormatFloat(',0.00', QueryListaF_VLR_DESCONTO.AsFloat),
         Trunc(FrVendas.ACBrPosPrinter1.ColunasFonteCondensada),
         '|'
      )
   );

   // Exibe o total do cupom
   FBuffer.Add('<ae></fn><e>' +
      PadSpace(
         'TOTAL R$'
         + '|'
         + FormatFloat(',0.00', QueryListaF_VLR_RECEBER.AsFloat),
         Trunc(FrVendas.ACBrPosPrinter1.ColunasFonteExpandida),
         '|'
      ) + '</e>'
   );

end;

procedure TFrListarCupons.Cupom_Gerencial_Total_Formas;
var
   aQuery   : TFDQuery;
   StrForma : String;
begin
   // Carrega todas as formas de pagamentos relacionadas ao cupom
   aQuery            := TFDQuery.Create(self);
   aQuery.Connection := FrModulo.DBCon_Local;

   try
      aQuery.SQL.Add('SELECT');
      aQuery.SQL.Add('  T1.ID_FORMA_PAGTO,');
      aQuery.SQL.Add('  T1.FRM_CODIGO,');
      aQuery.SQL.Add('  (SELECT FRM_DESCRICAO FROM C000010 WHERE ID = T1.ID_FORMA_PAGTO),');
      aQuery.SQL.Add('  SUM(T1.FRM_PARCELA_VALOR) AS FRM_PARCELA_VALOR');
      aQuery.SQL.Add('FROM');
      aQuery.SQL.Add('  C000052 AS T1');
      aQuery.SQL.Add('WHERE');
      aQuery.SQL.Add('  T1.ID_C000050 = :ID');
      aQuery.SQL.Add('  GROUP BY');
      aQuery.SQL.Add('  T1.ID_FORMA_PAGTO,');
      aQuery.SQL.Add('  T1.FRM_CODIGO');
      aQuery.ParamByName('ID').AsInteger := QueryListaID.AsInteger;
      aQuery.Open();

      repeat
         // Converete o nome da forma de pagamento para um mais amigável
         case aQuery.FieldByName('FRM_CODIGO').AsInteger of
             1 : StrForma := 'Dinheiro';
             2 : StrForma := 'Cheque';
             3 : StrForma := 'Cartao de Credito';
             4 : StrForma := 'Cartao de Debito';
             5 : StrForma := 'Credito Loja';
             6 : StrForma := 'Vale Alimentacao';
            10 : StrForma := 'Vale Combustivel';
            99 : StrForma := 'Outros';
         end;

         // Exibe a forma de pagamento encontrada
         FBuffer.Add('<ae><c>' +
            PadSpace(
               StrForma
               + '|'
               + FormatFloat(',0.00', aQuery.FieldByName('FRM_PARCELA_VALOR').AsFloat),
               Trunc(FrVendas.ACBrPosPrinter1.ColunasFonteCondensada),
               '|'
            )
         );

         aQuery.Next;
      until ( aQuery.Eof );

   finally
      FreeAndNil( aQuery );
   end;

   // Se houver troco imprime
   if QueryListaF_VLR_TROCO.AsFloat > 0 then
      FBuffer.Add('<ae><c>' +
         PadSpace(
            'Troco R$'
            + '|'
            + FormatFloat(',0.00', QueryListaF_VLR_TROCO.AsFloat),
            Trunc(FrVendas.ACBrPosPrinter1.ColunasFonteCondensada),
            '|'
         )
      );

end;


procedure TFrListarCupons.Action1Execute(Sender: TObject);
var
   sInfos, sInfosOld : String;
   PrintExtratoII : TACBrSATExtratoESCPOS;
begin
   {
      Data:       23/06/2019
      Autor:      Winston Moreira
      Aplicação:  Componente para impressão de cupons fiscais
      Descrição:  Devido a configurações diversas no rodapé do cupom, foi necessário criar o componente em tempo de execução,
                  assim são carregados novos parâmetros a cada nova impressão
   }
   PrintExtratoII := TACBrSATExtratoESCPOS.Create(Self);

   // Configura o objeto extrato
   PrintExtratoII.Sistema := 'TechCore-PDV';
   PrintExtratoII.Site    := 'http://techcore.com.br';

   PrintExtratoII.PosPrinter := FrVendas.ACBrPosPrinter1;
   FrVendas.ObjSat.Extrato   := PrintExtratoII;

   case QueryLista.FieldByName('f_cupom_status').AsInteger of

      1 :
      begin

         if QueryLista.FieldByName('f_cupom_diretiva').AsInteger = 2 then
         begin
            Cupom_Gerencial_Imprimir;
            Abort;
         end;

         with FrVendas do
         begin
            parametros_SAT;

            if ACBrPosPrinter1.Modelo = ppEscPosEpson then
            begin
               ACBrPosPrinter1.EspacoEntreLinhas := 50;
               ACBrPosPrinter1.LinhasEntreCupons := 5;
            end;

            if ACBrPosPrinter1.Modelo = ppEscBematech then
            begin
               ACBrPosPrinter1.EspacoEntreLinhas  := 1;
               ACBrPosPrinter1.LinhasEntreCupons  := 3;
            end;

            ObjSat.CFe.SetXMLString(QueryLista.FieldByName('f_xml').AsString);

            // Armazena os dados padrões antes da nova formatação
            sInfosOld := ObjSat.Extrato.Sistema;
            ObjSat.Extrato.Sistema := '';


            // Exibe o total de impostos
            sInfos := '</zera>';
            sInfos := sInfos + '</ae><c>' +
                  PadSpace(
                     'Tributos. Aproximados: R$ Fed: ' + FormatFloat(',0.00', QueryListaF_VLR_NCM_NAC.AsFloat)
                     + '|'
                     + ' Est: ' + FormatFloat(',0.00', QueryListaF_VLR_NCM_EST.AsFloat)
                     + '|'
                     + ' Mun: ' + FormatFloat(',0.00', QueryListaF_VLR_NCM_MUN.AsFloat),
                     Trunc(ACBrPosPrinter1.ColunasFonteCondensada),
                     '|');

            sInfos := sInfos + '</ae><c>'
               + 'Fonte: ' + FEmpresaClass.Ncm_Fonte
               + ' - '
               + 'Chave: ' + FEmpresaClass.Ncm_Chave;

            sInfos := sInfos + '</lf>';

            // Checa se o objeto vendedor esta ativo
            if Assigned( Obj_Vendedores ) then
               FreeAndNil( Obj_Vendedores );

            Obj_Vendedores := TVendedor.Create( QueryListaID_VENDEDOR.AsInteger );


            // Checa se o objeto operador esta ativo
            if Assigned( ObjOperador ) then
               FreeAndNil( ObjOperador );

            ObjOperador := TObjOperador.Create( QueryListaID_OPERADOR.AsInteger );

            // Informações básicas
            sInfos := sInfos + '</linha_simples>';
            sInfos := sInfos + '</ae><c>' +
                  PadSpace(
                     'LJ: ' + Format('%.2d', [FEmpresaClass.Codigo])
                     + '|'
                     + 'CX: ' + Format('%.2d', [ObjCaixa.Caixa_Codigo])
                     + '|'
                     + 'OP: ' + Format('%.3d', [ObjOperador.Opr_Codigo]) + '-' + ObjOperador.Opr_Apelido
                     + '|'
                     + 'VD: ' + Format('%.2d', [Obj_Vendedores.F_Codigo]) + '-' + Obj_Vendedores.F_Apelido
                     + '|'
                     + 'COO: ' + Format('%.6d', [QueryListaF_CUPOM_NUMERO.AsInteger]),
                     Trunc(ACBrPosPrinter1.ColunasFonteCondensada),
                     '|');

            sInfos := sInfos + '</linha_simples>';
            sInfos := sInfos + '<ce><c>' + sInfosOld;

            // Espaço utilizado para gerar as informações sobre a loja vendedor e impostos
            ObjSat.Extrato.Sistema := sInfos;

            ObjSat.ImprimirExtrato;
            ACBrPosPrinter1.Desativar;
         end;

      end;

      2 :
      begin
         with FrVendas do
         begin

            if QueryLista.FieldByName('f_cupom_diretiva').AsInteger = 2 then
            begin
               Cupom_Gerencial_Imprimir;
               Abort;
            end;

            parametros_SAT;

            ObjSat.CFe.SetXMLString(QueryLista.FieldByName('f_xml').AsString);
            ObjSat.CFeCanc.SetXMLString(QueryLista.FieldByName('f_xml_cancelado').AsString);
            ObjSat.ImprimirExtratoCancelamento;
            ACBrPosPrinter1.Desativar;
         end;
      end;

   end;

end;

procedure TFrListarCupons.Action1Update(Sender: TObject);
begin
   TAction(Sender).Enabled := not (QueryLista.IsEmpty);
end;

procedure TFrListarCupons.Action2Execute(Sender: TObject);
begin
   // Limpa a string que recebe o Cupom Gerado
   String_Cupom_Xml := '';

   with FrVendas do
   begin

      // Inicializa o sat
      if Inicializa_SAT then
      begin

         ObjSat.InicializaCFe;

         if Self.Gerar_Cupom_Fiscal then
         begin
            Imprime_display('enviando cupom fiscal', clWhite);

            ObjSat.EnviarDadosVenda( String_Cupom_Xml );

            if ObjSat.Resposta.codigoDeRetorno = 6000 then
            begin

               Imprime_display('Atualizando banco de dados', clWhite);

               QueryLista.Edit;
               QueryLista.FieldByName('f_cupom_data').AsDateTime    := Now;
               QueryLista.FieldByName('f_cupom_status').AsInteger   := 1;
               QueryLista.FieldByName('f_cupom_diretiva').AsInteger := 1;
               QueryLista.FieldByName('f_vlr_ncm_imp').AsFloat      := r_TotalLei_IMP;
               QueryLista.FieldByName('f_vlr_ncm_nac').AsFloat      := r_TotalLei_NAC;
               QueryLista.FieldByName('f_vlr_ncm_est').AsFloat      := r_TotalLei_EST;
               QueryLista.FieldByName('f_vlr_ncm_mun').AsFloat      := r_TotalLei_MUN;
               QueryLista.FieldByName('f_cupom_diretiva').AsInteger := 1;
               QueryLista.FieldByName('f_xml').AsString             := ObjSat.CFe.AsXMLString;
               QueryLista.FieldByName('f_xml_chave').AsString       := ObjSat.CFe.infCFe.ID;
               QueryLista.FieldByName('f_ncm_fonte').AsString       := FEmpresaClass.Ncm_Fonte;
               QueryLista.FieldByName('f_ncm_chave').AsString       := FEmpresaClass.Ncm_Chave;
               QueryLista.Post;

               Imprime_display('Imprimindo cupom fiscal', clWhite);
               ObjSat.ImprimirExtrato;
               ACBrPosPrinter1.Desativar;
            end;

         end;

      end;

   end;

end;

procedure TFrListarCupons.Action2Update(Sender: TObject);
begin
   if QueryLista.IsEmpty then
      TAction(Sender).Enabled := false
   else
   if QueryListaF_CUPOM_DIRETIVA.AsInteger = 1 then
      TAction(Sender).Enabled := false
   else
   if QueryListaF_CUPOM_STATUS.AsInteger = 2 then
      TAction(Sender).Enabled := false
   else
      TAction(Sender).Enabled := true
end;

procedure TFrListarCupons.Action3Execute(Sender: TObject);
var
   StrChave  : String;
   StrXmlCan : String;
begin
   // Checa a data para o cancelamento
   if QueryLista.FieldByName('f_cupom_diretiva').AsInteger = 1 then
   begin

      // Não pode haver diferença entre datas para o cancelamento
      if Date > QueryLista.FieldByName('f_cupom_data').AsDateTime then
      begin
         Imprime_display('prazo limite para cancelamento ultrapassado', clRed);
         Sleep(1000);
         Imprime_display_anterior;
         Abort;
      end;

      // Se estiver na mesma data checa se ultrapassou os 30 minutos
      if MinutesBetween(Time,QueryLista.FieldByName('hora_emissao').AsDateTime) > 30 then
      begin
         Imprime_display('prazo limite para cancelamento ultrapassado', clRed);
         Sleep(1000);
         Imprime_display_anterior;
         Abort;
      end;

   end;

   { -----------------------------------------------------------------------------------
      Autor:      Winston Moreira
      Data:       12/03/2019
      Descrição:  Confirma se prossegue com o cancelamento
   ------------------------------------------------------------------------------------- }
   if Application.MessageBox('Tem certeza que deseja cancelar o cupom selecionado?','TechCore-PDV',mb_IconQuestion or mb_YesNo) = mrNo then
      Abort;

   // Antes de dar prosseguimento, checa a diretiva do cupom
   if QueryLista.FieldByName('f_cupom_diretiva').AsInteger = 2 then
   begin
      QueryLista.Edit;
      QueryLista.FieldByName('f_cupom_status').AsInteger := 2;
      QueryLista.Post;

      Imprime_display('cupom cancelado com sucesso', clYellow);
      Sleep(2000);
      Imprime_display_anterior;

      Abort;
   end;

   // Carrega o cupom selecionado para o cancelamento
   with FrVendas do
   begin

      parametros_SAT;
      Inicializa_SAT;

      ObjSat.CFe.AsXMLString := QueryLista.FieldByName('f_xml').AsString;
      ObjSat.CFe2CFeCanc;
      StrXmlCan := ObjSat.CFeCanc.GerarXML(true);
      Strchave  := ObjSat.CFeCanc.infCFe.chCanc;

      ObjSat.CancelarUltimaVenda(StrChave, StrXmlCan);

      if ObjSat.Resposta.codigoDeRetorno = 7000 then
      begin

         if ACBrPosPrinter1.Modelo = ppEscPosEpson then
         begin
            ACBrPosPrinter1.EspacoEntreLinhas := 50;
            ACBrPosPrinter1.LinhasEntreCupons := 5;
         end;

         if ACBrPosPrinter1.Modelo = ppEscBematech then
         begin
            ACBrPosPrinter1.EspacoEntreLinhas := 1;
            ACBrPosPrinter1.LinhasEntreCupons := 3;
         end;

         ObjSat.ImprimirExtratoCancelamento;
         ACBrPosPrinter1.Desativar;

         QueryLista.Edit;
         QueryLista.FieldByName('f_xml_cancelado').AsString       := ObjSat.CFeCanc.AsXMLString;
         QueryLista.FieldByName('f_xml_cancelado_chave').AsString := ObjSat.CFeCanc.infCFe.ID;
         QueryLista.FieldByName('f_cupom_status').AsInteger       := 2;
         QueryLista.Post;

         Imprime_display('cupom cancelado com sucesso', clRed);
         Sleep(2000);
         Imprime_display_anterior;
         Abort;
      end;

   end;

end;

procedure TFrListarCupons.Action3Update(Sender: TObject);
begin
   if QueryLista.IsEmpty then
      TAction(Sender).Enabled := false
   else
   if QueryListaF_CUPOM_STATUS.AsInteger = 2 then
      TAction(Sender).Enabled := false
   else
      TAction(Sender).Enabled := true;
end;

procedure TFrListarCupons.Action4Execute(Sender: TObject);
begin
   Self.Close;
end;

procedure TFrListarCupons.FormCreate(Sender: TObject);
begin
   ed_adata.Date := Date;
   ed_fdata.Date := Date;

   // Componente pos printer
   with FrVendas.ACBrPosPrinter1 do
   begin
      Porta  := ObjCaixa.Caixa_Printer_Porta_G;
      Modelo := TACBrPosPrinterModelo(ObjCaixa.Caixa_Printer_Model_G);
   end;

end;

function TFrListarCupons.Gerar_Cupom_Fiscal : Boolean;
var
   aQuery, bQuery  : TFDQuery;
   r_TotalLei12741 : Real;
begin

   // Define o retonor como falso por padrão
   Result := false;

   r_TotalLei12741  := 0.00;
   r_TotalLei_IMP   := 0.00;
   r_TotalLei_NAC   := 0.00;
   r_TotalLei_EST   := 0.00;
   r_TotalLei_MUN   := 0.00;

   { -----------------------------------------------------------------------------------
      Autor:      Winston Moreira
      Data:       20/02/2019
      Descrição:  Monta o cabeçalho e a IDE do cupom
   ------------------------------------------------------------------------------------- }
   FrVendas.ObjSat.CFe.IdentarXML       := true;
   FrVendas.ObjSat.CFe.TamanhoIdentacao := 3;
   FrVendas.ObjSat.CFe.RetirarAcentos   := true;

   with FrVendas.ObjSat.CFe do
   begin
      ide.numeroCaixa := QueryLista.FieldByName('f_caixa').AsInteger;
      ide.cNF         := Random(999999);

      {ide.sLoja     := 'Lj: '   + Format('%.2d', [FEmpresaClass.Codigo]);
      Ide.sCaixa    := 'Cx: '   + Format('%.2d', [QueryLista.FieldByName('f_caixa').AsInteger]);
      Ide.sOperador := 'Oper: ' + QueryLista.FieldByName('opr_apelido').AsString;
      Ide.sCoo      := 'COO: '  + Format('%.6d', [QueryLista.FieldByName('f_cupom_numero').AsInteger]);
      Ide.sVendedor := 'Vend: ' + QueryLista.FieldByName('f_apelido').AsString;
      }
      // Dados do destinatário
      Dest.xNome   := '';
      Dest.CNPJCPF := QueryLista.FieldByName('f_cupom_cpf').AsString;

      // Carrega os dados dos produtos a serem enviados
      try
         aQuery            := TFDQuery.Create(self);
         aQuery.Connection := FrModulo.DBCon_Local;

         try
            aQuery.SQL.Add('SELECT * FROM C000051 WHERE ID_C000050 = :ID_C000050 ORDER BY F_ITEM ASC');
            aQuery.ParamByName('id_c000050').AsInteger := QueryLista.FieldByName('id').AsInteger;
            aQuery.Open();

            // Posiciona o cursor no primeiro registro
            aQuery.First;

            repeat

               with Det.New do
               begin

                  nItem          := aQuery.FieldByName('f_item').AsInteger;
                  Prod.cProd     := Format('%.6d', [aQuery.FieldByName('f_codigo').AsInteger]);
                  Prod.cEAN      := aQuery.FieldByName('f_codigo_barras').AsString;
                  Prod.xProd     := aQuery.FieldByName('f_descricao').AsString;
                  prod.NCM       := aQuery.FieldByName('f_ncm').AsString;
                  Prod.CFOP      := aQuery.FieldByName('f_cfop').AsString;
                  Prod.uCom      := aQuery.FieldByName('f_unidade').AsString;
                  Prod.qCom      := aQuery.FieldByName('f_qtde').AsInteger;
                  Prod.vUnCom    := aQuery.FieldByName('f_vlr_unitario').AsFloat;
                  Prod.indRegra  := irTruncamento;

                  Imposto.ICMS.orig  := oeNacional;
                  Imposto.ICMS.CSOSN := csosn102; // Obs.: Criar campo na tabela de produtos
                  Imposto.ICMS.pICMS := 0.00;

                  Imposto.PIS.CST    := pis99;
                  Imposto.PIS.vBC    := 0;
                  Imposto.PIS.pPIS   := 0;

                  Imposto.COFINS.CST := cof99;
                  Imposto.COFINS.vBC := 0;
                  Imposto.COFINS.pCOFINS := 0;

                  // Calculos individuais dos impostos
                  //r_TotalLei_IMP  := r_TotalLei_IMP + ( aQuery.FieldByName('f_vlr_sub_total').AsFloat * aQuery.FieldByName('f_ncm_taxa_imp').AsFloat) / 100;
                  r_TotalLei_NAC  := r_TotalLei_NAC + ( aQuery.FieldByName('f_vlr_total').AsFloat * aQuery.FieldByName('f_ncm_taxa_nac').AsFloat) / 100;
                  r_TotalLei_EST  := r_TotalLei_EST + ( aQuery.FieldByName('f_vlr_total').AsFloat * aQuery.FieldByName('f_ncm_taxa_est').AsFloat) / 100;
                  r_TotalLei_MUN  := 0.00;

                  // Calculo da lei da transparência
                  r_TotalLei12741  := ( r_TotalLei_NAC + r_TotalLei_EST );
               end;

               // Próximo produto
               aQuery.Next;
            until ( aQuery.Eof);

            Total.DescAcrEntr.vDescSubtot := QueryLista.FieldByName('f_vlr_desconto').AsFloat;
            Total.vCFeLei12741            := r_TotalLei12741;

            {Ide.F_Taxa_Ncm_Imp := FormatFloat(',0.00', r_TotalLei_IMP);
            Ide.F_Taxa_Ncm_Nac := FormatFloat(',0.00', r_TotalLei_NAC);
            Ide.F_Taxa_Ncm_Est := FormatFloat(',0.00', r_TotalLei_EST);
            Ide.F_Taxa_Ncm_Mun := FormatFloat(',0.00', r_TotalLei_MUN);
            Ide.F_Ncm_Fonte    := FEmpresaClass.Ncm_Fonte;
            Ide.F_Ncm_Chave    := FEmpresaClass.Ncm_Chave;
            }
            // Pagamento e meios de pagamentos
            // Carrega todas as formas de pagamentos utilizadas
            bQuery            := TFDQuery.Create(self);
            bQuery.Connection := FrModulo.DBCon_Local;
            bQuery.SQL.Add('SELECT * FROM C000052 WHERE ID_C000050 = :ID_C000050 ORDER BY FRM_PARCELA ASC');
            bQuery.ParamByName('id_C000050').AsInteger := QueryLista.FieldByName('id').AsInteger;
            bQuery.Open();

            // Posiciona o cursor no primeiro registro
            bQuery.First;

            repeat

               with Pagto.New do
               begin
                  case bquery.FieldByName('frm_codigo').AsInteger of
                     01 : cMP := mpDinheiro;
                     02 : cMP := mpCheque;
                     03 : cMP := mpCartaodeCredito;
                     04 : cMP := mpCartaodeDebito;
                     05 : cMP := mpCreditoLoja;
                     10 : cMP := mpValeAlimentacao;
                     11 : cMP := mpValeRefeicao;
                     12 : cMP := mpValePresente;
                     13 : cMP := mpValeCombustivel;
                     99 : cMP := mpOutros;
                  end;

                  vMP := RoundABNT( bQuery.FieldByName('frm_parcela_valor').AsFloat, -2 );

               end;

               // Próximo pagamento
               bQuery.Next;
            until ( bQuery.Eof );

            // Grava o cupom gerado na variavel
            String_Cupom_Xml := FrVendas.ObjSat.CFe.GerarXML( True );

            // Confirma que o cupom foi gerado com sucesso
            Result := true;

            // Exibe o aviso ao operador
            Imprime_display('cupom gerado com sucesso', clYellow);

         except
            Imprime_display('Erro ao gerar o cupom fiscal, tente novamente', clRed);
         end;

      finally
         FreeAndNil( aQuery );
      end;

   end;

end;

procedure TFrListarCupons.JvImage1Click(Sender: TObject);
begin
   Self.Close;
end;

procedure TFrListarCupons.PngSpeedButton1Click(Sender: TObject);
var
   I, N : Integer;
begin
   case ed_status.ItemIndex of
      0 : I := 1;
      1 : I := 2;
   end;

   if GetKeyState( VK_LCONTROL ) and 128 > 0  then
      N := 2
   else
      N := 1;

   QueryLista.Close;
   QueryLista.ParamByName('adata').AsDateTime           := ed_adata.Date;
   QueryLista.ParamByName('fdata').AsDateTime           := ed_fdata.Date;
   QueryLista.ParamByName('id_empresa').AsInteger       := FEmpresaClass.ID;
   QueryLista.ParamByName('id_caixa').AsInteger         := ObjCaixa.Caixa_ID;
   QueryLista.ParamByName('f_cupom_status').AsInteger   := I;
   QueryLista.ParamByName('f_cupom_diretiva').AsInteger := N;
   QueryLista.Open();

   if ed_status.ItemIndex = 0 then
      nxColChave.FieldName := 'f_xml_chave'
   else
      nxColChave.FieldName := 'f_xml_cancelado_chave';

   if N = 2 then
      nxColchave.Visible := false
   else
      nxColchave.Visible := true

end;

procedure TFrListarCupons.QueryListaAfterPost(DataSet: TDataSet);
begin
   DataSet.Refresh;
end;

end.
