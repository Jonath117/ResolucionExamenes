enum EstadoPedido {
  pendiente,
  enviado,
  entregado;

  String descripcion() {
    switch (this) {
      case EstadoPedido.pendiente:
        return "El pedido esta siendo procesado";
      case EstadoPedido.enviado:
        return "El pedido esta en camino";
      case EstadoPedido.entregado:
        return "El pedido ha sido entregado";
    }
  }
}

void main() {
  var miPedido = EstadoPedido.enviado;
  print(miPedido.descripcion());

  miPedido = EstadoPedido.entregado;
  print(miPedido.descripcion());
}
