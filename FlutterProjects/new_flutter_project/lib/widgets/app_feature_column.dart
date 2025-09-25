import 'package:flutter/material.dart';
import 'package:new_flutter_project/widgets/app_text.dart';

class AppFeatureColumn extends StatelessWidget {
  final String columnFeatureText;
  final String columnFeatureTime;
  final IconData? icon;
  const AppFeatureColumn({
    super.key,
    required this.columnFeatureText,
    required this.columnFeatureTime,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: Colors.lightGreen),
        AppText(data: columnFeatureText),
        AppText(data: columnFeatureTime, size: 16),
      ],
    );
  }
}
