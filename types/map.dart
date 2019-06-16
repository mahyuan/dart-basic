/***
 * Map
 * 创建Map： var language = {'first': 'Dart', 'second': 'JavaScript'};
 * 创建不可变Map: var language = const {'first': 'Dart', 'second': 'JavaScript'};
 * 构造创建Map: var language = new Map();
 * 操作： [], length, isEmpty(), isNotEmpty, Keys, values, containsKey(), containValues(), remove(), forEach()
 */
// 1.main 方法是程序入口
void main() {
  //  var language = new Map();
  var language = {'first': 'Dart', 'second': 'JavaScript'};
  print(language);
  print(language.containsKey('first'));

  print(language['first']);
  language['first'] = 'HTML';
  print(language);

  var lang2 = const {1: 'first', 'second': 2};
  print(lang2);


  var map = {'first': 'dart', 'second': 'java'};
  print(map.length);
  print(map.keys);
  print(map.values);
  print(map.containsKey('first'));
  print(map.containsValue('java'));
  
  map.remove('second');
  print(map);


  map.forEach(f);

  // List asMap() 数组转换成map
  var list4 = ['1', '2', '3'];
  print(list4.asMap());

}

void f(key, value) => {
  print('key=$key, value=$value')
};