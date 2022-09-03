import 'dart:math';

import 'package:flutter/material.dart';

class SliderApp extends StatefulWidget {
  const SliderApp({Key? key}) : super(key: key);

  @override
  State<SliderApp> createState() => _SliderAppState();
}

class _SliderAppState extends State<SliderApp> {
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
            Container(
              transform: Matrix4.rotationZ(-20 * (pi / 180))
                ..translate(val, val, val),
              width: 300,
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                      blurRadius: 68, color: Colors.blue, offset: Offset(0, 2)),
                ],
                color: Colors.deepOrange,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Text(
                'My Shop',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 50,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Text(
              'Value = ${(val).round()}',
              style: const TextStyle(
                fontSize: 35,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Slider(
              value: val,
              onChanged: (double value) => setState(() => val = value),
              min: 0,
              max: 180,
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
