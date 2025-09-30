import 'package:flutter/material.dart';

class AppCounter extends StatefulWidget {
  const AppCounter({super.key});

  @override
  State<AppCounter> createState() => _AppCounterState();
}

//private class
class _AppCounterState extends State<AppCounter> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "$counter",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: Colors.blue,
          ),
        ),
        MaterialButton(
          onPressed: () => {
            counter++,

            setState(() {
              //counter++;
            }), //excute function , then rebuild (rerender the ui)
          },
          color: Colors.blue,
          child: Text("Increment", style: TextStyle(color: Colors.white)),
        ),
      ],
    );
  }
}
