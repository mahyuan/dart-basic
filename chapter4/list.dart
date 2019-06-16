/***
 * dart demo
 */

// 1.main 方法是程序入口
void main() {
  /***
   * 列表 List， 和数组是同一个概念
   * 创建List: var list = [1,2];
   * 创建不可变的List:  var list = const [1,2,3];
   * 构造创建： var list = new List();
   * 常用操作：[], length, add(), insert(), remove(), clear(), indexOf(), lastIndexOf(),
   *        sort(), sublist(), shuffle(), asMap(), forEach()
   */
  var list1 = [1,2,3, 'hello', true];
  print(list1);
  print(list1[2]);
  print(list1.length);
  list1[3] = 'hhh';
  print(list1);

  var list2 = const [1, 2, 3];
  print(list2);
  //  list2[1] = 5; // 报错
  var list3 = new List();
  print(list3);

  var list = ['hello', 'mayh'];
  print(list.length);
  // .add(String value);
  list.add('6');
  list.add('new');

  // .insert( int index, String element)
  list.insert(0, 'second');

  print(list);

  // .remove(Object value)
  list.remove('6');
//  list.removeAt(index);
//  list.removeLast();
//  list.removeRange(start, end)
  print(list);

//  list.clear();

  var indexDart =  list.indexOf('dart');
  print(indexDart);

  list.sort(); //
  //  list.sublist(start, [end) // 截取
  print(list.sublist(2,3));
  print(list);

  list.forEach(print);
}
