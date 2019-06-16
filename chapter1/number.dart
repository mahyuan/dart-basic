/***
 * dart demo
 */

// 1.main 方法是程序入口
void main() {
  print('hello world');
  // 2.变量申明用 var , 可赋予不同类型的值； 如果不赋值，默认为null
  var a;
  print(a); // null

  var b = 10;
  print(b);

  var c = 'hello';
  print(c);

  //  3. 使用关键字final 声明一个只能赋值一次的变量, 声明的时候必须赋值
  final d = 'final d';
  print(d);

  // 4. 常量 使用 const 声明常量； 使用const 声明的必须是编译期常量
  const e = 'hhh';
  print(e);

  /***
   * 数据类型
   * 数值型- Numebr: 整型 Int ； 浮点型 double
   */
  num a1 = 10;
  a1 = 12.5;
  print(a1);

  int a2 = 232;
  print(a2);

  double a3 = 12.2;
  print(a3);
  /***
   * 数值型操作
   * 运算符： + ， - ， * ， / （除，结果为浮点型），~/ （除，结果取整，整型）， % （取余，同javascript的取余）
   * 常用属性：isNaN, isEven, isOdd等
   * 常用方法： abs(), round(), floor(), ceil(), toInt(), toDouble()
   */
  print(a1 + a2);
  print(a1 - a2);
  print(a1 * a2);
  print(a1 / a2);
  print(a1 ~/ a2);
  print(a1 % a2);
  print(a1.isNaN);
  print(a1.isInfinite);
  print(a2.isEven); // isEven， isOdd 是Int类型的属性
  print(a2.isOdd);

  int a4 = -100;
  print(a4.isEven);
  double b1 = 1.22;
  print(b1.isNegative);
  print(b1.toString());
  print(b1.abs());
  print(b1.toInt());
  print(a2.toDouble());
  print(b1.floor());
  print(b1.ceil());
  print(b1.round());

}

