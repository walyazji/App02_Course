// ignore_for_file: prefer_const_constructors

import 'package:app_02/class/MultiScreens/MyDrawer.dart';
import 'package:flutter/material.dart';

import 'Screen1.dart';
import 'myHome.dart';

class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);

  static const routeName2 = 'my_screen2';

  void selectScreen(BuildContext ctx, int n) {
    Navigator.of(ctx).pushNamed(
      n == 1 ? Screen1.routeName : MyApp.routeNameHome,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Screen 2'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Text(
              //   style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              //   '',
              // ),
              InkWell(
                onTap: () => selectScreen(context, 1),
                child: Text(
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                  'Go to Screen 1',
                ),
              ),
              InkWell(
                onTap: () => selectScreen(context, 2),
                child: Text(
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                  'Go to Home Screen',
                ),
              ),
            ],
          ),
        ),
        drawerScrimColor: Colors.blueAccent.withOpacity(0.4),
        drawer: MyDrawer());
  }
}
