// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  Answers(this.x, this.answerText, {Key? key}) : super(key: key);
  String answerText;
  Function x;
  TextStyle s = TextStyle(fontSize: 25);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        // style: ButtonStyle(
        //     backgroundColor: MaterialStateProperty.resolveWith<Color>(
        //         (Set<MaterialState> states) => Colors.red)),
        onPressed: x(),
        child: Text(answerText, style: s),
      ),
    );
  }
}
