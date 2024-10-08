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
            child: Column(
              children: [
                Container(
                  width: 170,
                  height: 150,
                  color: Colors.yellow,
                  margin: const EdgeInsets.all(10),
                  child: Image.network(
                    "https://media.gettyimages.com/id/2175611006/photo/india-v-bangladesh-2nd-test.jpg?s=1024x1024&w=gi&k=20&c=C197QaM32rxtOjrbSYYL2b_v1QGloa7VRJhMAfR-J_c=",
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  width: 170,
                  height: 150,
                  color: Colors.yellow,
                  margin: const EdgeInsets.all(10),
                  child: Image.network(
                    "https://media.gettyimages.com/id/2175611006/photo/india-v-bangladesh-2nd-test.jpg?s=1024x1024&w=gi&k=20&c=C197QaM32rxtOjrbSYYL2b_v1QGloa7VRJhMAfR-J_c=",
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  width: 170,
                  height: 150,
                  color: Colors.yellow,
                  margin: const EdgeInsets.all(10),
                  child: Image.network(
                    "https://media.gettyimages.com/id/2175611006/photo/india-v-bangladesh-2nd-test.jpg?s=1024x1024&w=gi&k=20&c=C197QaM32rxtOjrbSYYL2b_v1QGloa7VRJhMAfR-J_c=",
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
