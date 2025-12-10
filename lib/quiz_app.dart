import 'package:flutter/material.dart';
import 'data/questions.dart';

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  int score = 0;
  int questionIndex = 0;
  get numberofcorrectAnswer {}
  // selectedAnswers is initially filled with empty strings indicating that the question is not yet answered.
  List<String> selectedAnswers = List.filled(questions.length, "");

  void _submit() {
    setState(() {
      if (questionIndex < questions.length - 1) {
        questionIndex++;
        activeScreenName = 'questions-screen';
      }
    });
  }

  String activeScreenName = "questions-screen";

  void selectAnswer(int index, String answer) {
    
  }

  void _restart() {
    setState(() {
      selectedAnswers = List.filled(questions.length, "");
      activeScreenName = 'questions-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget? activeScreen;
    return Scaffold(backgroundColor: Colors.green, body: activeScreen);
  }
}
