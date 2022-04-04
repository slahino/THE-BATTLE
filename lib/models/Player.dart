import 'Team.dart';

class Player {
  final String uuid;
  final String firstname;
  final String lastname;
  final String email;
  // Le genre, 1 pour un mâle et 2 pour une femelle
  final int gender;

  Team team;

  Player(this.uuid, this.firstname, this.lastname, this.email, this.gender) {
    if (gender != 1 && gender != 2) {
      throw new Exception('Gender not found, it must be either 1 if it\'s a male or 2 if it\' a female !');
    }

    this.team = Team('My Team');
  }
}