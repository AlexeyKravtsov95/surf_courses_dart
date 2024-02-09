import 'Person.dart';

class Trainer extends Person {
  int trophiesWin;
  String coachTeam;

  Trainer(
    super.name, 
    super.age,
    this.trophiesWin,
    this.coachTeam,
  );

  @override
  String toString() {
    return '${super.toString()}Выигранно троффеев: $trophiesWin\nТренирует команду: $coachTeam';
  }
}