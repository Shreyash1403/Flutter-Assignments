import 'package:flutter/material.dart';

void main() {
  runApp(const AppBarColorApp());
}

class AppBarColorApp extends StatefulWidget {
  const AppBarColorApp({super.key});
  @override
  State<AppBarColorApp> createState() => _AppBarColorAppState();
}

class _AppBarColorAppState extends State<AppBarColorApp> {
  bool colorChange = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: (" AppBar Color Change"),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Container Color Change",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: (colorChange) ? Colors.red : Colors.blue,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            if (colorChange) {
              colorChange = false;
            } else {
              colorChange = true;
            }
            setState(() {});
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
