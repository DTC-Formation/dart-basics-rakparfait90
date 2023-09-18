void main() {
  int a = 4;
  int b = 90;
  int somme = addition(a, b);
  print('La somme de a = $a et b = $b est $somme');

  int n = 4;
  int result1 = factoriel(n);
  print('Le factoriel de $n est $result1.');

  int base = 2;
  int exposant = 3;
  int result2 = puissance(base, exposant);
  print('$base à la puissance $exposant est $result2');

  String lettre = 'P';
  String result3 = consVoyel(lettre);
  print('$lettre est une $result3.');
}

int addition(int nb1, int nb2) {
  int somme = nb1 + nb2;
  return somme;
}

// int factoriel(int n) {
//   if (n == 0) {
//     return 1;
//   } else {
//     return n * factoriel(n - 1);
//   }
// }

int factoriel(int n) {
  int resultat = 1;

  while (n > 0) {
    resultat *= n;
    n--;
  }

  return resultat;
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
    'u',
    'à',
    'â',
    'é',
    'è',
    'ê',
    'ë',
    'î',
    'ï',
    'ô',
    'û',
    'ù',
    'ü'
  ];

  if (lettre.length == 1) {
    lettre = lettre.toLowerCase();
    if (voyelles.contains(lettre)) {
      return 'voyelle';
    } else {
      return 'consonne';
    }
  } else {
    return 'deux ou plusieurs lettres';
  }
}
