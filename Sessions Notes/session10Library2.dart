//5. Generics

//ex:1
import 'session10Library.dart';

class Box<T> {
  T value;
  Box(this.value);
  T getValue() {
    return value;
  }
}

//ex 2
T getFirstElement<T>(List<T> value) {
  //<T>: should write T after method to detect which type
  if (value.isEmpty) throw Exception("List is empty");
  return value[0];
}

//Ex 3 (Good Code)
class NumberBox<T extends num> {
  //T will be int or double
  T value;
  NumberBox(this.value);
  T getValue() {
    return value;
  }
}

class AnimalBox<T extends Animal> {}

void getData<T extends Animal>(T animal) {
  print("sleep:");
  animal.sleep();

  print("eat");
  animal.eat();
}


//6. Class Modifiers (final , sealed , base)