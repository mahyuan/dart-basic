/***
 * 方法定义：
 * 返回类型 方法名 (参数1， 参数2， ...) {
 *  方法体 ...
 *  return 返回值
 * }
 *
 * 方法特性：
 * 方法也是对象，并且有具体类型  Function
 * 返回值类型、参数类型都可省略
 * 箭头语法： => expr 是 { return expr;} 的缩写，只适用于一个表表达式
 * 方法都有返回值。 如果没有指定，默认 return null
 * 返回值类型为 void 的方法没有返回值
 */
void main(List args) {
  print('args of main function is ${args}');
  var result = sayHello(2, 'hello');
  print(result);
  var result2 = calAdd(2, 1.5);
  print(result2);
  var result3 = getPersionInfo('mahy', 27);
  print(result3);

  var result4 = printName('tongt', 24);
  print(result4);

  var result5 = printAge(22);
  print(result5);
}

String sayHello(int a, String b) {
  print('Int type a is $a');
  return b;
}


double calAdd(int a, double b) {
   return a * b;
}

String getPersionInfo(String name, int age) {
  return 'name is ${name}, age is ${age}';
}

printName(String name, int age) {
  print('name is $name, age is $age');
}

printAge(int age) =>  'age is $age';


