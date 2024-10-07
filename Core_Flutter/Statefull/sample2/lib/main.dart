import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            leading: const Text(
              "Shoes",
              style: TextStyle(color: Colors.blue),
            ),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.shopping_cart_outlined))
            ],
          ),
          body: Column()),
    );
  }
}
