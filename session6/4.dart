
void main() {
  print(findPrimes(1, 20)); 

}

List<int> findPrimes(int start, int end) {
  if (start > end) {
    int temp = start;
    start = end;
    end = temp;
  }

  return List.generate(end - start + 1, (i) => start + i)
      .where((num) => isPrime(num))
      .toList();
}

bool isPrime(int num) {
  if (num < 2) return false;
  for (int i = 2; i * i <= num; i++) {
    if (num % i == 0) return false;
  }
  return true;
}
