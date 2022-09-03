// ignore_for_file: file_names, prefer_const_constructors

import 'package:app_02/class/MultiScreens/MyDrawer.dart';
import 'package:app_02/class/MultiScreens/myHome.dart';
import 'package:flutter/material.dart';

import 'Screen2.dart';

class Screen1pop extends StatelessWidget {
  const Screen1pop({Key? key}) : super(key: key);

  static const routeName = 'my_screen1';

  // void selectScreen(BuildContext ctx, int n) {
  //   Navigator.of(ctx).pushNamed(
  //     n == 2 ? Screen2pop.routeName2 : MyApp.routeNameHome,
  //     // arguments: {
  //     //   'id': 10,
  //     //   'title': "info1",
  //     // },
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    // final routeArgument =
    //     ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    return Scaffold(
        appBar: AppBar(
          title: Text('Screen No1'),
        ),
        /*body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // children: [
            //   Text(
            //       style: TextStyle(
            //           fontSize: 35,
            //           fontWeight: FontWeight.bold,
            //           color: Colors.red),
            //       // '${routeArgument[('id')]}',
            //       "Screen No1"),
            //   Text(
            //     // routeArgument['title'],
            //     "Number 1",
            //     style: TextStyle(
            //         fontSize: 35,
            //         fontWeight: FontWeight.bold,
            //         color: Colors.amber),
            //   ),
            //   InkWell(
            //     // onTap: () => selectScreen(context, 1),
            //     child: Text(
            //       style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            //       'Go to Screen 2',
            //     ),
            //   ),
            // ],
          ),
        ),*/
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.of(context).pop(routeName);
            },
            child: Icon(Icons.delete)),
        drawerScrimColor: Colors.blueAccent.withOpacity(0.4),
        drawer: MyDrawer());
  }
}
