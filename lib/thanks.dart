import 'package:flutter/material.dart';

class thanks extends StatelessWidget {
  @override
  final int totScore;
  final int length;

  thanks(this.totScore, this.length);
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Thanks for your response!\n" +
            totScore.toString() +
            "/" +
            length.toString(),
        style: TextStyle(fontSize: 30, color: Colors.blueAccent),
        textAlign: TextAlign.center,
      ),
    );
  }
}
