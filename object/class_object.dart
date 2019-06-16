/**
 * class
 */

void main() {
  var persion = new Persion();
  persion.name = 'mahy';
  print(persion.name);

  persion.age = 22;
  print(persion.age);

  persion.info();
  print(persion.gender);


}

class Persion {
  String name;
  int age;
  final gender = 'male';
  void info() {
    print('Name is $name, age is $age');
  }
}



