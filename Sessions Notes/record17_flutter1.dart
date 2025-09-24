void main() {
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

   *9. We have Some App Widgets that contain allscreens (MaterialApp(md for google) , Captiano( md like apple))

   *10.MaterialApp has named Parameter:
   *home: has Scoffled Widget that represent the screen
   *so MaterialApp is our app , has alot of screens(scoffled)

   *11.Every Scoffled has  named parameter body 

   *body can has widgets like Text
   *Text has required parameter data

   *Set Text on SafeArea Widget make our text in the correct area
  *Text has style named parameter

  *12.Make text on Container(Box)

   */

  /*
  *13.Content Widgets:
  Text
  Icon
  Image
  Button

  *14.LayoutWidgets:
  *Container:has one child
  Row
  Column
   */

  /*
  *15. How to create page: (Imporrtant) 
  *1.Cut it to small pieces
  *2.Start with Padding or Margin (padding is perfect for all page)
  
  */
}
