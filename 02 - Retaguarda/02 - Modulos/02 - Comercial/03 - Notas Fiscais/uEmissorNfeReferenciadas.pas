unit uEmissorNfeReferenciadas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  RzEdit, RzDBEdit, Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid,
  RzDlgBtn, Vcl.Imaging.pngimage, Vcl.ExtCtrls, RzPanel, Vcl.Buttons,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, JvDataSource, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, RzCmboBx, JvExStdCtrls, JvCombobox,
  JvDBSearchComboBox, JvExMask, JvToolEdit, DateUtils, Vcl.Menus, ACBrBase,
  ACBrEnterTab, Vcl.AppEvnts;

type
  TFrEmissorNfeReferenciadas = class(TForm)
    RzPanel2: TRzPanel;
    Label8: TLabel;
    Label9: TLabel;
    Bevel3: TBevel;
    Image2: TImage;
    RzDialogButtons1: TRzDialogButtons;
    JvDBGrid1: TJvDBGrid;
    tbChave: TFDQuery;
    dsChave: TJvDataSource;
    tbChaveID: TIntegerField;
    tbChaveID_NOTA_FISCAL: TIntegerField;
    tbChaveNFE_REF_CHAVE: TStringField;
    Pop01: TPopupMenu;
    ExcluirChave1: TMenuItem;
    N1: TMenuItem;
    Sair1: TMenuItem;
    ACBrEnterTab1: TACBrEnterTab;
    ApplicationEvents1: TApplicationEvents;
    tbChaveNFE_NUMERO: TIntegerField;
    dsDados: TJvDataSource;
    Label1: TLabel;
    Label2: TLabel;
    procedure tbChaveBeforeDelete(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure ExcluirChave1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure tbChaveCalcFields(DataSet: TDataSet);
    procedure JvDBGrid1Enter(Sender: TObject);
    procedure JvDBGrid1Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrEmissorNfeReferenciadas: TFrEmissorNfeReferenciadas;

implementation

uses
   uEmissorNfe, Classe.Empresa, Classe.NFe, uModuloRet;

{$R *.dfm}

procedure TFrEmissorNfeReferenciadas.ExcluirChave1Click(Sender: TObject);
begin
   tbChave.Delete;
end;

procedure TFrEmissorNfeReferenciadas.FormCreate(Sender: TObject);
begin
   // Conecta o cursor das refenciadas
   tbChave.Open();
end;

procedure TFrEmissorNfeReferenciadas.JvDBGrid1Enter(Sender: TObject);
begin
   ACBrEnterTab1.EnterAsTab := false;
end;

procedure TFrEmissorNfeReferenciadas.JvDBGrid1Exit(Sender: TObject);
begin
   ACBrEnterTab1.EnterAsTab := true;
end;

procedure TFrEmissorNfeReferenciadas.Sair1Click(Sender: TObject);
begin
   Self.ModalResult := mrOk;
end;

procedure TFrEmissorNfeReferenciadas.tbChaveBeforeDelete(DataSet: TDataSet);
begin
   if Application.MessageBox('Tem certeza que deseja excluir esta chave?','TechCore-RTG',mb_IconQuestion or mb_YesNo) = mrNo then
      Abort;
end;

procedure TFrEmissorNfeReferenciadas.tbChaveCalcFields(DataSet: TDataSet);
begin
   DataSet.FieldByName('NFE_NUMERO').AsString := Copy(DataSet.FieldByName('nfe_ref_chave').AsString,26,9);
end;

end.
