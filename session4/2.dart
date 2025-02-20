import 'dart:io';

void main() {
    print('Please enter your salary');
  double salary = double.parse(stdin.readLineSync()!);
      print('Please enter your yearsWorked');
  double yearsWorked = double.parse(stdin.readLineSync()!);
  double finalSalary = calculateBonus(salary,yearsWorked);
  print('Your total salary is : $finalSalary');
}
double calculateBonus(double salary, double yearsWorked){
  if (yearsWorked >5) {
    salary = salary + salary *.10;  
  } else {
        salary = salary * .05;  

  }
  return salary ;
}