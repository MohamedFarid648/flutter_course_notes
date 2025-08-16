/*
Note 1: Git Notes
1. git init => initialize the repository

2. git status => get report for your files if tracked files or uncommitted files or ...

3. git add .
or git add fileName
 => add untracked files to stage(before repo)

 4. git commit -m  'message'=>save your work
 
 5. git log --oneline => get history of commits 
git log  =>  get history of commits with alot of details


6. git checkout 99899  => 
99899 is commitId
switch to specifiec commit or branch

7. git switch branchName=> go to other branches

8. git branch =>List branches
git branch branchName=> Create Branch

9.git checkout -b branchName 
 git switch -c branchName
=>create branch and go to it

10. git checkout -b branchName commitId 
 git switch -c branchName commitId
 git branch branchName commitId
=> create branch from specific commit and go to it

11. git branch -d branchName =>Delete Branch (if it is merged)
git branch -D branchName =>Force Delete Branch (if it isn't merged it will reject to delete it , so if you want to force it use -D )


12-Branch Naming Conversion:
branchName: task-myid
fileName: the same
git commit -m 'task6/myid:mymessage'

13.git merge your-branch : merge between 2 branches (add updates from my-branch to main or any branch I already on it)

14. git push origin mybranch (push mybranch and changes)
 */
/********************************* */
void main() {
  /*Note 2: data types */
  //2.1  String x = ""; //double x = 5.5; bool x = true; int x = 5;

  //2.2 Collections: List , Set , Map
  //
  //var x = [1, 2, 3];
  List<int> x = [1, 2, 3];
  //List<int> x = [1, 2, 3 , '']; //Error string can't add to list of int

  //2.3 dynamic => AnyType
  List<dynamic> y = [1, 2, 3, ''];

  Set<dynamic> ySet = {1, 2, 3, ''};
  dynamic v = 'ggg';

  Map z = {'name': 'ahmed', 'age': 30};
  //Map<Key data type , values data type>
  Map<String, dynamic> zMap = {
    'name': 'ahmed',
    'age': 30,
  }; //you should write dynamic to accept any data type

  //2.4 null (We can use it for empty values)

  var d = null;

  //Define String varaible that can accept null values
  //String g = null;//Error
  String? g = null;
  //print(g.toUpperCase()); // Error String != String?

  //Solution:
  //2.4.1 use (!) and if condition to force not null value:
  if (g!.length >= 0) {
    print(g.toUpperCase()); //Now we can remove ! from g! because
  }
  //If we write  g!.toUpperCase() without condition it will try convert null to upper case (error)

  //2.4.2 use late
  late String h; //I will add the value later

  //2.4.3
  String? k = null;
  print(k?.toUpperCase());
  //if (k) has a value convert (k) to uppercase then print it, if not just print it if (k) is null

  //2.5 const: should has value during compilation time, final: accept value before run time
  var t = 5;
  //const u = t; // Error, const should has value not varaible
  const ui = 5;
  //ui = 8;//Constant variables can't be assigned a value after initialization.

  final uu = t;
  //uu = 5;//Error , can only set once
  //Final make varaible const after take one value
  //Const is better than varaibles for your app ()

  /* 3. Operatores  */
  //3.1 arithmetic operator: *,+,/,-,/~,%
  //20 / 3 = 6.6 ,,,, 10 /~ 3 = 3 ()  ,,, 10%3= 1

  //3.2 Comparison Operator : >,<, >= , <=
  //3.3 Logical Operator(between 2 boolean): && , || , !(!true = false)
  //3.4 Assignment Operator: = , +=(a=a+3 the same a+=3) , -= ,
}
