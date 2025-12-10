import 'package:flutter/cupertino.dart';

class QuizQuestion {
  final List<String> shuffledAnswers;
  final List<String> answers;
  final String text;
  final String correctAnswer;

  const QuizQuestion({
     required this.text,
     required this.answers,
   required this.correctAnswer, required this.shuffledAnswers = List.of(answers)..shuffle(),
  });
}
