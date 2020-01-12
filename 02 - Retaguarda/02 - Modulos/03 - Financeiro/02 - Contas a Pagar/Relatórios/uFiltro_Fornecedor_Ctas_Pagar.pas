unit uFiltro_Fornecedor_Ctas_Pagar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, JvExMask, JvToolEdit, Vcl.StdCtrls,
  JvExStdCtrls, JvCombobox, RzPanel, RzDlgBtn, Vcl.Mask, RzEdit, RzBtnEdt,
  RzLabel, Vcl.Imaging.pngimage, Vcl.ExtCtrls, FireDAC.Stan.Intf, ACBrUtil,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Menus;

type
  TFrFiltro_Fornecedor_Ctas_Pagar = class(TForm)
    Panel1: TPanel;
    eFornecedor: TRzButtonEdit;
    RzDialogButtons1: TRzDialogButtons;
    Label2: TLabel;
    eAgrupado: TJvComboBox;
    Label3: TLabel;
    eDataIni: TJvDateEdit;
    Label1: TLabel;
    Label4: TLabel;
    eDataFim: TJvDateEdit;
    tbDados: TFDQuery;
    Pop00: TPopupMenu;
    SelecionarCliente1: TMenuItem;
    N1: TMenuItem;
    Sair1: TMenuItem;
    RzPanel2: TRzPanel;
    Label9: TLabel;
    Image2: TImage;
    tbDadosPAG_DIAS_VENCIDOS: TLargeintField;
    tbDadosPAG_STATUS_TEXTO: TStringField;
    tbDadosID_C10: TLargeintField;
    tbDadosID_C11: TLargeintField;
    tbDadosID_C000210: TLargeintField;
    tbDadosPAG_PARCELA: TIntegerField;
    tbDadosPAG_VENCIMENTO: TDateField;
    tbDadosPAG_DATA_INCLUSAO: TDateField;
    tbDadosPAG_DOCUMENTO: TStringField;
    tbDadosPAG_ANOTACOES: TStringField;
    tbDadosPAG_STATUS: TIntegerField;
    tbDadosPAG_ORIGEM: TIntegerField;
    tbDadosPAG_FORNECEDOR: TStringField;
    tbDadosID_FORNECEDOR: TIntegerField;
    tbDadosPAG_VALOR: TFMTBCDField;
    tbDadosPAG_VLR_ATUALIZADO: TFMTBCDField;
    tbDadosPAG_VLR_RECEBIDO: TFMTBCDField;
    tbDadosPAG_VLR_SALDO: TFMTBCDField;
    procedure eAgrupadoChange(Sender: TObject);
    procedure RzDialogButtons1ClickOk(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure eDataIniExit(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure SelecionarCliente1Click(Sender: TObject);
    procedure tbDadosPAG_STATUS_IIGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
  private
    { Private declarations }
    Str_Inicial, Str : String;
    ID_Fornecedor : Integer;
  public
    { Public declarations }
  end;

var
  FrFiltro_Fornecedor_Ctas_Pagar: TFrFiltro_Fornecedor_Ctas_Pagar;

implementation

uses
   Classe.Empresa, uListaFornecedores, uModuloRet, uRel_Vencto_Ctas_Pagar,
  uRel_Fornecedor_Ctas_Pagar, uRel_Filtro_For_Ctas_Pagar;

{$R *.dfm}

procedure TFrFiltro_Fornecedor_Ctas_Pagar.eAgrupadoChange(Sender: TObject);
begin
   eFornecedor.Enabled := eAgrupado.ItemIndex in [2];
end;

procedure TFrFiltro_Fornecedor_Ctas_Pagar.eDataIniExit(Sender: TObject);
begin
   if eDataIni.Date > eDataFim.Date then
   begin
      Application.MessageBox('A data Inicial não pode ser mair que a data Final.','TechCore-RTG',mb_IconStop or mb_Ok);
      eDataini.SetFocus;
   end;
end;

procedure TFrFiltro_Fornecedor_Ctas_Pagar.FormCreate(Sender: TObject);
begin
   // Define a data atual
   eDataIni.Date := Date;
   eDataFim.Date := Date;

   // Armazena a string original
   Str_Inicial := tbDados.SQL.Text;
end;

procedure TFrFiltro_Fornecedor_Ctas_Pagar.RzDialogButtons1ClickOk(Sender: TObject);
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
      if eFornecedor.Text = '' then
      begin
         Application.MessageBox('Selecione o Fornecedor.','TechCore-RTG',mb_IconStop or mb_Ok);
         eFornecedor.SetFocus;
         Abort;
      end;
   end;

   // Configura a string de pesquisa
   Str := Str_Inicial;

   // Configura em caso de ser agrupado por data de vencimento
   if eAgrupado.ItemIndex = 0 then
      Str := Str_Inicial + ' ORDER BY T1.PAG_VENCIMENTO, PAG_PARCELA ASC';

   // Configura se agrupado por cliente
   if eAgrupado.ItemIndex = 1 then
      Str := Str_Inicial + ' ORDER BY T2.PAG_FORNECEDOR, T1.PAG_VENCIMENTO, T1.PAG_PARCELA ASC';

   // Configura se filtrado por cliente
   if eAgrupado.ItemIndex = 2 then
   begin
      Str := Str_Inicial + ' AND T2.ID_FORNECEDOR = :ID_FORNECEDOR';
      Str := Str         + ' ORDER BY T2.PAG_FORNECEDOR, T1.PAG_VENCIMENTO, T1.PAG_PARCELA ASC';
   end;

   // Configura o cursor
   tbDados.Close;
   tbDados.SQL.Clear;
   tbDados.SQL.Add(Str);
   tbDados.ParamByName('ID_EMPRESA').AsInteger := FEmpresaClass.ID;
   tbDados.ParamByName('A_DATA').AsDateTime    := eDataIni.Date;
   tbDados.ParamByName('B_DATA').AsDateTime    := eDataFim.Date;

   // Configura se filtrado por cliente
   if eAgrupado.ItemIndex = 2 then
      tbDados.ParamByName('ID_FORNECEDOR').AsInteger := ID_Fornecedor;

   // Acrrega todos os registro
   tbDados.Open();

   // Checa e retornou algum registro
   if tbDados.IsEmpty then
   begin
      Application.MessageBox('Não foi encontrado nenhum registro dentro dos parâmetros informados','TechCore-RTG',mb_IconWarning or mb_Ok);
      tbDados.Close;
      Abort;
   end;

   // Exibe os registros por vencimento
   if eAgrupado.ItemIndex = 0 then
   begin
      FrRel_Vencto_Ctas_Pagar := TFrRel_Vencto_Ctas_Pagar.Create(Self);
      FrRel_Vencto_Ctas_Pagar.vr_DataIni := eDataIni.Date;
      FrRel_Vencto_Ctas_Pagar.vr_DataFim := eDataFim.Date;
      FrRel_Vencto_Ctas_Pagar.dsDados.DataSet := tbDados;
      FrRel_Vencto_Ctas_Pagar.QueryPagtos.Open();

      try
         FrRel_Vencto_Ctas_Pagar.Print.Preview();
      finally
         FreeAndNil( FrRel_Vencto_Ctas_Pagar );
      end;
   end;

   // Exibe os registro por fornecedores
   if eAgrupado.ItemIndex = 1 then
   begin
      FrRel_Fornecedor_Ctas_Pagar := TFrRel_Fornecedor_Ctas_Pagar.Create(Self);
      FrRel_Fornecedor_Ctas_Pagar.vr_DataIni := eDataIni.Date;
      FrRel_Fornecedor_Ctas_Pagar.vr_DataFim := eDataFim.Date;
      FrRel_Fornecedor_Ctas_Pagar.dsDados.DataSet := tbDados;
      FrRel_Fornecedor_Ctas_Pagar.QueryPagtos.Open();

      try
         FrRel_Fornecedor_Ctas_Pagar.Print.Preview();
      finally
         FreeAndNil( FrRel_Fornecedor_Ctas_Pagar );
      end;
   end;

   // Exibe os registro filtrados por cliente
   if eAgrupado.ItemIndex = 2 then
   begin
      FrRel_Filtro_For_Ctas_Pagar                 := TFrRel_Filtro_For_Ctas_Pagar.Create(Self);
      FrRel_Filtro_For_Ctas_Pagar.vr_DataIni      := eDataIni.Date;
      FrRel_Filtro_For_Ctas_Pagar.vr_DataFim      := eDataFim.Date;
      FrRel_Filtro_For_Ctas_Pagar.dsDados.DataSet := tbDados;
      FrRel_Filtro_For_Ctas_Pagar.QueryPagtos.Open();

      try
         FrRel_Filtro_For_Ctas_Pagar.Print.Preview();
      finally
         FreeAndNil( FrRel_Filtro_For_Ctas_Pagar );
      end;
   end;

end;

procedure TFrFiltro_Fornecedor_Ctas_Pagar.Sair1Click(Sender: TObject);
begin
   Self.Close;
end;

procedure TFrFiltro_Fornecedor_Ctas_Pagar.SelecionarCliente1Click(Sender: TObject);
begin
   FrListaFornecedores := TFrListaFornecedores.Create(Self);
   try
      if FrListaFornecedores.ShowModal = mrOk then
      begin
         ID_Fornecedor    := FrListaFornecedores.tbDadosID.AsInteger;
         eFornecedor.Text := FrListaFornecedores.tbDadosFOR_RAZAO_SOCIAL.AsString;
      end;
   finally
      FreeAndNil( FrListaFornecedores );
   end;
end;

procedure TFrFiltro_Fornecedor_Ctas_Pagar.tbDadosPAG_STATUS_IIGetText( Sender: TField; var Text: string; DisplayText: Boolean);
begin
   // Exibe o status atual da parcela
   if DisplayText then
   begin
      case Sender.AsInteger of
         // Sem Pagamento
         900 : Text := 'S/Pagto - A Vencer';
         901 : Text := 'S/Pagto - Vencida';
         902 : Text := 'C/Pagto - A Vencer';
         903 : Text := 'C/Pagto - Vencida';
         904 : Text := 'Quitada';
         905 : Text := 'Quitada com Atraso';
      end;
   end;
end;

end.
