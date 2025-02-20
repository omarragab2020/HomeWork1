
void main() {
  //Create a Dart program that declares and initializes the following variables:

 personData omar = personData('Omar', 24, 185, false);
omar.displaypersonData();
 }
 class personData {
  String name;
   int age; 
   double height;
   bool isStudent = false;
   personData(this.name,this.age,this.height,this.isStudent);
    void displaypersonData() {
    print("Name: $name, Age: $age, Height: $height, Student: $isStudent");
  }
 }