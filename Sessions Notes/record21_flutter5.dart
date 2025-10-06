/*
*1. Grid View to use 2 dimention(vertical , horizontal) :

gridDelegate: CreateSilver Widget for every item
childAspectRation: نسبة العرض للارتفاع للعنصر الواحد
كل ما تقلل القيمة الارتفاع هيزيد



*AppBar: header for screen
         *elevation: shadow affect
        *leading: first part in widget from left
        *actions: last part in widget from right

*floatingActionButton: like + button
 */

/*
*2.Forms: use SingleChildScrollView for it.

*TextField has 
*keyboardTpe: TextInputType.number,name,...
*obsecureText: true for password
*readOnly
*events like: onChange,onSubmit,..
*decoration:InputDecoration(label,hintText,prefixIcon,suffixIcon)
***********************
*To get value from text: use TextEditingController x;
*controller:x
*Note that your TextEditingControllers added to build methods that rebuild after setState()
    *So you should create your real varaibles(the states) as properties to the class
    *then send these states to use case before setState

*******************************
*On submit button button send data to your use case
*Use onLongTab to 
 */
