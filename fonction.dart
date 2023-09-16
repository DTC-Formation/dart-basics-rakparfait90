void main() {
  // int test = 4;
  // int somme = addition(90, test);
  // print(somme);

  int n = 4;
  int result = factoriel(n);
  print(result);

  int base = 2;
  int exposant = 3;
  int resultat = puissance(base, exposant);
  print(resultat);
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

String consVoyel() {
  List voyelle = ['a', 'e', 'i', 'o'];
}
