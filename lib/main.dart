// ignore_for_file: prefer_const_constructors, must_be_immutable, unused_field

import 'package:flutter/material.dart';
import 'package:lean1/pages/first_page.dart';
import 'package:lean1/pages/home_page.dart';
import 'package:lean1/pages/profile_page.dart';
import 'package:lean1/pages/settings_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // Names
  final List _pages = [HomePage(), ProfilePage(), SettingsPage()];

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
      routes: {
        '/firstpage': (context) => FirstPage(),
        '/homepage': (context) => HomePage(),
        '/settingspage': (context) => SettingsPage(),
      },
    );
  }
}
