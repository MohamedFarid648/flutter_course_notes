import 'package:flutter/material.dart';

class AppBox extends StatelessWidget {
  final Widget? boxWidget;
  const AppBox({super.key, required this.boxWidget});

  @override
  Widget build(BuildContext context) {
    return Container(
      //to ceate border
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.blueAccent[100],
        border: Border.all(color: Colors.black, width: 2),
      ),
      //margin: EdgeInsets.all(5), //use size box instead of it
      padding:
          //use named constructors
          EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      //EdgeInsets.only(left: 10,bottom: 5,right: 44,top: 55),
      //EdgeInsets.all(20),
      width: double.infinity,

      //color: Colors.blueAccent[100], //can't use it with decoration , so add it to the boxdecoration
      alignment: Alignment.center, //vertical , horizontal
      child: boxWidget,
    );
  }
}
