/**
 * 操作符覆写
 * 操作符的覆写在类中定义
 * 格式：
 * 返回类型 operator 操作符 (参数1，参数2, ...) {
 *  实现体
 *  return 返回值
 * }
 *
 * 可以覆写的操作符，查看官方文档
 */

void main () {
  var person1 = new Person(11);
  var person2 = new Person(11);

  print(person1 > person2);

  person1.age;
  print(person1['age']);

}

class Person {
  int age;

  Person(this.age);


  // 覆写 >
  bool operator > (Person person) {
    return this.age > person.age;
  }

  // 复写 []
  int operator [] (String str) {
      if('age' == str) {
        return age;
      }
      return 0;
  }

  // 覆写快捷键  右键 => Gemerator(cammand + N) => 选择需要的项
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Person &&
              runtimeType == other.runtimeType &&
              age == other.age;

  @override
  int get hashCode => age.hashCode;
  
}



