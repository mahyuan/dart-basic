/**
 * 匿名方法：
 * 可赋值给变量，通过变量进行调用
 * 可在其他方法中直接调用或传递给其他方法
 */

void main() {
  var func = (str) {
    print('hello, ${str}');
  };

  func('mm');
}

