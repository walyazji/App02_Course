import 'Tezt/text.dart';
import 'package:intl/intl.dart';
import 'Tezt/Info.dart';
import 'package:flutter/material.dart';

class BottomSheetEx extends StatelessWidget {
  BottomSheetEx({Key? key}) : super(key: key);

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

  void x(BuildContext c) {
    showModalBottomSheet(
        context: c,
        builder: (_) {
          return ListView.builder(
            itemCount: li.length,
            itemBuilder: (_, index) {
              return Container(
                color: Theme.of(c).primaryColor,
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
                            Text('Name : ${li[index].name}', style: style1),
                            Text('Height :' '${li[index].height}',
                                style: style1),
                          ],
                        ),
                        Text('Date : ' '${DateFormat().format(li[index].date)}',
                            style: style1),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.green)
            .copyWith(secondary: Colors.pinkAccent),
        fontFamily: 'QuickSans',
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'My App',
            style: TextStyle(fontSize: 25, color: Colors.white),
          ),
          leading: const Icon(Icons.home_filled),
        ),
        body: Container(
          color: Colors.deepPurple,
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () => x(context),
        ),
      ),
    );
  }
}
