import 'dart:io';

void main() {
      stdout.write("Enter item to add: ");
      String? item = stdin.readLineSync()!;
      print(addItem(item ));
      stdout.write("Enter item to remove: ");
      String? itemRemove = stdin.readLineSync()!;
      print(removeItem(itemRemove ));

} 
List<String> groceryList = [];
   addItem (String item) 
  {
  groceryList.add(item);
  }

 removeItem (String item) {
  groceryList.remove(item);
}
void displayItems ({bool showCount = true})  {
    for (int i = 0; i < groceryList.length; i++) {
    print("${i + 1}. ${groceryList[i]}");
  }
}