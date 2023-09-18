void main() {
  int test = 4;
  int somme = addition(90, test);
  print(somme);

  int n = 4;
  int result1 = factoriel(n);
  print(result1);

  int base = 2;
  int exposant = 3;
  int result2 = puissance(base, exposant);
  print(result2);

  String lettre = 'A';
  String result3 = consVoyel(lettre);
  print('$lettre est une $result3.');
}

int addition(int nb1, int nb2) {
  int somme = nb1 + nb2;
  return somme;
}

int factoriel(int n) {
  if (n == 0) {
    return 1;
  } else {
    return n * factoriel(n - 1);
  }
}

int puissance(int nb, int n) {
  int resultat = 1;

  for (int i = 0; i < n; i++) {
    resultat *= nb;
  }

  return resultat;
}

String consVoyel(String lettre) {
  List<String> voyelles = [
    'a',
    'e',
    'i',
    'o',
    'u'
  ]; // Ajoutez d'autres voyelles au besoin

  if (lettre.length == 1) {
    lettre = lettre
        .toLowerCase(); // Convertit la lettre en minuscule pour être insensible à la casse
    if (voyelles.contains(lettre)) {
      return 'voyelle';
    } else {
      return 'consonne';
    }
  } else {
    return 'Veuillez entrer une seule lettre.';
  }
}
