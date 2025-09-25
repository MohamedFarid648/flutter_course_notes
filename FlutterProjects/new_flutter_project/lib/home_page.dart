import 'package:flutter/material.dart';
import 'package:new_flutter_project/widgets/app_description.dart';
import 'package:new_flutter_project/widgets/app_features.dart';
import 'package:new_flutter_project/widgets/app_reviews.dart';
import 'package:new_flutter_project/widgets/app_title.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
              AppTitle(),
              sizedBox,
              //description
              AppDescription(),
              sizedBox,
              //Stars
              AppReviews(),
              sizedBox,
              //Features
              AppFeatures(),
            ],
          ),
        ),
      ),
    );
  }
}
