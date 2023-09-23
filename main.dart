import 'Adresse.dart';
import 'class.dart';

void main() {
  Adresse adr1 = Adresse("3H", "Tana", "Mada", 101);
  Adresse adr2 = Adresse("3H", "Lion", "France", 34);
  var rakoto = Personne("Parfait", "Rakoto", 33, "masculin", 100, adr1);
  var salohy = Personne("Salohy", "Randria", 67, "feminin", 89, adr2);

  print(rakoto.nom);
  print(rakoto.age);
  print(rakoto.adresse.ville);

  print(salohy.nom);
  print(salohy.age);
  rakoto.saluer(rakoto);
  salohy.saluer(rakoto);
  rakoto.saluer(salohy);
  salohy.saluer(salohy);
}
