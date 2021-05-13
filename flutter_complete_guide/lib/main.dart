import 'package:flutter/material.dart';

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
  var _questionIndex = 0;
  var _totalScore = 0;
  final _questions = const [
    {
      'questionText': "What's your favorite color?",
      'answers': [
        {
          'text': 'Black',
          'score': 10,
        },
        {
          'text': 'Red',
          'score': 5,
        },
        {
          'text': 'White',
          'score': 3,
        },
        {
          'text': 'Blue',
          'score': 1,
        },
      ],
    },
    {
      'questionText': "What's your favorite animal?",
      'answers': [
        {
          'text': 'Dog',
          'score': 1,
        },
        {
          'text': 'Cat',
          'score': 5,
        },
        {
          'text': 'Turtle',
          'score': 3,
        },
        {
          'text': 'Rabbit',
          'score': 3,
        }
      ],
    },
    {
      'questionText': "Who's your favorite teammate?",
      'answers': [
        {
          'text': 'Kendra',
          'score': 4,
        },
        {
          'text': 'Alysha',
          'score': 7,
        },
        {
          'text': 'Madison',
          'score': 8,
        },
        {
          'text': 'Stephen',
          'score': 6,
        }
      ],
    },
  ];

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
  }

  void _resetQuiz() {
    print('Resetting Quiz');
    setState(() {
      _totalScore = 0;
      _questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questions: _questions,
                questionIndex: _questionIndex,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
