/***
 * dart demo
 */

// 1.main 方法是程序入口
void main() {
  /***
   * 字符串 String
   * 使用引号或双引号创建字符串
   * 使用三个 单引号或双引号创建多行字符串
   * 使用r创建原始的raw字符串
   *
   */
  String str1 = 'hello';
  print(str1);
  String str2 = ''' hello 
                    dartt'''; // """
  print(str2);

  String str3 = 'hello \n world';
  print(str3);

  String str4 = r'hello \n dart raw string'; // hello \n dart raw string
  print(str4);
  /***
   * 字符串的常用操作
   * 运算符： + ， * ， == ， []： 加， 重复几次， 是否相等， 取下标字符
   * 差值表达式： ${expression}
   * 属性： length, isEmpty, isNotEmpty
   * 常用方法： contains(), subString();  startWith(), endWidth(); indexOf(), lastIndexOf()
   *        toLowerCase(), toUpperCase(); trim(), trimLeft(), trimRight();
   *        split(), replaceXXX()--All/first/xxx
   */
  print(str3 + 'new'); // + 相加
  print(str3 * 2); // 重复几次
  print(str3 == str4);
  print(str3[1]); // 按下标取字符

  int i1 = 1;
  int i2 = 2;
  print("i1 + i2 = ${ i1 + i2 }"); // 类似javascript `${}`
  print(str2.length);
  print(str3.isEmpty);
  print(str4.contains('s'));
  print(str3.substring(0,3));

  String str5 = 'hello world';
  print(str5.split(' ')); // [hello, world]

  print(str5.replaceAll('world', 'mahy'));

}


