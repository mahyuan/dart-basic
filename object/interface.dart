/***
 * 接口
 * 类和接口是统一的，类就是接口
 * 每个类都隐式的定义了一个包含所有实例成员的接口
 * 如果是复用已有类的实现，使用继承 (extends)
 * 如果只是使用已有类的外在行为，使用接口 (implements)
 */
void main() {
  var student = new Student();
  student.name = 'Tom';
  student.run();

  var teacher = new Teacher();
  teacher.run();
}

class Person {
  String name;

  // 计算属性
  int get age => 18;

  void run() {
    print('Person run...');
  }
}


// 使用关键字 implements 继承接口，类就是接口，所以可以直接继承类
// 继承的接口需要覆写所有的方法和属性
class Student implements Person {
  @override
  String name;

  @override
  int get  age => null;

  @override
  void run () {
    print('Student run...');
  }
}



// 使用类当做接口时，使用抽象类更像是接口
abstract class Person2 {
  void run();
}


class Teacher implements Person2 {
  @override
  void run() {
    print('Teacher run...');
  }
}

