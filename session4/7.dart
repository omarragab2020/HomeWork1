
void main () {
  for (int i=0; i<=20; i++) {
    if(i !=0) {
      if (i %3 ==0 && i %5 ==0) {
      print("$i FizzBuzz");
    }
    else if (i %3 ==0) {
      print("$i Fizz");
    }
    else if (i %5 ==0) {
      print("$i Buzz");
    }
    }
    
  }
}