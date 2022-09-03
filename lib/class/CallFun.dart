import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CallFun extends StatefulWidget {
  const CallFun({Key? key}) : super(key: key);

  @override
  State<CallFun> createState() => _CallFunState();
}

class _CallFunState extends State<CallFun> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: const [],
          currentIndex: index,
          onTap: updateIndex,
        ),
      ),
    );
  }

  void updateIndex(int newIndex) {
    setState(() => index = newIndex);
  }
}
