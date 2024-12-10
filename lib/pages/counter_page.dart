// ignore_for_file: prefer_const_constructors, unused_element, unused_field

import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  // Variable
  int _counter = 0;

  // Method
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Instruction
              Text(
                "You pushed the button this many times.",
                style: TextStyle(fontSize: 18),
              ),

              // Counter
              Text(
                _counter.toString(),
                style: TextStyle(fontSize: 30),
              ),

              // Button
              ElevatedButton(
                  onPressed: _incrementCounter, child: Text("Increment"))
            ],
          ),
        ),
      ),
    );
  }
}
