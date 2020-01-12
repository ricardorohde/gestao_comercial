unit uEmissorNfeStatusSefaz;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Buttons, ExtCtrls;

type
   TFrEmissorNfeStatusSefaz = class(TForm)
      Panel1: TPanel;
      BitBtn1: TBitBtn;
      MemoDados: TMemo;
    eTitulo: TPanel;
    lTitulo: TLabel;
    Image1: TImage;
    Image2: TImage;
      procedure BitBtn1Click(Sender: TObject);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrEmissorNfeStatusSefaz: TFrEmissorNfeStatusSefaz;

implementation

{$R *.dfm}

procedure TFrEmissorNfeStatusSefaz.BitBtn1Click(Sender: TObject);
begin
   close;
end;

end.
