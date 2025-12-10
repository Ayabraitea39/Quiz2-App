import 'package:aya_braitea/data/questions.dart';
import 'package:flutter/material.dart';
import '../models/quiz_question.dart';

class QuestionItem extends StatelessWidget {
  final int questionIndex;
  final QuizQuestion question;  
  final Function(int, String) onSelectAnswer;

  const QuestionItem({
    super.key,
    required this.questionIndex,
    required this.question,	
    required this.onSelectAnswer,
  });

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[questionIndex];
    return Padding(
      padding: const EdgeInsets.only(bottom: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
           currentQuestion.text,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 10),
          ...currentQuestion.answers.map((answer){
            return Container(
              width: 200,
              child: ElevatedButton(onPressed :onSelectAnswer, child:
              Text(answer)),

            );


          }
         
        ],
      ),
    );
  }
}
