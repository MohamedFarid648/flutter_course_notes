/*
*A. Animation:
*1.Animated Container take (state object , duration)
*2. Tween take the value that will changed (begin , end)
*3. Chain from object:
*myObject..func1()..func2()..func3(); = myObject.func1() ; muObject.func2();myObject.func3();

*4. addListener: you can get value of begin value here
 *5. _controller.forward() // to run the controller
 */

/*
*B.Responsive:
*1.Container (width: MediaQuery.of(context).size.width *.8) => will take 80 of any screen
*2. Orientation: Landscape if screen of mobile is verticall or horizontal ,, use it to get default size to check if mobile in horizontal or vertical
*3.Text Scale Factor:from your mobile settings
*4. you can make responsive padding too.

*5.Create Responsive Layout to return the layout
 */
/*
*C.Auto Responsive from flutter
*you can use package:flutter_screenutil
*sw-> screen width

 */

/*
*D. Slider: PageView has childern(slides)
*you can change it when click button:
    *change physics:NeverScrol...() ,,(you can do the samefor grid view,list view to prevent scrolling )
    *use controller:your controller,, in opPressed use yourController.nextPage()
*use CircularProgressIndicator() for loading,, use value to show progress instead of loading

 */
/*
*E.Stack Widget:
*Widgets above them
 */
