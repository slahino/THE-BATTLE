import 'package:thebattle/models/Skill.dart';

class Character {
  final String uuid, name;
  String image = "";
  Skill strength, cleverness, intelligence, speed;

  bool selected = false;
  bool autoSelected = false;

  Character(this.uuid, this.name, this.strength, this.cleverness, this.intelligence, this.speed);


  String imagePath() {
    return 'assets/images/characters/character-' + this.uuid + '.png';
  }
}