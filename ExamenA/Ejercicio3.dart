import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: EstadoBasico());
  }
}

class EstadoBasico extends StatefulWidget {
  const EstadoBasico({super.key});

  @override
  State<EstadoBasico> createState() => _EstadoBasicoState();
}

class _EstadoBasicoState extends State<EstadoBasico> {
  bool _esActivo = true;

  void _cambiarEstado() {
    setState(() {
      _esActivo = !_esActivo;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('StatefulWidget Básico')),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.star, color: Colors.blue),
                Icon(Icons.favorite, color: Colors.red),
              ],
            ),
          ),

          Expanded(
            child: Center(
              child: Text(
                _esActivo ? "Activo" : "Inactivo",
                style: const TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(bottom: 50.0),
            child: ElevatedButton(
              onPressed: _cambiarEstado,
              child: const Text('Cambiar Estado'),
            ),
          ),
        ],
      ),
    );
  }
}
