import 'package:flutter/material.dart';
import 'package:new_flutter_project/widgets/app_box.dart';
import 'package:new_flutter_project/widgets/app_text.dart';

class AppDescription extends StatelessWidget {
  const AppDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBox(
      boxWidget: AppText(
        data:
            "data data data data data data data data data data data data data data ",
      ),
    );
  }
}
