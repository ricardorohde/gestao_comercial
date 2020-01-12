unit uConfigCaixa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, System.MaskUtils,
  JvExStdCtrls, JvEdit, Vcl.DBCtrls, Vcl.Mask, JvExMask, JvToolEdit, Vcl.printers,
  JvBaseEdits, JvDBControls, RzDlgBtn, RzPanel, JvDBCheckBox, JvSpin,
  JvDBSpinEdit, RzEdit, RzDBEdit, RzDBBnEd, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, Data.DB, JvDataSource, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.ComCtrls, NxDBColumns, NxColumns,
  NxScrollControl, NxCustomGridControl, NxCustomGrid, NxDBGrid,
  System.ImageList, Vcl.ImgList, RzCmboBx, RzDBCmbo, RzButton, RzRadChk,
  RzDBChk, RzDBSpin, JvCombobox, JvDBCombobox, ACBrBase, ACBrPosPrinter,
  Vcl.Imaging.pngimage, JvExExtCtrls, JvImage, JvExControls,
  JvDBLookup;

type
  TFrConfigCaixa = class(TForm)
    RzDialogButtons1: TRzDialogButtons;
    RzPanel1: TRzPanel;
    pgControl: TPageControl;
    tabSat: TTabSheet;
    Label3: TLabel;
    ed_sat_dll: TRzDBButtonEdit;
    Label4: TLabel;
    ed_cnpj_softhouse: TRzDBEdit;
    ed_sat_assinatura: TRzDBMemo;
    Label5: TLabel;
    ed_sat_modelo: TRzDBComboBox;
    Label6: TLabel;
    Label7: TLabel;
    QueryConfig: TFDQuery;
    dsConfig: TDataSource;
    OpenDlg: TOpenDialog;
    ed_codigo_ativacao: TRzDBEdit;
    Label12: TLabel;
    tabDiversos: TTabSheet;
    ed_limite_sangria: TJvDBCalcEdit;
    Label1: TLabel;
    Label2: TLabel;
    ed_limite_retirada: TJvDBCalcEdit;
    chk_cat52: TRzDBCheckBox;
    chk_vendedor: TRzDBCheckBox;
    RzDBComboBox1: TRzDBComboBox;
    Label11: TLabel;
    Panel1: TPanel;
    tabImpressao: TTabSheet;
    ACBrPosPrinter1: TACBrPosPrinter;
    RzGroupBox2: TRzGroupBox;
    JvDBComboBox2: TJvDBComboBox;
    Label18: TLabel;
    Label8: TLabel;
    ed_vias_cupom: TRzDBSpinEdit;
    Label10: TLabel;
    RzGroupBox3: TRzGroupBox;
    Label17: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    JvDBComboBox1: TJvDBComboBox;
    RzDBSpinEdit1: TRzDBSpinEdit;
    ed_porta_serial_b: TDBComboBox;
    ed_porta_serial_a: TDBComboBox;
    RzDBSpinEdit2: TRzDBSpinEdit;
    Label9: TLabel;
    QueryConfigID: TIntegerField;
    QueryConfigF_DESCRICAO: TStringField;
    QueryConfigF_LIMITE_SANGRIA: TFMTBCDField;
    QueryConfigF_LIMITE_RETIRADA: TFMTBCDField;
    QueryConfigF_SOLICITA_VENDEDOR: TIntegerField;
    QueryConfigF_SAT_MODELO: TIntegerField;
    QueryConfigF_SAT_CODIGO_ATIVACAO: TStringField;
    QueryConfigF_SAT_ASSINATURA: TStringField;
    QueryConfigF_SAT_DLL: TStringField;
    QueryConfigF_SAT_AMBIENTE: TIntegerField;
    QueryConfigF_CNPJ_SOFTHOUSE: TStringField;
    QueryConfigF_PRINTER_MODELO_F: TIntegerField;
    QueryConfigF_PRINTER_MODELO_G: TIntegerField;
    QueryConfigF_PRINTER_VIAS_F: TIntegerField;
    QueryConfigF_PRINTER_VIAS_G: TIntegerField;
    QueryConfigF_PRINTER_PORTA_F: TStringField;
    QueryConfigF_PRINTER_PORTA_G: TStringField;
    QueryConfigF_ESPACO_ENTRE_CUPONS: TIntegerField;
    QueryConfigF_ESPACO_ENTRE_LINHAS: TIntegerField;
    QueryConfigF_PRINTER_VIAS_S: TIntegerField;
    Panel3: TPanel;
    JvImage3: TJvImage;
    Label13: TLabel;
    JvImage1: TJvImage;
    Label14: TLabel;
    aQuery: TFDQuery;
    QueryConfigF_SOLICITA_CPF: TIntegerField;
    ed_cnpj_emitente: TRzDBEdit;
    JvDBSpinEdit1: TJvDBSpinEdit;
    Label15: TLabel;
    QueryConfigF_TEMPO_CARGA_AO_SERVIDOR: TIntegerField;
    RzDBCheckBox1: TRzDBCheckBox;
    RzDBCheckBox2: TRzDBCheckBox;
    RzDBSpinEdit3: TRzDBSpinEdit;
    Label16: TLabel;
    QueryConfigF_QRCODE_LATERAL: TIntegerField;
    QueryConfigF_LOGO_LATERAL: TIntegerField;
    QueryConfigF_QRCODE_LARG_MODULO: TIntegerField;
    ed_caixa: TRzDBButtonEdit;
    procedure ed_cnpj_emitenteEnter(Sender: TObject);
    procedure ed_cnpj_emitenteExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RzDialogButtons1ClickOk(Sender: TObject);
    procedure dsConfigStateChange(Sender: TObject);
    procedure ed_sat_dllButtonClick(Sender: TObject);
    procedure JvImage1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ed_caixaButtonClick(Sender: TObject);
    procedure QueryConfigBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrConfigCaixa: TFrConfigCaixa;

