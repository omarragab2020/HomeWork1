void main() {
  print(sumList([1, 2, 3, 4, 5]));

}

int sumList(List<int> numbers) {
  int sum = 0;
  for (int num in numbers) {
    sum += num;
  }
  return sum;
}

