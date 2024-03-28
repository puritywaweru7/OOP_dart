import 'dart:io';

abstract class Animal {
  void makeSound();
}

//base class
class Humans {
  void breathe() {
    print("Breathing....");
  }
}

//Inherited class implementing the animal
class Dog extends Humans implements Animal {
  @override
  void makeSound() {
    print("Woof! ");
  }

  void wagTail() {
    print("Tail wagging...");
  }
}

//class that overrides an inherited method
class Cat extends Humans implements Animal {
  @override
  void makeSound() {
    print('Meow!');
  }

  @override
  void breathe() {
    print('Cat breathing...');
  }
}

//class initialized with data from a file
class Zoo {
  List<Animal> animals = [];

  void initializeFromFile(String filePath) {
    File file = File(filePath);
    List<String> lines = file.readAsLinesSync();

    for (String line in lines) {
      if (line.contains("dog")) {
        animals.add(Dog());
      } else if (line.contains("cat")) {
        animals.add(Cat());
      }
    }
  }
}

void main() {
  //initialize zoom from the file
  Zoo zoo = Zoo();
  zoo.initializeFromFile("animal.txt");

  //using for loop to iterate over the list
  for (Animal animal in zoo.animals) {
    animal.makeSound();
    animal.breathe();

    if (animal is Dog) {
      (animal as Dog).wagTail();
    }
  }
}
