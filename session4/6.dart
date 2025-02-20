void main () {
  Person omar = Person('Omar', 2);
omar.displaypersonData();

}

class Person {
  String name;
  int? age;
  bool isStudent = false ;
  Person(this.name, this.age, {this.isStudent = false});
void displaypersonData() {
    print("Name: $name, Age: $age , Student: $isStudent");
  }
}