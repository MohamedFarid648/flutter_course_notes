/*
*A.run app as web page:
*1.download device_preview package
*2. use it in main.dart
*3. build as web 
*4.upload it in github in pages tab
***************************************
*B. MyList.insert(indexValue,value);
MyList = [1,2]
MyList.insert(1,MyList.removeAt(0));//swap 1,2
MyList.removeAt(0): will remove 1 and return the value of it
MyList.insert in index 1 value 1 ,make value 2 in index 0
*************************************************
*C. Problem: Swap two widgets:
*Widget Tree:save data of widget (stateless or statefull) type: container or,... ,, fontsize,...
*Element Tree: rest data of the element (state , key)
so the element exists in 2 trees
*How it knows that the element is changed?
* See the key if changed or not
* If not see the widget type if it changed or not
 */
/*
*D.Sol: How to Add Key to widget?
*1. Local Key: ValueKey(1) ,, ObjectKey(Product()) ,, UniqueKey()

*2 Global Key : use it in different widgets so button on the first widget will change other part in the second widget
 */

/*
*F. Animation:
*1.Animated Container
*2.AnimationCrossFade:  has 2 childs two swap between them
curves.easeIn(start easily) , easeOut , bounceIn(jumb)
*3.AnimatedTextStyle , Animated Opacity , 

 */
