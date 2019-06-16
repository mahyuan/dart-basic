/**
 * 闭包：
 * 闭包是一个方法（对象）
 * 闭包定义在其他方法内部
 * 闭包能够访问外部方法内的局部变量， 并持有其状态
 * 通过局部变量或匿名的方式返回一个方法
 */
void main() {
  var func = a();
  func();
  func();
  func();
  func();

  var func1 = b();
  func1();
  func1();
  func1();
  func1();
  func1();
  func1();
  func1();
}

a() {
  int count = 0;
  printCount() {
    print(count++);
  }
  return printCount;
}

b() {
  int count = 100;
  return () {
    print(count--);
  };
}
