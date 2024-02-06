abstract class Person {
  final String name;
  final int age;

  @override
  String toString() {
    return 'Имя: $name \nВозраст: $age\n';
  }

  Person(this.name, this.age);
}