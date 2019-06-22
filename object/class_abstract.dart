/**
 * 抽象类
 * 抽象类使用 abstract 表示，不能直接被实例化
 * 抽象方法不用abstract 修饰，无实现
 * 抽象类可以没有抽象方法
 */
void main() {
  // var person = new Person(); // warning： 抽象类不能被实例化
  var student = new Student();
  student.run();
}


abstract class Person {
  void run() {} // 空实现
}

//抽象方法无实现，即内部为空，在继承时进行覆写
class Student extends Person {
  @override
  void run() {
    print('run...');
  }
}

