import 'package:flutter/material.dart';

class QuizApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: QuizScreen(),
    );
  }
}

class QuizScreen extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int currentQuestionIndex = 0;
  int score = 0;
  final List<Map<String, Object>> questions = [
    {
      'questionText': 'What is the capital of France?',
      'answers': [
        {'text': 'Berlin', 'score': 0},
        {'text': 'Paris', 'score': 1},
        {'text': 'Madrid', 'score': 0},
        {'text': 'Lisbon', 'score': 0},
      ],
    },
    {
      'questionText': 'What is 2 + 2?',
      'answers': [
        {'text': '3', 'score': 0},
        {'text': '4', 'score': 1},
        {'text': '5', 'score': 0},
        {'text': '6', 'score': 0},
      ],
    },
  ];

  void answerQuestion(int score) {
    setState(() {
      this.score += score;
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Quiz App')),
      body: currentQuestionIndex < questions.length
          ? QuizQuestion(
              question: questions[currentQuestionIndex],
              answerQuestion: answerQuestion,
            )
          : Result(score: score),
    );
  }
}

class QuizQuestion extends StatelessWidget {
  final Map<String, Object> question;
  final Function answerQuestion;

  QuizQuestion({required this.question, required this.answerQuestion});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(question['questionText'] as String,
            style: TextStyle(fontSize: 24)),
        ...(question['answers'] as List<Map<String, Object>>).map((answer) {
          return ElevatedButton(
            onPressed: () => answerQuestion(answer['score']),
            child: Text(answer['text'] as String),
          );
        }).toList(),
      ],
    );
  }
}

class Result extends StatelessWidget {
  final int score;

  Result({required this.score});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Quiz Complete!\nYour score: $score',
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
