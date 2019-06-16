/***
 * dynamic 动态类型，可以赋值任意类型
 * dynamic b = 20;
 */

// 1.main 方法是程序入口
void main() {
  var language = {'first': 'Dart', 'second': 'JavaScript'};
  var list5 = new List<dynamic>();
  list5.add(1);
  list5.add('hhh');
  list5.add(true);

  list5.add(language);
  print(list5);

}

void f(key, value) => {
  print('key=$key, value=$value')
};


