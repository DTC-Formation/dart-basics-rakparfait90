import 'dart:io';
import 'dart:math';

String readLineSync() {
  String? s = stdin.readLineSync();
  return s == null ? '' : s;
}

/**
 * Auto-generated code below aims at helping you parse
 * the standard input according to the problem statement.
 **/
void main() {
    List inputs;
    int surfaceN = int.parse(readLineSync());

    int prevVSpeed = 0; // Ajout d'une variable pour stocker la vitesse verticale précédente

    for (int i = 0; i < surfaceN; i++) {
        inputs = readLineSync().split(' ');
        int landX = int.parse(inputs[0]);
        int landY = int.parse(inputs[1]);
    }

    while (true) {
        inputs = readLineSync().split(' ');
        int X = int.parse(inputs[0]);
        int Y = int.parse(inputs[1]);
        int hSpeed = int.parse(inputs[2]);
        int vSpeed = int.parse(inputs[3]);
        int fuel = int.parse(inputs[4]);
        int rotate = int.parse(inputs[5]);
        int power = int.parse(inputs[6]);

        // Calcul de la différence de vitesse verticale par rapport à la vitesse précédente
        int deltaVSpeed = vSpeed - prevVSpeed;
        
        // Mettre à jour la vitesse verticale précédente
        prevVSpeed = vSpeed;

        // Votre logique de contrôle de la poussée ici
        if (vSpeed <= -40) {
            // Si la vitesse verticale est inférieure ou égale à -40, poussée maximale vers le haut
            print('0 4');
        } else if (deltaVSpeed > 0) {
            // Si la vitesse verticale augmente, on réduit la poussée
            print('0 2');
        } else {
            // Sinon, on laisse la capsule chuter
            print('0 0');
        }
    }
}