void main() {
Human omar =Human();
omar.name = 'omar' ;
omar.hieght =182;
omar.wieght = 83;
print(omar.hieght);
omar.eating();

}
class Human {
  String? name;
  int? hieght;
  int? wieght;
  void eating() {
    print("He is eating");
  }
}