import 'Person.dart';

class Trainer extends Person {
  int trophiesWin;
  String coachTeam;

  Trainer(
    String name,
    int age,
    this.trophiesWin,
    this.coachTeam,
  ) : super(name, age);

  @override
  String toString() {
    return '${super.toString()}Выигранно троффеев: $trophiesWin\nТренирует команду: $coachTeam';
  }
}