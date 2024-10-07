import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    print("Device width: ${MediaQuery.of(context).size.width}");
    print("Device height: ${MediaQuery.of(context).size.height}");
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "ListView Demo",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: ListView(
          children: [
            Image.network(
              "https://media.gettyimages.com/id/2175611534/photo/kanpur-india-virat-kohli-of-india-plays-a-shot-during-the-second-test-match-between-india-and.jpg?s=612x612&w=0&k=20&c=oOh3GC9-eAJtYbVGgBnwq7ThCGoANd06-fhn7Vh9zkc=",
            ),
            const Icon(
              Icons.favorite,
              color: Colors.red,
            ),
            const Text(
              "Virat",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500,
              ),
            ),
            Image.network(
              "https://media.gettyimages.com/id/2172532125/photo/topshot-indias-virat-kohli-looks-on-during-the-third-day-of-the-first-test-cricket-match.jpg?s=612x612&w=0&k=20&c=BKMIPyFDyj5xfEpFVals0xKimCEDUIVI3MflmmaZ3Oc=",
            ),
            GestureDetector(
              onTap: () {
                print("Button pressed");
              },
              child: Container(
                height: 50,
                color: Colors.blue,
                child: const Text(
                  "Press me",
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
