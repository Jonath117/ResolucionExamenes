import 'package:flutter/material.dart';

class Usuario {
  final String nombre;
  final int edad;

  Usuario({required this.nombre, required this.edad});
}

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const PantallaInicio(),
        '/perfil': (context) => const PantallaPerfil(),
      },
    );
  }
}

class PantallaInicio extends StatelessWidget {
  const PantallaInicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Inicio')),
      body: Center(
        child: ElevatedButton(
          child: const Text('Ir al Perfil'),
          onPressed: () {
            final usuario = Usuario(nombre: 'Juan Pérez', edad: 25);

            Navigator.pushNamed(context, '/perfil', arguments: usuario);
          },
        ),
      ),
    );
  }
}

class PantallaPerfil extends StatelessWidget {
  const PantallaPerfil({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Usuario;

    return Scaffold(
      appBar: AppBar(title: const Text('Perfil')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Nombre: ${args.nombre}',
              style: const TextStyle(fontSize: 20),
            ),
            Text('Edad: ${args.edad}', style: const TextStyle(fontSize: 20)),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Regresar'),
            ),
          ],
        ),
      ),
    );
  }
}
