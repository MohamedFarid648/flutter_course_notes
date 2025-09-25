import 'package:flutter/material.dart';
import 'package:new_flutter_project/widgets/app_box.dart';
import 'package:new_flutter_project/widgets/app_feature_column.dart';

class AppFeatures extends StatelessWidget {
  const AppFeatures({super.key});
  @override
  Widget build(BuildContext context) {
    return AppBox(
      boxWidget: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween, //vertical alignment
        children: [
          AppFeatureColumn(
            columnFeatureText: "Book Review",
            columnFeatureTime: "25 mins",
            icon: Icons.book,
          ),

          AppFeatureColumn(
            columnFeatureText: "Clock Review",
            columnFeatureTime: "1 h",
            icon: Icons.watch,
          ),

          AppFeatureColumn(
            columnFeatureText: "Food Review",
            columnFeatureTime: "4-6 mins",
            icon: Icons.food_bank,
          ),
        ],
      ),
    );
  }
}
