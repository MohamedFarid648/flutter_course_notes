import 'package:flutter/material.dart';
import 'package:new_flutter_project/config/routes/route_names.dart';

class AppCounter extends StatefulWidget {
  const AppCounter({super.key});

  @override
  State<AppCounter> createState() => _AppCounterState();
}

//private class
class _AppCounterState extends State<AppCounter> {
  int counter = 0;
  SizedBox sizedBox = SizedBox(height: 12);

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(title: Text("Counter Example")),
  //     body: Center(
  //       child: InkWell(
  //         onTap: () {
  //           setState(() {
  //             counter++;
  //           });
  //         },
  //         child: Container(
  //           height: 100,
  //           width: 100,
  //           color: Colors.amber,
  //           alignment: Alignment.center,
  //           child: Text(
  //             "$counter",
  //             style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
  //           ),
  //         ),
  //       ),
  //     ),
  //   );
  // }

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

        //Use container,image,... like button
        // Center(
        //   child:InkWell(
        //   onTap: () {
        //     setState(() {
        //       counter++;
        //     });
        //   },
        //   child: Container(
        //     height: 100,
        //     width: 100,
        //     color: Colors.amber,
        //     alignment: Alignment.center,
        //     child: Text(
        //       "$counter",
        //       style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        //     ),
        //   ),
        // ) ,
        // ),
        sizedBox,
        MaterialButton(
          onPressed: () => {
            //Navigator.canPop(context)
            Navigator.pushNamed(
              context,
              RouteNames.homeScreen,
              arguments: "Mohamed from Counter",
            ),
          },
          color: Colors.blue,
          child: Text("Return To Home", style: TextStyle(color: Colors.white)),
        ),
        sizedBox,
        MaterialButton(
          onPressed: () => {
            //Navigator.canPop(context)
            Navigator.pushNamed(context, RouteNames.productsScreen),
          },
          color: Colors.red,
          child: Text("Go To Products", style: TextStyle(color: Colors.white)),
        ),
        sizedBox,
        MaterialButton(
          onPressed: () => {
            //Navigator.canPop(context)
            Navigator.pushNamed(context, RouteNames.productsGridViewScreen),
          },
          color: Colors.red,
          child: Text(
            "Go To Products GridView",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
