import 'package:flutter/material.dart';
import 'package:thebattle/models/Character.dart';
// import 'package:thebattle/models/Team.dart';

class CharacterPreview extends StatefulWidget {
  const CharacterPreview({Key key, this.character, this.onSelected, this.visited}) : super(key: key);

  final Character character;
  // final Team team;
  final Function onSelected;

  final bool visited;

  @override
  _CharacterPreviewState createState() => _CharacterPreviewState();
}

class _CharacterPreviewState extends State<CharacterPreview> {
  _CharacterPreviewState();

  Color _backgroundColor() {

    if (widget.visited) {
      return Colors.red[300];
    }
    else if (widget.character.autoSelected == true) {
      return Colors.green[900];
    }
    else if (widget.character.selected == true) {
      return Colors.greenAccent[400];
    }
    else {
      return Colors.red[400];
    }
  }

  void _onTap() {
    this.widget.onSelected(this.widget.character);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: _backgroundColor(),
      child: ListTile(
        onTap: () {
          _onTap();
        },
        leading: Padding(
          padding: EdgeInsets.all(10),
          child: Image(
            image: AssetImage(widget.character.imagePath()),
            width: 100,
          ),
        ),
        title: Text(
          widget.character.name,
          style: TextStyle(
            fontFamily: 'Knewave', fontSize: 20, color: Colors.white),
        ),
      ),
    );
  }
}