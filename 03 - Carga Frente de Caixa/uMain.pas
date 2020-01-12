unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.ImageList, Vcl.ImgList,
  RzTray, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, Vcl.ExtCtrls, FireDAC.Stan.StorageBin,
  FireDAC.Phys.FBDef, FireDAC.Phys.IBBase, FireDAC.Phys.FB, DateUtils,
  RzBHints, Vcl.StdCtrls, Vcl.Menus, Vcl.Mask, JvExMask, JvToolEdit, IniFiles,
  RzStatus, RzPanel;

const
   CM_FECHAR = WM_APP + 500;

type
  TFrMain = class(TForm)
    rzTray: TRzTrayIcon;
    Icones: TImageList;
    IdTCPClient1: TIdTCPClient;
    DBCon_Local: TFDConnection;
    DBConfigServer: TFDMemTable;
    tTimerC050: TTimer;
    DBCon_Retaguarda: TFDConnection;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    PopupMenu1: TPopupMenu;
    S1: TMenuItem;
    Button1: TButton;
    Label1: TLabel;
    RzStatusBar1: TRzStatusBar;
    rzTitulo: TRzStatusPane;
    rzProgress: TRzProgressStatus;
    Label2: TLabel;
    Bevel1: TBevel;
    Button2: TButton;
    txtDataInicial: TJvDateEdit;
    Label3: TLabel;
    txtDatafinal: TJvDateEdit;
    Label4: TLabel;
    aQuery: TFDQuery;
    FDTransacLocal: TFDTransaction;
    FDTransacRemoto: TFDTransaction;
    xQuery: TFDQuery;
    Query: TFDQuery;
    procedure FormCreate(Sender: TObject);
    procedure IdTCPClient1Connected(Sender: TObject);
    procedure DBCon_RetaguardaAfterConnect(Sender: TObject);
    procedure S1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure tTimerC050Timer(Sender: TObject);
    procedure QueryError(ASender, AInitiator: TObject; var AException: Exception);
    procedure QueryAfterExecute(DataSet: TFDDataSet);
  private
    { Private declarations }
    id_emp : integer;
    CargaManualGlobal : boolean;
    FecharDireto : boolean;

    procedure ConectarServidores;
    procedure CargaC000050(CargaManual : boolean = false);
    procedure CargaC000051(CargaManual : boolean = false);
    procedure CargaC000052(CargaManual : boolean = false);
    procedure GravarSangriaSng(CargaManual : boolean = false);
    procedure GravarSangriaRet(CargaManual : boolean = false);
    procedure GravarSangriaSup(CargaManual : boolean = false);
    procedure GravarAberFechCax(CargaManual : boolean = false);
    procedure Fechar(var Msg: TMessage); message CM_FECHAR;

    procedure LogCargaCaixaRetaguarda(Msg, Carga, Tipo: string);

  public
    { Public declarations }
  end;

var
  FrMain: TFrMain;

implementation

{$R *.dfm}

procedure TFrMain.Button1Click(Sender: TObject);
begin
   FecharDireto := false;

   if not tTimerC050.Enabled then
      Application.MessageBox('Existem cargas em andamento, aguarde...','TechCore-PDV', mb_IconWarning or mb_ok)
   else
      Self.Close;
end;

procedure TFrMain.Button2Click(Sender: TObject);
begin
   // Se estiver efetuando uma carga cancela o processo
   if not tTimerC050.Enabled then
   begin
      Application.MessageBox('Existe uma carga em andamento, aguarde...','TechCore-PDV',mb_IconWarning or mb_ok);
      Abort;
   end;

   if (Application.MessageBox('Tem certeza que deseja efetuar a caraga nos período informado?','TechCore-PDV',mb_IconQuestion or mb_YesNo)) = mrNo then
      Abort;

   // Determina que esta é uma carga manual
   CargaManualGlobal := true;

   // Chama o script inicial da carga
   tTimerC050Timer(nil);

end;

procedure TFrMain.CargaC000050(CargaManual: boolean);
var
   Carga, Tipo : String;
