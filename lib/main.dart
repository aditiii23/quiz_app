import 'package:flutter/material.dart';

//void main() {
//runApp(MyApp());
//}

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s is your favourite color?',
      'answers': ['Black', 'Red', 'Green', 'White'],
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion'],
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': ['A', 'B', 'C', 'D'],
    },
  ];

  int _questionIndex = 0;

  void _answerQuestion() {
    //var aBool = true;
    //aBool = false;

    _questionIndex = _questionIndex + 1;

    setState(() {
      if (_questionIndex < _questions.length) {
        print('We have more questions!');
      } else {
        print("No more questions!");
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    //questions = [];

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My First App'),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions,
                )
              : Result()),
    );
  }
}
