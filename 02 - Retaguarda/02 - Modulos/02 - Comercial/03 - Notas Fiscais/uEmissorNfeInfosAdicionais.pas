unit uEmissorNfeInfosAdicionais;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls, RzPanel, RzDlgBtn, RzEdit, Vcl.DBCtrls, RzDBEdit;

type
  TFrEmissorNfeInfosAdicionais = class(TForm)
    RzPanel2: TRzPanel;
    Label8: TLabel;
    Label9: TLabel;
    Bevel3: TBevel;
    Image2: TImage;
    RzDialogButtons1: TRzDialogButtons;
    eNfeInfoContrib: TRzDBMemo;
    Label1: TLabel;
    eNfeFisco: TRzDBMemo;
    Label2: TLabel;
    procedure RzDialogButtons1ClickOk(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrEmissorNfeInfosAdicionais: TFrEmissorNfeInfosAdicionais;

implementation

{$R *.dfm}

procedure TFrEmissorNfeInfosAdicionais.RzDialogButtons1ClickOk(Sender: TObject);
begin
   if ( Length( eNfeInfoContrib.Text ) < 5 ) and
      ( Length( eNfeInfoContrib.Text ) > 0 )
   then
   begin
      Application.MessageBox('Erro, Informe no mínimo cinco caracteres.','TechCore-RTG',mb_IconStop or mb_Ok);
      eNfeInfoContrib.SetFocus;
      Abort;
   end;

   if ( Length( eNfeFisco.Text ) < 5 ) and
      ( Length( eNfeFisco.Text ) > 0 )
   then
   begin
      Application.MessageBox('Erro, Informe no mínimo cinco caracteres.','TechCore-RTG',mb_IconStop or mb_Ok);
      eNfeFisco.SetFocus;
      Abort;
   end;

   Self.ModalResult := mrOk;
end;

end.