begin
   Carga := 'CargaC000050 (Vendas)';

   try
      try
         // Desliga o próprio timer
         tTimerC050.Enabled := false;

         // Testa se o servidor esta ativo
         try
            IdTCPClient1.Connect;
         except
            Abort;
         end;

         // Coleta os dados das vendas
         aQuery.Close;
         aQuery.SQL.Clear;
         aQuery.SQL.Add('SELECT');
         aQuery.SQL.Add('  ID,');
         aQuery.SQL.Add('  ID_ABERTURA,');
         aQuery.SQL.Add('  ID_EMPRESA,');
         aQuery.SQL.Add('  ID_OPERADOR,');
         aQuery.SQL.Add('  ID_VENDEDOR,');
         aQuery.SQL.Add('  ID_CAIXA,');
         aQuery.SQL.Add('  ID_CONTA,');
         aQuery.SQL.Add('  ID_PLN_PDV,');
         aQuery.SQL.Add('  ID_CLIENTE,');
         aQuery.SQL.Add('  F_CUPOM_NUMERO,');
         aQuery.SQL.Add('  F_CUPOM_DATA,');
         aQuery.SQL.Add('  F_VLR_DESCONTO,');
         aQuery.SQL.Add('  F_VLR_SUBTOTAL,');
         aQuery.SQL.Add('  F_VLR_PAGO,');
         aQuery.SQL.Add('  F_VLR_TROCO,');
         aQuery.SQL.Add('  F_VLR_CUPOM,');
         aQuery.SQL.Add('  F_VLR_TOTAL,');
         aQuery.SQL.Add('  F_CUPOM_STATUS,');
         aQuery.SQL.Add('  F_CUPOM_DIRETIVA,');
         aQuery.SQL.Add('  F_XML_CHAVE,');
         aQuery.SQL.Add('  F_COD_PRE_VENDAS');
         aQuery.SQL.Add('FROM');
         aQuery.SQL.Add('  C000050');
         aQuery.SQL.Add('WHERE');
         aQuery.SQL.Add('  F_CUPOM_STATUS IN (1,2)');
         aQuery.SQL.Add('AND');

         // Checa se esta é uma carga automática ou manual
         if CargaManualGlobal then
            aQuery.SQL.Add('  CAST(F_CUPOM_DATA AS DATE) BETWEEN :A_DATA AND :B_DATA')
         else
            aQuery.SQL.Add('  F_CUPOM_DATA BETWEEN :A_DATA AND :B_DATA');

         aQuery.SQL.Add('ORDER BY');
         aQuery.SQL.Add('  F_CUPOM_NUMERO ASC');

         if CargaManualGlobal then
         begin
            aQuery.ParamByName('A_DATA').AsDateTime := txtDataInicial.Date;
            aQuery.ParamByName('B_DATA').AsDateTime := txtDatafinal.Date;
         end
         else
         begin
            aQuery.ParamByName('A_DATA').AsDateTime := IncHour(Now, -3);
            aQuery.ParamByName('B_DATA').AsDateTime := Now;
         end;

         aQuery.Open();

         // Gera o JSON para enviar para o servidor rest
         if not aQuery.IsEmpty then
         begin

            aQuery.First;

            // Exibe onde esta o cursor durante o processo
            rzTitulo.Caption := 'Vendas:';

            // Ajusta a barra de progresso
            rzProgress.TotalParts := aQuery.RecordCount;

            // Loop para atualizar o servidor
            repeat

               Tipo := 'Insert';

               Query.Close;
               Query.SQL.Clear;
               Query.SQl.Add('UPDATE OR INSERT INTO C000030(');
               Query.SQl.Add('   id_50,      id_empresa,  id_cliente,   id_operador,    id_vendedor,     id_caixa,        id_conta,');
               Query.SQl.Add('   id_pln_pdv, id_abertura, f_cup_data,   f_cup_numero,   f_cup_subtotal,  f_cup_desconto, f_cup_total,');
               Query.SQl.Add('   f_cup_pago, f_cup_troco, f_cup_status, f_cup_diretiva, f_cup_chave_xml, f_cup_cod_pre_venda');
               Query.SQl.Add(')VALUES(');
               Query.SQl.Add('   :id_50,      :id_empresa,  :id_cliente,   :id_operador,    :id_vendedor,     :id_caixa,       :id_conta,');
               Query.SQl.Add('   :id_pln_pdv, :id_abertura, :f_cup_data,   :f_cup_numero,   :f_cup_subtotal,  :f_cup_desconto, :f_cup_total,');
               Query.SQl.Add('   :f_cup_pago, :f_cup_troco, :f_cup_status, :f_cup_diretiva, :f_cup_chave_xml, :f_cup_cod_pre_venda)');
               Query.SQL.Add('MATCHING');
               Query.SQl.Add('   (id_50, id_caixa, id_abertura)');

               // Lista de parâmetros
               Query.ParamByName('id_50').AsInteger          := aQuery.FieldByName('id').AsInteger;
               Query.ParamByName('id_empresa').AsInteger     := id_emp;
               Query.ParamByName('id_cliente').AsInteger     := aQuery.FieldByName('id_cliente').AsInteger;
               Query.ParamByName('id_operador').AsInteger    := aQuery.FieldByName('id_operador').AsInteger;
               Query.ParamByName('id_vendedor').AsInteger    := aQuery.FieldByName('id_vendedor').AsInteger;
               Query.ParamByName('id_caixa').AsInteger       := aQuery.FieldByName('id_caixa').AsInteger;
               Query.ParamByName('id_conta').AsInteger       := aQuery.FieldByName('id_conta').AsInteger;
               Query.ParamByName('id_pln_pdv').AsInteger     := aQuery.FieldByName('id_pln_pdv').AsInteger;
               Query.ParamByName('id_abertura').AsString     := aQuery.FieldByName('id_abertura').AsString;
               Query.ParamByName('f_cup_data').AsDate        := aQuery.FieldByName('f_cupom_data').AsDateTime;
               Query.ParamByName('f_cup_numero').AsInteger   := aQuery.FieldByName('f_cupom_numero').AsInteger;
               Query.ParamByName('f_cup_subtotal').AsFloat   := aQuery.FieldByName('f_vlr_subtotal').AsFloat;
               Query.ParamByName('f_cup_desconto').AsFloat   := aQuery.FieldByName('f_vlr_desconto').AsFloat;
               Query.ParamByName('f_cup_total').AsFloat      := aQuery.FieldByName('f_vlr_total').AsFloat;
               Query.ParamByName('f_cup_pago').AsFloat       := aQuery.FieldByName('f_vlr_pago').AsFloat;
               Query.ParamByName('f_cup_troco').AsFloat      := aQuery.FieldByName('f_vlr_troco').AsFloat;
               Query.ParamByName('f_cup_status').AsInteger   := aQuery.FieldByName('f_cupom_status').AsInteger;
               Query.ParamByName('f_cup_diretiva').AsInteger := aQuery.FieldByName('f_cupom_diretiva').AsInteger;
               Query.ParamByName('f_cup_chave_xml').AsString := aQuery.FieldByName('f_xml_chave').AsString;
               Query.ParamByName('f_cup_cod_pre_venda').AsString := aQuery.FieldByName('f_cod_pre_vendas').AsString;
               Query.ExecSql;

               // Avança para o próximo registro
               aQuery.Next;

            until (aQuery.Eof);

            // Grava os dados no banco de dados
            DBCon_Retaguarda.CommitRetaining;

         end;

      except
         on e:EDatabaseError do
         begin
            // Cancela toda a movimentação
            DBCon_Retaguarda.RollbackRetaining;

            // Grava um logo do erro
            LogCargaCaixaRetaguarda(e.Message, Carga, Tipo);
         end;
      end;

   finally
      // Fecha o componente
      aQuery.Close;
      Query.Close;
   end;
end;

procedure TFrMain.CargaC000051(CargaManual : boolean = false);
var
   kQuery : TFDQuery;
   Carga, Tipo : String;
