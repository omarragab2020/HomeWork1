import 'dart:io';
void main() {

//. Basic Calculator:

stdout.write("Enter The First Number ");
 double num1 = double.parse(stdin.readLineSync()!);
 stdout.write("Enter The Second Number ");
 double num2 = double.parse(stdin.readLineSync()!);
  calculator (num1, num2);
}

 void calculator (double num1 ,double num2 ,[bool addition = true ,bool subtraction= true ,bool multiplication= true ,bool division = true]){
  if(addition) {
     print("addition: $num1 + $num2 = ${num1 + num2}");
  }
  if(subtraction) {
     print("subtraction: $num1 - $num2 = ${num1 - num2}");
  }
  if(multiplication) {
     print("multiplication: $num1 * $num2 = ${num1 * num2}");
  }
  if(division != 0) {
     print("division: $num1 / $num2 = ${num1 / num2}");
  }else {
    print("you can't devide by zero");
  }
 }