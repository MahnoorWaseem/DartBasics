//streams
 //a future that continuus working , not like its time and im done
 //it send data and its not like im done , will send anotther data and another data and so on

 Stream<String> getname(){
  // return Stream.value('foo');
  return Stream.periodic(const Duration(seconds: 2), (value){ 
    print(value);
return 'foo';
  });//.take(5);
 }
 //The argument to this callback (in ur case its value) is an integer that starts with 0 and is incremented for every event.

 void main(){
void test() async{
  await for (final value in getname()){
    print(value);
  }
  print('stream finished');
}
test();

 }
 //ouput
//  0
// foo
// 1
// foo
// 2
// foo
// 3
// foo
// 4
// foo
// stream finished