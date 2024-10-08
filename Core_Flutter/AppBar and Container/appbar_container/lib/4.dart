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
          body: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * .4,
                  height: MediaQuery.of(context).size.height * .3,
                  color: Colors.yellow,
                  margin: const EdgeInsets.all(10),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * .4,
                  height: MediaQuery.of(context).size.height * .3,
                  color: Colors.green,
                  margin: const EdgeInsets.all(10),
                ),
              ],
            ),
          )),
    );
  }
}
