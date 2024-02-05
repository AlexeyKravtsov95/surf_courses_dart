abstract class Person {
  String name;
  int age;

  @override
  String toString() {
    return 'Имя: $name \nВозраст: $age\n';
  }

  Person(this.name, this.age);
}