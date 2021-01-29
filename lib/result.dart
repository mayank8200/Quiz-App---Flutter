import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function resetQuiz;
  Result(this.totalScore,this.resetQuiz);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            "Great!! Your Score is "+totalScore.toString(),
            style: TextStyle(fontSize: 40),
          ),
        ),
        RaisedButton(child: Text("Reset Quiz"),onPressed: resetQuiz),
      ],
    );
  }
}
