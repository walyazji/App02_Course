// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'Tezt/text.dart';

class Images extends StatelessWidget {
  const Images({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Image App'),
          leading: const Icon(Icons.image),
        ),
        body: Container(
          color: b,
          height: double.infinity,
          width: double.infinity,
          child: Column(
            children: [
              Image.network(
                "https://static8.depositphotos.com/1000128/1006/i/950/depositphotos_10062530-stock-photo-smartphone-with-cloud-of-application.jpg",
                fit: BoxFit.none,
              ),
              Image.asset(
                "assets/photos/user-icon-vector-people-profile-person-illustration-business-users-group-symbol-male-195160429.jpg",
                fit: BoxFit.fill,
                height: 200,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
