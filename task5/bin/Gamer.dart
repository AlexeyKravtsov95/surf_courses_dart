import 'Person.dart';
import 'Role.dart';

class Gamer extends Person {
  int countOfGame;
  String team;
  RolePlayer role;

  Gamer(
    String name, 
    int age,
    this.countOfGame,
    this.team,
    this.role,
  ) : super(name, age);

  @override
  String toString() {
    return '${super.toString()}Количество игр: $countOfGame\nВыступает за команду: $team, Позиция: $role';
  }
}