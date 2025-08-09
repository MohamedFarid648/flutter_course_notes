import 'dart:io';

void main() {
  print("Enter Fist Num:");
  int x = int.parse(stdin.readLineSync()!);
  print("Enter Second Num:");
  int y = int.parse(stdin.readLineSync()!);
  print("Sum : ${Calcurator.sum(x, y)}");
  print("Substruct : ${Calcurator.substruct(x, y)}");
  print("Muultiply : ${Calcurator.multibly(x, y)}");
  print("Divide : ${Calcurator.divide(x, y)}");

  print("Enter Your Balance:");
  BankAccount bankAccount = BankAccount(double.parse(stdin.readLineSync()!));

  print("Your Account Balance is ${bankAccount.getBalance()}");

  print("Enter Dollar Balance:");
  bankAccount = BankAccount.dollar(
    stdin.readLineSync()!,
    bankAccount.getBalance(),
  );
  print("Your Balance now is: ${bankAccount.getBalance()}");

  print("Enter Amount that you want to add it to your Balance:");
  bankAccount.deposit(double.parse(stdin.readLineSync()!));

  print("Your Balance now is: ${bankAccount.getBalance()}");
  print("Enter Amount that you want to withdraw it from your Balance:");
  bankAccount.withdraw(double.parse(stdin.readLineSync()!));
  print("Your Balance now is: ${bankAccount.getBalance()}");
}

class Calcurator {
  static int sum(int num1, int num2) {
    return num1 + num2;
  }

  static int substruct(int num1, int num2) {
    return num1 - num2;
  }

  static int multibly(int num1, int num2) {
    return num1 * num2;
  }

  static double divide(int num1, int num2) {
    return num1 / num2;
  }
}

class BankAccount {
  late double balance = 0;
  BankAccount(this.balance) {
    if (balance < 1) throw Exception("Accept only Positive Values");
  }
  BankAccount.dollar(String dollarBalance, this.balance) {
    if (dollarBalance.contains("\$")) {
      dollarBalance = dollarBalance.replaceAll("\$", '');
      print(dollarBalance);
      if (double.parse(dollarBalance) > 0)
        this.balance += double.parse(dollarBalance) * 50;
      else
        throw Exception("Accept only Positive Values");
    } else {
      throw Exception("Accept only Dollar Values");
    }
  }

  deposit(double num) {
    if (num > 0)
      balance += num;
    else
      throw Exception("Accept only Positive Values");
  }

  withdraw(double num) {
    if (num > 0)
      balance -= num;
    else
      throw Exception("Accept only Positive Values");
  }

  double getBalance() {
    return balance;
  }
}
