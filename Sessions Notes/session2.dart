import "dart:io";

void main() {
  //Note 1 (Set,List,Map)
  /*
  List: var x = ["mohamed","Ali"],,, print(x[0])
  Map(like class) : var x = {"title":"t1"},,, print(x["title"])
  Ser : var x ={1,2,3}

  [] Square brackets
  {} Cearly brackets
  : column

   */

  /********************************* */
  //Note 2: Read data (Console IO)
  print("Enter First Number:");
  //var x = stdin.readLineSync()!; //standard in //x now is string
  var x = int.parse(stdin.readLineSync()!); //parse value to integer
  print("Enter Second Number:");
  var y = stdin.readLineSync()!; //y now is string
  //Add ! to accept null

  print("Result:");
  var z = x + int.parse(y);
  print(z);

  /**************************** Task */

  var listOmaps = [
    {
      "title": "t1",
      "desc": "P1",
      "price": 555,
      "categories": ['c1', 'c2', 'c3'],
    },
    {
      "title": "t2",
      "desc": "P2",
      "price": 666,
      "categories": ['c1', 'c2', 'c3'],
    },
    {
      "title": "t3",
      "desc": "P3",
      "price": 777,
      "categories": ['c1', 'c2', 'c3'],
    },
  ];
  print("List of maps is :");
  print(listOmaps[0]["categories"]); //c2
}
