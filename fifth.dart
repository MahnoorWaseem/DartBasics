//ADVANCED DART
//1. extensions - adds func to existing class

class Cat{
  final String name;
  Cat(this.name);
}
extension Run on Cat{
  void run(){
    print('running');
  }
}

class Person {
  final String fname;
  final String lname;
  Person(this.fname, this.lname);
}
extension Fullname on Person{
  String get fulln => '$fname $lname'; 
  //his part defines a getter method named fulln. The get keyword indicates that fulln is a getter method, which means it provides access to the value of a property without explicitly using a method call syntax. It returns a String, as indicated by the return type String.
}

void main(){
  //1.extension
  final meow = Cat('fluffers');
  meow.run();

  final foo = Person('mahnoor', 'wasim');
  print(foo.fulln);

  //2.future - not gonna return immediately will take some time
  
  Future<int> heavyFuture(int a){
    return Future.delayed(const Duration(seconds: 3),(){
      return a*22222;
    });
  }

  void test() async{
    final res = await heavyFuture(10);
    print(res);
  }
  test();
}


