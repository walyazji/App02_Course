// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:app_02/class/MultiScreens pop/Screen1.dart';
import 'package:app_02/class/MultiScreens pop/myHome.dart';
import 'package:app_02/class/MultiScreens pop/Screen2.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  void selectScreen(BuildContext ctx, int n) {
    if (n == 1) {
      Navigator.of(ctx).pushNamed(Screen1pop.routeName, arguments: {
        'id': 10,
        'title': "Info 1",
      }).then((value) => print(value));
    } else {
      Navigator.of(ctx).pushReplacementNamed(
        n == 2 ? Screen2pop.routeName2 : MyAppPop.routeNameHome,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ListTile(
            onTap: () => selectScreen(context, 0),
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
