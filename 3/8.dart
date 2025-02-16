
import 'dart:io';
void main() {
   
  stdout.write(" Enter a number: ");
  int? number = int.tryParse(stdin.readLineSync()!);
  if(number !=null)
  if(number >= 70 && number <= 100) {
    print('Congratulations');
  } else {
    print('Failed');
  }
}