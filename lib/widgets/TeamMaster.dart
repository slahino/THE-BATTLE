import 'package:flutter/material.dart';
import 'package:thebattle/models/Character.dart';
import 'package:thebattle/models/Team.dart';
import 'package:thebattle/widgets/TeamCharacterPreview.dart';

class TeamMaster extends StatefulWidget {
  const TeamMaster({Key key, this.team, this.onRemoved}) : super(key: key);

  // final List <Character> characters;
  final Team team;
  final Function onRemoved;

  @override
  _TeamMasterState createState() => _TeamMasterState();
}

class _TeamMasterState extends State<TeamMaster> {
  Character _selectedCharacter;

  _onCharacterSelect(Character character) {
    setState(() {
      this._selectedCharacter = character;
    });

    widget.onRemoved(this._selectedCharacter);
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.team.characters.length,

      itemBuilder: (BuildContext context, int index) {
        if (index != null) {
          final Character character = widget.team.characters[index];

          return TeamCharacterPreview(character: character, onSelected: _onCharacterSelect);
        }
        else {
          return Container();
        }
      },
    );
  }
}