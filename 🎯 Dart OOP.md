# 🎯 Dart OOP

## ✨ Introduction

Welcome to the world of Object-Oriented Programming (OOP) in Dart! OOP is a powerful programming paradigm that helps you design and develop applications by organizing your code around "objects" rather than actions and logic. Think of it as building with LEGO bricks – each brick (object) has its own properties and behaviors, and you can combine them to create complex structures (applications). Dart fully embraces OOP principles, making it an excellent language for building everything from small scripts to large, enterprise-level applications.

### Why OOP in Dart? 🤔

OOP offers several significant advantages that make it a cornerstone of modern software development:

*   **Modularity:** Break down complex systems into smaller, self-contained modules (objects), making your code easier to understand, maintain, and debug.
*   **Reusability:** Create reusable components (classes) that can be used across different parts of your application or even in other projects, saving development time and effort.
*   **Flexibility and Scalability:** Design systems that are flexible enough to adapt to changing requirements and scale efficiently as your application grows.
*   **Data Hiding (Encapsulation):** Protect the internal state of objects from unauthorized access, leading to more secure and robust code.
*   **Polymorphism:** Write more generic and flexible code that can work with objects of different types, promoting code extensibility.

### What We'll Explore in This Guide:

In this comprehensive guide, we will delve into the core concepts of OOP in Dart, providing clear explanations, practical examples, and visual aids to help you grasp each principle. We'll cover:

*   **Classes and Objects:** The fundamental building blocks of OOP.
*   **Constructors:** How to create and initialize objects.
*   **Static Members:** Properties and methods that belong to the class itself, not to instances.
*   **Encapsulation:** Protecting data and controlling access.
*   **Abstraction:** Hiding complexity and showing only essential features.
*   **Inheritance:** Creating new classes based on existing ones.
*   **Polymorphism:** Objects taking on many forms.
*   **Mixins:** Reusing code across class hierarchies.
*   **Generics:** Writing flexible and type-safe code.
*   **Class Modifiers:** Understanding `final`, `sealed`, and `base` classes.

Let's embark on this journey to master OOP in Dart! 🚀

## 🧱 Classes and Objects

At the heart of Object-Oriented Programming are **classes** and **objects**. These two concepts are intertwined, forming the foundation upon which all OOP principles are built. Think of a class as a blueprint or a template, and an object as a real-world instance built from that blueprint.

### 🏗️ Classes: The Blueprints

A **class** is a user-defined blueprint or prototype from which objects are created. It defines a set of properties (attributes or data) and methods (behaviors or functions) that all objects of that class will have. A class itself is not an object; it's merely a definition. For example, you might have a `Car` class that defines what a car is: it has properties like `color`, `make`, `model`, and behaviors like `start()`, `stop()`, `accelerate()`.

```dart
// Defining a simple Car class
class Car {
  // Properties (instance variables)
  String color = 'Red';
  String make = 'Toyota';
  String model = 'Camry';

  // Methods (behaviors)
  void start() {
    print('$make $model is starting.');
  }

  void stop() {
    print('$make $model is stopping.');
  }

  void accelerate() {
    print('$make $model is accelerating.');
  }
}
```

### 🚗 Objects: The Instances

An **object** is an instance of a class. When you create an object, you are essentially bringing the blueprint to life. Each object has its own unique set of data (based on the properties defined in the class) and can perform the actions (methods) defined by its class. You can create multiple objects from a single class, and each object will be independent of the others.

```dart
void main() {
  // Creating objects (instances) of the Car class
  var myCar = Car(); // myCar is an object of the Car class
  var anotherCar = Car(); // anotherCar is another object of the Car class

  // Accessing properties and calling methods of the objects
  print('My car is a ${myCar.color} ${myCar.make} ${myCar.model}.');
  myCar.start();

  anotherCar.color = 'Blue'; // Modifying properties of anotherCar
  print('Another car is a ${anotherCar.color} ${anotherCar.make} ${anotherCar.model}.');
  anotherCar.accelerate();
}
```

### Class and Object Relationship Diagram

Here's a visual representation of the relationship between a class and its objects:

