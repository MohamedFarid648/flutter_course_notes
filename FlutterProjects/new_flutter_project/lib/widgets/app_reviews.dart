import 'package:flutter/material.dart';
import 'package:new_flutter_project/widgets/app_box.dart';
import 'package:new_flutter_project/widgets/app_text.dart';

class AppReviews extends StatelessWidget {
  const AppReviews({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBox(
      boxWidget: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween, //vertical alignment
        children: [
          //star icons
          Icon(Icons.star, color: Colors.orange),
          Icon(Icons.star, color: Colors.grey[800]),
          Icon(Icons.star, color: Colors.grey[800]),
          Icon(Icons.star, color: Colors.grey[800]),
          Icon(Icons.star, color: Colors.grey[800]),
          //text
          AppText(data: "120 views"),
        ],
      ),
    );
  }
}
