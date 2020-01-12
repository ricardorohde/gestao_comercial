unit Classe.ProdutosCupom;

interface

Uses
   Winapi.Windows, Winapi.Messages,  System.SysUtils, System.Variants, System.Classes,
   Vcl.Graphics,   Vcl.Controls,     Vcl.Forms,       Vcl.Dialogs,     Vcl.Imaging.pngimage,
   Vcl.ExtCtrls,   JvExExtCtrls,     JvImage,         Vcl.StdCtrls,    Vcl.Buttons,
   PngSpeedButton, Vcl.Imaging.jpeg, Vcl.Menus,       Data.DB,         System.DateUtils,

   FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,   FireDAC.Stan.Error,
   FireDAC.DatS,      FireDAC.Phys.Intf,   FireDAC.DApt.Intf,    FireDAC.Stan.Async,
   FireDAC.DApt,      FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
   TCupom_Produto = class
  private
    FF_Prd_Ncm_Taxa_Nac    : Real;
    FF_Prd_Cfop            : Integer;
    FF_Prd_Ncm             : String;
    FF_Prd_ValorTotal      : Real;
    FF_Prd_Unidade         : String;
    FF_Prd_Quantidade      : Real;
    FF_Prd_Ncm_Taxa_Imp    : Real;
    FF_Prd_Origem          : Integer;
    FF_Prd_Ncm_Taxa_Est    : Real;
    FF_Prd_Codigo_Barras   : String;
    FF_Prd_Descricao       : String;
    FF_Prd_Codigo          : Integer;
    FF_Prd_ValorUnitario   : Real;

    procedure SetF_Prd_Cfop(const Value: Integer);
    procedure SetF_Prd_Codigo(const Value: Integer);
    procedure SetF_Prd_Codigo_Barras(const Value: String);
    procedure SetF_Prd_Descricao(const Value: String);
    procedure SetF_Prd_Ncm(const Value: String);
    procedure SetF_Prd_Ncm_Taxa_Est(const Value: Real);
    procedure SetF_Prd_Ncm_Taxa_Imp(const Value: Real);
    procedure SetF_Prd_Ncm_Taxa_Nac(const Value: Real);
    procedure SetF_Prd_Origem(const Value: Integer);
    procedure SetF_Prd_Quantidade(const Value: Real);
    procedure SetF_Prd_Unidade(const Value: String);
    procedure SetF_Prd_ValorTotal(const Value: Real);
    procedure SetF_Prd_ValorUnitario(const Value: Real);

  published
   Constructor Create;

   property F_Prd_Codigo         : Integer read FF_Prd_Codigo        write SetF_Prd_Codigo;
   property F_Prd_Codigo_Barras  : String  read FF_Prd_Codigo_Barras write SetF_Prd_Codigo_Barras;
   property F_Prd_Descricao      : String  read FF_Prd_Descricao     write SetF_Prd_Descricao;
   property F_Prd_Unidade        : String  read FF_Prd_Unidade       write SetF_Prd_Unidade;
   property F_Prd_Ncm            : String  read FF_Prd_Ncm           write SetF_Prd_Ncm;
   property F_Prd_Cfop           : Integer read FF_Prd_Cfop          write SetF_Prd_Cfop;
   property F_Prd_ValorUnitario  : Real    read FF_Prd_ValorUnitario write SetF_Prd_ValorUnitario;
   property F_Prd_Quantidade     : Real    read FF_Prd_Quantidade    write SetF_Prd_Quantidade;
   property F_Prd_ValorTotal     : Real    read FF_Prd_ValorTotal    write SetF_Prd_ValorTotal;
   property F_Prd_Ncm_Taxa_Imp   : Real    read FF_Prd_Ncm_Taxa_Imp  write SetF_Prd_Ncm_Taxa_Imp;
   property F_Prd_Ncm_Taxa_Nac   : Real    read FF_Prd_Ncm_Taxa_Nac  write SetF_Prd_Ncm_Taxa_Nac;
   property F_Prd_Ncm_Taxa_Est   : Real    read FF_Prd_Ncm_Taxa_Est  write SetF_Prd_Ncm_Taxa_Est;
   property F_Prd_Origem         : Integer read FF_Prd_Origem        write SetF_Prd_Origem;

   end;

var
   Cupom_Produto : TCupom_Produto;

implementation

{ TCupom_Produto }

constructor TCupom_Produto.Create;
begin

end;

procedure TCupom_Produto.SetF_Prd_Cfop(const Value: Integer);
begin
  FF_Prd_Cfop := Value;
end;

procedure TCupom_Produto.SetF_Prd_Codigo(const Value: Integer);
begin
  FF_Prd_Codigo := Value;
end;

procedure TCupom_Produto.SetF_Prd_Codigo_Barras(const Value: String);
begin
  FF_Prd_Codigo_Barras := Value;
end;

procedure TCupom_Produto.SetF_Prd_Descricao(const Value: String);
begin
  FF_Prd_Descricao := Value;
end;

procedure TCupom_Produto.SetF_Prd_Ncm(const Value: String);
begin
  FF_Prd_Ncm := Value;
end;

procedure TCupom_Produto.SetF_Prd_Ncm_Taxa_Est(const Value: Real);
begin
  FF_Prd_Ncm_Taxa_Est := Value;
end;

procedure TCupom_Produto.SetF_Prd_Ncm_Taxa_Imp(const Value: Real);
begin
  FF_Prd_Ncm_Taxa_Imp := Value;
end;

procedure TCupom_Produto.SetF_Prd_Ncm_Taxa_Nac(const Value: Real);
begin
  FF_Prd_Ncm_Taxa_Nac := Value;
end;

procedure TCupom_Produto.SetF_Prd_Origem(const Value: Integer);
begin
  FF_Prd_Origem := Value;
end;

procedure TCupom_Produto.SetF_Prd_Quantidade(const Value: Real);
begin
  FF_Prd_Quantidade := Value;
end;

procedure TCupom_Produto.SetF_Prd_Unidade(const Value: String);
begin
  FF_Prd_Unidade := Value;
end;

procedure TCupom_Produto.SetF_Prd_ValorTotal(const Value: Real);
begin
  FF_Prd_ValorTotal := Value;
end;

procedure TCupom_Produto.SetF_Prd_ValorUnitario(const Value: Real);
begin
  FF_Prd_ValorUnitario := Value;
end;

end.
