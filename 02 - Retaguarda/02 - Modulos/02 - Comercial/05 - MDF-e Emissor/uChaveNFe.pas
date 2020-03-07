unit uChaveNFe;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, RzEdit,
  RzDBEdit, RzDBBnEd, Vcl.ExtCtrls, RzPanel, RzDlgBtn, Data.DB;

type
  TFrChaveNFe = class(TForm)
    RzDialogButtons1: TRzDialogButtons;
    Label2: TLabel;
    txtChave: TRzDBButtonEdit;
    dsQuery: TDataSource;
    procedure RzDialogButtons1ClickOk(Sender: TObject);
    procedure txtChaveButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrChaveNFe: TFrChaveNFe;

implementation

{$R *.dfm}

uses uChavesNFe, uListagemNFe, Biblioteca, uEmissorMDFe;

procedure TFrChaveNFe.RzDialogButtons1ClickOk(Sender: TObject);
begin
   if txtChave.Text = EmptyStr then
   begin
      Application.MessageBox('Informe a chave da nota fiscal.','TechCore-RTG', mb_IconWarning or mb_ok);
      txtChave.SetFocus;
      Abort;
   end;

   Self.ModalResult := mrOk;
end;

procedure TFrChaveNFe.txtChaveButtonClick(Sender: TObject);
begin
   FrListagemNFe            := TFrListagemNFe.Create(self);
   FrListagemNFe.IDEmitente := FrEmissorMDFe.QueryEmitente.FieldByName('id').AsInteger;
   try
      if FrListagemNFe.ShowModal = mrOk then
         txtChave.Text := FrListagemNFe.Query.FieldByName('nfe_chave_acesso').AsString;
   finally
      FreeAndNil(FrListagemNFe);
   end;
end;

end.
