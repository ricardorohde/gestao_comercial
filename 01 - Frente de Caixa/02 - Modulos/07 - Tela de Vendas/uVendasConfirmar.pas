unit uVendasConfirmar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, JvExExtCtrls, JvImage, Vcl.Menus, Vcl.Buttons, RzButton;

type
  TFrVendasConfirmar = class(TForm)
    pn_top: TPanel;
    lbTitulo: TLabel;
    JvImage1: TJvImage;
    PopupMenu1: TPopupMenu;
    Sair1: TMenuItem;
    btnNao: TButton;
    Button1: TButton;
    procedure Button1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Button1Click(Sender: TObject);
    procedure btnNaoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrVendasConfirmar: TFrVendasConfirmar;

implementation

{$R *.dfm}

procedure TFrVendasConfirmar.btnNaoClick(Sender: TObject);
begin
   Self.Close;
end;

procedure TFrVendasConfirmar.Button1Click(Sender: TObject);
begin
   Self.ModalResult := mrOk;
end;

procedure TFrVendasConfirmar.Button1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   Abort;
end;

end.
