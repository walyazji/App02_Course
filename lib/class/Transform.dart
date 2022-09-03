import 'package:flutter/material.dart';

class TransformApp extends StatelessWidget {
  const TransformApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Transform Application'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Transform.rotate(
              angle: 90,
              child: Container(
                color: Colors.amber,
                height: 500,
                width: 500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
