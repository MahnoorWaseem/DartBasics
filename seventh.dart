//generators
//Generators in Dart are like magical factories that produce a sequence of values on demand, one at a time, without having to store all the values in memory at once. Imagine you have a conveyor belt, and as you need items, the generator creates them and places them on the belt for you to use.
//Synchronous Generator (sync*): Returns an Iterable object.
// Asynchronous Generator(async*): Returns a Stream object.

//Memory Efficiency: Generators are memory efficient because they only produce values as needed, saving memory compared to storing the entire sequence.
// Lazy Evaluation: They provide lazy evaluation, meaning they only compute values when they're requested, improving performance for large or infinite sequences.
// Easy to Use: You can use generators with familiar iteration constructs like for-in, for each loops, making them easy to integrate into your code.

void main(){
  //generator func sync
  Iterable<int> generateNumbers(int n) sync*{
    for(int i= 1;i<=n;i++){
      yield i;
    }
  }

  var numbers  = generateNumbers(5);
  print('sync gen starts');
  for (var number in numbers){
    print(number);
  }
  print('sync gen finished');


  //generator function async
  //eg1
  Stream<int> asyncCount(int n) async*{
    for(int i= 0; i<n ; i++){
      await Future.delayed(Duration(seconds: 1));
      yield i;
    }
  }

  void test() async{
    await for(var number in asyncCount(5)){
      print(number);
    }
  }
print('async 1 starts (await one in 1 sec delay)');
  test();
   print('async 1 finshed');

//eg2
Stream<int> geekforgeek(int n) async*{
  for(int i = 0; i<=n;i++){
    yield i;
  }
}
print('async2');
geekforgeek(10).forEach((element) {
  print(element);
  });
  print('async 2 finshed');

//infinitte generaor func
Iterable<int> infiniteSequence() sync* {
  int i = 11;
  while (true) {
    yield i++;
  }
}
  var num = infiniteSequence().take(5);
  print('infinite gen');
  num.forEach((element) {
    print(element);
  });
  print('inf gen finished');

}