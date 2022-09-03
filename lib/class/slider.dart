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
              color: Colors.amber,
              height: val,
              width: val,
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
              max: 500,
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
