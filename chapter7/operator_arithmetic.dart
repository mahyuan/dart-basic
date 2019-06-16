/**
 * 数学运算
 * +
 * -
 * *
 * /
 * ~/
 * %
 * a++
 * ++a
 *
 */
void main() {
  int a = 30;
  int b = 21;
  print(a + b);
  print(a - b);
  print(a * b);
  print(a / b);

  print(a ~/ b);
  print(a % b);

  print(a++);
  print(++b);
  print(b--);
  print(--b);
}
