// ignore_for_file: file_names, unused_import
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';

class DatePicker extends StatefulWidget {
  const DatePicker({Key? key}) : super(key: key);

  @override
  State<DatePicker> createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  DateTime? _selecetedDate;
  void _datePicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2018),
      lastDate: DateTime.now(),
    ).then((value) {
      if (value == null) {
        return;
      }
      setState(() {
        _selecetedDate = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.purple)
            .copyWith(secondary: Colors.purpleAccent),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My Application'),
          leading: const Icon(Icons.home),
        ),
        body: Center(
          // ignore: deprecated_member_use
          child: RaisedButton(
            onPressed: _datePicker,
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
            color: Colors.black,
            child: Text(
              // ignore: unnecessary_string_interpolations
              '${DateFormat.yMMMd().format(_selecetedDate!)}',
              style: const TextStyle(color: Colors.white, fontSize: 30),
            ),
          ),
        ),
      ),
    );
  }
}