begin
   Carga := 'CargaC000051 (Produtos)';

   try
      try
         aQuery.Close;
         aQuery.SQL.Clear;
         aQuery.SQL.Add('SELECT');
         aQuery.SQL.Add('  T1.ID AS ID_51,');
         aQuery.SQL.Add('  T2.ID AS ID_50,');
         aQuery.SQL.Add('  T1.ID_PRODUTO,');
         aQuery.SQL.Add('  T2.ID_ABERTURA,');
         aQuery.SQL.Add('  CAST(T2.F_CUPOM_DATA AS DATE) AS F_CUPOM_DATA,');
         aQuery.SQL.Add('  T1.F_QTDE,');
         aQuery.SQL.Add('  T1.F_VLR_UNITARIO,');
         aQuery.SQL.Add('  T1.F_VLR_TOTAL,');
         aQuery.SQL.Add('  T2.F_CUPOM_STATUS,');
         aQuery.SQL.Add('  T1.F_NCM,');
         aQuery.SQL.Add('  T1.F_CFOP,');
         aQuery.SQL.Add('  T1.F_NCM_TAXA_IMP,');
         aQuery.SQL.Add('  T1.F_NCM_TAXA_NAC,');
         aQuery.SQL.Add('  T1.F_NCM_TAXA_EST,');
         aQuery.SQL.Add('  T1.F_BRINDE,');
         aQuery.SQL.Add('  T1.F_KIT,');
         aQuery.SQL.Add('  T1.F_ID_KIT,');
         aQuery.SQL.Add('  T1.F_STATUS');
         aQuery.SQL.Add('FROM');
         aQuery.SQL.Add('  C000051 AS T1');
         aQuery.SQL.Add(' JOIN');
         aQuery.SQL.Add('  C000050 AS T2');
         aQuery.SQL.Add('ON');
         aQuery.SQL.Add('  T1.ID_C000050 = T2.ID');
         aQuery.SQL.Add('AND');
         aquery.SQL.Add('  T2.F_CUPOM_STATUS IN (1,2)');
         aQuery.SQL.Add('WHERE');

         // Checa se esta é uma carga automática ou manual
         if CargaManual then
            aQuery.SQL.Add('CAST(T2.F_CUPOM_DATA AS DATE) BETWEEN :A_DATA AND :B_DATA')
         else
            aQuery.SQL.Add('T2.F_CUPOM_DATA BETWEEN :A_DATA AND :B_DATA');

         aQuery.SQL.Add('ORDER BY');
         aQuery.SQL.Add('  T2.ID ASC');

         if CargaManual then
         begin
            aQuery.ParamByName('A_DATA').AsDateTime := txtDataInicial.Date;
            aQuery.ParamByName('B_DATA').AsDateTime := txtDatafinal.Date;
         end
         else
         begin
            aQuery.ParamByName('A_DATA').AsDateTime := IncHour(Now, -3);
            aQuery.ParamByName('B_DATA').AsDateTime := Now;
         end;

         aQuery.Open();

         // Se não retornado nada cancela o processo
         if not aQuery.IsEmpty then
         begin

            // Coloca o cursor no primeiro registro
            aQuery.First;

            // Exibe onde está o cursor durante o processo
            rzTitulo.Caption := 'Itens do Cupom:';

            // Ajusta a barra de progresso
            rzProgress.TotalParts := aQuery.RecordCount;

            // Loop para atualizar o servidor
            repeat

               {
                  Neste ponto, o produto é parte integrante de um kit, porem o mesmo pode ser um kit, e sendo assim será
                  será tratado como um produto normal, informado toda a sua movimentação normal.

                  Checa se o produto se encontra na tabela do retaguarda
                  1 - Se o não consta na tabela, insere o mesmo com os dados da venda
                  2 - Se consta, atualiza os dados do mesmo
               }
               if aQuery.FieldByName('f_kit').AsString = 'S' then
               begin

                  try
                     kQuery            := TFDQuery.Create(self);
                     kQuery.Connection := DBCon_Local;

                     kQuery.SQL.Add('SELECT * FROM C000405_KIT WHERE ID_C000405 = :ID');
                     kQuery.ParamByName('id').AsInteger := aQuery.FieldByName('id_produto').AsInteger;
                     kQuery.Open();

                     // Posiciona o cursor no primeiro item
                     kQuery.First;

                     repeat

                        Tipo := 'Insert (Kit)';

                        Query.Close;
                        Query.SQL.Clear;
                        Query.SQL.Add('UPDATE OR INSERT INTO C000031(');
                        Query.SQL.Add('   id_50,         id_51,         prd_id,        prd_qtde,');
                        Query.SQL.Add('   prd_vlr_uni,   prd_vlr_tot,   prd_ncm,       prd_cfop,   prd_ncm_imp, prd_ncm_nac,');
                        Query.SQL.Add('   prd_ncm_est,   prd_status,    prd_brinde,    prd_kit,    id_abertura, prd_comp_kit');
                        Query.SQL.Add(')VALUES(');
                        Query.SQL.Add('   :id_50,        :id_51,        :prd_id,       :prd_qtde,');
                        Query.SQL.Add('   :prd_vlr_uni,  :prd_vlr_tot,  :prd_ncm,      :prd_cfop,  :prd_ncm_imp, :prd_ncm_nac,');
                        Query.SQL.Add('   :prd_ncm_est,  :prd_status,   :prd_brinde,   :prd_kit,   :id_abertura, :prd_comp_kit)');
                        Query.SQL.Add('MATCHING');
                        Query.SQL.Add('   (id_50, id_51, prd_id, id_abertura, prd_comp_kit)');

                        Query.ParamByName('id_50').AsInteger       := aQuery.FieldByName('id_50').AsInteger;
                        Query.ParamByName('id_51').AsInteger       := aQuery.FieldByName('id_51').AsInteger;
                        Query.ParamByName('id_abertura').AsString  := aQuery.FieldByName('id_abertura').AsString;
                        Query.ParamByName('prd_id').AsInteger      := kQuery.FieldByName('prd_id').AsInteger;
                        Query.ParamByName('prd_qtde').AsFloat      := kQuery.FieldByName('prd_qtde').AsFloat * (-1);
                        Query.ParamByName('prd_vlr_uni').AsFloat   := kQuery.FieldByName('prd_valor').AsFloat;
                        Query.ParamByName('prd_vlr_tot').AsFloat   := kQuery.FieldByName('prd_total').AsFloat;
                        Query.ParamByName('prd_ncm').AsString      := kQuery.FieldByName('prd_ncm').AsString;
                        Query.ParamByName('prd_cfop').AsInteger    := kQuery.FieldByName('prd_cfop').AsInteger;
                        Query.ParamByName('prd_ncm_imp').AsFloat   := kQuery.FieldByName('prd_ncm_taxa_imp').AsFloat;
                        Query.ParamByName('prd_ncm_nac').AsFloat   := kQuery.FieldByName('prd_ncm_taxa_nac').AsFloat;
                        Query.ParamByName('prd_ncm_est').AsFloat   := kQuery.FieldByName('prd_ncm_taxa_est').AsFloat;
                        Query.ParamByName('prd_status').AsInteger  := aQuery.FieldByName('f_cupom_status').AsInteger;
                        Query.ParamByName('prd_brinde').AsInteger  := aQuery.FieldByName('f_brinde').AsInteger;
                        Query.ParamByName('prd_comp_kit').AsString := 'S';
                        Query.ParamByName('prd_kit').AsString      := 'N';
                        Query.ExecSQL;

                        // Próximo registro
                        kQuery.Next;

                     until (kQuery.Eof);

                  finally
                     FreeandNil(kQuery);
                  end;
               
               end;

               {
                  Neste ponto, o produto não é parte integrante de um kit, porem o mesmo pode ser um kit, e sendo assim será
                  será tratado como um produto normal, informado toda a sua movimentação normal.

                  Checa se o produto se encontra na tabela do retaguarda
                  1 - Se o não consta na tabela, insere o mesmo com os dados da venda
                  2 - Se consta, atualiza os dados do mesmo
               }
               Tipo := 'Insert (Não Kit)';

               {grava os dados dos produtos que não são kits}
               with Query do
               begin

                  Query.Close;
                  Query.SQL.Clear;
                  Query.SQL.Add('UPDATE OR INSERT INTO C000031(');
                  Query.SQL.Add('   id_50,        id_51,          prd_id,        prd_qtde,');
                  Query.SQL.Add('   prd_vlr_uni, prd_vlr_tot,     prd_ncm,       prd_cfop,    prd_ncm_imp, prd_ncm_nac,');
                  Query.SQL.Add('   prd_ncm_est, prd_status,      prd_brinde,    prd_kit,     id_abertura, prd_comp_kit');
                  Query.SQL.Add(')VALUES(');
                  Query.SQL.Add('   :id_50,        :id_51,        :prd_id,       :prd_qtde,');
                  Query.SQL.Add('   :prd_vlr_uni, :prd_vlr_tot,   :prd_ncm,      :prd_cfop,    :prd_ncm_imp, :prd_ncm_nac,');
                  Query.SQL.Add('   :prd_ncm_est, :prd_status,    :prd_brinde,   :prd_kit,     :id_abertura, :prd_comp_kit)');
                  Query.SQL.Add('MATCHING');
                  Query.SQL.Add('   (id_50, id_51, prd_id, id_abertura, prd_comp_kit)');

                  Query.ParamByName('id_50').AsInteger       := aQuery.FieldByName('id_50').AsInteger;
                  Query.ParamByName('id_51').AsInteger       := aQuery.FieldByName('id_51').AsInteger;
                  Query.ParamByName('id_abertura').AsString  := aQuery.FieldByName('id_abertura').AsString;
                  Query.ParamByName('prd_id').AsInteger      := aQuery.FieldByName('id_produto').AsInteger;
                  Query.ParamByName('prd_qtde').AsFloat      := aQuery.FieldByName('f_qtde').AsFloat * (-1);
                  Query.ParamByName('prd_vlr_uni').AsFloat   := aQuery.FieldByName('f_vlr_unitario').AsFloat;
                  Query.ParamByName('prd_vlr_tot').AsFloat   := aQuery.FieldByName('f_vlr_total').AsFloat;
                  Query.ParamByName('prd_ncm').AsString      := aQuery.FieldByName('f_ncm').AsString;
                  Query.ParamByName('prd_cfop').AsInteger    := aQuery.FieldByName('f_cfop').AsInteger;
                  Query.ParamByName('prd_ncm_imp').AsFloat   := aQuery.FieldByName('f_ncm_taxa_imp').AsFloat;
                  Query.ParamByName('prd_ncm_nac').AsFloat   := aQuery.FieldByName('f_ncm_taxa_nac').AsFloat;
                  Query.ParamByName('prd_ncm_est').AsFloat   := aQuery.FieldByName('f_ncm_taxa_est').AsFloat;
                  Query.ParamByName('prd_status').AsInteger  := aQuery.FieldByName('f_cupom_status').AsInteger;
                  Query.ParamByName('prd_brinde').AsInteger  := aQuery.FieldByName('f_brinde').AsInteger;
                  Query.ParamByName('prd_comp_kit').AsString := 'N';
                  Query.ParamByName('prd_kit').AsString      := aQuery.FieldByName('f_kit').AsString;
                  Query.ExecSQL;
               end;

               // Próximo registro
               aQuery.Next;

            until (aQuery.Eof);

            // Cancela toda a movimentação
            DBCon_Retaguarda.CommitRetaining;
         end;

      except
         on e:exception do
         begin
            // Cancela toda a movimentação
            DBCon_Retaguarda.RollbackRetaining;

            // Grava um logo do erro
            LogCargaCaixaRetaguarda(e.Message, Carga, Tipo);
         end;
      end;

   finally
      // Fecha o cursor
      aQuery.Close;
      Query.Close;
   end;
