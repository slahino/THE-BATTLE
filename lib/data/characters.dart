import 'package:thebattle/models/Character.dart';
import 'package:thebattle/models/Skill.dart';

// Tous les personnages avec leurs caractéristiques : uuid, name, strength (0 à 5), speed (0 à 5), cleverness (0 à 5), intelligence (0 à 5)
// Un personnage a au total 12 points de caractéristiques

List <Character> characters = [
  Character("001", "Han Droid", Skill(Skill.STRENGTH, 0), Skill(Skill.SPEED, 4), Skill(Skill.CLEVERNESS, 4), Skill(Skill.INTELLIGENCE, 4)),

  Character("002", "Garbagecol Hector", Skill(Skill.STRENGTH, 5), Skill(Skill.SPEED, 1), Skill(Skill.CLEVERNESS, 1), Skill(Skill.INTELLIGENCE, 5)),

  Character("003", "Algo Ritm", Skill(Skill.STRENGTH, 5), Skill(Skill.SPEED, 1), Skill(Skill.CLEVERNESS, 1), Skill(Skill.INTELLIGENCE, 5)),

  Character("004", "Foobar Baz", Skill(Skill.STRENGTH, 5), Skill(Skill.SPEED, 4), Skill(Skill.CLEVERNESS, 2), Skill(Skill.INTELLIGENCE, 1)),

  Character("005", "Joh Ndoe", Skill(Skill.STRENGTH, 4), Skill(Skill.SPEED, 3), Skill(Skill.CLEVERNESS, 3), Skill(Skill.INTELLIGENCE, 2)),

  Character("006", "Rid Mi", Skill(Skill.STRENGTH, 3), Skill(Skill.SPEED, 3), Skill(Skill.CLEVERNESS, 3), Skill(Skill.INTELLIGENCE, 3)),

  Character("007", "Asyn Kawait", Skill(Skill.STRENGTH, 4), Skill(Skill.SPEED, 5), Skill(Skill.CLEVERNESS, 2), Skill(Skill.INTELLIGENCE, 1)),

  Character("008", "Hel Oworld", Skill(Skill.STRENGTH, 5), Skill(Skill.SPEED, 5), Skill(Skill.CLEVERNESS, 1), Skill(Skill.INTELLIGENCE, 1)),

  Character("009", "A Pachi", Skill(Skill.STRENGTH, 5), Skill(Skill.SPEED, 5), Skill(Skill.CLEVERNESS, 2), Skill(Skill.INTELLIGENCE, 0)),

  Character("010", "Bin Harry", Skill(Skill.STRENGTH, 5), Skill(Skill.SPEED, 4), Skill(Skill.CLEVERNESS, 0), Skill(Skill.INTELLIGENCE, 3)),

  Character("011", "Cee Sharp", Skill(Skill.STRENGTH, 3), Skill(Skill.SPEED, 5), Skill(Skill.CLEVERNESS, 2), Skill(Skill.INTELLIGENCE, 2)),

  Character("012", "Jay Son", Skill(Skill.STRENGTH, 5), Skill(Skill.SPEED, 3), Skill(Skill.CLEVERNESS, 3), Skill(Skill.INTELLIGENCE, 1)),

  Character("013", "Forloop", Skill(Skill.STRENGTH, 5), Skill(Skill.SPEED, 3), Skill(Skill.CLEVERNESS, 3), Skill(Skill.INTELLIGENCE, 1)),

  Character("014", "Bakdor", Skill(Skill.STRENGTH, 5), Skill(Skill.SPEED, 3), Skill(Skill.CLEVERNESS, 2), Skill(Skill.INTELLIGENCE, 2)),

  Character("015", "Single Tone", Skill(Skill.STRENGTH, 5), Skill(Skill.SPEED, 3), Skill(Skill.CLEVERNESS, 2), Skill(Skill.INTELLIGENCE, 2)),

  Character("016", "Ifelse", Skill(Skill.STRENGTH, 5), Skill(Skill.SPEED, 3), Skill(Skill.CLEVERNESS, 2), Skill(Skill.INTELLIGENCE, 2)),

  Character("017", "AI", Skill(Skill.STRENGTH, 1), Skill(Skill.SPEED, 1), Skill(Skill.CLEVERNESS, 5), Skill(Skill.INTELLIGENCE, 5)),

  Character("018", "U Buntu", Skill(Skill.STRENGTH, 3), Skill(Skill.SPEED, 5), Skill(Skill.CLEVERNESS, 2), Skill(Skill.INTELLIGENCE, 2)),

  Character("019", "Ivan Tloop", Skill(Skill.STRENGTH, 3), Skill(Skill.SPEED, 5), Skill(Skill.CLEVERNESS, 2), Skill(Skill.INTELLIGENCE, 2)),

  Character("020", "Diz Einpatern", Skill(Skill.STRENGTH, 3), Skill(Skill.SPEED, 3), Skill(Skill.CLEVERNESS, 3), Skill(Skill.INTELLIGENCE, 3)),

  Character("021", "Dragn Drop", Skill(Skill.STRENGTH, 2), Skill(Skill.SPEED, 3), Skill(Skill.CLEVERNESS, 2), Skill(Skill.INTELLIGENCE, 5)),

  Character("022", "Single Sred", Skill(Skill.STRENGTH, 3), Skill(Skill.SPEED, 5), Skill(Skill.CLEVERNESS, 0), Skill(Skill.INTELLIGENCE, 4)),
];
