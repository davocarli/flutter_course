import 'package:flutter/material.dart';

import './text_control.dart';

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AppState();
  }
}

class _AppState extends State<App> {
  final _textOptions = const [
    'One',
    'Two',
    'Three',
    'Four',
    'Five - This will be the last one!',
  ];

  var _textIndex = 0;

  void changeText() {
    setState(() {
      if (_textIndex == _textOptions.length - 1) {
        _textIndex = 0;
      } else {
        _textIndex++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(_textOptions[_textIndex]),
          TextControl(changeText),
        ],
      ),
    );
  }
}
