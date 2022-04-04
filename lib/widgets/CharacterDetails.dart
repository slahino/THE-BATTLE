import 'package:flutter/material.dart';
import 'package:thebattle/models/Character.dart';
// import 'package:thebattle/models/Team.dart';

class CharacterDetails extends StatefulWidget {
  const CharacterDetails({Key key, this.character, this.onAdded}) : super(key: key);

  // final Team team;
  final Character character;
  final Function onAdded;

  @override
  _CharacterDetailsState createState() => _CharacterDetailsState();
}

class _CharacterDetailsState extends State<CharacterDetails> {
  void _addCharacterToTeam() {
    widget.onAdded(widget.character);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.red[100],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: Column(
              children: <Widget>[
                Text(
                  widget.character.name,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Knewave', fontSize: 20, color: Colors.red
                  ),
                ),
                Container(
                  child: Image(
                    image: AssetImage(widget.character.imagePath()),
                    width: 100,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: <Widget>[
                Text('strength : ${widget.character.strength.value}',
                  style: TextStyle(
                    fontFamily: 'Knewave',
                    fontSize: 20,
                    color: Colors.red
                  )
                ),
                Text('speed : ${widget.character.speed.value}',
                  style: TextStyle(
                    fontFamily: 'Knewave',
                    fontSize: 20,
                    color: Colors.red
                  )
                ),
                Text('cleverness : ${widget.character.cleverness.value}',
                  style: TextStyle(
                    fontFamily: 'Knewave',
                    fontSize: 20,
                    color: Colors.red
                  )
                ),
                Text('intelligence : ${widget.character.intelligence.value}',
                  style: TextStyle(
                    fontFamily: 'Knewave',
                    fontSize: 20,
                    color: Colors.red
                  )
                ),
                ElevatedButton(onPressed: () {
                  this._addCharacterToTeam();
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.red),
                ),
                child: Text('Add to team'))
              ],
            ),
          )
        ],
      )
    );
  }
}
