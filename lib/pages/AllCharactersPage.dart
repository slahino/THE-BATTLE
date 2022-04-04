import 'package:flutter/material.dart';
import 'package:thebattle/models/Character.dart';
import 'package:thebattle/models/Player.dart';
import 'package:thebattle/models/Team.dart';
import 'package:thebattle/widgets/CharacterMaster.dart';
import 'package:thebattle/widgets/CharacterDetails.dart';
import 'package:thebattle/widgets/TheBattleBottomNavigationBar.dart';
import 'package:thebattle/data/characters.dart' as staticData;
import 'package:thebattle/pages/TeamPage.dart';

class AllCharactersPage extends StatefulWidget {
  static const String routeName = "/";
  static const int routeIndex = 0;

  final Player player;
  // final Team team;

  AllCharactersPage({Key key,  this.player}) : super(key: key);

  @override
  _AllCharactersPageState createState() => _AllCharactersPageState();
}

class _AllCharactersPageState extends State<AllCharactersPage> {
  List <Character> allCharacters;
  Character _selectedCharacter;

  _AllCharactersPageState() {
    allCharacters = staticData.characters;
  }

  void _onCharacterSelect(Character character) {
    setState(() {
      if (this._selectedCharacter == character) this._selectedCharacter = null;
      this._selectedCharacter = character;
    });
  }

  void _onCharacterAdded(Character character) {
    if (widget.player.team.count() == Team.maxCharactersNumber) {
      _showAlert('Error', 'There are already ${Team.maxCharactersNumber} characters in your team. You can remove a character from your team to add another.');
    }
    else if (widget.player.team.indexOf(character) != -1) {
      _showAlert('Error', '"${character.name}" is already in your team come on !');
    }
    else {
      Navigator.pushReplacementNamed(context, TeamPage.routeName, arguments: character);
    }
  }

  Future<void> _showAlert(String title, String message) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(message),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('OK :('),
              onPressed: () {
                Navigator.of(context).pop();
              },
            )
          ],
        );
      }
    );
  }

  Widget _getCharacterDetails() {
    if (this._selectedCharacter != null) {
      return CharacterDetails(character: this._selectedCharacter, onAdded: this._onCharacterAdded);
    }
    else {
      return Container();
    }
  }

  void _onIndexChange(int index) {
    if (index == TeamPage.routeIndex) {
      Navigator.pushNamed(context, TeamPage.routeName);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage('assets/images/the-battle-logo.png'),
              width: 100,
            )
          ],
        )
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: double.infinity,
              child: _getCharacterDetails(),
            ),
            Expanded(
              child: CharacterMaster(
                characters: allCharacters, onSelected: this._onCharacterSelect
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: TheBattleBottomNavigationBar(
        selectedIndex: AllCharactersPage.routeIndex,
        onIndexChange: this._onIndexChange
      ),
    );
  }
}