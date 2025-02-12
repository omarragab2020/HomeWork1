import 'dart:io';

void main () {
  // 8: Switch Case
  stdout.write('Enter the temperature :');
  int temperature = int.parse(stdin.readLineSync()!);
  if (temperature >= 30) {
      print("It's hot");
  } else if (temperature >= 15 && temperature < 30){
     print("It's warm");

  }else {
         print("It's cold");

  }
}