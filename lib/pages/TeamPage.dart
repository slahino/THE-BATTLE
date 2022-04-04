import 'package:flutter/material.dart';
import 'package:thebattle/models/Character.dart';
import 'package:thebattle/models/Player.dart';
import 'package:thebattle/models/Team.dart';
import 'package:thebattle/widgets/TeamMaster.dart';
import 'package:thebattle/pages/AllCharactersPage.dart';
import 'package:thebattle/widgets/TheBattleBottomNavigationBar.dart';

class TeamPage extends StatefulWidget {
  static const String routeName = "/team";
  static const int routeIndex = 1;

  final Player player;

  TeamPage({Key key, this.player}) : super(key: key);
  @override
  _TeamPageState createState() => _TeamPageState();
}

class _TeamPageState extends State<TeamPage> {

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  _TeamPageState();

  void _onCharacterRemoved(Character character) {
    this.widget.player.team.remove(character);


    final snackBar = SnackBar(content: Text('Character ${character.name} removed'));

    _scaffoldKey.currentState.showSnackBar(snackBar);

    Navigator.pushReplacementNamed(context, AllCharactersPage.routeName);
  }

  void _onIndexChange(int index) {
    if (index == AllCharactersPage.routeIndex) {
      Navigator.pushNamed(context, AllCharactersPage.routeName);
    }
  }

  void _finishTeam() {
    this.widget.player.team.validated = true;
    // Navigator.pushReplacementNamed(context, TeamCustomPage.routeName);
  }

  Widget _buttonFinishTeamOrNeededCharactersInformations() {
    return (widget.player.team.characters.length == Team.maxCharactersNumber && this.widget.player.team.validated == false) 
    ? RaisedButton(
      color: Colors.green,
      onPressed: () => {
        this._finishTeam()
      },
      child: Text(
        "Validate ${this.widget.player.team.name}",
        style: TextStyle(
          color: Colors.white,
          fontFamily: 'Knewave',
          fontSize: 20,
        ),
      ),
    )
    : Text(
      "Still ${Team.maxCharactersNumber - this.widget.player.team.characters.length} characters needed",
      style: TextStyle(
        color: Colors.yellow,
        fontFamily: 'Knewave',
        fontSize: 25,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    try {
      final Character character = ModalRoute.of(context).settings.arguments;

      if (character != null) {
        this.widget.player.team.add(character);
      }
    }
    catch (e) {
      print(e);
    }

    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.player.team.name,
              style: TextStyle(
                color: Colors.red,
                fontFamily: 'Knewave',
                fontSize: 30,
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          children: [
            _buttonFinishTeamOrNeededCharactersInformations(),
            Expanded(
              child: TeamMaster(
                team: this.widget.player.team,
                onRemoved: this._onCharacterRemoved
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: TheBattleBottomNavigationBar(
        selectedIndex: TeamPage.routeIndex,
        onIndexChange: this._onIndexChange,
      ),
    );
  }
}