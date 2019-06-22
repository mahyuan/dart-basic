/**
 * 枚举
 * 枚举是一种有穷序列集的数据类型
 * 使用关键字 enum 定义一个枚举
 * 常用于代替常量，控制语句等
 */

void main() {
  /*
  const spring = 0;
  const summer = 1;
  const autumn = 2;
  const winter = 3;

  var currentSeason = 1;

  switch(currentSeason) {
    case spring:
      print('spring');
      break;
    case summer:
      print('summer');
      break;
    case autumn:
      print('autumn');
      break;
    case winter:
      print('winter');
      break;
  }

  */

  var currentSeason = Season.spring;
  print(currentSeason.index);

  switch (currentSeason) {
    case Season.spring:
      print('spring');
      break;
    case Season.summer:
      print('summer');
      break;
    case Season.autumn:
      print('autumn');
      break;
    case Season.winter:
      print('winter');
      break;
  }
}

enum Season { spring, summer, autumn, winter }

/**
 * dart 中枚举特性
 * index 从 0 开始，一次累加
 * 不能指定原始值
 * 不能添加方法
 */


