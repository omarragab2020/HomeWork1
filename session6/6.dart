void main() {
  print(reverseString('omar'));  

}

String reverseString(String input) {
  return input.split('').reversed.join('');
}

