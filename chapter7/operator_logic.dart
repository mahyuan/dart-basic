/***
 * 逻辑运算符
 * 反：!
 * 或： ||
 * 且： &&
 */

void main() {
  bool isTrue = true;
  print(!isTrue);

  bool isFalse = false;
  print(isTrue && isFalse);
  print(isTrue || isFalse);


  String  str = '';
  print(str.isEmpty);
  print(!str.isEmpty);
}
