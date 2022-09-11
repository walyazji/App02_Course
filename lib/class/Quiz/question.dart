// ignore_for_file: prefer_const_constructors_in_immutables, use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  Questions(this.questionText);

  final String? questionText;
  TextStyle s = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10.0),
      child: Text(
        questionText!,
        style: s,
        textAlign: TextAlign.center,
      ),
    );
  }
}
