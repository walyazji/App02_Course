import 'package:app_02/class/Tezt/text.dart';
import 'package:flutter/material.dart';

class GridVieww extends StatelessWidget {
  const GridVieww({Key? key}) : super(key: key);
  // Widget info(String title, Color color, Color color2) {
  //   return Container(
  //     padding: const EdgeInsets.all(10),
  //     decoration: BoxDecoration(
  //       gradient: LinearGradient(
  //         colors: [
  //           color,
  //           color2,
  //         ],
  //         begin: Alignment.topLeft,
  //         end: Alignment.bottomRight,
  //         // begin: Alignment.bottomLeft,
  //         // end: Alignment.topRight,
  //       ),
  //       borderRadius: BorderRadius.circular(15),
  //     ),
  //     child: Text(
  //       title,
  //       style: const TextStyle(
  //           fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
  //     ),
  //   );
  Widget info(String title, Color color) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            color.withOpacity(0.7),
            color,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          // begin: Alignment.bottomLeft,
          // end: Alignment.topRight,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Text(
        title,
        style: const TextStyle(
            fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Grid View App'),
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
          child: GridView(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 300,
              childAspectRatio: 3 / 2,
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
            ),
            // children: <Widget>[
            //   info('title 1', Colors.amber, Colors.white),
            //   info('title 2', Colors.cyan, Colors.white),
            //   info('title 3', Colors.green, Colors.purple),
            //   info('title 4', Colors.blueGrey, Colors.black),
            //   info('title 5', Colors.red, Colors.deepPurpleAccent),
            //   info('title 6', Colors.black, Colors.white),
            //   // info('title 7', Colors.purple),
            //   // info('title 8', Colors.pinkAccent),
            // ],
            children: <Widget>[
              info('title 1', Colors.amber),
              info('title 2', Colors.cyan),
              info('title 3', Colors.green),
              info('title 4', Colors.blueGrey),
              info('title 5', Colors.red),
              info('title 6', Colors.black),
              // info('title 7', Colors.purple),
              // info('title 8', Colors.pinkAccent),
            ],
          ),
        ),
      ),
    );
  }
}
