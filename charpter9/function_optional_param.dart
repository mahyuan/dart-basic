/**
 * 可选参数：
 * 可选命名参数: {param1, param2}
 * 可选位置参数： [param1, param2]
 * 如果存在具体参数，可选参数声明，必须在参数后面
 */

void main () {
  printPersion('mahy'); // name=mahy, age=null, gender=null
  printPersion('mhy', age: 22); // name=mhy, age=22, gender=null
  printPersion('mhyyy', age: 25, gender: 'male'); // name=mhyyy, age=25, gender=male

  printPersion2('mahy'); // name=mahy, age=null, gender=null
  printPersion2('mhy',22); // name=mhy, age=22, gender=null
  printPersion2('mhyyy',25, 'male'); // name=mhyyy, age=25, gender=male
  printPersion2('mhyyy',25,'male'); // name=mhyyy, age=25, gender=male
  say('mahy');
}

printPersion(String name, {int age, String gender}) {
  print('name=${name}, age=${age}, gender=${gender} ');
}



printPersion2(String name, [int age, String gender]) {
  print('name=${name}, age=${age}, gender=${gender} ');
}


/***
 * 默认参数值:
 * 使用 = 指定
 * 默认参数值是编译期的
 *
 */
say (String name, {int age = 22, String gender = 'male'}) {
  print('name is $name, age is $age, gender is $gender');
}
