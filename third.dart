//ch 6 dart enumeratins, classes and objectss

//data enumeration -  The enum keyword is used to define an enumeration type in Dart. The use case of enumeration is to store finite data members under the same type definition. 
enum Gfg {
  welcome, to, here
}

//switch case
enum AnimalType{
  cat, dog, bunny
}

void test(AnimalType animal){
// print(animal);
// //oolder way not reccommeended
// if(animal == AnimalType.cat){
//   print('its cat');
// }
// else if(animal ==  AnimalType.dog){
//   print('its dog');
// }

//switch --reccmmedended
switch (animal){
case AnimalType.cat:
print('cat');
break;

case AnimalType.dog:
print('dog');
break;

case AnimalType.bunny:
print('bunny');
break;
}
}

//classes
class Person{
  final String name;
  final int age;

  Person(this.name, this.age);//constructed

  void printName(){
    print(name);
    print(age);
  }

  void run(){
    print('running');
  }
  void breathe(){
    print('breathing');
  }
}

//iinheritance
 class Policeman extends Person{
  final int desg;
  Policeman(super.name, super.age, this.desg);
  
}

//factory cnstructor  (not larned in detail)
// Unlike regular constructors, which always create new instances of the class, factory constructors can return existing instances, or instances of a subtype, or even instances of a different class altogether.
class Cat{
  final String name;
  //manual constructr
  Cat(this.name); //its imp with factory cnstructoor as well
  //factory cnst
  factory Cat.persian(){
    return Cat('Persian Catt'); //cann return objects that are not from same class
  }

}

void main(){
  //1. enumration
// print(Gfg. welcome); //gfg.welcome
// print(Gfg.welcome.name); //welcme

// for (Gfg geek in Gfg.values){
//   print(geek.name);
// }

// //2. switch case - preferre way of wrking with enumeratins
// test(AnimalType.bunny);

//3. classes
  // final person = Person('mahnooor',20);//persn variable is the instance of the persoon class
  // // print(person.name);
  // person.printName();
  // person.run();
  // person.breathe();

  //----
  //inheritance and sub-classesA class that is derived from another class is called a subclass (also a derived class, extended class, or child class). The class from which the subclass is derived is called a superclass (also a base class or a parent class).
//  var police = Policeman('aqib', 23, 102);
//  police.printName();
//  police.breathe();
 
 //abstract class
 // ac cant be instantiated
 // ac is a class that groups together the logic with the sole purpose of other classes using its functionality , only to b usedd by other classes and then you ca inherit it using exends.

 //factory constructor 
//  final cat = Cat('bella'); //exttra
 final persian = Cat.persian();
 print(persian.name);

}