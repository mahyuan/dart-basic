/**
 * Mixins
 * Mixins 类似于多继承， 是在多继承中重用一个类代码的方式
 * 如果 mixins 的多个类中有同名的方法，调用时优先调用最后一个类中的方法
 * 作为 mixins 的类不能有显示声明构造方法
 * 作为 mixins 的类只能继承自Object
 * 使用关键字with连接一个或多个mixin
 */
void main() {
  var d = new D();
  d.a();
  d.b();
  d.c();

  var car = new Car();
  var bus = new Bus();
  car.work();
  bus.work();
}

class A {
  void a() {
    print('A.a()...');
  }
}

class B {
  void b() {
    print('B.b()...');
  }
}

// C 不能继承除 Object 之外的类，即不能手动的让C继承
class C {

  // C() {}  // C 被作为mixins后， C不能显示的声明构造方法，


  void c() {
    print('C.c()...');
  }
}


// 优先有继承（extends)，然后才可以使用mixins（with）
class D extends A with B, C {

}


/**
 *  复杂情况下的 mixin
 */
abstract class Engine {
  void work();
}

class OilEngine implements Engine {
  @override
  void work() {
    print('Work with oil...');
  }
}

class ElectricEngine implements Engine {
  @override
  void work() {
    print('Work with Electric...');
  }
}

// 轮胎
class Tyre {
  String name;
  void run() {
    print('Work with Electric...');
  }
}

class Car = Tyre with ElectricEngine; // 简写，如果内部有实现，不能简写

class Bus = Tyre with OilEngine;




