import 'Person.dart';
import 'Role.dart';

class Gamer extends Person {
  final int countOfGame;
  final String team;
  final RolePlayer role;

  Gamer(
    super.name,
    super.age,
    this.countOfGame,
    this.team,
    this.role,
  );

  @override
  String toString() {
    return '${super.toString()}Количество игр: $countOfGame\nВыступает за команду: $team, Позиция: $role';
  }
}