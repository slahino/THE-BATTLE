import 'package:thebattle/models/Character.dart';
// import 'package:thebattle/models/Player.dart';
import 'package:thebattle/data/characters.dart' as staticData;
import 'dart:math';

class Team {
  final String uuid;
  // final Player player;
  List <Character> characters;
  static const int maxCharactersNumber = 5;
  bool validated = false;

  String name = "My team";

  Team(this.uuid) {
    characters = List();
    characters.addAll(this._randomSelectCharacters());
  }

  List<Character> _randomSelectCharacters() {
    List<Character> listOfRandomCharacters = List(2);

    Random random = new Random();

    Character firstCharacter = staticData.characters[random.nextInt(staticData.characters.length)];
    Character secondCharacter = staticData.characters[random.nextInt(staticData.characters.length)];

    while (secondCharacter == firstCharacter) {
      secondCharacter = staticData.characters[random.nextInt(staticData.characters.length)];
    }

    firstCharacter.autoSelected = true;
    firstCharacter.selected = true;
    secondCharacter.autoSelected = true;
    secondCharacter.selected = true;

    listOfRandomCharacters[0] = firstCharacter;
    listOfRandomCharacters[1] = secondCharacter;

    return listOfRandomCharacters;
  }

  int indexOf(Character theCharacter) {
    int searchedIndex = -1;

    if (this.characters.length > 0) {
      int index = 0;

      this.characters.forEach((Character aCharacter) {
        if (aCharacter.uuid == theCharacter.uuid) {
          searchedIndex = index;
        }
      });
    }
    return searchedIndex;
  }

  int count() {
    return this.characters.length;
  }

  bool add(Character theCharacter) {
    if (this.characters.length < Team.maxCharactersNumber && (this.indexOf(theCharacter) == -1)) {
      this.characters.insert(0, theCharacter);
      theCharacter.selected = true;
      return true;
    }
    else {
      return false;
    }
  }

  bool remove(Character theCharacter) {
    if (this.characters.length > 0) {
      int searchedIndex = this.indexOf(theCharacter);

      if (searchedIndex > -1) {
        this.characters.removeAt(searchedIndex);
        theCharacter.selected = false;
        return true;
      }
      else {
        return false;
      }
    }
    else {
      return false;
    }
  }
}