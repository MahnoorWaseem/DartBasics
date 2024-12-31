String getFullName(String fname, String lname){
  return '$fname $lname';
}

void test(){
  final name = 'foo';
  if(name == 'foo'){
    print('yes ');
  }
  else if(name != 'bar'){
    print('the value is nt bar');
  }
  else{
    print('no');
  }
}

void main(){
  // print(getFullName('mahnoor', 'wasim'));

  //if else
  // test();

  //list
//   final names = ['foo','bar','waz'];
// String name = names[1];
// names.add('my name');
// print(names.length); //4

//sets
// var names = {'mahnoor','hani' , 1};
// names.add('fooo');
// print(names);


//maps
//keys must be unique
//the type of value is object
// var person = {
//   'age':23,
//   'name': 'mahnoor',
  
// };
// print(person);
// person['name'] = 'fooo';
// person['gender'] = 'female';
// print(person);
// {age: 23, name: mahnoor}
// {age: 23, name: fooo, gender: female}



//------------------
//MORE CONEPTS OF COLLEECTION TYPES IN DART

//LIST
// List <int> numbers = [1,2,3,4,5];
// print('Numbers: $numbers'); //Numbers: [1, 2, 3, 4, 5]
// //accessing elements in list
// print(numbers[0]); //firstt number 1
// print(numbers[numbers.length-1]);//lasst number 5
// //modifying list
// numbers.add(6);
// numbers.remove(2);
// numbers[3]=10;
// print('modified list $numbers');
// //commn list operatins and methods
// int sum = numbers.reduce((previousValue,element)=>previousValue+element);
// print(sum);
// bool cntains3 = numbers.contains(3);
// print(cntains3);

//--------
//SETS
// Set <String> fruits = {'apple','banana', ' orange'};
// print(fruits);
// //accessing
// print(fruits.elementAt(1));
// //add remove same as list
// //sme set operations
// Set<String> moreFruits = {'mango', 'papaya'};
//   Set<String> allFruits = fruits.union(moreFruits);
//   Set<String> commonFruits = fruits.intersection(moreFruits);
//   print('All Fruits: $allFruits');
//   print('Common Fruits: $commonFruits');

//------
//maps
// Map <String, int> age ={
//   'john': 24,
//   'alice':23,
//   'bob':45
// };
// print(age);
// //accessing
// int jhnage = age['john']!;
// print('age is ${jhnage}');
// print(age.keys);
// print(age.isEmpty);
// //mdifying map
// age['alice']=31;
// age.remove('bob');
// print(age);
// //iterting
// age.forEach((name, age) { 
//   print('name is ${name} and age is ${age}');
// });

//---
//expanding cllections spread operator
// Lists
  List<int> numbers = [1, 2, 3];
  // Using spread operator to combine two lists
  List<int> moreNumbers = [
    4,
    5,
    ...numbers
  ];
  print('Combined List: $moreNumbers');
  
  // Sets
  Set<String> fruits = {'apple', 'banana', 'orange'};
  // Using spread operator to add elements to a set
  Set<String> moreFruits = {
    'mango',
    ...fruits
  }; 
  print('Expanded Set: $moreFruits');

  // Maps
  Map<String, int> ages = {'John': 25, 'Alice': 30};
  // Using spread operator to merge two maps
  Map<String, int> moreAges = {
    'Bob': 35,
    ...ages
  }; 
  print('Merged Map: $moreAges');

  //iteratin ver collections
//list
for(int number in numbers){
print(number);
}
//set
fruits.forEach((fruit) {
  print(fruit);
});
//map
ages.forEach((name, age) {
    print('$name is $age years old');
  });

}

