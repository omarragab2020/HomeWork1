import 'dart:io';

void main () {
  stdout.write("Enter the number: ");
  double? num = double.tryParse(stdin.readLineSync()!);
  if(num!= null)
    if (num > 0) {
    print(" The number is positive");
  } else if (num < 0) {
    print("The number is negative");
  } else {
    print("The number is 0");
  }
}