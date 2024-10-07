import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Imagechange(),
    );
  }
}

class Imagechange extends StatefulWidget {
  const Imagechange({super.key});
  @override
  State createState() => _Imagechange();
}

class _Imagechange extends State {
  int counter = 0;
  List<String> playerList = [
    "https://media.gettyimages.com/id/1438337861/photo/adelaide-australia-virat-kohli-of-india-during-the-icc-mens-t20-world-cup-match-between-india.jpg?s=612x612&w=0&k=20&c=Rn3_-LntUYorwOytglL43NAsFJL9ODBue3TBpPum9dE=",
    "https://media.gettyimages.com/id/111487207/photo/mumbai-india-indias-cricket-team-captain-mahendra-singh-dhoni-poses-with-the-icc-cricket-world.jpg?s=612x612&w=0&k=20&c=5y5NMrEm0G0XCfeLPsQ-O4BybPDI1fo4-UhGg3pB-IM=",
    "https://i3.wp.com/images.news9live.com/wp-content/uploads/2023/04/Rohit-MI.png?strip=all",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Player App",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              playerList[counter],
              height: 300,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (counter < playerList.length - 1) {
            counter++;
          } else {
            counter = 0;
          }
          setState(() {});
        },
        tooltip: 'Increment',
        child: const Icon(Icons.forward),
      ),
    );
  }
}
