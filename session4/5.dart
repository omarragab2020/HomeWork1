void main() {
  //5. Sets, Functions & Return Statement
  List<String> names = ['ahmed','omar','mohamed','ahmed','omar'];

print("Set is : ${uniqueNames(names)}");
}

uniqueNames(List<String> names) {
  return names.toSet();
} 