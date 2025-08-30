// ignore_for_file: public_member_api_docs, sort_constructors_first
library TryOOp;

//1 concrete class
class Animal {
  String name;
  int age;
  Animal(this.name, this.age);

  void eat() {
    print("Animal eat");
  }

  void sleep() {
    print("Animal sleep");
  }
}

class Dog extends Animal {
  String breed;
  //Dog(String n, int a, this.breed) : super(n, a);
  Dog(super.name, super.age, this.breed); //better
  /*
  : called column
  : super(n, a) = do this action  => {
  super(n,a);
  }
  */

  @override
  void eat() {
    print("from child:");
    super.eat(); //call perent eat
    print("Dog Eat");
  }

  void breeds() {
    print("Dog breed");
  }
}

class Cat extends Animal {
  Cat(super.name, super.age); //better
  @override
  void eat() {
    print("from child:");
    super.eat(); //call perent eat
    print("Cat Eat");
  }
}

//2. Abstract

//can't create instance of it , but can use it as type
abstract class AnimalAbstract {
  String name;
  int age;
  AnimalAbstract(this.name, this.age);

  //abstract methods to force childern to implement it
  void eat();

  //Not abstract method
  void sleep() {
    print("sleep parent");
  }
}

class Dog2 extends AnimalAbstract {
  String breed;
  Dog2(super.name, super.age, this.breed);

  @override
  void eat() {
    // TODO: implement eat
  }
}

//3. Interface Class (Just a contract or template to use it )
//can't create instance of it , but can use it as type
/*
3.1 Any class in dart can use it as interface
 */
class AnimalMayInterface {
  String name;
  int age;
  AnimalMayInterface(this.name, this.age);
  void eat() {}
  void sleep() {
    print("sleep parent");
  }
}

class AnimalMayInterface2 implements AnimalMayInterface {
  //Should define them
  String name;
  int age;
  AnimalMayInterface2(this.name, this.age);

  @override
  void eat() {
    // TODO: implement eat
  }

  @override
  void sleep() {
    // TODO: implement sleep
  }
}

/*
3.2 Correct Usage:

 */
abstract interface class AnimalInterface {
  String name;
  int age;
  AnimalInterface(this.name, this.age);
  void eatInterface();
  void sleepInterface();
}

class AnimalInterface2 implements AnimalMayInterface, AnimalInterface {
  @override
  int age;

  @override
  String name;
  AnimalInterface2({required this.age, required this.name});

  @override
  void eat() {
    // TODO: implement eat
  }

  @override
  void eatInterface() {
    // TODO: implement eatInterface
  }

  @override
  void sleep() {
    // TODO: implement sleep
  }

  @override
  void sleepInterface() {
    // TODO: implement sleepInterface
  }
}

//ex of polymorphism
void animalEatSleep(Animal animal) {
  animal.eat();
  animal.sleep();
}

//4. Using Mixins (Ex:Animation mixins in dart can use it in any container)
//Like add-on to your class , like add methods to your class

mixin Walkable {
  void walk() {
    print("Walk");
  }

  void walkAnotherWay() {
    print("walkAnotherWay");
  }
}

mixin Swimmable {
  void swim() {
    print("swim");
  }

  void walk() {
    print("Walk from Swimmable");
  }
}

mixin Walkable2 on Human {
  //Can't use it in another class (just human and childern)
  void walkAnotherWay() {
    print("walkAnotherWay");
  }
}

class Human with Swimmable, Walkable {}
//class TryHuman with Walkable2{} // 'Walkable2' can't be mixed onto 'Object' because 'Object' doesn't implement 'Human'.

// Swimmable(walk) will override Walkable(walk) because itwill have body and come second
