import 'package:flutter/material.dart';
//import './question.dart';
//import './answer.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _i = 0;
  var _total=0;
  void _clicked(int score) {
    _total+=score;
    setState(() {
      _i = _i + 1;
    });
    print(_i);
  }

  var _questions = [
    {
      'questionText': "Who is Prime Minister of India",
      'options': [
        {"text":"Mukesh Ambani","score":0},
        {"text":"Narendra Modi","score":1},
        {"text":"Rahul Gandhi","score":0},
        {"text":"Arvind Kejriwal","score":0},
      ],
    },
    {
      'questionText': "Who is known as the Turbanator",
      'options': [
        {"text":"Sachin Tendulkar","score":0},
        {"text":"Virat Kohli","score":0},
        {"text":"Harbhajan Singh","score":1},
        {"text":"M.S. Dhoni","score":0},
      ],
    },
    {
      'questionText': "What is Capital of India",
      'options': [
        {"text":'Gujarat',"score":0},
        {"text":"New Delhi","score":1},
        {"text":"Mumbai","score":0},
        {"text":"Bihar","score":0},
     ],
    }
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("My First App"),
          ),
          body: _i < _questions.length
              ? Quiz(questions: _questions,clicked: _clicked,i: _i,)
              : Result(_total) 
              ),
    );
  }
}
