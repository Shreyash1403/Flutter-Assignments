import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Quiz(),
    );
  }
}

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  int currentQuestionIndex = 0;
  int selectedAnswerIndex = -1;
  bool questionPage = true;
  int score = 0;

  final List<Map> allQuestions = [
    {
      "question": "Who is the founder of Microsoft?",
      "options": ["Steve Jobs", "Bill Gates", "Larry Page", "Elon Musk"],
      "correctAnswer": 1,
    },
    {
      "question": "Who is the founder of Google?",
      "options": ["Steve Jobs", "Bill Gates", "Larry Page", "Elon Musk"],
      "correctAnswer": 2,
    },
    {
      "question": "Who is the founder of SpaceX?",
      "options": ["Steve Jobs", "Bill Gates", "Larry Page", "Elon Musk"],
      "correctAnswer": 3,
    },
    {
      "question": "Who is the founder of Apple?",
      "options": ["Steve Jobs", "Bill Gates", "Larry Page", "Elon Musk"],
      "correctAnswer": 0,
    },
    {
      "question": "Who is the founder of Meta?",
      "options": ["Steve Jobs", "Mark Zuckerberg", "Larry Page", "Elon Musk"],
      "correctAnswer": 1,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return questionPage ? questionScreen() : resultScreen();
  }

  Widget questionScreen() {
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
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Question : ${currentQuestionIndex + 1} / ${allQuestions.length}',
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                allQuestions[currentQuestionIndex]['question'],
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  color: Colors.purple,
                ),
              )
            ],
          ),
          const SizedBox(height: 40),
          Expanded(
            child: ListView.builder(
                itemCount: allQuestions[currentQuestionIndex]['options'].length,
                itemBuilder: (context, index) {
                  return optionButton(index);
                }),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: nextQuestion,
        backgroundColor: Colors.blue,
        child: const Icon(Icons.forward, color: Colors.white),
      ),
    );
  }

  Widget resultScreen() {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Quiz Result",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w900,
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
              "https://t4.ftcdn.net/jpg/05/93/91/27/360_F_593912714_6pEIEP3Y1FQkbwknREYxQzbne5ZN6B1E.jpg",
              height: 300,
            ),
            const SizedBox(height: 30),
            const Text(
              "Congratulations",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w900,
                color: Colors.orange,
              ),
            ),
            const Text(
              "You have successfully completed the quiz",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.deepPurpleAccent,
              ),
            ),
            const SizedBox(height: 10),
            Text("Your Score Is: $score/${allQuestions.length}"),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                currentQuestionIndex = 0;
                questionPage = true;
                score = 0;
                setState(() {});
              },
              child: const Text("Reset"),
            ),
          ],
        ),
      ),
    );
  }

  Widget optionButton(int index) {
    return Column(
      children: [
        SizedBox(
          height: 50,
          width: 350,
          child: ElevatedButton(
            style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(checkAnswer(index))),
            onPressed: () {
              if (selectedAnswerIndex == -1) {
                selectedAnswerIndex = index;
                if (selectedAnswerIndex ==
                    allQuestions[currentQuestionIndex]['correctAnswer']) {
                  score++;
                }
                setState(() {});
              }
            },
            child: Text(
                '${String.fromCharCode(65 + index)}. ${allQuestions[currentQuestionIndex]['options'][index]}'),
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }

  void nextQuestion() {
    if (selectedAnswerIndex != -1) {
      if (currentQuestionIndex < allQuestions.length - 1) {
        currentQuestionIndex++;
      } else {
        questionPage = false;
      }
      selectedAnswerIndex = -1;
      setState(() {});
    }
  }

  Color? checkAnswer(int answerIndex) {
    if (selectedAnswerIndex == -1) {
      return null;
    }
    if (answerIndex == allQuestions[currentQuestionIndex]["correctAnswer"]) {
      return Colors.green;
    } else if (selectedAnswerIndex == answerIndex) {
      return Colors.red;
    }
    return null;
  }
}
