import 'package:flutter/material.dart';
import 'package:quiz_app/quiz.dart';
import 'package:quiz_app/result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

bool isSwitched = false;

class _MyAppState extends State<MyApp> {
  int _totalScore = 0;
  int _questionIndex = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex++;
    });
  }

  final List<Map<String, Object>> _question = [
    {
      'questionText': 'What\s Your Favorite Color?',
      'answers': [
        {'text': 'Blue', 'score': 10},
        {'text': 'Green', 'score': 20},
        {'text': 'Yellow', 'score': 30},
        {'text': 'Pink', 'score': 40},
      ],
    },
    {
      'questionText': 'What\s Your Favorite Animal?',
      'answers': [
        {'text': 'Lion', 'score': 10},
        {'text': 'Tiger', 'score': 20},
        {'text': 'Panther', 'score': 30},
        {'text': 'Elephant', 'score': 40}
      ],
    },
    {
      'questionText': 'What\s Your Favorite Pets?',
      'answers': [
        {'text': 'Dog', 'score': 10},
        {'text': 'Cat', 'score': 20},
        {'text': 'Bird', 'score': 30},
        {'text': 'Fish', 'score': 40},
      ],
    },
  ];



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: isSwitched == false ? Colors.white : Colors.black,
        appBar: AppBar(
          title: Text('Quiz App',style: TextStyle(color:isSwitched == false ? Colors.white : Colors.black),),
          actions: [
            Switch(
                value: isSwitched,
              onChanged: (value)
              {
                setState(() {
                  isSwitched = value ;
                  print(isSwitched);

                });
              },
              activeColor: Colors.white,
              inactiveThumbColor: Colors.black,
              inactiveTrackColor: Colors.black,
            ),
          ],
        ),
        body: Container(
          color: isSwitched == false ? Colors.white : Colors.black,
          margin: EdgeInsets.all(10.0),
          child: _questionIndex < _question.length
              ? Quiz(_question, _questionIndex, answerQuestion)
              : Result(_resetQuiz,_totalScore),
        ),
      ),
    );
  }
}
