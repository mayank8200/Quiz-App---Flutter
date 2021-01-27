import 'package:flutter/material.dart';
import './question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
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

  var _questions = ["What's Your Name", "What's Your fav color","What's your fav game","Who r u"];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: Column(
          children: [
            Question(_questions[_i]),
            RaisedButton(
              child: Text("Button1"),
              onPressed: _clicked,
            ),
            RaisedButton(
              child: Text("Button2"),
              onPressed: _clicked,
            ),
            RaisedButton(
              child: Text("Button3"),
              onPressed: _clicked,
            ),
            RaisedButton(
              child: Text("Button4"),
              onPressed: _clicked,
            )
          ],
        ),
      ),
    );
  }
}
