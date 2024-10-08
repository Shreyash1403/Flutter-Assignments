import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Hello Core2Web"),
          centerTitle: true,
          backgroundColor: Colors.deepPurple,
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Container(
                width: 150,
                height: 150,
                color: Colors.yellow,
                margin: const EdgeInsets.all(10),
              ),
              Container(
                width: 150,
                height: 150,
                color: Colors.green,
                margin: const EdgeInsets.all(10),
              ),
              Container(
                width: 150,
                height: 150,
                color: Colors.blue,
                margin: const EdgeInsets.all(10),
              ),
              Container(
                width: 150,
                height: 150,
                color: Colors.red,
                margin: const EdgeInsets.all(10),
              ),
              Container(
                width: 150,
                height: 150,
                color: Colors.yellow,
                margin: const EdgeInsets.all(10),
              ),
              Container(
                width: 150,
                height: 150,
                color: Colors.yellow,
                margin: const EdgeInsets.all(10),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
