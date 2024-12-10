// ignore_for_file: prefer_const_constructors, must_be_immutable, unused_field

import 'package:flutter/material.dart';

import 'pages/counter_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CounterPage(),
    );
  }
}
