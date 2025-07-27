void main() {
  /*1.control flow: */

  /*1.1 Conditional Statement:
  
   1.1.1 If,else if , if
   if(condition){}

   1.1.2 Switch statement:
  (easier than if in some cases).
  (best for enum)

  Switch doesn't have (break) in dart

  switch(value){
  }
*/
  int degree = 50;
  switch (degree) {
    //switch(value not condition)
    case 90:
      print("Excellent");
    //break; // dart already has break in case so it will do one case ,,in some languages if you remove break it will access all caseslike js (not in dart)
    case 70:
      print("Good");
    default: //like else
      print("Degree");
  }

  String status = "online";
  switch (status) {
    case 'online':
      print("green");
    case 'offline':
      print("gray");
  }

  //Switch is better than if for enum
  var status2 = MyStatus.online;
  switch (status2) {
    case MyStatus.online:
      print("online");
    case MyStatus.offline:
      print("offline");
    case MyStatus
        .busy: //If I forgot to add this case (or any other cases) it will have an error
      print("busy");
  }

  //Ex2: Switch is better than if for enum
  MyErrors myErrors = MyErrors.Error1;
  switch (myErrors) {
    case MyErrors.Error1:
      print("MyErrors.Error1");
    case MyErrors.Error2:
      print("Error2");
    case MyErrors
        .Error3: //If I forgot to add this case (or any another case)it will have an error
      print("Error3");
  }
  /******************************* */

  /*1.2 Loops(for,for in,while,do while) */
  /*
  */
  List<String> characters = ['A', 'B', 'C'];
  // for (int i = 0; i < names.length; i++) {
  //   print(names[i]);
  // }

  //If we don't need index
  for (String n in characters) {
    print(n);
  }

  /*
  break: stop loop
  continue: skip this iterate then continue
  */
  //Ex: Nested loop ,, Named loop
  List<String> names = ['Moh', 'Ahm', 'Ali'];
  List<String> skills = ['Dart', 'Flutter', 'Firebase'];

  /*Please print:

Moh:Dart,Flutter,Firebase
Ahm:Dart,Flutter,Firebase
Ali:Dart,Flutter,Firebase 
*/

  parent:
  for (int i = 0; i < names.length; i++) {
    String line = names[i] + ':';
    for (int j = 0; j < skills.length; j++) {
      line += skills[j];
      if (j < skills.length - 1) {
        line += ',';
      }
      if (names[i] == "Ahm" && skills[j] == "Flutter") {
        break; //break just this loop
        /*Result:
        Moh:Dart,Flutter,Firebase
        Ahm:Dart,Flutter,
        Ali:Dart,Flutter,Firebase
         */
        //break parent; //break parent  loop
        /*
        Res:
        Moh:Dart,Flutter,Firebase
         */
      }
    }
    print(line);
  }
}

enum MyStatus { online, offline, busy }

enum MyErrors { Error1, Error2, Error3 }