end;

procedure TFrMain.CargaC000052(CargaManual : boolean = false);
var
   Carga, Tipo : String;
begin
   Carga := 'CargaC000052 (Formas de Pagamentos)';
   try
      try
         aQuery.Close;
         aQuery.SQL.Clear;
         aQuery.SQL.Add('SELECT');
         aQuery.SQL.Add('  T1.*,');
         aQuery.SQL.Add('  T2.ID AS ID_50');
         aQuery.SQL.Add('FROM');
         aQuery.SQL.Add('  C000052 AS T1');
         aQuery.SQL.Add('JOIN');
         aQuery.SQL.Add('  C000050 AS T2');
         aQuery.SQL.Add('ON');
         aQuery.SQL.Add('  T2.ID = T1.ID_C000050');
         aQuery.SQL.Add('WHERE');
         aQuery.SQL.Add('  T2.F_CUPOM_STATUS IN (1,2)');
         aQuery.SQL.Add('AND');

         // Checa se esta é uma carga automática ou manual
         if CargaManual then
            aQuery.SQL.Add('CAST(T2.F_CUPOM_DATA AS DATE) BETWEEN :A_DATA AND :B_DATA')
         else
            aQuery.SQL.Add('T2.F_CUPOM_DATA BETWEEN :A_DATA AND :B_DATA');

         if CargaManual then
         begin
            aQuery.ParamByName('A_DATA').AsDateTime := txtDataInicial.Date;
            aQuery.ParamByName('B_DATA').AsDateTime := txtDatafinal.Date;
         end
         else
         begin
            aQuery.ParamByName('A_DATA').AsDateTime := IncHour(Now, -3);
            aQuery.ParamByName('B_DATA').AsDateTime := Now;
         end;

         aQuery.Open();

         if not aQuery.IsEmpty then
         begin

            // Primeiro registro
            aQuery.First;

            // Exibe onde esta o cursor durante o processo
            rzTitulo.Caption := 'Formas de Pagamentos:';

            // Ajusta a barra de progresso
            rzProgress.TotalParts := aQuery.RecordCount;

            // Loop para atualizar o servidor
            repeat
               Tipo := 'Insert';

               Query.Close;
               Query.SQL.Clear;
               Query.SQL.Add('UPDATE OR INSERT INTO C000032(');
               Query.SQL.Add('   id_50,   id_52,   id_abertura,   frm_id,  frm_codigo,  frm_parcela,  frm_valor');
               Query.SQL.Add(')VALUES(');
               Query.SQL.Add('   :id_50,  :id_52,  :id_abertura,  :frm_id, :frm_codigo, :frm_parcela, :frm_valor)');
               Query.SQL.Add('MATCHING');
               Query.SQL.Add('   (id_50, id_52, id_abertura)');

               Query.ParamByName('id_50').AsInteger       := aQuery.FieldByName('id_50').AsInteger;
               Query.ParamByName('id_52').AsInteger       := aQuery.FieldByName('id').AsInteger;
               Query.ParamByName('id_abertura').AsString  := aQuery.FieldByName('id_abertura').AsString;
               Query.ParamByName('frm_id').AsInteger      := aQuery.FieldByName('id_forma_pagto').AsInteger;
               Query.ParamByName('frm_codigo').AsInteger  := aQuery.FieldByName('frm_codigo').AsInteger;
               Query.ParamByName('frm_parcela').AsInteger := aQuery.FieldByName('frm_parcela').AsInteger;
               Query.ParamByName('frm_valor').AsFloat     := aQuery.FieldByName('frm_parcela_valor').AsFloat;
               Query.ExecSQL;

               // Avança para o próximo registro
               aQuery.Next;

            until (aQuery.Eof);

            // Cancela toda a movimentação
            DBCon_Retaguarda.CommitRetaining;

         end;

      except
         on e:EDatabaseError do
         begin
            // Cancela toda a movimentação
            DBCon_Retaguarda.RollbackRetaining;

            // Grava um logo do erro
            LogCargaCaixaRetaguarda(e.Message, Carga, Tipo);
         end;
      end;

   finally
      // Fecha o cursor
      aQuery.Close;
      Query.Close;
   end;
