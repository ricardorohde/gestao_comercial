unit uPlanoContasNew;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, RzEdit,
  RzDBEdit, JvExStdCtrls, JvCombobox, JvDBCombobox, RLReport, Vcl.ExtCtrls,
  RzPanel, RzDlgBtn, Data.DB;

type
  TFrPlanoContasNew = class(TForm)
    RzDialogButtons1: TRzDialogButtons;
    Label1: TLabel;
    dspConta: TLabel;
    RLDraw1: TRLDraw;
    Label3: TLabel;
    RLDraw2: TRLDraw;
    ed_tipo: TJvDBComboBox;
    Label4: TLabel;
    Label5: TLabel;
    ed_descricao: TRzDBEdit;
    Label6: TLabel;
    ed_codigo: TRzDBEdit;
    dsQuery: TDataSource;
    procedure RzDialogButtons1ClickOk(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrPlanoContasNew: TFrPlanoContasNew;

implementation

{$R *.dfm}

uses uPlanoContas, uModuloRet;

procedure TFrPlanoContasNew.RzDialogButtons1ClickOk(Sender: TObject);
begin
   // Checa o preenchimento dos campos
   if ed_tipo.ItemIndex < 0 then
   begin
      Application.MessageBox('Informe se esta é uma conta Analítica ou Sintética.','TechCore-RTG',MB_ICONERROR or Mb_Ok);
      ed_tipo.SetFocus;
      Abort;
   end;

   if ed_descricao.Text = EmptyStr then
   begin
      Application.MessageBox('Informe a Descrição para a nova conta.','TechCore-RTG',MB_ICONERROR or Mb_Ok);
      ed_descricao.SetFocus;
      Abort;
   end;

   Self.ModalResult := mrOk;

end;

end.
