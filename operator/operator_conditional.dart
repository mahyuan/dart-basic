/***
 * 条件表达式
 * 三目运算符：condition ? expr1 : expr2
 * ?? 运算符： expr1 ?? expr2 , 左边的值为空，则赋值右边的运算符的值，否则赋值左边运算符的值
 */

void main() {
  int gender = 0;
  String str = gender == 0 ? 'male' : 'famle';
  print(str);

  String a ;
  String b = 'dart';
  String c = a ?? b;
  print(c);

}
