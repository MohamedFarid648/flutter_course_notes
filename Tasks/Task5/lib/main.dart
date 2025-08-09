void main() {
  print("Is your input is even?");
  print(oddOrEven("welcome"));

  print("Is your input larger than its swap?");
  print(largestSwap("43"));

  print("Your new input is: ");
  print(removeLeadingTrailing("000020400.4102000")); //2040.41
}

/*
https://edabit.com/challenge/2tcuBxn37oouMeErN
Given a string, return true if its length is even or false if the length is odd.

1.Check input length if length%2 =0 then input is even otherwise it is old
2.
 */

bool oddOrEven(String input) {
  if (input.isEmpty) {
    throw Exception("Input is empty");
  }
  return input.length % 2 == 0 ? true : false;
}

/*
https://edabit.com/challenge/hD3euqPHM82Cbr7R8

Write a function that takes a two-digit number and determines if it's the largest of two possible digit swaps.

 1.take input(String)
 2. check number of digits  , convert them to int
 3. swap them
 4.compare

 */

bool largestSwap(String input) {
  if (input.length == 2) {
    // int num = int.parse(input);
    // int swapNum = int.parse(input[1] + input[0]);
    // return num > swapNum ? true : false;
    return int.parse(input) > int.parse(input[1] + input[0]) ? true : false;
  } else {
    throw Exception("Input Should be 2 digits");
  }
}

/*
https://edabit.com/challenge/3jzycf6fcgwZbvpcf
Create a function that takes in a number as a string n and returns the number without trailing and leading zeros.
 create regEx and search about input on it
 */

String removeLeadingTrailing(String input) {
  // print(input.split("."));
  RegExp numberRegEx = RegExp(r'[1-9]+([0-9]+)?(\.[1-9]+)?');
  /*
  Start with digit 1-9 one or more 
  then any digit 0-9 one or more (optional)
  then(.), then 1-9 one or more  (optional)
   */
  String? numberMatch = numberRegEx.stringMatch(input);
  return numberMatch != null ? numberMatch : "0";
}

String removeLeadingTrailing2(String n) {
  // Remove leading and trailing zeros
  double num = double.parse(n);
  // Convert to string after removing leading and trailing zeros
  if (num == num.toInt()) {
    return num.toInt().toString();
  }
  // If it's not a whole number, return it as a string
  return num.toString();
}
