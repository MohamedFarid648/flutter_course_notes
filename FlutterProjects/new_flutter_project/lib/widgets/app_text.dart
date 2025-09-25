import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  final String data;
  final double size;
  final FontWeight? fontWeight;

  const AppText({
    super.key,
    required this.data,
    this.fontWeight,
    this.size = 22,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyle(
        fontSize: size,
        fontWeight: fontWeight,
        color: Colors.red,
      ),
      textAlign: TextAlign.center,
    );
  }
}
