unit uEmissorNfeCCe;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls,
  RzEdit, RzDBEdit, RzDBSpin, Vcl.Mask, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Buttons, Data.DB, RzSpnEdt;

type
  TFrEmissorNfeCCe = class(TForm)
    GroupBox1: TGroupBox;
    PainelCaracteres: TPanel;
    eTitulo: TPanel;
    lTitulo: TLabel;
    Image1: TImage;
    Image2: TImage;
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    dsDados: TDataSource;
    Label3: TLabel;
    eText: TRzMemo;
    iCont: TRzSpinEdit;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure eTextChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrEmissorNfeCCe: TFrEmissorNfeCCe;

implementation

{$R *.dfm}

procedure TFrEmissorNfeCCe.Button1Click(Sender: TObject);
begin
   if Length(eText.Text) < 16 then
   begin
      Application.MessageBox('Informe no mínimo 16 caracteres para a correção','TechCore-RTG',mb_IconStop or mb_Ok);
      eText.SetFocus;
      Abort;
   end;

   Self.ModalResult := mrOk;
end;

procedure TFrEmissorNfeCCe.Button2Click(Sender: TObject);
begin
   Self.Close;
end;

procedure TFrEmissorNfeCCe.eTextChange(Sender: TObject);
begin
   PainelCaracteres.Caption := Concat(' Total de Caracteres: ', Format('%.4d',[Length(eText.Text)]));
end;

end.
