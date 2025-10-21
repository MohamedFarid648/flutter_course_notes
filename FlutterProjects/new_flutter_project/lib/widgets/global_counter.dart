import 'package:flutter/material.dart';

class GlobalCounter extends StatefulWidget {
  const GlobalCounter({super.key});

  @override
  State<GlobalCounter> createState() => GlobalCounterState();
}

class GlobalCounterState extends State<GlobalCounter> {
  int _counter = 0;

  void incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      "Counter is $_counter",
      style: TextStyle(fontSize: 32, color: Colors.blue),
    );
  }
}
