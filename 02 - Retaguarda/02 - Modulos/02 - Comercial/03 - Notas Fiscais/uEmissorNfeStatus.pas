unit uEmissorNfeStatus;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, ExtCtrls;

type
   TFrEmissorNfeStatus = class(TForm)
      Panel1: TPanel;
      lblStatus: TPanel;
    eTitulo: TPanel;
    lTitulo: TLabel;
    Image1: TImage;
    Image2: TImage;

   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrEmissorNfeStatus: TFrEmissorNfeStatus;

implementation

{$R *.dfm}

end.