end;

procedure TFrMain.ConectarServidores;
begin
   if not DBCon_Local.Connected then
   begin
      // Configura a conexão com o servidor [local]
      DBConfigServer.Locate('con_destino',1,[]);

      With DBCon_Local do
      begin
         Connected := false;
         Params.Clear;
         Params.Values['DriverID']  := 'FB';
         Params.Values['Server']    := DBConfigServer.FieldByName('con_host_ip').AsString;
         Params.Values['Port']      := DBConfigServer.FieldByName('con_porta').AsString;
         Params.Values['Protocol']  := DBConfigServer.FieldByName('con_protocolo').AsString;
         Params.Values['Database']  := DBConfigServer.FieldByName('con_database').AsString;
         Params.Values['User_name'] := DBConfigServer.FieldByName('con_usuario').AsString;
         Params.Values['Password']  := DBConfigServer.FieldByName('con_senha').AsString;
         Connected := True;

      end;
   end;


   if not DBCon_Retaguarda.Connected then
   begin
      // Configura a conexão com o servidor [remoto]
      DBConfigServer.Locate('con_destino',2,[]);

      With DBCon_Retaguarda do
      begin
         Connected := false;
         Params.Clear;
         Params.Values['DriverID']  := 'FB';
         Params.Values['Server']    := DBConfigServer.FieldByName('con_host_ip').AsString;
         Params.Values['Port']      := DBConfigServer.FieldByName('con_porta').AsString;
         Params.Values['Protocol']  := DBConfigServer.FieldByName('con_protocolo').AsString;
         Params.Values['Database']  := DBConfigServer.FieldByName('con_database').AsString;
         Params.Values['User_name'] := DBConfigServer.FieldByName('con_usuario').AsString;
         Params.Values['Password']  := DBConfigServer.FieldByName('con_senha').AsString;
         Connected := True;
      end;
   end;

end;

procedure TFrMain.DBCon_RetaguardaAfterConnect(Sender: TObject);
begin
   rzTray.IconIndex := 1;
end;

procedure TFrMain.Fechar(var Msg: TMessage);
begin
   FecharDireto := true;
   Self.Close;
end;

procedure TFrMain.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
   if not FecharDireto then
   begin
      if Application.MessageBox('Tem certeza que deseja fechar?','TechCore-PDV',mb_IconQuestion or mb_YesNo) = mrNo then
         CanClose := false;
   end;
end;

procedure TFrMain.FormCreate(Sender: TObject);
begin
   // Configura as datas
   txtDataInicial.Date := Date;
   txtDataFinal.Date   := Date;

   // Após a abertura da janela de configuração, se o aqrquivo ainda não existe, fecha a aplicação
   if FileExists('ConfigConections.dat') then
   begin
      DBConfigServer.LoadFromFile('ConfigConections.dat',sfBinary);
      DBConfigServer.Open;
   end
   else
   begin
      Application.Terminate;
      Abort;
   end;

   // Confere se o servidor está ativo
   with IdTCPClient1 do
   begin
      try
         // Configura a conexão com o servidor [remoto]
         DBConfigServer.Locate('con_destino',2,[]);

         // Testa para verificar o servidor
         Host := DBConfigServer.FieldByName('con_host_ip').AsString;
         Port := DBConfigServer.FieldByName('con_porta').AsInteger;
         Connect;
      except
         Abort;
      end;
   end;

   // resgata o id da empresa ativa
   try
      aQuery.Close;
      aQuery.SQL.Clear;
      aQuery.SQL.Add('Select id from C000501');
      aQuery.Open();

      if not aQuery.IsEmpty then
         id_emp := aQuery.FieldByName('id').AsInteger
      else
         Abort;

   finally
      aQuery.Close;
   end;

   try
      {recupera o tempo definido entre cada loop}
      aQuery.Close;
      aQuery.SQL.Clear;
      aQuery.SQL.Add('Select f_tempo_carga_ao_servidor from C000016');
      aQuery.Open();

      if not aQuery.IsEmpty then
      begin
         tTimerC050.Interval := (aQuery.FieldByName('f_tempo_carga_ao_servidor').AsInteger * 1000);
         tTimerC050.Enabled  := true;
      end;

   finally
      aQuery.Close;
   end;

end;

procedure TFrMain.GravarAberFechCax(CargaManual : boolean = false);
var
   Carga, Tipo : String;
