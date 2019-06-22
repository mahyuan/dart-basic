/**
 * 一个文件就是一个库
 * 使用import引入库
 * 如果一个类的名称以下划线 _ 开头， 则仅支持在其所在文件（库）内部使用，不能在其他文件（库）中引用
 */
class Person {
  String name;
  int age;
  String birthday;

  bool get isAdult => age > 18;

  void run() {
    print('Name is $name, age is $age');
  }
}
