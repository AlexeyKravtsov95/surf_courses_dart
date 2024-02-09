import 'Gamer.dart';
import 'Person.dart';
import 'Role.dart';
import 'Trainer.dart';

void main() {
 final gamePlayer = Gamer("John Doe", 20, 3, "TS", RolePlayer.middle);
 final coach = Trainer("John Snow", 34, 1, "TS");
 print(gamePlayer);
 print(coach);
}