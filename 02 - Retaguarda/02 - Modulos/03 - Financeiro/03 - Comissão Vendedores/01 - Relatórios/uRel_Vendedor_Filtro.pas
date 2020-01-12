unit uRel_Vendedor_Filtro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, Vcl.Menus, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, RzPanel, RzDlgBtn, JvExMask, JvToolEdit,
  Vcl.StdCtrls, JvExStdCtrls, JvCombobox, Vcl.Mask, RzEdit, RzBtnEdt,
  RzLabel, Vcl.Imaging.pngimage, Vcl.ExtCtrls, JvDBSearchComboBox,
  JvDataSource, ACBrUtil;

type
  TFrRel_Vendedor_Filtro = class(TForm)
    pnTitulo: TPanel;
    Image1: TImage;
    RzLabel1: TRzLabel;
    imgSair: TImage;
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    eAgrupado: TJvComboBox;
    eDataIni: TJvDateEdit;
    eDataFim: TJvDateEdit;
    RzDialogButtons1: TRzDialogButtons;
    Query: TFDQuery;
    Pop00: TPopupMenu;
    SelecionarCliente1: TMenuItem;
    N1: TMenuItem;
    Sair1: TMenuItem;
    ed_vendedor: TJvDBSearchComboBox;
    QueryVendedor: TFDQuery;
    dsQueryVendedor: TJvDataSource;
    QueryFUN_APELIDO: TStringField;
    QueryID: TIntegerField;
    QueryID_EMPRESA: TIntegerField;
    QueryID_ABERTURA: TStringField;
    QueryID_OPERADOR: TIntegerField;
    QueryID_VENDEDOR: TIntegerField;
    QueryID_CLIENTE: TIntegerField;
    QueryF_CUP_NUMERO: TIntegerField;
    QueryF_CUP_STATUS: TIntegerField;
    QueryF_CUP_DIRETIVA: TIntegerField;
    QueryID_CAIXA: TIntegerField;
    QueryF_CUP_CHAVE_XML: TStringField;
    QueryF_CUP_MG_DESCONTO: TBCDField;
    QueryF_CUP_VLR_COMISSAO: TBCDField;
    QueryF_CUP_DATA: TDateField;
    QueryID_50: TIntegerField;
    QueryID_CONTA: TIntegerField;
    QueryID_PLN_PDV: TIntegerField;
    QueryF_CUP_COD_PRE_VENDA: TStringField;
    QueryF_CUP_SUBTOTAL: TFMTBCDField;
    QueryF_CUP_DESCONTO: TFMTBCDField;
    QueryF_CUP_TOTAL: TFMTBCDField;
    QueryF_CUP_PAGO: TFMTBCDField;
    QueryF_CUP_TROCO: TFMTBCDField;
    QueryF_CUP_COMISSAO: TFMTBCDField;
    procedure eAgrupadoChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure eDataIniExit(Sender: TObject);
    procedure RzDialogButtons1ClickOk(Sender: TObject);
    procedure imgSairClick(Sender: TObject);
  private
    Str_Inicial, Str : String;
  public
    { Public declarations }
  end;

var
  FrRel_Vendedor_Filtro: TFrRel_Vendedor_Filtro;

implementation

uses
   Classe.Empresa, uRel_Vendedor_Agrupado, uPrincipal, uModuloRet;

{$R *.dfm}

procedure TFrRel_Vendedor_Filtro.eAgrupadoChange(Sender: TObject);
begin
   if eAgrupado.ItemIndex = 2 then
   begin
      ed_vendedor.DataSource := dsQueryVendedor;
      ed_vendedor.Enabled    := true;
      ed_vendedor.SetFocus
   end
   else
   begin
      ed_vendedor.DataSource := nil;
      ed_vendedor.Enabled    := false;
      eDataIni.SetFocus;
   end;

   if eAgrupado.ItemIndex <> 1 then
   begin
      Application.MessageBox('Em desenvolvimento.','TechCore-RTG',mb_IconStop or mb_Ok);
      eAgrupado.ItemIndex    := 1;
      ed_vendedor.DataSource := nil;
   end;
end;

