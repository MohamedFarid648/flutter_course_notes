import 'package:flutter/material.dart';
import 'package:new_flutter_project/config/routes/route_names.dart';
import 'package:new_flutter_project/home_page.dart';
import 'package:new_flutter_project/widgets/app_counter.dart';
import 'package:new_flutter_project/widgets/basketball_result.dart';
import 'package:new_flutter_project/widgets/counter_bloc_cubit_page.dart';
import 'package:new_flutter_project/widgets/counter_form.dart';
import 'package:new_flutter_project/widgets/counters_listview.dart';
import 'package:new_flutter_project/widgets/global_key_counter.dart';
import 'package:new_flutter_project/widgets/gridview_products.dart';
import 'package:new_flutter_project/widgets/list_products.dart';
import 'package:new_flutter_project/widgets/page_view_custom.dart';
import 'package:new_flutter_project/widgets/product_form.dart';
import 'package:new_flutter_project/widgets/animation_features.dart';
import 'package:new_flutter_project/widgets/splash_screen.dart';

class RouteHandler {
  static Route generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case RouteNames.splashScreen:
        return MaterialPageRoute(builder: (context) => const SplashScreen());
      case RouteNames.cubitBlocScreen:
        return MaterialPageRoute(
          builder: (context) => const CounterBlocCubitPage(),
        );
      case RouteNames.homeScreen:
        var userName = routeSettings.arguments as String;
        return MaterialPageRoute(
          builder: (context) => HomePage(name: userName),
        );
      case RouteNames.counterScreen:
        return MaterialPageRoute(builder: (context) => const AppCounter());
      case RouteNames.productsScreen:
        return MaterialPageRoute(builder: (context) => const ListProducts());
      case RouteNames.productsGridViewScreen:
        return MaterialPageRoute(
          builder: (context) => const GridviewProducts(),
        );
      case RouteNames.productFormScreen:
        return MaterialPageRoute(builder: (context) => const ProductForm());
      case RouteNames.countersScreen:
        return MaterialPageRoute(
          builder: (context) => const CountersListview(),
        );
      case RouteNames.counterFormScreen:
        return MaterialPageRoute(builder: (context) => const CounterForm());

      case RouteNames.pageViewScreen:
        return MaterialPageRoute(builder: (context) => const PageViewCustom());
      case RouteNames.basketBallScreen:
        return MaterialPageRoute(
          builder: (context) => const BasketBallResult(),
        );
      case RouteNames.globalCounterScreen:
        return MaterialPageRoute(builder: (context) => GlobalKeyCounter());

      case RouteNames.animationScreen:
        return MaterialPageRoute(builder: (context) => AnimationFeatures());
      default:
        return MaterialPageRoute(
          builder: (context) =>
              const Scaffold(body: Center(child: Text("No Route Found"))),
        );
    }
  }
}
