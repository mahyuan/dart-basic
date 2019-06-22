/**
 * 面向对象高级特性
 * 继承，继承中的构造方法
 * 抽象类
 * 接口
 * Mixins, 操作符的覆写（操作符的重载）
 */

/**
 * 继承
 * extends 关键字
 * 子类会继承父类中可见的属性和方法，不会继承构造方法
 * 子类能够覆写父类的方法，getter 和 setter
 * 单继承，多态性
 */
void main () {
  // 继承
  var student = new Student();
  student.name = 'Bob';
  student.age = 22;
  print(student.isAdult);


  //  多态
  Person person = new Student();
  if(person is  Student) {
    person.study();
  }

  print(person);
  print(person.toString());
}
class Person {
  String name;
  int age;
  bool get isAdult => age > 18;

  void run() {
    print('Person run....');
  }
}

class Student extends Person {
  void study() {
    print('student study..');
  }

  // 覆写父类的属性和方法
  @override
  bool get isAdult => age > 15;

  @override

  void run() {
    print('student run...');
  }
}
