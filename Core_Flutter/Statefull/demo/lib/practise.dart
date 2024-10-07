import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('MediaQuery Example')),
        body: ResponsiveWidget(),
      ),
    );
  }
}

class ResponsiveWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Access MediaQuery data
    final mediaQuery = MediaQuery.of(context);
    final screenWidth = mediaQuery.size.width;
    final screenHeight = mediaQuery.size.height;

    return Center(
      child: Container(
        width: screenWidth * 0.8, // 80% of the screen width
        height: screenHeight * 0.5, // 50% of the screen height
        color: Colors.blue,
        child: Center(
          child: Text(
            'Width: ${screenWidth.toStringAsFixed(2)}\nHeight: ${screenHeight.toStringAsFixed(2)}',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
