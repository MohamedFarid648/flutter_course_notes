import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:new_flutter_project/config/routes/route_names.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const sizedBox = SizedBox(height: 12);

    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: DefaultTextStyle(
        style: TextStyle(
          fontSize: 30,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ), //For all childern  Text
        child: Center(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min, //== MainAxisAlignment.center
            children: [
              Container(
                color: Colors.white,
                height: 200,
                width: 200,
                child: Image.asset("assets/images/2.jpeg", fit: BoxFit.cover),
              ),
              //,SvgPicture.asset("assets/images/1.svg"),

              //Image.network("")
              Text("</>"), Text("Instant"),

              //If You want to create statement
              // RichText(
              //   text: TextSpan(
              //     style: TextStyle(
              //       fontSize: 30,
              //       color: Colors.white,
              //       fontWeight: FontWeight.bold,
              //     ),
              //     text: "",
              //     children: [
              //       TextSpan(
              //         text: "<",
              //         style: TextStyle(color: Colors.yellow),
              //       ),
              //       TextSpan(text: "/"),
              //       TextSpan(
              //         text: ">",
              //         style: TextStyle(color: Colors.red),
              //       ),
              //     ],
              //   ),
              // ),
              sizedBox,
              MaterialButton(
                onPressed: () => {
                  Navigator.pushNamed(
                    context,
                    RouteNames.homeScreen,
                    arguments: "Mohamed",
                  ),
                },
                color: const Color.fromARGB(255, 243, 33, 33),
                child: Text(
                  "Go To Home",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
      //  Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [Text("Instant")],
      //   ),
      // ),
    );
  }
}
