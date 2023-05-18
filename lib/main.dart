// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _quesIndex = 0;

  void _answer() {
    setState(() {
      _quesIndex++;
    });
    print(_quesIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "What's your favourite color today?",
      "What's your spirit animal?"
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My Basic App"),
        ),
        body: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Question(questions[_quesIndex]),
            ElevatedButton(
              onPressed: _answer,
              child: Text("Answer 1"),
            ),
            ElevatedButton(
              onPressed: () {
                print('answer 2 !');
              },
              child: Text("Answer 2"),
            ),
            ElevatedButton(
              onPressed: () => print('answer 3!'),
              child: Text("Answer 3"),
            ),
          ],
        ),
      ),
    );
  }
}
