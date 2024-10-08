import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_app/controller/quiz_controller.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  @override
  Widget build(BuildContext context) {
    final quizController = Provider.of<QuizController>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Quiz App",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w900,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: quizController.currentQuestionIndex <
              quizController.questionList.length
          ? questionScreen(quizController)
          : resultScreen(quizController),
    );
  }
}

Widget questionScreen(QuizController quizController) {
  return Column(
    children: [],
  );
}

Widget resultScreen(QuizController quizController) {
  return Column();
}
