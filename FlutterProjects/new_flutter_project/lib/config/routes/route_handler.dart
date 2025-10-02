import 'package:flutter/material.dart';
import 'package:new_flutter_project/config/routes/route_names.dart';
import 'package:new_flutter_project/home_page.dart';
import 'package:new_flutter_project/widgets/app_counter.dart';
import 'package:new_flutter_project/widgets/list_products.dart';
import 'package:new_flutter_project/widgets/splash_screen.dart';

class RouteHandler {
  static Route generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case RouteNames.splashScreen:
        return MaterialPageRoute(builder: (context) => const SplashScreen());
      case RouteNames.homeScreen:
        var userName = routeSettings.arguments as String;
        return MaterialPageRoute(
          builder: (context) => HomePage(name: userName),
        );
      case RouteNames.counterScreen:
        return MaterialPageRoute(builder: (context) => const AppCounter());
      case RouteNames.productsScreen:
        return MaterialPageRoute(builder: (context) => const ListProducts());
      default:
        return MaterialPageRoute(
          builder: (context) =>
              const Scaffold(body: Center(child: Text("No Route Found"))),
        );
    }
  }
}
