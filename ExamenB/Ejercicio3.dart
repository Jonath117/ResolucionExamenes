import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ProductCard(productName: "Laptop Gamer", isOnSale: true),
    );
  }
}

class ProductCard extends StatelessWidget {
  final String productName;
  final bool isOnSale;

  const ProductCard({
    super.key,
    required this.productName,
    required this.isOnSale,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Tienda")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              productName,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const SizedBox(height: 10),

            isOnSale
                ? const Icon(Icons.local_offer, color: Colors.red, size: 30)
                : const SizedBox(),
          ],
        ),
      ),
    );
  }
}
