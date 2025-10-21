import 'package:flutter/material.dart';
import 'package:new_flutter_project/widgets/app_bar_custom.dart';

class PageViewCustom extends StatelessWidget {
  const PageViewCustom({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom(title: "PageView"),
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          color: Colors.blue,
          child: PageView(
            scrollDirection: Axis.horizontal,
            children: [
              Container(
                color: Colors.yellow,
                child: const Center(child: Text("Page 1")),
              ),
              Container(
                color: Colors.green,
                child: const Center(child: Text("Page 2")),
              ),
              Container(
                color: Colors.red,
                child: const Center(child: Text("Page 3")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
