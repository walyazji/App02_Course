import 'dart:math';

import 'package:flutter/material.dart';

class TransformApp extends StatefulWidget {
  const TransformApp({Key? key}) : super(key: key);

  @override
  State<TransformApp> createState() => _TransformAppState();
}

class _TransformAppState extends State<TransformApp> {
  double val = 0.0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Slider Application'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Transform.rotate(
            //   angle: val * (pi / 180),
            //   child: Container(
            //     margin: const EdgeInsets.fromLTRB(0, 0, 0, 100),
            //     color: Colors.amber,
            //     height: 200,
            //     width: 200,
            //   ),
            // ),
            Transform(
              transform: Matrix4.skewX(0.5),
              child: Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 100),
                color: Colors.amber,
                height: 200,
                width: 200,
              ),
            ),
            Text(
              'Value = ${(val).round()}',
              style: const TextStyle(
                fontSize: 35,
              ),
            ),
            Slider(
              value: val,
              onChanged: (double value) => setState(() => val = value),
              min: 0,
              max: 360,
              divisions: 20,
              label: 'Value',
              activeColor: Colors.green,
              inactiveColor: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