begin
   Carga := 'GravarAbertFechCax (Abertura / Fechamento de Caixa)';

   try
      try
         aQuery.Close;
         aQuery.SQL.Clear;
         aQuery.SQL.Add('SELECT');
         aQuery.SQL.Add('  *');
         aQuery.SQL.Add('FROM');
         aQuery.SQL.Add('  C000002');
         aQuery.SQL.Add('WHERE');

         // Checa se esta é uma carga automática ou manual
         if CargaManual then
            aQuery.SQL.Add('  CAST(F_ABER_DATA AS DATE) BETWEEN :A_DATA AND :B_DATA')
         else
            aQuery.SQL.Add('  F_ABER_DATA BETWEEN :A_DATA AND :B_DATA');

         if CargaManual then
         begin
            aQuery.ParamByName('A_DATA').AsDateTime := txtDataInicial.Date;
            aQuery.ParamByName('B_DATA').AsDateTime := txtDatafinal.Date;
         end
         else
         begin
            aQuery.ParamByName('A_DATA').AsDateTime := IncHour(Now, -3);
            aQuery.ParamByName('B_DATA').AsDateTime := Now;
         end;

         aQuery.Open();

         if not aQuery.IsEmpty then
         begin
            // Coloca o cursor no primeiro registro
            aQuery.First;

            // Exibe onde esta o cursor durante o processo
            rzTitulo.Caption := 'Fechamentos do Caixa:';

            // Ajusta a barra de progresso
            rzProgress.TotalParts := aQuery.RecordCount;

            // Loop para atualizar o servidor
            repeat
               Tipo := 'Insert';

               Query.Close;
               Query.SQL.Clear;
               Query.SQL.Add('UPDATE OR INSERT INTO C000002(');
               Query.SQL.Add('   id_50,         id_empresa,    id_abertura,   id_caixa,      id_operador,');
               Query.SQL.Add('   f_aber_data,   f_aber_valor,  f_fech_data,   f_fech_valor,  f_status');
               Query.SQL.Add(')VALUES(');
               Query.SQL.Add('   :id_50,        :id_empresa,   :id_abertura,  :id_caixa,     :id_operador,');
               Query.SQL.Add('   :f_aber_data,  :f_aber_valor, :f_fech_data,  :f_fech_valor, :f_status)');
               Query.SQL.Add('MATCHING');
               Query.SQL.Add('   (id_50, id_caixa, id_abertura)');

               Query.ParamByName('id_50').AsInteger         := aQuery.FieldByName('id').AsInteger;
               Query.ParamByName('id_empresa').AsInteger    := aQuery.FieldByName('id_empresa').AsInteger;
               Query.ParamByName('id_abertura').AsString    := aQuery.FieldByName('id_abertura').AsString;
               Query.ParamByName('id_caixa').AsInteger      := aQuery.FieldByName('id_caixa').AsInteger;
               Query.ParamByName('id_operador').AsInteger   := aQuery.FieldByName('id_operador').AsInteger;
               Query.ParamByName('f_aber_data').AsDate      := aQuery.FieldByName('f_aber_data').AsDateTime;
               Query.ParamByName('f_aber_valor').AsFloat    := aQuery.FieldByName('f_aber_valor').AsFloat;
               Query.ParamByName('f_fech_data').AsDate      := aQuery.FieldByName('f_fech_data').AsDateTime;
               Query.ParamByName('f_fech_valor').AsFloat    := aQuery.FieldByName('f_fech_valor').AsFloat;
               Query.ParamByName('f_status').AsInteger      := aQuery.FieldByName('f_status').AsInteger;
               Query.ExecSQL;

               // Avança para o próximo registro
               aQuery.Next;

            until (aQuery.Eof);

            // Cancela toda a movimentação
            DBCon_Retaguarda.CommitRetaining;

         end;

      except
         on e:EDatabaseError do
         begin
            // Cancela toda a movimentação
            DBCon_Retaguarda.RollbackRetaining;

            // Grava um logo do erro
            LogCargaCaixaRetaguarda(e.Message, Carga, Tipo);
         end;
      end;

   finally
      // Fecha o cursor
      aQuery.Close;
      Query.Close;
   end;
end;

procedure TFrMain.GravarSangriaRet(CargaManual : boolean = false);
var
   Carga, Tipo : String;
begin
   Carga := 'GravarSangriaRet (Retiradas)';

   try
      try
         aQuery.Close;
         aQuery.SQL.Clear;
         aQuery.SQL.Add('SELECT');
         aQuery.SQL.Add('  *');
         aQuery.SQL.Add('FROM');
         aQuery.SQL.Add('  C000054');
         aQuery.SQL.Add('WHERE');

         // Checa se esta é uma carga automática ou manual
         if CargaManual then
            aQuery.SQL.Add('  CAST(RET_DATA AS DATE) BETWEEN :A_DATA AND :B_DATA')
         else
            aQuery.SQL.Add('  RET_DATA BETWEEN :A_DATA AND :B_DATA');

         if CargaManual then
         begin
            aQuery.ParamByName('A_DATA').AsDateTime := txtDataInicial.Date;
            aQuery.ParamByName('B_DATA').AsDateTime := txtDatafinal.Date;
         end
         else
         begin
            aQuery.ParamByName('A_DATA').AsDateTime := IncHour(Now, -3);
            aQuery.ParamByName('B_DATA').AsDateTime := Now;
         end;

         aQuery.Open();

         if not aQuery.IsEmpty then
         begin
            // Coloca o cursor no primeiro registro
            aQuery.First;

            // Exibe onde esta o cursor durante o processo
            rzTitulo.Caption := 'Retiradas:';

            // Ajusta a barra de progresso
            rzProgress.TotalParts := aQuery.RecordCount;

            // Loop para atualizar o servidor
            repeat

               Tipo := 'Insert';

               Query.Close;
               Query.SQL.Clear;
               Query.SQL.Add('UPDATE OR INSERT INTO C000034(');
               Query.SQL.Add('   id_50,     id_empresa,       id_abertura,  id_caixa,        id_operador,');
               Query.SQL.Add('   ret_data,  ret_saldo_atual,  ret_valor,    ret_saldo_apos,  ret_anotacoes');
               Query.SQL.Add(')VALUES(');
               Query.SQL.Add('   :id_50,    :id_empresa,      :id_abertura, :id_caixa,       :id_operador,');
               Query.SQL.Add('   :ret_data, :ret_saldo_atual, :ret_valor,   :ret_saldo_apos, :ret_anotacoes)');
               Query.SQL.Add('MATCHING');
               Query.SQL.Add('  (id_50, id_abertura, id_caixa)');

               Query.ParamByName('id_50').AsInteger         := aQuery.FieldByName('id').AsInteger;
               Query.ParamByName('id_empresa').AsInteger    := aQuery.FieldByName('id_empresa').AsInteger;
               Query.ParamByName('id_abertura').Value       := aQuery.FieldByName('id_abertura').AsString;
               Query.ParamByName('id_caixa').AsInteger      := aQuery.FieldByName('id_caixa').AsInteger;
               Query.ParamByName('id_operador').AsInteger   := aQuery.FieldByName('id_operador').AsInteger;
               Query.ParamByName('ret_data').AsDate         := aQuery.FieldByName('ret_data').AsDateTime;
               Query.ParamByName('ret_saldo_atual').AsFloat := aQuery.FieldByName('ret_saldo_atual').AsFloat;
               Query.ParamByName('ret_valor').AsFloat       := aQuery.FieldByName('ret_valor').AsFloat;
               Query.ParamByName('ret_saldo_apos').AsFloat  := aQuery.FieldByName('ret_saldo_apos').AsFloat;
               Query.ParamByName('ret_anotacoes').AsString  := aQuery.FieldByName('ret_anotacoes').AsString;
               Query.ExecSQL;

               // Avança para o próximo registro
               aQuery.Next;

            until ( aQuery.Eof );

            // Cancela toda a movimentação
            DBCon_Retaguarda.CommitRetaining;

         end;

      except
         on e:EDatabaseError do
         begin
            // Cancela toda a movimentação
            DBCon_Retaguarda.RollbackRetaining;

            // Grava um logo do erro
            LogCargaCaixaRetaguarda(e.Message, Carga, Tipo);
         end;
      end;

   finally
      // Fecha o cursor
      aQuery.Close;
      Query.Close;
   end;
