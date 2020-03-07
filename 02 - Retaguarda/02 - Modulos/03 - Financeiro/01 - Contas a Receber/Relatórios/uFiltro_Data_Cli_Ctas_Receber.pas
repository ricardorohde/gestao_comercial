unit uFiltro_Data_Cli_Ctas_Receber;

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
  TFrFiltro_Data_Cli_Ctas_Receber = class(TForm)
    Panel1: TPanel;
    eCliente: TRzButtonEdit;
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
    tbDadosREC_DIAS_VENCIDOS: TLargeintField;
    tbDadosREC_STATUS_TEXTO: TStringField;
    tbDadosID_C10: TIntegerField;
    tbDadosID_C11: TIntegerField;
    tbDadosID_C000110: TIntegerField;
    tbDadosREC_PARCELA: TIntegerField;
    tbDadosREC_VENCIMENTO: TDateField;
    tbDadosREC_DOCUMENTO: TStringField;
    tbDadosREC_ANOTACOES: TStringField;
    tbDadosREC_STATUS: TIntegerField;
    tbDadosREC_ORIGEM: TIntegerField;
    tbDadosREC_CLIENTE: TStringField;
    tbDadosREC_DATA_REGISTRO: TDateField;
    tbDadosREC_VLR_ATUALIZADO: TSingleField;
    tbDadosREC_VLR_RECEBIDO: TSingleField;
    tbDadosREC_VLR_SALDO: TSingleField;
    tbDadosREC_VALOR: TSingleField;
    procedure eAgrupadoChange(Sender: TObject);
    procedure RzDialogButtons1ClickOk(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure eDataIniExit(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure SelecionarCliente1Click(Sender: TObject);
    procedure tbDadosCRB_STATUS_IIGetText(Sender: TField; var Text: string; DisplayText: Boolean);
  private
    { Private declarations }
    Str_Inicial, Str : String;
    ID_Cliente : Integer;
  public
    { Public declarations }
  end;

var
  FrFiltro_Data_Cli_Ctas_Receber: TFrFiltro_Data_Cli_Ctas_Receber;

implementation

uses
   Classe.Empresa, uRel_Cliente_Ctas_Receber, uRel_Vencto_Ctas_Receber, uListaClientes, uRel_Filtra_Cliente_Ctas_Receber,
  uModuloRet;

{$R *.dfm}

procedure TFrFiltro_Data_Cli_Ctas_Receber.eAgrupadoChange(Sender: TObject);
begin
   eCliente.Enabled := eAgrupado.ItemIndex in [2];
end;

procedure TFrFiltro_Data_Cli_Ctas_Receber.eDataIniExit(Sender: TObject);
begin
   if eDataIni.Date > eDataFim.Date then
   begin
      Application.MessageBox('A data Inicial não pode ser mair que a data Final.','TechCore-RTG',mb_IconStop or mb_Ok);
      eDataini.SetFocus;
   end;
end;

procedure TFrFiltro_Data_Cli_Ctas_Receber.FormCreate(Sender: TObject);
begin
   // Define a data atual
   eDataIni.Date := Date;
   eDataFim.Date := Date;

   // Armazena a string original
   Str_Inicial := tbDados.SQL.Text;
end;

procedure TFrFiltro_Data_Cli_Ctas_Receber.RzDialogButtons1ClickOk(Sender: TObject);
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
      if eCliente.Text = '' then
      begin
         Application.MessageBox('Selecione o Cliente.','TechCore-RTG',mb_IconStop or mb_Ok);
         eCliente.SetFocus;
         Abort;
      end;
   end;

   // Configura a string de pesquisa
   Str := Str_Inicial;

   // Configura em caso de ser agrupado por data de vencimento
   if eAgrupado.ItemIndex = 0 then
      Str := Str_Inicial + ' ORDER BY T1.REC_VENCIMENTO, T1.REC_PARCELA ASC';

   // Configura se agrupado por cliente
   if eAgrupado.ItemIndex = 1 then
      Str := Str_Inicial + ' ORDER BY T2.REC_CLIENTE, T1.REC_VENCIMENTO, T1.REC_PARCELA ASC';

   // Configura se filtrado por cliente
   if eAgrupado.ItemIndex = 2 then
   begin
      Str := Str_Inicial + ' AND ID_CLIENTE = :ID_CLIENTE';
      Str := Str         + ' ORDER BY T2.REC_CLIENTE, T1.REC_VENCIMENTO, T1.REC_PARCELA ASC';
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
      tbDados.ParamByName('ID_CLIENTE').AsInteger := ID_Cliente;

   // Acrrega todos os registro
   tbDados.Open();

   // Checa e retornou algum registro
   if tbDados.IsEmpty then
   begin
      Application.MessageBox('Não foi encontrado nenhum registro dentro dos parâmetros informados','TechCore-RTG',mb_IconStop or mb_Ok);
      tbDados.Close;
      Abort;
   end;

   // Exibe os registros por vencimento
   if eAgrupado.ItemIndex = 0 then
   begin
      try
         FrRel_Vencto_Ctas_Receber := TFrRel_Vencto_Ctas_Receber.Create(Self);
         FrRel_Vencto_Ctas_Receber.vr_DataIni := eDataIni.Date;
         FrRel_Vencto_Ctas_Receber.vr_DataFim := eDataFim.Date;
         FrRel_Vencto_Ctas_Receber.dsDados.DataSet := tbDados;
         FrRel_Vencto_Ctas_Receber.QueryPagtos.Open();

         FrRel_Vencto_Ctas_Receber.Print.Preview();
      finally
         FreeAndNil( FrRel_Vencto_Ctas_Receber );
      end;
   end;

   // Exibe os registro por cliente
   if eAgrupado.ItemIndex = 1 then
   begin
      try
         FrRel_Cliente_Ctas_Receber := TFrRel_Cliente_Ctas_Receber.Create(Self);
         FrRel_Cliente_Ctas_Receber.vr_DataIni := eDataIni.Date;
         FrRel_Cliente_Ctas_Receber.vr_DataFim := eDataFim.Date;
         FrRel_Cliente_Ctas_Receber.dsDados.DataSet := tbDados;
         FrRel_Cliente_Ctas_Receber.QueryPagtos.Open();

         FrRel_Cliente_Ctas_Receber.Print.Preview();
      finally
         FreeAndNil( FrRel_Cliente_Ctas_Receber );
      end;
   end;

   // Exibe os registro filtrados por cliente
   if eAgrupado.ItemIndex = 2 then
   begin
      try
         FrRel_Filtra_Cliente_Ctas_Receber := TFrRel_Filtra_Cliente_Ctas_Receber.Create(Self);
         //FrRel_Filtra_Cliente_Ctas_Receber.ID_Cliente := ID_Cliente;
         FrRel_Filtra_Cliente_Ctas_Receber.dsDados.DataSet := tbDados;
         FrRel_Filtra_Cliente_Ctas_Receber.QueryPagtos.Open();

         FrRel_Filtra_Cliente_Ctas_Receber.Print.Preview();
      finally
         FreeAndNil( FrRel_Filtra_Cliente_Ctas_Receber );
      end;
   end;

end;

procedure TFrFiltro_Data_Cli_Ctas_Receber.Sair1Click(Sender: TObject);
begin
   Self.Close;
end;

procedure TFrFiltro_Data_Cli_Ctas_Receber.SelecionarCliente1Click(Sender: TObject);
begin
   FrListaClientes := TFrListaClientes.Create(Self);
   try
      if FrListaClientes.ShowModal = mrOk then
      begin
         ID_Cliente    := FrListaClientes.QueryID.AsInteger;
         eCliente.Text := FrListaClientes.QueryCLI_RAZAO_SOCIAL.AsString;
      end;
   finally
      FreeAndNil( FrListaClientes );
   end;
end;

procedure TFrFiltro_Data_Cli_Ctas_Receber.tbDadosCRB_STATUS_IIGetText(Sender: TField; var Text: string; DisplayText: Boolean);
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
