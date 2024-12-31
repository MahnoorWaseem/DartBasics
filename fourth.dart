//custom operator
//to override the operator at language level only for your class
//by default every class in dart inherits or extends implicitly fromo object class which has the def of all these operators oe methods
//class Cat is same as class Cat extends Object
class Cat extends Object{
  final String name;
  final int age;
  Cat(this.name, this.age);

  @override
  bool operator == (covariant Cat other)=> other.name == name;
//covariant tells dart that forget the parameter type of operator == in object and for his class it would be Cat; This parameter represents another Cat object that you're comparing to the current instance (this.name).
  @override
  int get hashCode => name.hashCode;
  // for eg if we put this  cat class instances are placed in collections like map or sets , dart will idenify that it is unique or not

  //Overall, this implementation of the == operator allows you to compare Cat objects based on their name fields. If two Cat objects have the same name, they are considered equal. Otherwise, they are considered unequal.
}

//example2
class AirthmeticOperator{
  double a;
  AirthmeticOperator(this.a);
  double operator + (AirthmeticOperator b){
    AirthmeticOperator c = new AirthmeticOperator(0);
    c.a = b.a+ a;
    return c.a;
  }



}

void main(){
final cat1 = Cat('bella', 20);
final cat2 = Cat('oo',20);
if(cat1 == cat2){
  print('equal');
}
else{
  print('not equal');
}

AirthmeticOperator b = new AirthmeticOperator(7); 
AirthmeticOperator c = new AirthmeticOperator(1); 
// AirthmeticOperator? d = new AirthmeticOperator(0);  
double d;
d=b+c;
print(d);
}