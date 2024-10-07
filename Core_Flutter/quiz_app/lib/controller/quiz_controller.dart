import 'package:flutter/material.dart';
import 'package:quiz_app/model/quiz_model.dart';

class QuizController with ChangeNotifier {
  int currentQuestionIndex = 0;
  int selectedAnswerIndex = -1;
  int score = 0;

  List<QuestionModel> questionList = [
    QuestionModel(
      question: 'Who is the founder of Google?',
      options: ["Steve Jobs", "Bill Gates", "Larry Page", "Elon Musk"],
      correctAnswer: 1,
    ),
    QuestionModel(
      question: "Who is the founder of Google?",
      options: ["Steve Jobs", "Bill Gates", "Larry Page", "Elon Musk"],
      correctAnswer: 2,
    ),
    QuestionModel(
      question: "Who is the founder of SpaceX?",
      options: ["Steve Jobs", "Bill Gates", "Larry Page", "Elon Musk"],
      correctAnswer: 3,
    ),
    QuestionModel(
      question: "Who is the founder of Apple?",
      options: ["Steve Jobs", "Bill Gates", "Larry Page", "Elon Musk"],
      correctAnswer: 0,
    ),
    QuestionModel(
      question: "Who is the founder of Meta?",
      options: ["Steve Jobs", "Mark Zuckerberg", "Larry Page", "Elon Musk"],
      correctAnswer: 1,
    ),
  ];

  // void selected
}
