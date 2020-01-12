unit uOrdemServicoConfig;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, RzEdit,
  RzDBEdit, RzButton, RzRadChk, RzDBChk, Vcl.ExtCtrls, RzPanel, RzDlgBtn,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFrOrdemServicoConfig = class(TForm)
    Label1: TLabel;
    RzDialogButtons1: TRzDialogButtons;
    chExibeTitulo: TRzDBCheckBox;
    txtLinha1: TRzDBEdit;
    txtLinha2: TRzDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    Query: TFDQuery;
    DataSource1: TDataSource;
    QueryID: TIntegerField;
    QueryID_EMP: TIntegerField;
    QueryStringField70_EXIBE_TITULO: TStringField;
    QueryStringField70_MSG_LINHA1: TStringField;
    QueryStringField70_MSG_LINHA2: TStringField;
    procedure QueryNewRecord(DataSet: TDataSet);
    procedure RzDialogButtons1ClickOk(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrOrdemServicoConfig: TFrOrdemServicoConfig;

implementation

{$R *.dfm}

uses uModuloRet, Classe.Empresa;

procedure TFrOrdemServicoConfig.FormCreate(Sender: TObject);
begin
   // Carrega os dados já informados
   Query.ParamByName('id_emp').AsInteger := FEmpresaClass.ID;
   Query.Open();

   // Checa se insere ou atualiza os dados
   if Query.IsEmpty then
      Query.Insert
   else
      Query.Edit;
end;

procedure TFrOrdemServicoConfig.QueryNewRecord(DataSet: TDataSet);
begin
   // Faz o vinculo do registro com a empresa
   DataSet.FieldByName('id_emp').AsInteger := FEmpresaClass.ID;
end;

procedure TFrOrdemServicoConfig.RzDialogButtons1ClickOk(Sender: TObject);
begin
   if chExibeTitulo.Checked then
   begin

      if txtLinha1.Text = EmptyStr then
      begin
         Application.MessageBox('Informe ao menos o texto da primeira linha.','TechCore-RTG',mb_IconStop or mb_ok);
         txtLinha1.SetFocus;
      end;

   end;

   // Grava os dados informados
   Query.Post;

   Self.Close;
end;

end.
