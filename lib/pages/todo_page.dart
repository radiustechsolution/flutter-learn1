// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  // Get input field
  TextEditingController myController = TextEditingController();

  // Greet message variable
  String greetingMessage = "";

  // Greet user
  void _greetUser() {
    setState(() {
      greetingMessage = "Hello ${myController.text}";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Greeting message
              Text(greetingMessage),

              TextField(
                controller: myController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: "Your name"),
              ),
              ElevatedButton(onPressed: _greetUser, child: Text("Tap"))
            ],
          ),
        ),
      ),
    );
  }
}
