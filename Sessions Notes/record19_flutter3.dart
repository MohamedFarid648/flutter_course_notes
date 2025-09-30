
  /*
  *1. Column Take Max height by default
       Show use mainAxisSize:(take min size)
       MainAxis is y axis

  *2.DefaultTextStyle(set default style for all  text childern)

  *3.RichText
  has text property that accept TextSpan
  TextSpan has childern from TextSpan So now you have an statement


  *4.Change Text Font Family

  *4.1 add it to your app by downloading it from google.
  download it and add it to assests folder
  *4.2 use flutter package like google_fonts 


  *5.Images : ctr+shift+p to add package
  5.1
  use image preview extention in vs code
  add folders that contains images like (assets/images/users , assets/images/products) in  puspec
  *for svg use flutter_svg package
  *for animation images(app.lottiesfiles.com) use lottie package
  *for png(jpg,...) use it normally.


  5.2
  Image.assets(local path),
  Image.network(external path)

  5.3 fit property
  BoxFit.cover (git container width and display the image-may be cut from image ) (good for bg images)
  BoxFit.contain(minimize the image)(display all image )(good for display product images for users)
  BoxFit.fitWidth (fit width)
  BoxFit.fitHeight (fit Height)




  *6 MaterialButton


  *7 StateFul Widget: 
   When you use varaible in StateLess Widget the app save the varaible value in memory ,so when you change it the value is changed in memory and not re-render the value 
   But When you use StateFul Widget it save the varaibles in the state class

   *createState method
   *setState method => change varaibles in it or change them outside then call it beacause it rerender the screen
  */ 