void test(String? fname, String? mname, String? lname){
  String? name = fname;
  name ??= mname; //ager name is null only then it will assign mname to name otherwise it will be ignres just like th next line
  name ??= lname;
  print(name); //wil
}

void test2(){
  }

void main(){
//null safety
// const String name = null; error

// String? name = null; //tells its nullabe or optional
// //now name can be foo
// name  = 'foo';
// name = null;

// int? age = 89;
// if(age != null){
//   print('ok');
// }
//  List<String?>? names = ['foo','bar',null];
//  print(names);
//  names= null;
//  print(names);

 //------
 //cherry picking non null values ??
 //ie picking the first non null value
//  const String? fname = null;
//  const String? mname = null;
//  const String? lname = null;
 
// //  const firstNonNullValue = fname ?? mname ??lname; or
//  var firstNonNullValue = fname ?? mname ??lname;
//  print(firstNonNullValue); //foo

//  //-----
//  //null aware assignment operator =?
// test(null, 'wil', 'foo'); //wil

//----
//conditional invokation
//conditionally invoke a methd or property only if that  value is present . otherwise if its null no operation will be executed.
List<String>? names = ['woo'];
  final number = names ?.length; //bc names can be length
  names?.add('baz'); //This line attempts to add the string 'baz' to the list names, but it's using the null safety operator ?.. This means if names is null, the add operation won't be executed.
  print(number);
  print(names);
  //to add baz in names
  if(names!=null){
    names.add('baz'); //this is type promtion bc befre this we couldnt simply use . without ?
    print(names);
  }

}