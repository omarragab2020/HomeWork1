void main() {
  Employee fullTimeEmp = FullTimeEmployee('omar', 10, 1000, 3400);
  Employee partTimeEmp = PartTimeEmployee('ahmed', 5, 5000, 4000);

  print(fullTimeEmp); 
  print(partTimeEmp);
}
abstract class Employee {
  String name;
  int id;

  Employee(this.name, this.id);

  double calculateSalary();

  @override
  String toString() {
    return '${calculateSalary().toStringAsFixed(2)}';
  }
}

class FullTimeEmployee extends Employee {
  double baseSalary;
  double bonus;

  FullTimeEmployee(String name, int id, this.baseSalary, this.bonus) : super(name, id);

  @override
  double calculateSalary() {
    return baseSalary + bonus;
  }
}

class PartTimeEmployee extends Employee {
  double hoursWorked;
  double hourlyRate;

  PartTimeEmployee(String name, int id, this.hoursWorked, this.hourlyRate) : super(name, id);

  @override
  double calculateSalary() {
    return hoursWorked * hourlyRate;
  }
}


