import 'package:flutter/material.dart';

import './question.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetQuiz;

  Result(this.resultScore, this.resetQuiz);

  String get resultPhrase {
    var resultText = 'You did it!';
    if (resultScore <= 8) {
      resultText = 'You are awesome!';
    } else if (resultScore <= 16) {
      resultText = 'You are alright.';
    } else if (resultScore <= 24) {
      resultText = 'Eh... Could be better...';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
          FlatButton(
            child: Text('Restart Quiz!'),
            onPressed: resetQuiz,
            textColor: Colors.blue,
          )
        ],
      ),
    );
  }
}
