unit Classe.PedidoVendas;

interface

type
   TPedidosVendas = class
   private
      FIDTributos     : integer;
      FIDPedido       : integer;
      FIDCliente      : integer;
      FIDTabelaPrecos : integer;
      FPedidoNumero   : integer;
      FSubTotal       : Double;

      procedure SetIDCliente(const Value: integer);
      procedure SetIDPedido(const Value: integer);
      procedure SetIDTabelaPrecos(const Value: integer);
      procedure SetIDTributos(const Value: integer);
      procedure SetPedidoNumero(const Value: integer);
      procedure SetSubTotal(const Value: Double);

   published
      property IDPedido       : integer read FIDPedido       write SetIDPedido;
      property IDCliente      : integer read FIDCliente      write SetIDCliente;
      property IDTributos     : integer read FIDTributos     write SetIDTributos;
      property IDTabelaPrecos : integer read FIDTabelaPrecos write SetIDTabelaPrecos;
      property PedidoNumero   : integer read FPedidoNumero   write SetPedidoNumero;
      property SubTotal       : Double  read FSubTotal       write SetSubTotal;
   end;

var
   ClassPedidoVendas: TPedidosVendas;

implementation

{ TPedidosVendas }

procedure TPedidosVendas.SetIDCliente(const Value: integer);
begin
   FIDCliente := Value;
end;

procedure TPedidosVendas.SetIDPedido(const Value: integer);
begin
   FIDPedido := Value;
end;

procedure TPedidosVendas.SetIDTabelaPrecos(const Value: integer);
begin
   FIDTabelaPrecos := Value;
end;

procedure TPedidosVendas.SetIDTributos(const Value: integer);
begin
   FIDTributos := Value;
end;

procedure TPedidosVendas.SetPedidoNumero(const Value: integer);
begin
   FPedidoNumero := Value;
end;

procedure TPedidosVendas.SetSubTotal(const Value: Double);
begin
   FSubTotal := Value;
end;

end.
