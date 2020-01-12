unit uFiltro_Movto_Estoque;

interface

uses
   Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
   System.Classes, Vcl.Graphics,
   Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, RzEdit,
   ACBrUtil,
   RzBtnEdt, RzButton, RzRadChk, RzPanel, RzRadGrp, RzDlgBtn, RzLabel,
   Vcl.Imaging.pngimage, Vcl.ExtCtrls, RzSpnEdt, FireDAC.Stan.Intf,
   FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
   FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
   FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
   Vcl.Menus, JvExMask, JvToolEdit;

type
   TFrFiltro_Movto_Estoque = class(TForm)
      RzDialogButtons1: TRzDialogButtons;
      Pop00: TPopupMenu;
      Sair1: TMenuItem;
      grp_tipo: TRadioGroup;
      eDataIni: TJvDateEdit;
      eDatafim: TJvDateEdit;
      Label2: TLabel;
      Label1: TLabel;
      RzCheckBox1: TRzCheckBox;
      procedure RzDialogButtons1ClickOk(Sender: TObject);
      procedure Sair1Click(Sender: TObject);
      procedure eGrupoEnter(Sender: TObject);
      procedure eGrupoExit(Sender: TObject);
      procedure FormCreate(Sender: TObject);
      procedure eDatafimExit(Sender: TObject);
   private

   public
      { Public declarations }
   end;

var
   FrFiltro_Movto_Estoque: TFrFiltro_Movto_Estoque;

implementation

uses
   uListaGruposProdutos, Classe.Empresa, uRel_Movto_Estoque,
   uRel_Movto_Estoque_Entrada,
   uModuloRet;

{$R *.dfm}

procedure TFrFiltro_Movto_Estoque.eDatafimExit(Sender: TObject);
begin
   if eDataIni.Date > eDatafim.Date then
   begin
      Application.MessageBox(
         'A Data inicial não pode ser maior do que a Data final.',
         'TechCore-RTG', mb_IconStop or mb_Ok);
      eDataIni.SetFocus;
   end;
end;

procedure TFrFiltro_Movto_Estoque.eGrupoEnter(Sender: TObject);
begin
   TEdit(Sender).Color := clSilver;
end;

procedure TFrFiltro_Movto_Estoque.eGrupoExit(Sender: TObject);
begin
   TEdit(Sender).Color := clWindow;
end;

procedure TFrFiltro_Movto_Estoque.FormCreate(Sender: TObject);
begin
   // Ajusta as datas iniciais
   eDataIni.Date := Date;
   eDatafim.Date := Date;
end;

procedure TFrFiltro_Movto_Estoque.RzDialogButtons1ClickOk(Sender: TObject);
begin
   // Confere o preenchimento das datas
   if (OnlyNumber(eDataIni.Text) = '') or (OnlyNumber(eDatafim.Text) = '') then
   begin
      Application.MessageBox('Informe o período de interesse.', 'TechCore-RTG',
        mb_IconStop or mb_Ok);
      eDataIni.SetFocus;
      Abort;
   end;

   { de acordo o tipo selecionado, carrega o formulário }
   case grp_tipo.ItemIndex of
      0:
         begin
            try
               FrRel_Movto_Estoque_Entrada :=
                 TFrRel_Movto_Estoque_Entrada.Create(self);
               if RzCheckBox1.Checked then
                  FrRel_Movto_Estoque_Entrada.RLGroup1.DataFields := 'PRD_GRUPO'
               else
                  FrRel_Movto_Estoque_Entrada.RLGroup1.DataFields := EmptyStr;

               if FrRel_Movto_Estoque_Entrada.CarregarDados(eDataIni.Date,
                 eDatafim.Date) then
                  FrRel_Movto_Estoque_Entrada.Print.PreviewModal;
            finally
               FreeAndNil(FrRel_Movto_Estoque_Entrada);
            end;
         end;

      1:
         begin
            try
               FrRel_Movto_Estoque := TFrRel_Movto_Estoque.Create(self);
               if RzCheckBox1.Checked then
                  FrRel_Movto_Estoque.RLGroup1.DataFields := 'PRD_GRUPO'
               else
                  FrRel_Movto_Estoque.RLGroup1.DataFields := EmptyStr;

               if FrRel_Movto_Estoque.CarregarDados(eDataIni.Date, eDatafim.Date)
               then
                  FrRel_Movto_Estoque.Print.PreviewModal;
            finally
               FreeAndNil(FrRel_Movto_Estoque);
            end;
         end;
   end;
end;

procedure TFrFiltro_Movto_Estoque.Sair1Click(Sender: TObject);
begin
   self.Close;
end;

end.
