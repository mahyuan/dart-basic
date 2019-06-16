/***
 * 方法对象
 * 方法可作为对象赋值给其他变量
 * 方法可作为参数传递给其他方法
 *
 */

void main () {
  Function func = say;
  func();

  var list = [1, 2,3,4,5];
  var list2 = ['h', 'e', 'l' ,'l', 'o'];
  print(listTimes(list2, times));

}

void say() {
  print('hello');
}

List listTimes(List list, String times(str)) {
  for(var i = 0; i < list.length; i++) {
    list[i] = times(list[i]);
  }
  return list;
}

String times(str) {
  return str * 3;
}
