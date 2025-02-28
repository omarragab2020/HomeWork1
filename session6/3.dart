void main() {
  print(findPrimes(1, 22)); 

}

bool isPrime(int num) {
  if (num < 2) return false;
  for (int i = 2; i * i <= num; i++) {
    if (num % i == 0) return false;
  }
  return true;
}

List<int> findPrimes(int start, int end) {
  if (start > end) {
    // تبديل القيم إذا كان start أكبر من end
    int temp = start;
    start = end;
    end = temp;
  }

  List<int> primes = [];
  List<int> numbers = List.generate(end - start + 1, (index) => start + index);

  numbers.forEach((num) {
    if (isPrime(num)) primes.add(num);
  });

  return primes;
}

