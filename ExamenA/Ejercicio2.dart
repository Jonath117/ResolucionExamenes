Future<String> pagar(double monto, String moneda) async {
  await Future.delayed(Duration(seconds: 3));

  return "Procesando $monto $moneda";
}

void main() async {
  print("Iniciando transacción...");
  String resultado = await pagar(145.78, "dolares");

  print(resultado);
}
