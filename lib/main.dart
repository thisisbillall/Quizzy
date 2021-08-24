import 'package:flutter/material.dart';
import 'package:myapp/Answer.dart';
import 'package:myapp/quesScreen.dart';
import 'package:myapp/thanks.dart';
import './ques.dart';
import './Answer.dart';
import './thanks.dart';

void main() => runApp(myApp());

class myApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _myAppState();
  }
}

class _myAppState extends State<myApp> {
  final quest = const [
    {
      'quesKey': 'What does the “19” in “COVID-19” refer to?',
      'ansValues': [
        {'text': 'There are 19 variants of the Covid.', 'score': 0},
        {'text': 'There are 19 symptoms of Covid.', 'score': 0},
        {'text': 'This is the 19th Covid pandemic.', 'score': 0},
        {'text': 'The Covid was identified in 2019.', 'score': 1}
      ],
    },
    {
      'quesKey': 'True or false: There is more than one coronavirus.',
      'ansValues': [
        {'text': 'True', 'score': 1},
        {'text': 'False', 'score': 0},
      ],
    },
    {
      'quesKey': 'The “corona” in coronavirus means:',
      'ansValues': [
        {'text': 'Sun', 'score': 0},
        {'text': 'Bear', 'score': 0},
        {'text': 'Strong', 'score': 0},
        {'text': 'Crown', 'score': 1}
      ],
    },
    {
      'quesKey': "Which of these is not a common COVID-19 symptom?",
      'ansValues': [
        {'text': 'Blurred Vision', 'score': 1},
        {'text': 'Cough', 'score': 0},
        {'text': 'Unusual Fatigue', 'score': 0},
        {'text': 'Fever', 'score': 0}
      ],
    },
    {
      'quesKey': 'Whats the ideal distance to maintain?',
      'ansValues': [
        {'text': '6 feet', 'score': 1},
        {'text': '2 feet', 'score': 0},
        {'text': '4 feet', 'score': 0},
        {'text': '1 feet', 'score': 0}
      ],
    },
    {
      'quesKey':
          'True or false: Having a food allergy means you should not get a COVID-19 vaccine.',
      'ansValues': [
        {'text': 'True', 'score': 0},
        {'text': 'False', 'score': 1},
      ],
    }
  ];
  var _quesIndex = 0;
  int _totScore = 0;

  void _ansFunc(int score) {
    setState(() {
      _quesIndex++;
      _totScore += score;
    });

    print(_quesIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Quizzy"),
          ),
          body: (_quesIndex < quest.length)
              ? quesScreen(quest, _quesIndex, _ansFunc)
              : thanks(_totScore, quest.length)),
    );
  }
}
