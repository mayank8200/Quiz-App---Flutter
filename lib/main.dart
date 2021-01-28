import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

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
  void _clicked() {
    setState(() {
      _i = _i + 1;
    });
    print(_i);
  }

  var _questions = [
    {
      'questionText': "Who is Prime Minister of India",
      'options': [
        "Mukesh Ambani",
        "Narendra Modi",
        "Rahul Gandhi",
        "Arvind Kejriwal"
      ],
    },
    {
      'questionText': "Who is known as the Turbanator",
      'options': [
        "Sachin Tendulkar",
        "Virat Kohli",
        "Harbhajan Singh",
        "M.S. Dhoni"
      ],
    },
    {
      'questionText': "What is Capital of India",
      'options': ['Gujarat', "New Delhi", "Mumbai", "Bihar"],
    }
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: Column(
          children: [
            Question(_questions[_i]['questionText']),
            ...(_questions[_i]['options'] as List<String>).map((option) {
              return (Answer(_clicked, option));
            })
          ],
        ),
      ),
    );
  }
}
