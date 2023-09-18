import 'dart:io';
import 'dart:math';

String readLineSync() {
  String? s = stdin.readLineSync();
  return s == null ? '' : s;
}

void main() {
  List inputs;
  inputs = stdin.readLineSync()?.split(' ') ?? List.filled(4, '');
  int lightX = int.parse(inputs[0]); // the X position of the light of power
  int lightY = int.parse(inputs[1]); // the Y position of the light of power
  int initialTX = int.parse(inputs[2]); // Thor's starting X position
  int initialTY = int.parse(inputs[3]); // Thor's starting Y position

  int thorX = initialTX;
  int thorY = initialTY;

  // game loop
  while (true) {
    int remainingTurns = int.parse(readLineSync());
    var directionX = "", directionY = "";

    if (thorX > lightX) {
      directionX = "W";
      thorX--;
    } else if (thorX < lightX) {
      directionX = "E";
      thorX++;
    }
    if (thorY > lightY) {
      directionY = "N";
      thorY--;
    } else if (thorY < lightY) {
      directionY = "S";
      thorY++;
    }
    print(directionY + directionX);
  }
}
