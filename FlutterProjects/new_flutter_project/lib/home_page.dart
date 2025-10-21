import 'package:flutter/material.dart';
import 'package:new_flutter_project/config/routes/route_names.dart';
import 'package:new_flutter_project/widgets/app_counter.dart';
import 'package:new_flutter_project/widgets/app_description.dart';
import 'package:new_flutter_project/widgets/app_features.dart';
import 'package:new_flutter_project/widgets/app_reviews.dart';
import 'package:new_flutter_project/widgets/app_title.dart';

class HomePage extends StatelessWidget {
  final String name;
  const HomePage({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    const sizedBox = SizedBox(height: 12);
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(52),
          width: double.infinity,
          child: Column(
            children: [
              //title
              //AppTitle(),
              //sizedBox,
              //description
              //AppDescription(),
              //sizedBox,
              //Stars
              //AppReviews(),
              //sizedBox,
              //Features
              //AppFeatures(),
              //sizedBox,
              MaterialButton(
                onPressed: () => {
                  Navigator.pushNamed(context, RouteNames.countersScreen),
                },
                color: Colors.blue,
                child: Text(
                  "Counters List View",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              sizedBox,
              MaterialButton(
                onPressed: () => {
                  Navigator.pushNamed(context, RouteNames.basketBallScreen),
                },
                color: Colors.blue,
                child: Text(
                  "BasketBall Result",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              sizedBox,
              MaterialButton(
                onPressed: () => {
                  // Navigator.pushReplacement(
                  //   //pushAndRemoveUntil , push , pushReplacement
                  //   context,
                  //   MaterialPageRoute(builder: (context) => const AppCounter()),
                  // ),
                  Navigator.pushNamed(context, RouteNames.globalCounterScreen),
                },
                color: Colors.blue,
                child: Text(
                  "Go To Global Counter Key",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              sizedBox,
              MaterialButton(
                onPressed: () => {
                  Navigator.pushNamed(context, RouteNames.counterScreen),
                },
                color: Colors.blue,
                child: Text(
                  "Go To Counter - $name",
                  style: TextStyle(color: Colors.white),
                ),
              ),

              sizedBox,
              MaterialButton(
                onPressed: () => {
                  Navigator.pushNamed(context, RouteNames.animationScreen),
                },
                color: Colors.blue,
                child: Text(
                  "Go To Animation",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
