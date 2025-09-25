import 'package:flutter/material.dart';
import 'package:new_flutter_project/widgets/app_box.dart';
import 'package:new_flutter_project/widgets/app_text.dart';

class AppTitle extends StatelessWidget {
  const AppTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBox(
      boxWidget: AppText(
        data: "My Title",
        fontWeight: FontWeight.bold,
        size: 26,
      ),
    );
  }
}
