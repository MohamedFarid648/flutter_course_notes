import 'package:flutter/material.dart';
import 'package:new_flutter_project/home_page.dart';

void main() {
  runApp(const MyApp());
}

//runApp(); take parameter(order,required) from Widget Class
/*
     Widget is abstract Class
    Everything in flutter is widget
   */

/*
  *1.App(base widget) => Collection of Pages(screens)
  *2.Page is screen
  *3.Widget => every part in page(screen) is widget(text,number,button,...)
  

  *4.Widget is =>StatelessWidget or StatefullWidget (both of them is abstract class from the Parent Widget)

  *5.StatelessWidget: 
  *6.StatefullWidget: like counter on the screen , button (control on the value of it)
   */

/*
  *7.super.key => every one has a key


   *8.Every Widget has context (build context): catalog(tree) with nested widget 

   *9. We have 2 App Widget that containes allscreens (MaterialApp(md for google) , Captiano( md like apple))

   *10.MaterialApp has named Parameter:
   *home: has Scoffled Widget that represent the screen
   *so MaterialApp is our app , has alot of screens(scoffled)

   *11.Every Scoffled has  named parameter body 

   *body can has widgets like Text
   *Text has required parameter data

   *Set Text on SafeArea Widget make our text in the correct area
  *Text has style named parameter

   *12.Open Dev tools 
   */
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      //debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
