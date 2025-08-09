class Car {
  //Class is blueprint for object , object is instance of class
  //1. Properties or attributes or members
  String name = "Car 1";
  //String type;
  /*Non-nullable instance field 'type' must be initialized.
    Try adding an initializer expression, or add a field initializer in this constructor, or mark it 'late' */

  //2. sol
  late String type; // or String? type

  String? motor;

  final String? newData;
  /*Sould set value to any field here or in constructor or set (late) to it
  late String name;
  but should set value to it later
*/
  // 3. Constructor
  //Called First
  // Car() {
  //   print("Car Constructor");
  // }

  // Car(String n, String t) {
  //   name = n;
  //   type = t;
  //   print("Car Constructor");
  // }

  //4.New Constructor
  //use named parameter {}
  Car(this.name, this.type, {required this.motor, this.newData});

  //make constructor const , should all members be final
  //const Car(this.name, this.type, {required this.motor, this.newData});

  //5.Methods
  void start() {
    print("car $name is started");
    // I don't need this.name here, it already see it
  }
}

void main() {
  //Car car = Car();
  Car car = Car("My Car", "Type", motor: "New One", newData: "new data");
  car.name = "My new car"; //prefer to use const (final to late value)
  //car.newData = ""; //error it's a final

  car.start();

  Color color = Color(20, 30, 50);
  Color color2 = Color.fromHex("#FF5566");
  Color color3 = Color.black();
  Color color4 = Color.white();
  color.display();
  color2.display();
  color3.display();
  color4.display();
  print("Count is: ${Color.count}");
  print("Count is: ${Color.getCount()}");
}

class Color {
  late int red;
  late int blue;
  late int green;

  //6.Static Members and Methods (Belongs to Class Not object)
  static int count = 0;

  Color(this.red, this.green, this.blue) {
    count++;
  }

  //6. Named Constructor
  Color.fromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", '');
    //convert #ff0000 to ff0000
    if (hexColor.length == 6) {
      red = int.parse(
        hexColor.substring(0, 2),
        radix: 16,
      ); //start from 0 to before 2 (0,1) = ff
      green = int.parse(hexColor.substring(2, 4), radix: 16); // (2,3)= 00
      blue = int.parse(hexColor.substring(4, 6), radix: 16); //(4,5)
      //radix is system like octa,decimal,binary to calculate numbers
    } else {
      red = 0;
      green = 0;
      blue = 0;
    }
  }

  Color.black() : this(0, 0, 0); //call default one constructor(first one)
  Color.white() : this(255, 255, 255);

  void display() {
    if (red >= 0 &&
        red <= 255 &&
        green >= 0 &&
        green <= 255 &&
        blue >= 0 &&
        blue <= 255) {
      print("RGB($red,$green,$blue)");
      return;
    }
    print("wrong value");
  }

  static int getCount() {
    //print(this.red); error static methods useonly static members
    return count;
  }
}
