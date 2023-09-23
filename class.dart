import 'Adresse.dart';

class Spacecraft {
  String name;
  DateTime? launchDate;

  // Read-only non-final property
  int? get launchYear => launchDate?.year;

  // Constructor, with syntactic sugar for assignment to members.
  Spacecraft(this.name, this.launchDate) {
    // Initialization code goes here.
  }

  // Named constructor that forwards to the default one.
  Spacecraft.unlaunched(String name) : this(name, null);

  // Method.
  void describe() {
    print('Spacecraft: $name');
    // Type promotion doesn't work on getters.
    var launchDate = this.launchDate;
    if (launchDate != null) {
      int years = DateTime.now().difference(launchDate).inDays ~/ 365;
      print('Launched: $launchYear ($years years ago)');
    } else {
      print('Unlaunched');
    }
  }
}

void main() {
  DateTime launchDate = DateTime(1998, 7, 27);
  Spacecraft spacecraft = Spacecraft("Caprice", launchDate);

  spacecraft.describe();
}

class Personne {
  String? nom;
  String? prenom;
  int? age;
  String? sexe;
  int? pointDeVie;

  Adresse adresse;

  Personne(this.nom, this.prenom, this.age, this.sexe, this.pointDeVie,
      this.adresse) {}
  void saluer(Personne p) {
    if (this.sexe == "masculin" && p.sexe == "masculin") {
      print('K\'aiza ${p.nom}');
    } else if (this.sexe == "masculin" && p.sexe == "feminin") {
      print('Bonjour dry ry ${p.nom}');
    } else if (this.sexe == "feminin" && p.sexe == "masculin") {
      print('Bonjour elah ${p.nom}');
    } else {
      print("Bonjour ankia");
    }
  }

  Adresse demanderAdresse(Personne p) {
    return p.adresse;
  }
}