end;

procedure TFrMain.GravarSangriaSng(CargaManual : boolean = false);
var
   Carga, Tipo : String;
begin
   Carga := 'GravarSangriaSng (Sangrias)';

   try
      try
         aQuery.Close;
         aQuery.SQL.Clear;
         aQuery.SQL.Add('SELECT');
         aQuery.SQL.Add('  *');
         aQuery.SQL.Add('FROM');
         aQuery.SQL.Add('  C000053');
         aQuery.SQL.Add('WHERE');

         // Checa se esta é uma carga automática ou manual
         if CargaManual then
            aQuery.SQL.Add('CAST(SNG_DATA AS DATE) BETWEEN :A_DATA AND :B_DATA')
         else
            aQuery.SQL.Add('SNG_DATA BETWEEN :A_DATA AND :B_DATA');

         if CargaManual then
         begin
            aQuery.ParamByName('A_DATA').AsDateTime := txtDataInicial.Date;
            aQuery.ParamByName('B_DATA').AsDateTime := txtDatafinal.Date;
         end
         else
         begin
            aQuery.ParamByName('A_DATA').AsDateTime := IncHour(Now, -3);
            aQuery.ParamByName('B_DATA').AsDateTime := Now;
         end;

         aQuery.Open();

         if not aQuery.IsEmpty then
         begin
            // Coloca o cursor no primeito registro
            aQuery.First;

            // Exibe onde esta o cursor durante o processo
            rzTitulo.Caption := 'Sangrias:';

            // Ajusta a barra de progresso
            rzProgress.TotalParts := aQuery.RecordCount;

            // Loop para atualizar o servidor
            repeat

               Tipo := 'Insert';

               Query.Close;
               Query.SQL.Clear;
               Query.SQL.Add('UPDATE OR INSERT INTO C000033(');
               Query.SQL.Add('   id_50,     id_empresa,       id_abertura,  id_caixa, id_operador,');
               Query.SQL.Add('   sng_data,  sng_saldo_atual,  sng_valor,    sng_saldo_apos');
               Query.SQL.Add(')VALUES(');
               Query.SQL.Add('   :id_50,    :id_empresa,      :id_abertura, :id_caixa, :id_operador,');
               Query.SQL.Add('   :sng_data, :sng_saldo_atual, :sng_valor,   :sng_saldo_apos)');
               Query.SQL.Add('MATCHING');
               Query.SQL.Add('   (id_50, id_Abertura, id_caixa)');

               Query.ParamByName('id_50').AsInteger         := aQuery.FieldByName('id').AsInteger;
               Query.ParamByName('id_empresa').AsInteger    := aQuery.FieldByName('id_empresa').AsInteger;
               Query.ParamByName('id_abertura').Value       := aQuery.FieldByName('id_abertura').AsString;
               Query.ParamByName('id_caixa').AsInteger      := aQuery.FieldByName('id_caixa').AsInteger;
               Query.ParamByName('id_operador').AsInteger   := aQuery.FieldByName('id_operador').AsInteger;
               Query.ParamByName('sng_data').AsDate         := aQuery.FieldByName('sng_data').AsDateTime;
               Query.ParamByName('sng_saldo_atual').AsFloat := aQuery.FieldByName('sng_saldo_atual').AsFloat;
               Query.ParamByName('sng_valor').AsFloat       := aQuery.FieldByName('sng_valor').AsFloat;
               Query.ParamByName('sng_saldo_apos').AsFloat  := aQuery.FieldByName('sng_saldo_apos').AsFloat;
               Query.ExecSQL;

               // Avança para o próximo registro
               aQuery.Next;

            until ( aQuery.Eof );

            // Cancela toda a movimentação
            DBCon_Retaguarda.CommitRetaining;
         end;

      except
         on e:EDatabaseError do
         begin
            // Cancela toda a movimentação
            DBCon_Retaguarda.RollbackRetaining;

            // Grava um logo do erro
            LogCargaCaixaRetaguarda(e.Message, Carga, Tipo);
         end;
      end;

   finally
      // Fecha o cursor
      aQuery.Close;
      Query.Close;
   end;
end;

procedure TFrMain.GravarSangriaSup(CargaManual : boolean = false);
var
   Carga, Tipo : String;
