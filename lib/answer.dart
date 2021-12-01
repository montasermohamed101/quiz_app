import 'package:flutter/material.dart';
import 'package:quiz_app/main.dart';

class Answer extends StatelessWidget {
  final String answerText;
  Function x;

  Answer(this.x, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 0,horizontal: 10),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: x,
        child: Text(
          answerText,
          style: TextStyle(
              fontSize: 25,
              color: isSwitched == false ? Colors.black : Colors.white),
        ),
      ),
    );
  }
}
