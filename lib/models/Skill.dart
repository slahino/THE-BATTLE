class Skill {
  static const String STRENGTH = "STRENGTH";
  static const String CLEVERNESS = "CLEVERNESS";
  static const String SPEED = "SPEED";
  static const String INTELLIGENCE = "INTELLIGENCE";

  static final List kinds = [STRENGTH, CLEVERNESS, SPEED, INTELLIGENCE];

  String kind;
  // Valeur minimale à 0 et maximale à 5
  int value;

  Skill (String kind, int value) {
    if (kinds.contains(kind)) {
      this.kind = kind;
    }

    else {
      throw new Exception('The kind parameter is wrong !');
    }

    if (value >= 0 && value <= 5) {
      this.value = value;
    }

    else {
      throw new Exception('Value not found, it must be minimum at 0 and maximum at 5 !');
    }
  }
}