import 'session10Library.dart';
import 'session10Library2.dart';

void main() {
  Animal a = new Animal("Animal 1", 10);
  Dog d = new Dog("Dog 1", 20, "breed");
  a.eat();
  d.eat();

  //polymorphism
  Animal aDog = new Dog("Animal Dog 1", 122, "Animal Dog Breed");
  aDog.eat();
  aDog.sleep(); //parent method
  //aDog.breeds();//Error: Not in type Animal

  animalEatSleep(aDog);
  animalEatSleep(Cat("cat", 12));

  //4. mixins
  Human h = Human();
  // Swimmable(walk) will override Walkable(walk)
  h.walk();
  h.swim();

  //5. Generics

  Box<int> b = Box(123);
  print(b.getValue());

  Box b2 = Box("String value"); //it will know that T is string
  print(b2.getValue());

  print(getFirstElement([1, 2, 3]));
  print(getFirstElement(["Ahmed", "Mohamed", "Abdullah"]));

  NumberBox n = NumberBox(5);
  print(n.getValue());

  getData<Dog>(d);
}
