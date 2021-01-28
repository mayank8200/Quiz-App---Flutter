import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
class Quiz extends StatelessWidget {
  final List<Map<String,Object>> questions;
  final int i;
  final Function clicked;
  Quiz({this.questions,this.i,this.clicked});
  @override
  Widget build(BuildContext context) {
    return Column(
                  children: [
                    Question(questions[i]['questionText']),
                    ...(questions[i]['options'] as List<Map<String,Object>>)
                        .map((option) {
                      return (Answer(() => clicked(option['score']), option['text']));
                    })
                  ]
    );
          
  }
}