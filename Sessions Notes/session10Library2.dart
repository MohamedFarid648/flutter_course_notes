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

//final (final version of class , can create object from it but can't extend from it in another library )

/* sealed like abstract class , can't extend or implement from it in another library )

powerfull like switch
*/

/*base class  should at least one class extend it ,, and this child should be (base,final,sealed) */
sealed class Result<S, E extends Exception> {}

class Success<S, E extends Exception> extends Result<S, E> {
  final S value;
  Success(this.value);
}

class Failure<S, E extends Exception> extends Result<S, E> {
  final E exception;
  Failure(this.exception);
}

String handleResult(Result<int, Exception> result) {
  switch (result) {
    case Success(value: final v):
      return "Success: $v";
    case Failure(
      exception: final e,
    ): // if you remove that you will give an error because Result class is sealed
      return "Failure: $e";
  }
}