implementation

uses
   Classe.Empresa, uModulo, uConfigCaixaListar, uPrincipal;

{$R *.dfm}

procedure TFrConfigCaixa.FormCreate(Sender: TObject);
begin
   // Ajusta o formulário
   pgControl.ActivePage := tabSat;

   ed_porta_serial_a.Items.Clear;
   ACBrPosPrinter1.Device.AcharPortasSeriais( ed_porta_serial_a.Items );
   ed_porta_serial_a.Items.Add('LPT1') ;
   ed_porta_serial_a.Items.Add('LPT2') ;
   ed_porta_serial_a.Items.Add('/dev/ttyS0') ;
   ed_porta_serial_a.Items.Add('/dev/ttyS1') ;
   ed_porta_serial_a.Items.Add('/dev/ttyUSB0') ;
   ed_porta_serial_a.Items.Add('/dev/ttyUSB1') ;
   ed_porta_serial_a.Items.Add('\\localhost\Epson') ;
   ed_porta_serial_a.Items.Add('c:\temp\ecf.txt') ;
   ed_porta_serial_a.Items.Add('/tmp/ecf.txt') ;

   ed_porta_serial_b.Items.Clear;
   ACBrPosPrinter1.Device.AcharPortasSeriais( ed_porta_serial_b.Items );
   ed_porta_serial_b.Items.Add('LPT1') ;
   ed_porta_serial_b.Items.Add('LPT2') ;
   ed_porta_serial_b.Items.Add('/dev/ttyS0') ;
   ed_porta_serial_b.Items.Add('/dev/ttyS1') ;
   ed_porta_serial_b.Items.Add('/dev/ttyUSB0') ;
   ed_porta_serial_b.Items.Add('/dev/ttyUSB1') ;
   ed_porta_serial_b.Items.Add('\\localhost\Epson') ;
   ed_porta_serial_b.Items.Add('c:\temp\ecf.txt') ;
   ed_porta_serial_b.Items.Add('/tmp/ecf.txt');
end;

procedure TFrConfigCaixa.FormShow(Sender: TObject);
begin
   // Exibe o Cnpj do Emitente
   ed_cnpj_emitente.Text := FormatMaskText('!99\.999\.999\/9999\-99;0', FEmpresaClass.CNPJ);

   // Carrega os dados do caixa
   QueryConfig.Open();

   // Se não houve movimento, permite selecionar qual o caixa será utilizado
   ed_caixa.Enabled := not (vr_existem_vendas);

end;

procedure TFrConfigCaixa.JvImage1Click(Sender: TObject);
begin
   Self.Close
end;

procedure TFrConfigCaixa.QueryConfigBeforePost(DataSet: TDataSet);
begin
   if ed_caixa.Text = EmptyStr then
   begin
      Application.MessageBox('Selecione um caixa antes de continuar.','TechCore-RTG',mb_IconStop or mb_ok);
      ed_caixa.SetFocus;
      Abort;
   end;
end;

procedure TFrConfigCaixa.ed_caixaButtonClick(Sender: TObject);
begin

   if QueryConfig.IsEmpty then
      QueryConfig.Insert
   else
      QueryConfig.Edit;

   try
      FrConfigCaixaListar := TFrConfigCaixaListar.Create(self);
      if FrConfigCaixaListar.ShowModal = mrOk then
      begin
         QueryConfig.FieldByName('id').AsInteger         := FrConfigCaixaListar.QueryID.AsInteger;
         QueryConfig.FieldByName('f_descricao').AsString := FrConfigCaixaListar.QueryF_DESCRICAO.AsString;
      end
      else
         QueryConfig.Cancel;

   finally
      FreeAndNil( FrConfigCaixaListar );
   end;
end;

procedure TFrConfigCaixa.RzDialogButtons1ClickOk(Sender: TObject);
begin
   QueryConfig.Post;
end;

procedure TFrConfigCaixa.dsConfigStateChange(Sender: TObject);
begin
   RzDialogButtons1.BtnOK.Enabled := QueryConfig.State in [dsInsert, dsEdit];
end;

procedure TFrConfigCaixa.ed_cnpj_emitenteEnter(Sender: TObject);
begin
   TEdit(Sender).Color := clSilver;
end;

procedure TFrConfigCaixa.ed_cnpj_emitenteExit(Sender: TObject);
begin
   TEdit(Sender).Color := clWhite;
end;

procedure TFrConfigCaixa.ed_sat_dllButtonClick(Sender: TObject);
begin
   if OpenDlg.Execute then
   begin
      if not ( QueryConfig.State = dsEdit) then
         QueryConfig.Edit;
      QueryConfig.FieldByName('f_sat_dll').AsString := OpenDlg.FileName;
   end;
end;

end.
