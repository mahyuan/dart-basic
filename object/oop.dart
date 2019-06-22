/**
 * 面向对象
 * 类与对象， 声明、 创建及其基本特性
 * 构造方法及初始化列表
 * 静态成员及对象操作符的使用
 *
 */


/**
 * 类与对象
 * 使用关键字 class 声明一个类
 * 使用 关键字 new 创建一个对象， new 可省略
 * 所有对象都继承自 Object
 *
 * 属性与方法：
 * 属性会默认生成 getter 和 setter 方法
 * 使用 final 生成的属性只有 getter 方法，只读不可以写
 * 属性和方法通过 . 访问
 * 方法不能重载
 */


/***
 * 类和成员可见性
 * dart中的可见性以library（库）为单位
 * 默认情况下， 每一个dart 文件就是一个库
 * 使用下划线 _ 表示库的私有性
 * 使用 import 导入库
 */


/**
 * 计算属性
 * 计算属性的值是通过计算而来，本身不存储值
 * 计算属性赋值，其实是通过计算转换到其他实例变量
 *
 */


/**
 * 常量构造方法
 * 如果累是不可变状态，可以把对象定义为编译器常量
 * 使用const声明构造方法，并且所有变量都为 final
 * 使用 const 声明对象，可以省略
 */
void main() {
  const person = const Person('mahy', 22);
  person.work();

  var page = new Page();
//  page.scrollDown();
  Page.scrollDown(); // 静态的方法直接访问
  page.scrollUp();

//  对象操作符
//  Person3 person3 = new Person3('mahy', 22);
//  person3?.name;

//  var person3 = '';
//  person3 = '';
//  person3 = new Person3();

//  (person3 as Person3).work();
//  if(person3 is Person3) {
//    person3.work();
//  }

//  if(person is! Person) {
//    person.work();
//  }

  var person3 = new Person3();
  person3..name = 'Tome'
          ..age = 22
          ..work();


//  call
  var people = new People();
  print(people('mahy', 23));

}


class Person {
  final String name;
  final int age;

  const Person(this.name, this.age);

  void work() {
    print('Work');
  }
}


/***
 * 工厂构造方法
 * 工厂构造方法类似于设计模式中的工厂模式
 * 在构造方法前面添加关键字 factory 实现一个工厂构造方法
 * 在工厂构造方法中可返回对象
 */

class Logger {
  final String name;

  static final Map<String, Logger> _cache = <String, Logger>{};

  factory Logger(String name) {
    if (_cache.containsKey(name)) {
      return _cache[name];
    } else {
      final logger = Logger._internal(name);
      _cache[name] = logger;
      return logger;
    }
  }

  Logger._internal(this.name);

  void log(String msg) {
    print(msg);
  }

}

/**
 * 初始化列表
 * 初始化列表会在构造方法体执行之前执行
 * 使用逗号分隔初始化列表
 * 初始化列表常用于设置final变量的值
 */
class Person2 {
  String name;
  int age;
  final String gender;

//  Person2.withMap(Map map): gender = map['gender']{
//    this.name = map['name'];
//    this.age = map['age'];
//  }
  Person2.withMap(Map map): name = map['name'], gender = map['gender'] {
    age = map['age'];
  }

  void work() {
    print('Work');
  }
}


/**
 * 静态成员
 * 使用static关键字实现类级别的变量和函数
 * 静态成员不能访问非静态成员， 非静态成员可以访问静态成员
 * 类中的常量需要使用 static const 声明
 */

class Page {
  static int currentPage = 1;
  static const int maxPage = 10; // 声明常量必须使用 static 关键字

  static void scrollDown() {
    currentPage =  1;
    print('scroll down...');
  }

  void scrollUp() {
    currentPage++;
    print('scroll up...');
  }
}


/**
 * 对象操作符
 * 条件成员访问： ?.
 * 类型转换： as
 * 是否制定类型: is , is!
 * 级联操作符
 *
 */

class Person3 {
  String name;
  int age;

  void work() {
    print('Work');
  }
}

/**
 * 对象 call 方法
 * 如果类实现了 call 方法，则该类的对象可以作为方法使用
 */
class People {
  String name;
  int age;

//  void work() {
//    print('call ');
//  }
  String call(String name, int age) {
    return "name is  $name, age  is $age";
  }
}
