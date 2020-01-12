unit uCancelaItem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Mask, RzEdit, RzLabel, Vcl.Buttons, PngSpeedButton, Vcl.Menus,
  Data.DB;

type
  TFrCancelaItem = class(TForm)
    Shape3: TShape;
    lb_cancelar_item: TRzLabel;
    ed_cancelar_item: TRzNumericEdit;
    Image1: TImage;
    Pop00: TPopupMenu;
    C1: TMenuItem;
    C2: TMenuItem;
    N1: TMenuItem;
    dsProdutos: TDataSource;
    procedure C1Click(Sender: TObject);
    procedure C2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    Libera_Cancelar : Boolean;
  public
    { Public declarations }
    PularSenha : Boolean;
  end;

var
  FrCancelaItem: TFrCancelaItem;

implementation

uses
   uVendas, uSenhaOperador, uPrincipal;

{$R *.dfm}

procedure TFrCancelaItem.C1Click(Sender: TObject);
begin
   { -----------------------------------------------------------------------------------
      Autor:      Winston Moreira
      Dat:        20/02/2019
      Descrição:  Confirma se foi digitado o número do produto, se não solicita ao
                  operador que digite.
   ------------------------------------------------------------------------------------- }
   if ed_cancelar_item.IntValue = 0 then
   begin
      Imprime_display('digite o número do item a ser cancelado', clWhite);
      ed_cancelar_item.SelectAll;
      Sleep(1000);
      Imprime_display_anterior;
      Abort;
   end;

   { -----------------------------------------------------------------------------------
      Autor:      Winston Moreira
      Dat:        20/02/2019
      Descrição:  Tenta localizar o item no DataSet de produtos
   ------------------------------------------------------------------------------------- }
   if not dsProdutos.DataSet.Locate('F_ITEM', ed_cancelar_item.Value, []) then
   begin
      Imprime_display('item não localizado no cupom', clYellow);
      ed_cancelar_item.SelectAll;
      Sleep(1000);
      Imprime_display_anterior;
      Abort;
   end;


   { -----------------------------------------------------------------------------------
      Autor:      Winston Moreira
      Dat:        26/02/2019
      Descrição:  Checa se este item já foi cancelado
   ------------------------------------------------------------------------------------- }
   if dsProdutos.DataSet.FieldByName('F_STATUS').AsInteger = 2 then
   begin
      Imprime_display('item já cancelado anteriormente.', clYellow);
      ed_cancelar_item.SelectAll;
      Sleep(1000);
      Imprime_display_anterior;
      Abort;
   end;

   { -----------------------------------------------------------------------------------
      Autor:      Winston Moreira
      Dat:        20/02/2019
      Descrição:  Cancela o item específicado no painel
   ------------------------------------------------------------------------------------- }
   if lb_cancelar_item.Caption = 'CONFIRMA?' then
   begin

      try
         // coloca o cursro no modo de edição e altera o status
         dsProdutos.DataSet.Edit;
         dsProdutos.DataSet.FieldByName('f_status').AsInteger := 2;
         dsProdutos.DataSet.Post;

         Imprime_display('Item cancelado com sucesso', clYellow);
         Sleep(1000);
         Imprime_display_anterior;

         // Fecha o formulário confirmado o cancelamento
         Self.ModalResult := mrOk;

         Exit;

      except
         Imprime_display('Erro ao cancelar o item', clRed);
         ed_cancelar_item.SelectAll;
         Sleep(1000);
         Imprime_display_anterior;

         lb_cancelar_item.Caption := 'ITEM N.º:';
      end;

   end;


   { -----------------------------------------------------------------------------------
      Autor:      Winston Moreira
      Dat:        20/02/2019
      Descrição:  Se tudo certo, exibe a confirmação do cancelamento
   ------------------------------------------------------------------------------------- }
   lb_cancelar_item.Caption := 'CONFIRMA?';
end;

procedure TFrCancelaItem.C2Click(Sender: TObject);
begin
   Self.Close;
end;

procedure TFrCancelaItem.FormShow(Sender: TObject);
begin
   // Posiciona a tela de item no formulário
   Self.top  := FrVendas.pn_Principal.Top + 400;
   Self.Left := FrVendas.pn_Principal.Left + 46;
end;

end.
