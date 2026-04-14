abstract class Autenticador {
  void login(String user, String pass);
}

class GoogleAuth extends Autenticador {
  @override
  void login(String user, String pass) {
    if (user == "Jonathan" && pass == "HalaMadrid2024") {
      print("Conectando con Google...");
    } else {
      print("Login incorrecto");
    }
  }
}

void main() {
  var g1 = GoogleAuth();
  g1.login("Enzo", "adhnkaf");
  print("\n");
  g1.login("Jonathan", "HalaMadrid2024");
}
