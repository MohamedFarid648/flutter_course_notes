import 'package:flutter/material.dart';

class AppBarCustom extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Color bgColor;
  const AppBarCustom({
    super.key,
    required this.title,
    this.bgColor = Colors.blueAccent,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      centerTitle: true,
      //leading: Icon(Icons.countertops),
      backgroundColor: bgColor,
      actions: [],
    );
  }

  @override
  /*
kToolbarHeight is a global constant in Flutter (from package:flutter/material.dart) that represents the standard height of an AppBar, making it the appropriate size to return here.
*/
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
