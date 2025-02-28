import 'dart:io';

void main() {
  stdout.write("Enter degree in Celsius ");
  double celsius = double.parse(stdin.readLineSync()!);

  double fahrenheit = (celsius * 9 / 5) + 32;

  print("degree in Fahrenheit $fahrenheit °F");
}
