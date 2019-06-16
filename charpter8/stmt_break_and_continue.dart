/***
 * break: 终止遍历所有项，多层嵌套的循环中，仅终止当前的循环
 * continue： 跳过当前遍历中continue后面的代码，进入下一次遍历
 */
void main() {
  var list = [1,2,3,4];
  for(var item in list) {
    if(item == 2) {
      // continue;
      break;
    }
//    print(item);
  }

  print('-----');
  var list2 = ['first', 'second', 'third', 'fourth', 'fivth'];
  for(var item in list) {
    print('item is $item');
    for(var item2 in list2) {
      if(item2 == 'second') {
        break;
      }
      print(item2);
    }
  }
}
