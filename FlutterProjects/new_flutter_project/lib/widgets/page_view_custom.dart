import 'package:flutter/material.dart';
import 'package:new_flutter_project/config/routes/route_names.dart';
import 'package:new_flutter_project/widgets/app_bar_custom.dart';

class PageViewCustom extends StatefulWidget {
  const PageViewCustom({super.key});

  @override
  State<PageViewCustom> createState() => _PageViewCustomState();
}

class _PageViewCustomState extends State<PageViewCustom> {
  late PageController _controller;
  int currentPage = 0;
  final List<Widget> _pages = [
    Container(
      color: Colors.red,
      child: const Center(child: Text("Page 1")),
    ),
    Container(
      color: Colors.yellow,
      child: const Center(child: Text("Page 2")),
    ),
    Container(
      color: Colors.green,
      child: const Center(child: Text("Page 3")),
    ),
  ];
  @override
  void initState() {
    _controller = PageController();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var sizedBox = SizedBox(height: 20);
    return Scaffold(
      appBar: AppBarCustom(title: "PageView"),
      body: Column(
        children: [
          sizedBox,
          Center(
            child: Container(
              height: 300,
              width: 300,
              color: Colors.blue,
              child: PageView(
                onPageChanged: (index) {
                  setState(() {
                    currentPage = index;
                    //print("current Page $currentPage");
                  });
                },
                controller: _controller,
                physics: NeverScrollableScrollPhysics(),
                children: _pages,
              ),
            ),
          ),
          sizedBox,
          ElevatedButton(
            onPressed: () {
              //print("current Page $currentPage");

              if (currentPage < _pages.length - 1) {
                _controller.nextPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeIn,
                );
              } else {
                print("pushReplacementNamed");
                Navigator.pushReplacementNamed(
                  context,
                  RouteNames.basketBallScreen,
                );
              }
            },
            child: Text("Next"),
          ),
          sizedBox,
          Stack(
            alignment: Alignment.center, // Center the icon over the indicator
            children: [
              // 1. The Circular Progress Indicator
              CircularProgressIndicator(
                // The value remains for progress tracking
                value: (currentPage + 1) / _pages.length,
                strokeWidth: 4.0, // Control the thickness of the circle
              ),
              // 2. The Arrow Icon (Layered on top)
              const Icon(Icons.arrow_forward, size: 20.0, color: Colors.blue),
            ],
          ),
        ],
      ),
    );
  }
}
