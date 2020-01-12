unit uFiltro_Movto_Estoque_For;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzEdit, RzBtnEdt, Vcl.StdCtrls,
  Vcl.Mask, JvExMask, JvToolEdit, Vcl.ExtCtrls, RzPanel, RzDlgBtn, ACBrUtil,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, JvExStdCtrls, JvCombobox;

type
  TFrFiltro_Movto_Estoque_For = class(TForm)
    RzDialogButtons1: TRzDialogButtons;
    eDataIni: TJvDateEdit;
    Label1: TLabel;
    eDatafim: TJvDateEdit;
    Label2: TLabel;
    txtFornecedor: TRzButtonEdit;
    Label3: TLabel;
    txtOrdernar: TJvComboBox;
    txtTipoOrdem: TJvComboBox;
    Label4: TLabel;
    Label5: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure RzDialogButtons1ClickOk(Sender: TObject);
    procedure eDataIniExit(Sender: TObject);
    procedure txtFornecedorButtonClick(Sender: TObject);
    procedure txtFornecedorAltBtnClick(Sender: TObject);
  private
    { Private declarations }
    IDFornecedor : integer;
  public
    { Public declarations }
  end;

var
  FrFiltro_Movto_Estoque_For: TFrFiltro_Movto_Estoque_For;

implementation

{$R *.dfm}

uses uRel_Movto_Estoque_For, uListaFornecedores;

procedure TFrFiltro_Movto_Estoque_For.eDataIniExit(Sender: TObject);
begin
   if eDataIni.Date > eDatafim.Date then
   begin
      Application.MessageBox('A Data inicial não pode ser maior do que a Data final.','TechCore-RTG', mb_IconStop or mb_Ok);
      eDataIni.SetFocus;
   end;
end;

procedure TFrFiltro_Movto_Estoque_For.txtFornecedorAltBtnClick(Sender: TObject);
begin
   IDFornecedor       := 0;
   txtFornecedor.Text := '';   
end;

procedure TFrFiltro_Movto_Estoque_For.txtFornecedorButtonClick(Sender: TObject);
begin
   try
      FrListaFornecedores := TFrListaFornecedores.Create(self);
      if FrListaFornecedores.ShowModal = mrOk then
      begin
         IDFornecedor       := FrListaFornecedores.tbDadosID.AsInteger;      
         txtFornecedor.Text := FrListaFornecedores.tbDadosFOR_RAZAO_SOCIAL.AsString
      end;
   finally
      FreeAndNil(FrListaFornecedores);
   end;
end;

procedure TFrFiltro_Movto_Estoque_For.FormCreate(Sender: TObject);
begin
   IDFornecedor  := 0;
   eDataIni.Date := Date;
   eDatafim.Date := Date;   
end;

procedure TFrFiltro_Movto_Estoque_For.RzDialogButtons1ClickOk(Sender: TObject);
begin
   // Confere o preenchimento das datas
   if (OnlyNumber(eDataIni.Text) = '') or (OnlyNumber(eDatafim.Text) = '') then
   begin
      Application.MessageBox('Informe o período de interesse.', 'TechCore-RTG',mb_IconStop or mb_Ok);
      eDataIni.SetFocus;
      Abort;
   end;

   // Carrega os dados a exibir
   try
      FrRel_Movto_Estoque_For := TFrRel_Movto_Estoque_For.Create(self);  
          
      if FrRel_Movto_Estoque_For.CarregarDados(eDataIni.Date, eDatafim.Date, IDFornecedor, txtOrdernar.ItemIndex, txtTipoOrdem.ItemIndex) then
      begin
         FrRel_Movto_Estoque_For.Print.Prepare;
         FrRel_Movto_Estoque_For.Print.PreviewModal;
      end;
               
   finally
      FreeAndNil(FrRel_Movto_Estoque_For);
   end;
       
end;

end.