procedure TFrRel_Vendedor_Filtro.eDataIniExit(Sender: TObject);
begin
   if eDataIni.Date > eDataFim.Date then
   begin
      Application.MessageBox('A data Inicial não pode ser mair que a data Final.','TechCore-RTG',mb_IconStop or mb_Ok);
      eDataini.SetFocus;
   end;
end;

procedure TFrRel_Vendedor_Filtro.FormCreate(Sender: TObject);
begin
   // Define a data atual
   eDataIni.Date := Date;
   eDataFim.Date := Date;

   // Carrega os vendedores
   QueryVendedor.ParamByName('ID_EMPRESA').AsInteger := FEmpresaClass.ID;
   QueryVendedor.Open();

   // Armazena a string original
   Str_Inicial := Query.SQL.Text;
end;

procedure TFrRel_Vendedor_Filtro.imgSairClick(Sender: TObject);
begin
   Self.Close;
end;

procedure TFrRel_Vendedor_Filtro.RzDialogButtons1ClickOk(Sender: TObject);
begin
   // Confere o preenchimento antes de continuar
   if ( OnlyNumber(eDataIni.Text) = '' )  or ( OnlyNumber(eDataFim.Text) = '' ) then
   begin
      Application.MessageBox('Informe as datas para filtrar os registros.','TechCore-RTG',mb_IconStop or mb_Ok);
      eDataIni.SetFocus;
      Abort;
   end;

   if eAgrupado.ItemIndex = 2 then
   begin
      if ed_vendedor.Text = '' then
      begin
         Application.MessageBox('Selecione o Vendedor.','TechCore-RTG',mb_IconStop or mb_Ok);
         ed_vendedor.SetFocus;
         Abort;
      end;
   end;

   // Configura a string de pesquisa
   Str := Str_Inicial;

   // Configura em caso de ser agrupado por data de vencimento
   if eAgrupado.ItemIndex = 0 then
      Str := Str_Inicial + ' ORDER BY CRB_DATA_VENCTO, CRB_PARCELA ASC';

   // Configura se agrupado por vendedor
   if eAgrupado.ItemIndex = 1 then
      Str := Str_Inicial + ' ORDER BY FUN_APELIDO, F_CUP_DATA ASC';

   // Configura se filtrado por cliente
   if eAgrupado.ItemIndex = 2 then
   begin
      Str := Str_Inicial + ' AND ID_CLIENTE = :ID_CLIENTE';
      Str := Str         + ' ORDER BY CLI_RAZAO_SOCIAL, CRB_DATA_VENCTO, CRB_PARCELA ASC';
   end;

   // Configura o cursor
   Query.Close;
   Query.SQL.Clear;
   Query.SQL.Add(Str);
   Query.ParamByName('ID_EMPRESA').AsInteger := FEmpresaClass.ID;
   Query.ParamByName('ADATA').AsDateTime     := eDataIni.Date;
   Query.ParamByName('FDATA').AsDateTime     := eDataFim.Date;

   // Configura se filtrado por vendedor
   if eAgrupado.ItemIndex = 2 then
      Query.ParamByName('ID_VENDEDOR').AsInteger := QueryVendedor.FieldByName('ID').AsInteger;

   // Acrrega todos os registro
   Query.Open();

   // Checa e retornou algum registro
   if Query.IsEmpty then
   begin
      Application.MessageBox('Não foi encontrado nenhum registro dentro dos parâmetros informados','TechCore-RTG',mb_IconStop or mb_Ok);
      Query.Close;
      Abort;
   end;

   // Exibe os registro por cliente
   if eAgrupado.ItemIndex = 1 then
   begin
      try
         FrRel_Vendedor_Agrupado := TFrRel_Vendedor_Agrupado.Create(Self);
         FrRel_Vendedor_Agrupado.vr_DataIni := eDataIni.Date;
         FrRel_Vendedor_Agrupado.vr_DataFim := eDataFim.Date;
         FrRel_Vendedor_Agrupado.Print.PreviewModal;
      finally
         FreeAndNil( FrRel_Vendedor_Agrupado );
      end;
   end;

end;

end.
