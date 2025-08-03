import 'dart:io';

void main() {
  print("Enter your Email:");
  String email = stdin.readLineSync()!;
  RegExp emailRegEx = RegExp(r'^\w+@(\w+\.\w+)+$');
  /*^specific pattern$
  \w+ = one or more alphanumeric  , then should have (@)
 ( then one or more alphanumeric , then should have (.) , then one or more alphanumeric ) and this group one or more
  
  ex:mohamed9abdullah@gmail.com 
  mohamed_abdullah@fci.helwan.edu.eg
  */
  if (emailRegEx.hasMatch(email))
    print("Email is correct");
  else
    print("Email is incorrect");

  print("Enter your url:");
  String url = stdin.readLineSync()!;

  RegExp urlRegEx = RegExp(r'^(https://)(\w+\.\w+)+(/)\w*$');
  //ex: https://books.zoho.com/ or https://books.zoho.com/app

  if (urlRegEx.hasMatch(url))
    print("Url is correct");
  else
    print("Url is incorrect");
}