![Class and Object Diagram](https://private-us-east-1.manuscdn.com/sessionFile/MgbJGiDwW2KJLEnBed828b/sandbox/vM8R8To1kM7nsVSrv5ZGhk-images_1754576959443_na1fn_L2hvbWUvdWJ1bnR1L2NsYXNzX29iamVjdF9kaWFncmFt.png?Policy=eyJTdGF0ZW1lbnQiOlt7IlJlc291cmNlIjoiaHR0cHM6Ly9wcml2YXRlLXVzLWVhc3QtMS5tYW51c2Nkbi5jb20vc2Vzc2lvbkZpbGUvTWdiSkdpRHdXMktKTEVuQmVkODI4Yi9zYW5kYm94L3ZNOFI4VG8xa003bnNWU3J2NVpHaGstaW1hZ2VzXzE3NTQ1NzY5NTk0NDNfbmExZm5fTDJodmJXVXZkV0oxYm5SMUwyTnNZWE56WDI5aWFtVmpkRjlrYVdGbmNtRnQucG5nIiwiQ29uZGl0aW9uIjp7IkRhdGVMZXNzVGhhbiI6eyJBV1M6RXBvY2hUaW1lIjoxNzk4NzYxNjAwfX19XX0_&Key-Pair-Id=K2HSFNDJXOU9YS&Signature=Lw5pJq4BTcsEuoq8da1CgzXEYgUVROrblDgpyznMdySYlpP7SOalo-PIXpbEAd6pzIFK041KEHwJGcH8voI418W3BZnpPNFIikRMgxoWY28Lm-MNIuBx6T1jxoCjzPfV3qNsNJTjFyFyKqLmeUQlvIwU8Pq~jIO61BCRIvAGmn3ovZ52el5DbxVmSQQ6FqfomVyIxe3OOHD2RT-8pdR72j8TSkkydz1UMp-HP2gZxVvqiOzNCffKk56rPTPbXmkRl1iREa75BjCF070lviWKswNzZ6r-A3SpdmwWVSNZpLxdZs0KdRQxQglGi0Rezu6iICTTUjjZEqiFediBOodS4Q__)

In summary, a class is the abstract definition, while an object is the concrete realization of that definition. You define a class once, but you can create many objects from it, each with its own state.






## 🛠️ Constructors: Building Your Objects

**Constructors** are special methods within a class that are responsible for creating and initializing objects of that class. When you create a new instance of a class, its constructor is automatically called. In Dart, constructors have the same name as the class itself. They allow you to set initial values for an object's properties and perform any setup logic required before the object is ready for use.

### Default Constructor

If you don't explicitly define a constructor for your class, Dart provides a **default constructor** automatically. This default constructor has no arguments and simply calls the no-argument constructor of the superclass. It's implicitly present and looks something like this:

```dart
class Point {
  double x = 0;
  double y = 0;

  // Implicit default constructor:
  // Point();
}

void main() {
  var p = Point(); // Uses the default constructor
  print('Point: (${p.x}, ${p.y})');
}
```

### Parameterized Constructors

Often, you'll want to initialize an object with specific values when it's created. This is where **parameterized constructors** come in handy. You can define parameters for your constructor, allowing you to pass data to the object during its creation. Dart offers a convenient shorthand for assigning constructor parameters directly to instance variables using `this`.

```dart
class Person {
  String name;
  int age;

  // Parameterized constructor
  Person(this.name, this.age); // Shorthand for assigning parameters to instance variables

  void greet() {
    print('Hello, my name is $name and I am $age years old.');
  }
}

void main() {
  var person1 = Person('Alice', 30); // Creating an object with initial values
  person1.greet();

  var person2 = Person('Bob', 25);
  person2.greet();
}
```

### Named Constructors

Dart allows you to define multiple constructors for a single class using **named constructors**. This is incredibly useful when you want to provide different ways to create an object, each with a clear and descriptive name. Named constructors are defined using `ClassName.constructorName()`. They improve code readability and flexibility, especially when dealing with complex object initialization scenarios.

```dart
class Color {
  int red;
  int green;
  int blue;

  // Default constructor (positional parameters)
  Color(this.red, this.green, this.blue);

  // Named constructor for creating a Color from a hexadecimal string
  Color.fromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll('#', '');
    if (hexColor.length == 6) {
      red = int.parse(hexColor.substring(0, 2), radix: 16);
      green = int.parse(hexColor.substring(2, 4), radix: 16);
      blue = int.parse(hexColor.substring(4, 6), radix: 16);
    } else {
      red = 0;
      green = 0;
      blue = 0;
    }
  }

  // Named constructor for creating a Color with all values set to zero
  Color.black() : this(0, 0, 0); // Redirecting constructor to the default constructor

  void display() {
    print('RGB: ($red, $green, $blue)');
  }
}

void main() {
  var color1 = Color(255, 0, 0); // Using the default constructor
  color1.display(); // Output: RGB: (255, 0, 0)

  var color2 = Color.fromHex('#00FF00'); // Using a named constructor
  color2.display(); // Output: RGB: (0, 255, 0)

  var color3 = Color.black(); // Using another named constructor
  color3.display(); // Output: RGB: (0, 0, 0)
}
```

Named constructors are a powerful feature for creating expressive and flexible APIs for your classes. They make it clear how an object is being constructed and can simplify complex initialization logic.






## ⚙️ Static Members: Class-Level Properties and Methods

In Dart, **static members** (variables and methods) belong to the class itself, rather than to any specific instance (object) of the class. This means you don't need to create an object to access them; you can call them directly on the class name. Static members are useful for data or functionality that is shared across all instances of a class, or for utility functions that don't require an object's state.

### Static Variables

**Static variables** (also known as class variables) are initialized once, when the class is first loaded, and their value is shared by all objects of that class. They are often used for constants, configuration settings, or counters that need to track a class-wide value.

```dart
class MathUtils {
  static const double PI = 3.14159;
  static int counter = 0;

  MathUtils() {
    counter++; // Increment counter every time an object is created
  }

  void displayCounter() {
    print("Object count: $counter");
  }
}

void main() {
  print("The value of PI is: ${MathUtils.PI}"); // Accessing static variable directly on the class

  var obj1 = MathUtils();
  obj1.displayCounter(); // Output: Object count: 1

  var obj2 = MathUtils();
  obj2.displayCounter(); // Output: Object count: 2

  // Accessing static variable directly on the class
  print("Total MathUtils objects created: ${MathUtils.counter}"); // Output: Total MathUtils objects created: 2
}
```

### Static Methods

**Static methods** are functions that also belong to the class and can be called directly on the class name without creating an object. They typically perform operations that don't depend on the state of an object, such as utility functions, factory methods, or helper functions.

```dart
class Calculator {
  static double add(double a, double b) {
    return a + b;
  }

  static double subtract(double a, double b) {
    return a - b;
  }

  static double multiply(double a, double b) {
    return a * b;
  }

  static double divide(double a, double b) {
    if (b == 0) {
      throw ArgumentError("Cannot divide by zero.");
    }
    return a / b;
  }
}

void main() {
  print("5 + 3 = ${Calculator.add(5, 3)}"); // Calling static method directly on the class
  print("10 - 4 = ${Calculator.subtract(10, 4)}");
  print("6 * 7 = ${Calculator.multiply(6, 7)}");
  print("20 / 5 = ${Calculator.divide(20, 5)}");
}
```

### Key Characteristics of Static Members:

*   **Class-level scope:** They belong to the class, not to individual objects.
*   **Memory efficiency:** Static variables are allocated memory only once, regardless of how many objects are created.
*   **Direct access:** Accessed using the class name (e.g., `ClassName.staticMember`).
*   **No `this` keyword:** Static methods cannot access instance variables or methods directly because they don't operate on a specific object instance. They can only access other static members.

Static members are a fundamental part of designing utility classes and managing shared data in your Dart applications.






## 🔒 Encapsulation: Protecting Your Data

**Encapsulation** is one of the fundamental principles of OOP, often described as the bundling of data (attributes) and the methods (functions) that operate on that data within a single unit, or class. It also involves restricting direct access to some of an object's components, meaning that the internal representation of an object is hidden from the outside. This protection is crucial for maintaining data integrity and preventing unintended modifications.

In Dart, encapsulation is primarily achieved through:

1.  **Private Instance Variables:** By convention, Dart doesn't have keywords like `public`, `private`, or `protected` as seen in some other languages (e.g., Java). Instead, privacy is achieved at the library level. If an identifier (like a variable or function name) starts with an underscore (`_`), it is private to its own library. This means it can only be accessed within the same `.dart` file where it's defined.

2.  **Getters and Setters:** To allow controlled access to private instance variables, Dart provides **getters** (for reading data) and **setters** (for writing data). These are special methods that provide a public interface to private data, allowing you to add validation or logic before data is accessed or modified.

### Example of Encapsulation

Let's consider a `BankAccount` class. We want to ensure that the `_balance` can only be modified through specific methods (like `deposit` and `withdraw`) and not directly accessed or changed from outside the class.

```dart
class BankAccount {
  // Private instance variable (conventionally private to the library)
  double _balance;

  // Constructor to initialize the balance
  BankAccount(this._balance);

  // Getter to provide read-only access to the balance
  double get balance => _balance;

  // Method to deposit money (controlled modification)
  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
      print("Deposited: $amount. New balance: $_balance");
    } else {
      print("Deposit amount must be positive.");
    }
  }

  // Method to withdraw money (controlled modification)
  void withdraw(double amount) {
    if (amount > 0 && _balance >= amount) {
      _balance -= amount;
      print("Withdrew: $amount. New balance: $_balance");
    } else if (amount <= 0) {
      print("Withdrawal amount must be positive.");
    } else {
      print("Insufficient balance.");
    }
  }
}

void main() {
  var account = BankAccount(1000.0);

  // Accessing balance using the getter
  print("Initial balance: ${account.balance}");

  account.deposit(500.0);
  account.withdraw(200.0);
  account.withdraw(1500.0); // This will fail due to insufficient balance

  // Direct access to _balance is not allowed from outside this file (library)
  // account._balance = 5000.0; // Error: The setter '_balance' isn't defined for the type 'BankAccount'.
}
```

### Benefits of Encapsulation:

*   **Data Protection:** Prevents direct, unauthorized access to an object's internal state, reducing the risk of data corruption.
*   **Maintainability:** Changes to the internal implementation of a class do not affect external code as long as the public interface (getters, setters, and public methods) remains consistent.
*   **Flexibility:** Allows you to change the internal representation of data without impacting how other parts of the system interact with the object.
*   **Control:** Provides a way to validate data before it's set, ensuring that objects always remain in a valid state.

Encapsulation is a cornerstone of robust and maintainable software design, ensuring that your objects behave predictably and securely.






## 👻 Abstraction: Hiding Complexity

**Abstraction** is an OOP principle that focuses on showing only essential information and hiding the complex implementation details. It allows you to define a blueprint for classes without specifying the full implementation, leaving the details to be filled in by concrete (non-abstract) subclasses. Abstraction helps in managing complexity by providing a simplified view of an object or system.

In Dart, abstraction is primarily achieved using:

1.  **Abstract Classes:** A class declared with the `abstract` keyword. Abstract classes cannot be instantiated directly; they serve as base classes for other classes to extend. They can contain both abstract methods (without implementation) and concrete methods (with implementation).

2.  **Abstract Methods:** Methods declared in an abstract class without a body. Subclasses that extend an abstract class must provide an implementation for all its abstract methods, unless the subclass is also declared as abstract.

### Example of Abstraction

Consider a scenario where we have different types of shapes, and each shape can calculate its area. We can define an abstract `Shape` class with an abstract `area()` method. This forces all concrete shape classes (like `Circle` and `Rectangle`) to implement their own way of calculating the area.

```dart
// Abstract class Shape
abstract class Shape {
  // Abstract method (no implementation)
  double area();

  // Concrete method (with implementation)
  void display() {
    print("This is a shape.");
  }
}

// Concrete class Circle extending Shape
class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double area() {
    return 3.14159 * radius * radius;
  }
}

// Concrete class Rectangle extending Shape
class Rectangle extends Shape {
  double width;
  double height;

  Rectangle(this.width, this.height);

  @override
  double area() {
    return width * height;
  }
}

void main() {
  // You cannot instantiate an abstract class directly
  // var shape = Shape(); // Error: Abstract classes can't be instantiated.

  var circle = Circle(5.0);
  print("Circle area: ${circle.area()}");
  circle.display();

  var rectangle = Rectangle(4.0, 6.0);
  print("Rectangle area: ${rectangle.area()}");
  rectangle.display();
}
```

### Key Points about Abstraction:

*   **Cannot be instantiated:** You cannot create objects directly from an abstract class.
*   **Blueprint for subclasses:** Abstract classes define a common interface and behavior that subclasses must adhere to.
*   **Enforces implementation:** Abstract methods ensure that concrete subclasses provide their own specific implementations for those methods.
*   **Reduces complexity:** By hiding internal details, abstraction simplifies the interaction with objects and makes the code easier to understand and manage.

Abstraction is crucial for designing flexible and extensible systems, allowing you to define common behaviors without committing to specific implementations.






## 🧬 Inheritance: Building on Existing Code

**Inheritance** is a core OOP concept that allows a new class (the **subclass** or **derived class**) to inherit properties and methods from an existing class (the **superclass** or **base class**). This promotes code reusability and establishes a natural "is-a" relationship between classes (e.g., a `Dog` **is a** `Animal`).

In Dart, you use the `extends` keyword to establish an inheritance relationship.

### Example of Inheritance

Let's create a base class `Animal` and then a `Dog` class that inherits from `Animal`.

```dart
class Animal {
  String name;
  int age;

  Animal(this.name, this.age);

  void eat() {
    print("$name is eating.");
  }

  void sleep() {
    print("$name is sleeping.");
  }
}

class Dog extends Animal {
  String breed;

  Dog(String name, int age, this.breed) : super(name, age); // Call superclass constructor

  void bark() {
    print("$name is barking.");
  }

  @override
  void eat() {
    print("$name is eating dog food."); // Overriding the eat method
  }
}

void main() {
  var animal = Animal("Leo", 5);
  animal.eat();
  animal.sleep();

  var dog = Dog("Buddy", 3, "Golden Retriever");
  dog.eat(); // Uses the overridden eat method from Dog class
  dog.sleep(); // Inherited from Animal class
  dog.bark(); // Specific to Dog class
}
```

### Key Aspects of Inheritance:

*   **Code Reusability:** Subclasses automatically get the public and protected members of their superclass, reducing redundant code.
*   **`extends` Keyword:** Used to indicate that a class is inheriting from another class.
*   **`super` Keyword:** Used to refer to the superclass. Most commonly used to call the superclass's constructor from the subclass's constructor (`super(arguments)`).
*   **Method Overriding:** Subclasses can provide their own implementation for a method that is already defined in its superclass. This is done using the `@override` annotation (optional but recommended for clarity and error checking).
*   **Single Inheritance:** Dart supports single inheritance, meaning a class can only extend one superclass. However, it achieves multiple inheritance-like capabilities through mixins (which we'll cover later).

Inheritance is a powerful mechanism for creating a hierarchy of classes, modeling real-world relationships, and promoting a more organized and maintainable codebase.






## 🎭 Polymorphism: Many Forms, One Interface

**Polymorphism** (from Greek, meaning "many forms") is an OOP principle that allows objects of different classes to be treated as objects of a common superclass. It enables you to write more flexible and generic code, where a single interface can be used to represent different underlying data types or behaviors. This is particularly useful when working with collections of objects that share a common base type but have different specific implementations.

In Dart, polymorphism is primarily achieved through:

1.  **Method Overriding:** As seen in inheritance, a subclass can provide its own implementation for a method defined in its superclass. When you call that method on an object, the specific implementation that is executed depends on the actual type of the object at runtime.

2.  **Type Casting and `is` / `as` Keywords:** While not strictly polymorphism, these allow you to check and convert object types, enabling you to treat objects as different types when necessary.

### Example of Polymorphism

Let's revisit our `Animal` and `Dog` classes, and introduce a `Cat` class. Both `Dog` and `Cat` are `Animal`s, but they have different ways of making a sound.

```dart
class Animal {
  void makeSound() {
    print("Animal makes a sound.");
  }
}

class Dog extends Animal {
  @override
  void makeSound() {
    print("Dog barks.");
  }
}

class Cat extends Animal {
  @override
  void makeSound() {
    print("Cat meows.");
  }
}

void main() {
  Animal myDog = Dog(); // Polymorphism: Dog object treated as an Animal
  Animal myCat = Cat(); // Polymorphism: Cat object treated as an Animal

  myDog.makeSound(); // Output: Dog barks.
  myCat.makeSound(); // Output: Cat meows.

  List<Animal> animals = [Dog(), Cat()];

  for (var animal in animals) {
    animal.makeSound(); // Calls the appropriate makeSound based on the actual object type
  }
}
```

In this example, `myDog` and `myCat` are both declared as `Animal` types, but when `makeSound()` is called, Dart determines the actual type of the object at runtime and executes the overridden `makeSound()` method from `Dog` or `Cat` accordingly. This demonstrates how a single method call (`animal.makeSound()`) can exhibit different behaviors based on the object's actual type.

### Benefits of Polymorphism:

*   **Flexibility:** Allows you to write code that can work with objects of various types, as long as they share a common supertype.
*   **Extensibility:** New classes can be added to the system without modifying existing code, as long as they adhere to the common interface.
*   **Code Simplicity:** Reduces the need for complex conditional statements (e.g., `if-else` or `switch`) to handle different object types.

Polymorphism is a powerful tool for creating adaptable and maintainable object-oriented designs.






## 🧩 Mixins: Reusing Code Across Class Hierarchies

**Mixins** in Dart provide a way to reuse a class's code in multiple class hierarchies. Unlike traditional inheritance, where a class can only extend one superclass, mixins allow you to inject functionality into a class without using inheritance. This is particularly useful for sharing common behaviors among unrelated classes.

A mixin is defined like a class, but it's used with the `with` keyword. A class can use multiple mixins.

### Defining a Mixin

A mixin can be any class that doesn't define a constructor and doesn't extend any class other than `Object` (implicitly). It's common to define mixins using the `mixin` keyword for clarity, though a regular class can also be used as a mixin if it meets the criteria.

```dart
mixin Walkable {
  void walk() {
    print("I can walk.");
  }
}

mixin Swimmable {
  void swim() {
    print("I can swim.");
  }
}
```

### Using Mixins

To use a mixin, you apply it to a class using the `with` keyword, followed by one or more mixin names. The methods and properties of the mixin become part of the class.

```dart
class Human with Walkable, Swimmable {
  String name;

  Human(this.name);

  void greet() {
    print("Hello, my name is $name.");
  }
}

class Fish with Swimmable {
  String species;

  Fish(this.species);

  void identify() {
    print("I am a $species fish.");
  }
}

void main() {
  var person = Human("Alice");
  person.greet();
  person.walk(); // Method from Walkable mixin
  person.swim(); // Method from Swimmable mixin

  var salmon = Fish("Salmon");
  salmon.identify();
  salmon.swim(); // Method from Swimmable mixin
  // salmon.walk(); // Error: Fish does not have the walk() method
}
```

### Key Characteristics of Mixins:

*   **Code Reusability:** Share behavior across different class hierarchies without the constraints of single inheritance.
*   **`with` Keyword:** Used to apply one or more mixins to a class.
*   **No Constructors:** Mixins cannot have their own constructors (though they can have instance variables and methods).
*   **Order Matters:** If multiple mixins define the same method, the method from the rightmost mixin (the last one applied) takes precedence.

Mixins are a powerful feature in Dart for achieving flexible code reuse and designing modular applications.






## 🧬 Generics: Flexible and Type-Safe Code

**Generics** (also known as parameterized types) are a powerful feature in Dart that allows you to write code that works with different data types while maintaining type safety. They enable you to create classes, methods, and functions that can operate on objects of various types without sacrificing the benefits of static type checking. This reduces code duplication and makes your code more flexible and reusable.

### Why Use Generics? 🤔

Consider a scenario where you want to create a list that can hold any type of object. Without generics, you might end up with a `List<Object>`, which loses type information and requires manual type checking and casting, leading to potential runtime errors. Generics solve this by allowing you to specify the type of elements a collection (or any other generic type) will hold.

### Generic Classes

You can define a class with one or more type parameters, making it a generic class. The type parameters are typically represented by single uppercase letters, like `T` (for Type), `E` (for Element), `K` (for Key), `V` (for Value), etc.

```dart
class Box<T> {
  T value;

  Box(this.value);

  T getValue() {
    return value;
  }
}

void main() {
  // Creating a Box that holds an integer
  var intBox = Box<int>(123);
  print("Integer Box: ${intBox.getValue()}");

  // Creating a Box that holds a string
  var stringBox = Box<String>("Hello Generics");
  print("String Box: ${stringBox.getValue()}");

  // This would cause a compile-time error due to type safety
  // var boolBox = Box<bool>("true"); // Error: A value of type 'String' can't be assigned to a variable of type 'bool'.
}
```

### Generic Methods

Methods can also be generic, allowing them to operate on different types. The type parameter is placed before the method's return type.

```dart
T firstElement<T>(List<T> list) {
  if (list.isEmpty) {
    throw StateError("List is empty.");
  }
  return list[0];
}

void main() {
  List<int> numbers = [1, 2, 3, 4, 5];
  print("First number: ${firstElement(numbers)}");

  List<String> names = ["Alice", "Bob", "Charlie"];
  print("First name: ${firstElement(names)}");
}
```

### Bounded Generics

You can restrict the types that can be used with a generic type parameter by using the `extends` keyword. This is known as **bounded generics**. It ensures that the type argument must be a subtype of the specified type.

```dart
class NumberBox<T extends num> {
  T value;

  NumberBox(this.value);

  double get doubleValue => value.toDouble();
}

void main() {
  var intNumberBox = NumberBox<int>(10);
  print("Int Number Box: ${intNumberBox.doubleValue}");

  var doubleNumberBox = NumberBox<double>(10.5);
  print("Double Number Box: ${doubleNumberBox.doubleValue}");

  // This would cause a compile-time error because String is not a subtype of num
  // var stringNumberBox = NumberBox<String>("Hello"); // Error: Type 'String' doesn't extend 'num'.
}
```

### Benefits of Generics:

*   **Type Safety:** Prevents runtime errors by enforcing type constraints at compile time.
*   **Code Reusability:** Write generic algorithms and data structures that work with various types without code duplication.
*   **Readability:** Makes code more expressive by clearly indicating the types it operates on.
*   **Performance:** In some cases, generics can lead to better performance by avoiding unnecessary runtime type checks and casts.

Generics are an essential tool for writing robust, flexible, and maintainable Dart code.






## 🏷️ Class Modifiers: `final`, `sealed`, and `base`

Dart provides several class modifiers that allow you to control how classes can be used, extended, and implemented. These modifiers help in designing more robust and predictable APIs. The main class modifiers are `final`, `sealed`, and `base`.

### `final` Classes

A **`final` class** cannot be extended or implemented outside of its own library. This is useful when you want to create a class that is complete and should not be subclassed. It ensures that the class's behavior cannot be altered through inheritance.

```dart
// In my_library.dart
final class MyFinalClass {
  void doSomething() {
    print("Doing something in MyFinalClass.");
  }
}

// In another_library.dart
// import 'my_library.dart';

// class MySubclass extends MyFinalClass {} // Error: The class 'MyFinalClass' can't be extended outside of its library because it's a final class.
```

### `sealed` Classes

A **`sealed` class** is an abstract class that cannot be extended or implemented outside of its own library. Sealed classes are particularly powerful when used with `switch` expressions, as the compiler can check for exhaustiveness, ensuring that you handle all possible subtypes.

```dart
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
  return switch (result) {
    case Success(value: final v): return "Success: $v";
    case Failure(exception: final e): return "Failure: $e";
  };
}

void main() {
  var successResult = Success<int, Exception>(10);
  print(handleResult(successResult));

  var failureResult = Failure<int, Exception>(Exception("Something went wrong"));
  print(handleResult(failureResult));
}
```

### `base` Classes

A **`base` class** requires that any class that extends it must also be a `base`, `final`, or `sealed` class. This ensures that all subtypes of a `base` class are also restricted in how they can be used, maintaining a consistent inheritance hierarchy.

```dart
base class Vehicle {
  void moveForward(int meters) {
    // ...
  }
}

base class Car extends Vehicle {
  int passengers = 4;
  // ...
}

// class MockVehicle implements Vehicle {} // Error: The class 'Vehicle' can't be implemented outside of its library because it's a base class.
```

### Summary of Class Modifiers:

| Modifier    | Can be Extended? | Can be Implemented? | Key Use Case                                                              |
| :---------- | :--------------- | :------------------ | :------------------------------------------------------------------------ |
| `final`     | In same library  | In same library     | Preventing subclassing outside the library.                               |
| `sealed`    | In same library  | In same library     | Creating a fixed set of subtypes for exhaustive pattern matching.         |
| `base`      | Yes              | No (outside lib)    | Enforcing that all subtypes are also restricted (base, final, or sealed). |
| `interface` | No               | Yes                 | Defining a pure interface that can be implemented but not extended.       |
| `abstract`  | Yes              | Yes                 | Defining a class that cannot be instantiated, often with abstract methods. |

These class modifiers provide fine-grained control over your class hierarchies, enabling you to design more robust, predictable, and maintainable APIs in Dart.





