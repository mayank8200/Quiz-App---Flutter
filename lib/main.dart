import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var i = 0;
  void clicked() {
    setState(() {
      i = i + 1;
    });
    print(i);
  }

  var questions = ["What's Your Name", "What's Your fav color","What's your fav game","Who r u"];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: Column(
          children: [
            Text(questions[i]),
            RaisedButton(
              child: Text("Button1"),
              onPressed: clicked,
            ),
            RaisedButton(
              child: Text("Button2"),
              onPressed: () => print("Button 2 Pressed"),
            ),
            RaisedButton(
              child: Text("Button3"),
              onPressed: () => print("Button 3 Pressed"),
            ),
            RaisedButton(
              child: Text("Button4"),
              onPressed: () => print("Button 4 Pressed"),
            )
          ],
        ),
      ),
    );
  }
}
