/*1. Factory method to create object from abstract class
 and set condition on it if you want*/

//2. Design Pattern

/*
2.1 creational like singletoon , leazy singletoon

2.2 structural like adaptor : ex create adabter to use database methods(crud)
if you use firebase then change it to mysql (your code doesn't change)

the same if you want to use camera package, if it changes  their fanctions your code will not change, just change adaptor that use camera(like وسيط)

2.3 Behavior : relationship between objects and classes
 */

// Example of Singleton Pattern in Dart
// class AppConfig {
//   static final AppConfig _instance = AppConfig._internal(); //Create Instance when application run

//   String? _apiKey;

//   factory AppConfig() {
//     return _instance;
//   }

//   AppConfig._internal(); // Named Constructor

//   void setApiKey(String key) {
//     _apiKey = key;
//   }

//   String? get apiKey => _apiKey;
// }

//leazy signletoon
class AppConfig {
  static AppConfig? _instance;

  String? _apiKey;

  factory AppConfig() {
    _instance ??=
        AppConfig._internal(); //_instance = _instance == null?AppConfig._internal() : _instance;
    //If there is no instance creae one , else return the exist(only) instance
    return _instance!;
  }

  AppConfig._internal(); // Named Constructor

  void setApiKey(String key) {
    _apiKey = key;
  }

  String? get apiKey => _apiKey;
}

// Example of Adapter Pattern in Dart (Currency)
// Suppose we have a legacy class that provides an amount in USD,
// but our application expects the amount in EUR.

// The legacy class (Adaptee)
class USDCurrency {
  double getAmountInUSD() => 100.0;
}

//Add New Package
class EGPCurrency {
  double getAmountInEGP() => 300.0;
}

// The target interface expected by the application
abstract class EuroCurrency {
  double getAmountInEUR();
}

// The Adapter class
class CurrencyAdapter implements EuroCurrency {
  final USDCurrency _usdCurrency;
  static const double usdToEurRate = 0.9; // Example conversion rate

  CurrencyAdapter(this._usdCurrency);
  @override
  double getAmountInEUR() {
    return _usdCurrency.getAmountInUSD() * usdToEurRate;
  }
}

//Create New Adaptor for new package
class CurrencyEGPAdapter implements EuroCurrency {
  final EGPCurrency _egpCurrency;
  static const double egpToEurRate = 0.25; // Example conversion rate

  CurrencyEGPAdapter(this._egpCurrency);
  @override
  double getAmountInEUR() {
    return _egpCurrency.getAmountInEGP() * egpToEurRate;
  }
}

//strategy
// Example of Strategy Pattern in Dart
abstract class PaymentStrategy {
  void pay(double amount);
}

class CreditCardPayment implements PaymentStrategy {
  String cardNumber;
  String cvv;

  CreditCardPayment(this.cardNumber, this.cvv);

  @override
  void pay(double amount) {
    print("Paying $amount using Credit Card: $cardNumber");
    // Logic for credit card payment
  }
}

class PayPalPayment implements PaymentStrategy {
  String email;

  PayPalPayment(this.email);

  @override
  void pay(double amount) {
    print("Paying $amount using PayPal: $email");
    // Logic for PayPal payment
  }
}

class ShoppingCart {
  PaymentStrategy? _paymentStrategy;
  double totalAmount = 0.0;

  void setPaymentStrategy(PaymentStrategy strategy) {
    _paymentStrategy = strategy;
  }

  void addItem(double price) {
    totalAmount += price;
  }

  void checkout() {
    if (_paymentStrategy != null) {
      _paymentStrategy!.pay(totalAmount);
    } else {
      print("Please select a payment method.");
    }
  }
}

void main() {
  //singletoon
  var config1 =
      AppConfig(); //Call Instance if normal singletoon ,, //Create Instance for first time if  leazy singletoon (beast for memory)

  var config2 = AppConfig(); //Call Instance

  print(config1 == config2); // Output: true, both refer to the same instance

  config1.setApiKey("my_secret_api_key");
  print(config2.apiKey); // Output: my_secret_api_key

  //adapter
  var usd = USDCurrency();
  EuroCurrency euro = CurrencyAdapter(usd);

  var egp = EGPCurrency();
  EuroCurrency euro2 = CurrencyEGPAdapter(egp);

  print('Amount in EUR: \\${euro.getAmountInEUR()}');
  print('Amount in EGP: \\${egp.getAmountInEGP()}');

  //strategy

  var cart = ShoppingCart();
  cart.addItem(100.0);
  cart.addItem(50.0);

  cart.setPaymentStrategy(CreditCardPayment("1234-5678-9012-3456", "123"));
  cart.checkout();

  cart.setPaymentStrategy(PayPalPayment("user@example.com"));
  cart.checkout();

  //try catch
  testThrow(14);
  testThrow(20);
}

/*
3.Try Catch
 */

sealed class AppException implements Exception {}

class EmptyCacheException implements AppException {
  String errMsg() => "Cache is empty";
}

class ServerException implements AppException {
  String errMsg() => "Server error";
}

void checkAge(int age) {
  if (age < 15) throw Exception("Exception");
  print("Age is $age");
}

void testThrow(int n) {
  try {
    checkAge(n);
  } on ServerException {
    print("Server Exception");
  } on EmptyCacheException {
    print("EmptyCache Exception");
  } catch (e) {
    print("Something went wrong");
  } finally {
    print("Thank you");
  }
}
