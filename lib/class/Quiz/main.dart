// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:app_02/class/Quiz/answer.dart';
import 'package:flutter/material.dart';

import 'question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  // const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;

  void answerQuestion() {
    if (_questionIndex == 1) {
      _questionIndex = -1;
    }
    setState(() {
      _questionIndex += 1;
    });
    print('Answer Choosen !');
    print(_questionIndex);
  }

  final List<Map<String, Object>> questions = [
    {
      'questionText': 'What\'s Your Favorite Color ?',
      'answers': ['Red', 'Green', 'Purple']
    },
    {
      'questionText': 'What\'s Your Favorite Animal ?',
      'answers': ['Cat', 'Tiger', 'Dog']
    },
    {
      'questionText': 'What\'s Your Favorite Food ?',
      'answers': ['Pizza', 'Brost', 'Shawarma']
    },
  ];
  // final answers = [
  //   'Red',
  //   'Blue',
  //   'Purple',
  //   'Black',
  // ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: Container(
          width: double.infinity,
          child: _questionIndex < questions.length
              ? Column(
                  children: [
                    Questions(
                        questions[_questionIndex]['questionText'].toString()),
                    ...(questions[_questionIndex]['answers'] as List<String>)
                        .map((answer) {
                      return Answers(answerQuestion, answer);
                    }).toList(),
                    // Answers(answerQuestion, "Answer 1"),
                    // Answers(answerQuestion, "Answer 2"),
                    // Answers(answerQuestion, "Answer 3"),
                  ],
                )
              : Center(
                  child: Text(
                    'Questions Index least than Questions Length',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
                  ),
                ),
        ),
      ),
    );
  }
}
