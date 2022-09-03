// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'Screen1.dart';
import 'Screen2.dart';
import 'myHome.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  void selectScreen(BuildContext ctx, int n) {
    Navigator.of(ctx).pushReplacementNamed(
      n == 1
          ? Screen1.routeName
          : (n == 2)
              ? Screen2.routeName2
              : MyApp.routeNameHome,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ListTile(
            onTap: () => selectScreen(context, 4),
            subtitle: Text('Go to Home Screen'),
            title: Text(
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              'Go to Home Screen',
            ),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            onTap: () => selectScreen(context, 1),
            subtitle: Text('Go to Screen 1'),
            title: Text(
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              'Go to Screen 1',
            ),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            onTap: () => selectScreen(context, 2),
            subtitle: Text('Go to Screen 2'),
            title: Text(
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              'Go to Screen 2',
            ),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
        ],
      ),
    );
  }
}
