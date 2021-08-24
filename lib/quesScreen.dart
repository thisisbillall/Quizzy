import "package:flutter/material.dart";
import './Answer.dart';
import './ques.dart';

class quesScreen extends StatelessWidget {
  final Function ansFunc;
  final int quesIndex;
  final List<Map<String, Object>> quest;

  @override
  quesScreen(
    @required this.quest,
    @required this.quesIndex,
    @required this.ansFunc,
  );
  Widget build(BuildContext context) {
    return Column(
      children: [
        Questions(quest[quesIndex]['quesKey'].toString()),
        ...(quest[quesIndex]['ansValues'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
              () => ansFunc(answer['score']), answer['text'] as String);
        }).toList()
      ],
    );
  }
}
