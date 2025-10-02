/*

*A. Type of Buttons:

*1. Material Button: has color as bg color , text, ...

*2. Icon Button : Should has icon

*3. TextButton: has no color property , child is required(text with no bg color) (ex: skip , click me)

*4. OutlinedButton (with outline border)
*5. Elevated Button(with shadow)
**************************************
*Change any widget to button:

*InkWell Widget  or GestureDetector Widget
has onTap (like on pressed) ,, has child(add container,image,...)
 */

/*
*B. Routing:

*1. Push way:
If you have HomeScreen , AboutScreen
When you go from (home) to (about), it set (about) above (home) with back button

In home screen:
*Navigator.push(context,MaterialPageRoute(builder:(context)=> return yourNavigatedToScreen))

*it take context because it has all info and tree about screens
*MaterialPageRoute take (builder) parameter that accept function , this function take the (context) and build new screen and return it

in AboutScreen:
*Navigator.pop(context)

*use this way if you have parent and childern so you can back to parent (ex:Settings screen )
Don't use it in login screen


*2. Push replace way:
If you have HomeScreen , AboutScreen
When you go from (home) to (about), it replace (home) with  (about)

how to use it?
*Navigator.pushReplacement(...) 
in About Screen:
*Navigator.canPop(context)

*3. Push replace until way:
If you have HomeScreen , AboutScreen
When you go from (home) to (about), you should set untill condition otherwise it replace (home) with  (about)

*Navigator.pushAndRemoveUntil(..., the route that want to stop in it or make it false) 
 */

/*
*B. Routing (Another and good way):

*Navigator.pushNamed(context,MyRouteNames.aboutScreen,arguments:...)
*create config/routes folder to have routes names and handlers
*Use them in materialApp in main.dart :
    onGenerateRoute: RouteHandler.generateRoute,

 */
