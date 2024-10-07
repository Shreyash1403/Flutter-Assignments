import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_app/controller/quiz_controller.dart';
import 'package:quiz_app/view/quiz_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => QuizController(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: QuizScreen(),
    );
  }
}
