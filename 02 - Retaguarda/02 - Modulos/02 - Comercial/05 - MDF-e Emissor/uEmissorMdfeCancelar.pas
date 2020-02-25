unit uEmissorMdfeCancelar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, JvExStdCtrls, JvMemo,
  RzDlgBtn, Vcl.ExtCtrls, Vcl.Imaging.pngimage, RzPanel;

type
  TFrEmissorMdfeCancelar = class(TForm)
    RzPanel2: TRzPanel;
    Panel6: TPanel;
    lbTitulo: TLabel;
    Image2: TImage;
    Panel7: TPanel;
    Label9: TLabel;
    Bevel3: TBevel;
    RzDialogButtons1: TRzDialogButtons;
    Label1: TLabel;
    eJustificativa: TJvMemo;
    lbCaracteres: TLabel;
    procedure eJustificativaChange(Sender: TObject);
    procedure RzDialogButtons1ClickOk(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrEmissorMdfeCancelar: TFrEmissorMdfeCancelar;

implementation

{$R *.dfm}

procedure TFrEmissorMdfeCancelar.eJustificativaChange(Sender: TObject);
begin
   lbCaracteres.Caption := Concat(' Total de Caracteres: ', Format('%.4d',[Length(eJustificativa.Text)]));
end;

procedure TFrEmissorMdfeCancelar.RzDialogButtons1ClickOk(Sender: TObject);
begin
   if Length(eJustificativa.Text) < 16 then
   begin
      Application.MessageBox('Informe no mínimo 15 caracteres para a Justificativa de Cancelamento','TechCore-RTG',mb_IconStop or mb_Ok);
      eJustificativa.SetFocus;
      Abort;
   end;

   Self.ModalResult := mrOk;
end;

end.
