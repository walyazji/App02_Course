import 'package:flutter/material.dart';

TextStyle style1 = const TextStyle(color: Colors.white, fontSize: 30);
TextStyle style2 = const TextStyle(color: Colors.black, fontSize: 30);

Color b = Colors.black;
Color w = Colors.white;

class MyText extends StatelessWidget {
  final String _text;
  final TextStyle _textStyle;

  const MyText(this._text, this._textStyle, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(_text, style: _textStyle);
  }
}
