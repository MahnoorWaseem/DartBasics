Iterable<int> generateNumbers(int n) sync* {
  for (int i = 1; i <= n; i++) {
    yield i; // This "yields" the value to the caller one at a time
  }
}

void main() {
  var numbers = generateNumbers(5);
  print(numbers.runtimeType);

   // This doesn't run the loop yet!
  // for (var number in numbers) {
  //   print(number); // Prints 1, 2, 3, 4, 5 one by one as they are generated
  // }
}