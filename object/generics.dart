/**
 * dart 中的泛型
 * Dart 中类型是可选的，可使用泛型限定类型
 * 使用泛型能够有效减少代码重复
 */

void main() {
  var list = new List();
  list.add(1);
  list.add('1');

  // 泛型要求只允许一种类型
  var list1 = new List<String>();
  // list1.add(1); // 不允许int
  list1.add('21');
  list1.add('2=1');


  // 类泛型调用
  var utils1 = new Utils1<int>(); // 可以指定任意类型
  utils1.put(1);

  // 方法泛型调用
  var utils2 = new Utils2();
  utils2.put<int>(1);
}


class Utils {
  int element;
  String elementStr;

  void putInt(int element) {
    this.element = element;
  }

  void putString(String elementStr) {
    this.elementStr = elementStr;
  }
}

// 类的泛型
class Utils1<T> {
  // 属性的泛型只能通过类来传入
  T element;

  void put(T element) {
    this.element = element;
  }

//  void putString(String elementStr) {
//    this.elementStr = elementStr;
//  }
}

// 方法的泛型
class Utils2 {
  void put<T>(T element) {
    print('element is $element');
  }
}