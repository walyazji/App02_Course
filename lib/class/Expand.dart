// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

class Expand extends StatelessWidget {
  const Expand({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Expanded App'),
        ),
        body: Container(
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                flex: 3,
                child: Image.asset('assets/photos/x.jpg'),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  padding: const EdgeInsets.all(30.0),
                  color: Colors.cyan,
                  child: const Text('1'),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  padding: const EdgeInsets.all(30.0),
                  color: Colors.pinkAccent,
                  child: const Text('2'),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  padding: const EdgeInsets.all(30.0),
                  color: Colors.amber,
                  child: const Text('3'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
