import 'dart:io';
// import 'dart:math';

String readLineSync() {
  String? s = stdin.readLineSync();
  return s == null ? '' : s;
}

void main() {
  List inputs;
  int n = int.parse(readLineSync()); // the number of temperatures to analyse
  inputs = readLineSync().split(' ');

  if (n == 0) {
    print(0);
    return;
  }
  int temperatureProcheDeZero = int.parse(inputs[0]);

  for (int i = 0; i < n; i++) {
    int t = int.parse(inputs[
        i]); // a temperature expressed as an integer ranging from -273 to 5526

    if (t.abs() < temperatureProcheDeZero.abs() ||
        (t.abs() == temperatureProcheDeZero.abs() && t > 0)) {
      temperatureProcheDeZero = t;
    }
  }
  print(temperatureProcheDeZero);
}
