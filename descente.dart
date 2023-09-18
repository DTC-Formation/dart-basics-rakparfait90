import 'dart:io';
import 'dart:math';

String readLineSync() {
  String? s = stdin.readLineSync();
  return s == null ? '' : s;
}

void main() {
  List inputs;

  // game loop
  while (true) {
    var max = 0, imax = 0;
    for (int i = 0; i < 8; i++) {
      int mountainH = int.parse(
          readLineSync()); // represents the height of one mountain, from 9 to 0. Mountain heights are provided from left to right.
      if (mountainH > max) {
        max = mountainH;
        imax = i;
      }
    }

    print(imax);
  }
}
