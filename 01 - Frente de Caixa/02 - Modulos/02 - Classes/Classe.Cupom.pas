unit Classe.Cupom;

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
   TCupomFiscal = class
  private
    FF_Vlr_Desconto: Real;
    FF_ID_Cliente: Integer;
    FF_ID: Integer;
    FF_Cpf_Numero: String;
    FF_Numero: Integer;
    FF_ID_Vendedor: Integer;
    FF_ID_Caixa: Integer;
    FF_Vlr_Cupom: Real;
    FF_Vlr_Subtotal: Real;
    FF_ID_Operador: Integer;
    FF_ID_Empresa: Integer;
    FF_Data: TDateTime;
    FF_Vlr_Pago: Real;
    FF_Vlr_Troco: Real;
    FF_Recuperado: Boolean;
    FF_Diretiva: Integer;
    FF_VendaCelular: Boolean;
    FF_CodigoVenda: String;

    procedure SetF_Cpf_Numero(const Value: String);
    procedure SetF_Data(const Value: TDateTime);
    procedure SetF_ID(const Value: Integer);
    procedure SetF_ID_Caixa(const Value: Integer);
    procedure SetF_ID_Cliente(const Value: Integer);
    procedure SetF_ID_Empresa(const Value: Integer);
    procedure SetF_ID_Operador(const Value: Integer);
    procedure SetF_ID_Vendedor(const Value: Integer);
    procedure SetF_Numero(const Value: Integer);
    procedure SetF_Vlr_Cupom(const Value: Real);
    procedure SetF_Vlr_Desconto(const Value: Real);
    procedure SetF_Vlr_Subtotal(const Value: Real);
    procedure SetF_Vlr_Pago(const Value: Real);
    procedure SetF_Vlr_Troco(const Value: Real);
    procedure SetF_Recuperado(const Value: Boolean);
    procedure SetF_Diretiva(const Value: Integer);
    procedure SetF_VendaCelular(const Value: Boolean);
    procedure SetF_CodigoVenda(const Value: String);

  published

      property F_ID            : Integer read FF_ID write SetF_ID;
      property F_Numero        : Integer read FF_Numero write SetF_Numero;
      property F_Data          : TDateTime read FF_Data write SetF_Data;
      property F_ID_Empresa    : Integer read FF_ID_Empresa write SetF_ID_Empresa;
      property F_ID_Operador   : Integer read FF_ID_Operador write SetF_ID_Operador;
      property F_ID_Caixa      : Integer read FF_ID_Caixa write SetF_ID_Caixa;
      property F_ID_Vendedor   : Integer read FF_ID_Vendedor write SetF_ID_Vendedor;
      property F_ID_Cliente    : Integer read FF_ID_Cliente write SetF_ID_Cliente;
      property F_Cpf_Numero    : String read FF_Cpf_Numero write SetF_Cpf_Numero;
      property F_Vlr_Desconto  : Real read FF_Vlr_Desconto write SetF_Vlr_Desconto;
      property F_Vlr_Subtotal  : Real read FF_Vlr_Subtotal write SetF_Vlr_Subtotal;
      property F_Vlr_Cupom     : Real read FF_Vlr_Cupom write SetF_Vlr_Cupom;
      property F_Vlr_Pago      : Real read FF_Vlr_Pago write SetF_Vlr_Pago;
      property F_Vlr_Troco     : Real read FF_Vlr_Troco write SetF_Vlr_Troco;
      property F_Recuperado    : Boolean read FF_Recuperado write SetF_Recuperado;
      property F_Diretiva      : Integer read FF_Diretiva write SetF_Diretiva;
      property F_VendaCelular  : Boolean read FF_VendaCelular write SetF_VendaCelular;
      property F_CodigoVenda   : String read FF_CodigoVenda write SetF_CodigoVenda;
   end;

var
   Cupom_Fiscal : TCupomFiscal;

implementation

{ TCupomFiscal }

procedure TCupomFiscal.SetF_CodigoVenda(const Value: String);
begin
  FF_CodigoVenda := Value;
end;

procedure TCupomFiscal.SetF_Cpf_Numero(const Value: String);
begin
  FF_Cpf_Numero := Value;
end;

procedure TCupomFiscal.SetF_Data(const Value: TDateTime);
begin
  FF_Data := Value;
end;

procedure TCupomFiscal.SetF_Diretiva(const Value: Integer);
begin
  FF_Diretiva := Value;
end;

procedure TCupomFiscal.SetF_ID(const Value: Integer);
begin
  FF_ID := Value;
end;

procedure TCupomFiscal.SetF_ID_Caixa(const Value: Integer);
begin
  FF_ID_Caixa := Value;
end;

procedure TCupomFiscal.SetF_ID_Cliente(const Value: Integer);
begin
  FF_ID_Cliente := Value;
end;

procedure TCupomFiscal.SetF_ID_Empresa(const Value: Integer);
begin
  FF_ID_Empresa := Value;
end;

procedure TCupomFiscal.SetF_ID_Operador(const Value: Integer);
begin
  FF_ID_Operador := Value;
end;

procedure TCupomFiscal.SetF_ID_Vendedor(const Value: Integer);
begin
  FF_ID_Vendedor := Value;
end;

procedure TCupomFiscal.SetF_Numero(const Value: Integer);
begin
  FF_Numero := Value;
end;

procedure TCupomFiscal.SetF_Recuperado(const Value: Boolean);
begin
  FF_Recuperado := Value;
end;

procedure TCupomFiscal.SetF_VendaCelular(const Value: Boolean);
begin
  FF_VendaCelular := Value;
end;

procedure TCupomFiscal.SetF_Vlr_Cupom(const Value: Real);
begin
  FF_Vlr_Cupom := Value;
end;

procedure TCupomFiscal.SetF_Vlr_Desconto(const Value: Real);
begin
  FF_Vlr_Desconto := Value;
end;

procedure TCupomFiscal.SetF_Vlr_Pago(const Value: Real);
begin
  FF_Vlr_Pago := Value;
end;

procedure TCupomFiscal.SetF_Vlr_Subtotal(const Value: Real);
begin
  FF_Vlr_Subtotal := Value;
  FF_Vlr_Cupom    := FF_Vlr_Subtotal - FF_Vlr_Desconto;
end;

procedure TCupomFiscal.SetF_Vlr_Troco(const Value: Real);
begin
  FF_Vlr_Troco := Value;
end;

end.
