
void main() {
  print(calculate(25, 5, '+')); 
  print(calculate(4, 1, '-')); 
  print(calculate(5, 8, '*')); 
  print(calculate(7, 6, '/')); 
}
double? calculate(double num1, double num2, String operator) {
  switch (operator) {
    case '+':
      return num1 + num2;
    case '-':
      return num1 - num2;
    case '*':
      return num1 * num2;
    case '/':
      if (num2 == 0) {
        print("you can't devide by");
        return null; 
      }
      return num1 / num2;
    default:
      print("Invalid operator");
      return null;
  }
}
