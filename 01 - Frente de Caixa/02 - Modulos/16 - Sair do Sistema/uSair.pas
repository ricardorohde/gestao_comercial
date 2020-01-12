unit uSair;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  PngBitBtn, Vcl.ExtCtrls, JvExExtCtrls, JvImage, RzStatus, RzPanel,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFrSair = class(TForm)
    JvImage1: TJvImage;
    Panel6: TPanel;
    bt_operador: TPngBitBtn;
    PngBitBtn2: TPngBitBtn;
    PngBitBtn3: TPngBitBtn;
    RzStatusBar1: TRzStatusBar;
    RzStatusPane1: TRzStatusPane;
    br_operador: TRzStatusPane;
    aQuery: TFDQuery;
    procedure PngBitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrSair: TFrSair;

implementation

uses
   Classe.Operador;

{$R *.dfm}

procedure TFrSair.PngBitBtn2Click(Sender: TObject);
begin
   Self.ModalResult := mrOk;
end;

end.
