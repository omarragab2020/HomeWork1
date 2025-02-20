import 'dart:io';

void main() {
  //4. Maps, Functions & User Input
  print("Enter fruitName ");
String fruitName = stdin.readLineSync()!;
  int price = getPrice(fruitName);
  print("Price is $price");
}
Map<String, int>  fruitPrices = {
  "Apple" : 30,
  "Banana" : 50,
  "Mango" : 20,
  "Orange" : 15,
};
int getPrice(String fruitName){
  return fruitPrices[fruitName] ?? -1;

}