void main() {
  //Functions
  /*
  Create Function as statement.
  Create Function as Expression.
  Create Function as ArrowFunction
   */

  //1.Create Function as statement.
  var x = createUser();
  /*
  print(x); //void is type in dart but has no value;
  This expression has a type of 'void' so its value can't be used.
  Try checking to see if you're using the correct API; there might be a function or call that returns void you didn't expect. Also check type parameters and variables which might also be void.dartuse_of_void_result
 */

  Function y = createUser;
  y(); //Create User

  //2.use return as break in function
  tryFun(2);
  tryFun(5);
  tryFun(g);

  //*********************************************************
  //3.Function as Type
  //Create Function as Expression.
  myFunc("mohamed"); //"mohamed" is an argument for function
  var m = myFunc("aaa");
  print(myFunc); //Closure: (String) => String
  print(m);

  //4.Function as parameter
  functionAsParameter(myFunc3);
  List<int> gList = changeListByFun(myList, chList);
  print("New List");
  print(gList);

  //6.ArrowFunction (has one line in body)
  tryArrowFun();
  int u = tryArrowFun2();
  print(u);

  ////7.
  //7. Ordered and Named Parameters
  getUserData("ahmed", null); // all required
  getUserData2("mohamed", null, 5);
  getUserData3("mohamed");
  //age is null now if you don't send it
  //degree has already default value so we don't send it

  //named parameters
  getNamedUserData(age: 50, name: "ali", degree: 10); //we don't need order them
  //ordered parameters , then named parameters
  getOrderedAndNamedUserData("mm@gmail.com", age: 50, name: "ali", degree: 10);
}

void createUser() {
  print("Create User");
}

//1.Create Function as Statement
//use return as break in function
void tryFun(int x) {
  // x is the parameter of function
  if (x == 5)
    return;
  else
    print("not 5");
}

//init varaibles outside main
int g = 20;

//3.Function as Type (expression)(varaible)
var myFunc = (String name) {
  // remove name,return tpe
  print(name);
  return name;
};

MyVoidFunction myFun2 = () {
  //void Function() myFun2
  print("void func");
  //return 5;//Error(Void func)
};

//5.Custom type
MyIntFunction myFunc3 = () {
  //return "";//Error (int function)
  return 5;
};

//Note: (){} is an anonymous function

//4.Function as parameter
void functionAsParameter(MyIntFunction x) {
  //int Function() x
  x();
}

//List and function as parameter
//apply function on list
List<int> myList = [1, 2, 3, 4, 5];
List<int> changeListByFun(List<int> myList, int Function(int m) chList) {
  print("Old List");
  print(myList);
  for (var element in myList) {
    element = chList(element);
  }
  return myList;
}

int chList(int c) {
  return c++;
}

//5.Custom Type
typedef MyIntList = List<int>;
typedef MyIntFunction = int Function();
typedef MyVoidFunction = void Function();
MyIntList b = [1, 2, 3];
MyIntFunction h = () {
  return 6;
};

//6.ArrowFunction (has one line in body)
void tryArrowFun() => print("Arrow Function");
int tryArrowFun2() => 5; // =tryArrowFun2 (){return 5;}

//7.
//Ordered (Positional) parameters: (required,optional,default)

//required parameters should be first
String getUserData(String name, int? age) {
  return "Name is $name and age is $age";
}

//should sent null  => getUserData2("aaa",null ,null)
String getUserData2(String name, int? age, int? degree) {
  return "Name is $name and age is $age and degree is $degree";
}

//[] make parameter optional => getUserData3("aaa")
String getUserData3(String name, [int? age, int? degree = 10]) {
  //required parameters should be first
  if (age == null) return "Name is $name and degree is $degree";

  return "Name is $name and age is $age and degree is $degree";
}

//Named parameters
String getNamedUserData({int? age, required String name, int? degree = 10}) {
  if (age == null) return "Name is $name and degree is $degree";
  return "Name is $name and age is $age and degree is $degree";
}

//ordered parameters , then named parameters
String getOrderedAndNamedUserData(
  String email, {
  int? age,
  required String name,
  int? degree = 10,
}) {
  if (age == null) return "Name is $name and degree is $degree";
  return "Name is $name and age is $age and degree is $degree";
}
