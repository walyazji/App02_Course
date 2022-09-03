// ignore_for_file: prefer_const_constructors

import 'package:app_02/class/MultiScreens/MyDrawer.dart';
import 'package:app_02/class/MultiScreens/Screen1.dart';
import 'package:app_02/class/MultiScreens/Screen2.dart';
import 'package:flutter/material.dart';

class MyAppPop extends StatelessWidget {
  const MyAppPop({Key? key}) : super(key: key);

  static const routeNameHome = 'my_home';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.pink),
      debugShowCheckedModeBanner: false,
      // home: MyHomePage(),
      initialRoute: MyAppPop.routeNameHome,
      routes: {
        MyAppPop.routeNameHome: (context) => MyHomePage(),
        Screen1.routeName: (context) => Screen1(),
        Screen2.routeName2: (context) => Screen2(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePage();
}

class _MyHomePage extends State<MyHomePage> {
  void selectScreen(BuildContext ctx, int n) {
    Navigator.of(ctx).pushNamed(
      n == 1 ? Screen1.routeName : Screen2.routeName2,
      // arguments: {
      //   'id': 10,
      //   'title': "info1",
      // },
    );
  }

  List<Map<String, Object>> pages = [
    {
      'Page': Scaffold(
        body: Center(
          child: const Text(
            'This Is Body 1',
            style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      'title': "Part 1"
    },
    {
      'Page': Scaffold(
        body: Center(
          child: const Text(
            'This Is Body 2',
            style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      'title': "Part2"
    },
    // appBar: AppBar(
    //   title: const Text('AppBar 1 Title'),
    // ),
  ];
  // @override
  // void initState() {
  //   super.initState();
  // }

  int _selectPageIndex = 0;

  void _x1(int index) {
    setState(() {
      _selectPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(pages[_selectPageIndex]['title'] as String),
        ),
        body: pages[_selectPageIndex]['Page'] as Widget,
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.pink,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white,
          currentIndex: _selectPageIndex,
          selectedFontSize: 17,
          unselectedFontSize: 12,
          // type: BottomNavigationBarType.shifting,
          onTap: _x1,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              // backgroundColor: Colors.pink,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: 'Notifications',
              // backgroundColor: Colors.pink,
            ),
            // BottomNavigationBarItem(
            //     icon: Icon(
            //       Icons.favorite,
            //     ),
            //     label: 'Favourites'),
            // BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Menu'),
          ],
        ),
        drawerScrimColor: Colors.blueAccent.withOpacity(0.4),
        drawer: MyDrawer(),
      ),
    );
  }
}
