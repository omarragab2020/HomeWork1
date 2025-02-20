import 'dart:io';

void main() {
   print("Enter the day:");
    String day = stdin.readLineSync()!;
    print(getDayType(day));

}
String getDayType(String day) {
  switch (day) {
    case "Saturday":
    case "Sunday":
      return "Weekend";
    case "Monday":
    case "Tuesday":
    case "Wednesday":
    case "Thursday":
    case "Friday":
      return "Weekday";
    default:
      return "Invalid day";
  }
}