import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:app_02/class/Tezt/Info.dart';
import 'package:intl/intl.dart';

import 'Tezt/text.dart';

class CardListview extends StatelessWidget {
  CardListview({Key? key}) : super(key: key);

  final List<Info> li = [
    Info(name: 'waseem1', height: 171, date: DateTime.now()),
    Info(name: 'waseem2', height: 172, date: DateTime.now()),
    Info(name: 'waseem3', height: 173, date: DateTime.now()),
    Info(name: 'waseem4', height: 174, date: DateTime.now()),
    Info(name: 'waseem5', height: 175, date: DateTime.now()),
    Info(name: 'waseem6', height: 176, date: DateTime.now()),
    Info(name: 'waseem7', height: 177, date: DateTime.now()),
    Info(name: 'waseem8', height: 178, date: DateTime.now())
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.green)
              .copyWith(secondary: Colors.pinkAccent),
          // fontFamily: 'OpenSans',
          textTheme: ThemeData.light().textTheme.copyWith(
                titleLarge: const TextStyle(
                    fontFamily: 'Quicksand',
                    fontSize: 35,
                    color: Colors.purple),
              ),
          appBarTheme: AppBarTheme(
              toolbarTextStyle: ThemeData.light()
                  .textTheme
                  .copyWith(
                    titleLarge:
                        const TextStyle(fontFamily: 'Quicksand', fontSize: 20),
                  )
                  .bodyText2,
              titleTextStyle: ThemeData.light()
                  .textTheme
                  .copyWith(
                    titleLarge:
                        const TextStyle(fontFamily: 'Quicksand', fontSize: 20),
                  )
                  .headline6)),
      home: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.home),
          title: const Text('My Appplication'),
        ),
        body: Container(
          color: Colors.purple.shade200,
          child: ListView.builder(
            itemCount: li.length,
            itemBuilder: (ctx, index) {
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: Card(
                  margin: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                  color: Colors.deepPurple,
                  shadowColor: Colors.grey.shade900,
                  elevation: 20,
                  // margin: const EdgeInsets.all(10),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Text(
                              'Name : ${li[index].name}',
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                            Text('Height :' '${li[index].height}',
                                style: style1),
                          ],
                        ),
                        Text(
                            'Date : '
                            '${DateFormat().format(li[index].date)}',
                            style: style1),
                      ],
                    ),
                  ),
                ),
                // ),
              );
            },
          ),
        ),
      ),
      // ),
    );
  }
}
