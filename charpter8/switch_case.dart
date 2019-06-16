/***
 * 比较类型： num, String, 编译期常量， 对象， 枚举
 * 非空case 必须有一个break
 * default 处理默认情况
 * continue
 */
void main() {
  String language = 'Java';
  switch(language) {
    case 'Dart':
      print('is Dart');
      break;
    case 'Java':
      print('is Jave');
      break;
    default:
      print('None');
  }


  switch(language) {
    D:
    case 'Dart':
      print('is Dart');
      break;
    case 'Java':
      print('is Jave');
      // break;
      continue D;
    default:
      print('None');
  }
}