begin
   Carga := 'GravarSangriaSup (Suprimentos)';
   try
      try
         aQuery.Close;
         aQuery.SQL.Clear;
         aQuery.SQL.Add('SELECT');
         aQuery.SQL.Add('  *');
         aQuery.SQL.Add('FROM');
         aQuery.SQL.Add('  C000055');
         aQuery.SQL.Add('WHERE');

         // Checa se esta é uma carga automática ou manual
         if CargaManual then
            aQuery.SQL.Add('  CAST(SUP_DATA AS DATE) BETWEEN :A_DATA AND :B_DATA')
         else
            aQuery.SQL.Add('  SUP_DATA BETWEEN :A_DATA AND :B_DATA');

         if CargaManual then
         begin
            aQuery.ParamByName('A_DATA').AsDateTime := txtDataInicial.Date;
            aQuery.ParamByName('B_DATA').AsDateTime := txtDatafinal.Date;
         end
         else
         begin
            aQuery.ParamByName('A_DATA').AsDateTime := IncHour(Now, -3);
            aQuery.ParamByName('B_DATA').AsDateTime := Now;
         end;

         aQuery.Open();

         if not aQuery.IsEmpty then
         begin

            // Coloca o cursor no primeiro registro
            aQuery.First;

            // Exibe onde esta o cursor durante o processo
            rzTitulo.Caption := 'Suprimentos:';

            // Ajusta a barra de progresso
            rzProgress.TotalParts := aQuery.RecordCount;

            // Loop para atualizar o servidor
            repeat
               Tipo := 'Insert';

               Query.Close;
               Query.SQL.Clear;
               Query.SQL.Add('UPDATE OR INSERT INTO C000035(');
               Query.SQL.Add('   id_50,     id_empresa,       id_abertura,  id_caixa,        id_operador,');
               Query.SQL.Add('   sup_data,  sup_saldo_atual,  sup_valor,    sup_saldo_apos,  sup_anotacoes');
               Query.SQL.Add(')VALUES(');
               Query.SQL.Add('   :id_50,    :id_empresa,      :id_abertura, :id_caixa,       :id_operador,');
               Query.SQL.Add('   :sup_data, :sup_saldo_atual, :sup_valor,   :sup_saldo_apos, :sup_anotacoes)');
               Query.SQL.Add('MATCHING');
               Query.SQL.Add('   (id_50, id_abertura, id_caixa)');

               Query.ParamByName('id_50').AsInteger         := aQuery.FieldByName('id').AsInteger;
               Query.ParamByName('id_empresa').AsInteger    := aQuery.FieldByName('id_empresa').AsInteger;
               Query.ParamByName('id_abertura').Value       := aQuery.FieldByName('id_abertura').AsString;
               Query.ParamByName('id_caixa').AsInteger      := aQuery.FieldByName('id_caixa').AsInteger;
               Query.ParamByName('id_operador').AsInteger   := aQuery.FieldByName('id_operador').AsInteger;
               Query.ParamByName('sup_data').AsDate         := aQuery.FieldByName('sup_data').AsDateTime;
               Query.ParamByName('sup_saldo_atual').AsFloat := aQuery.FieldByName('sup_saldo_atual').AsFloat;
               Query.ParamByName('sup_valor').AsFloat       := aQuery.FieldByName('sup_valor').AsFloat;
               Query.ParamByName('sup_saldo_apos').AsFloat  := aQuery.FieldByName('sup_saldo_apos').AsFloat;
               Query.ParamByName('sup_anotacoes').AsString  := aQuery.FieldByName('sup_anotacoes').AsString;
               Query.ExecSQL;

               // Avança para o próximo registro
               aQuery.Next;

            until ( aQuery.Eof );

            // Cancela toda a movimentação
            DBCon_Retaguarda.CommitRetaining;

         end;

      except
         on e:EDatabaseError do
         begin
            // Cancela toda a movimentação
            DBCon_Retaguarda.RollbackRetaining;

            // Grava um logo do erro
            LogCargaCaixaRetaguarda(e.Message, Carga, Tipo);
         end;
      end;

   finally
      // Fecha o cursor
      aQuery.Close;
      Query.Close;
   end;
end;

procedure TFrMain.IdTCPClient1Connected(Sender: TObject);
begin
   // Conecta aos servidores
   ConectarServidores;

   IdTCPClient1.Disconnect;
end;

procedure TFrMain.LogCargaCaixaRetaguarda(Msg, Carga, Tipo: string);
var
   LogINI : TextFile;
begin

   {Cria ou carrega o arquivo ini}
   try
      // Aloca memória
      AssignFile(LogINI, 'LogCargaCaixaRetaguarda.log');

      // Checa se o arquivo existe
      if not FileExists('LogCargaCaixaRetaguarda.log') then
         ReWrite(LogINI);

      // Abre o arquivo para leitura
      Append(LogINI);

      // Insere o conteudo no final do arquivo
      Writeln(LogINI, DateToStr(Date) + ' - ' + TimeToStr(Time) + ': ' + Carga + ' - ' + Tipo + ': ' + msg);

   finally
      // Libera memória
      CloseFile(LogINI);
   end;
end;

procedure TFrMain.QueryAfterExecute(DataSet: TFDDataSet);
begin
   // Exibe o progresso do registro
   rzProgress.PartsComplete := aQuery.RecNo;
end;

procedure TFrMain.QueryError(ASender, AInitiator: TObject; var AException: Exception);
begin
   // Desfaz o que já foi feito no banco de dados
   DBCon_Retaguarda.RollbackRetaining;
end;

procedure TFrMain.S1Click(Sender: TObject);
begin
   Self.Close;
end;

procedure TFrMain.tTimerC050Timer(Sender: TObject);
begin
   // Desativa o timer
   tTimerC050.Enabled := false;

   // Carga das vendas
   CargaC000050(CargaManualGlobal);

   // Carga dos itens das vendas
   CargaC000051(CargaManualGlobal);

   // Carga das formas de pagamentos
   CargaC000052(CargaManualGlobal);

   // Carga das sangrias
   GravarSangriaSng(CargaManualGlobal);

   // Carga das retiradas
   GravarSangriaRet(CargaManualGlobal);

   // Carga dos suprimentos
   GravarSangriaSup(CargaManualGlobal);

   // Carga dos fechamentos de caixas
   GravarAberFechCax(CargaManualGlobal);

   // Reativa o timer
   tTimerC050.Enabled := true;

   // Aviso ao usuário
   if CargaManualGlobal then
      Application.MessageBox('Carga efetuada com sucesso.','TechCore-PDV',mb_IconInformation or mb_ok);

   // Desativa o tipo de carga
   CargaManualGlobal := false;

   // Ajusta o formulário
   rzTitulo.Caption := 'Progresso:';

   rzProgress.TotalParts    := 0;
   rzProgress.PartsComplete := 0;

   // Minimiza a aplicação
   Application.Minimize;
end;

end.
