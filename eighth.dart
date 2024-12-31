//generics
//create ver simple clasees for reusing code and avoid duplicating them.

//like PairOfInt and PairOfStrring combined in one class PAir
class Pair<A,B>{
  final A value1;
  final B value2;
  Pair(this.value1, this.value2);
}

void main(){
final names = Pair('foo','three');
final names2 = Pair('foo', 3);
print('1');
print(names.value1);
print(names.value2);
print('2');
print(names2.value1);
print(names2.value2);
}