import 'dart:io';

void main() {
  // Switch Case with Seasons

stdout.write('Enter the month : ');
  int month = int.parse(stdin.readLineSync()!);
  String? season;
  switch (month) {
    case 12 :
    case 1 :
    case 2 :
    season = "Winter";
   break;
    case 3 :
    case 4 :
    case 5 :
    season = "Spring";
   break;
   case 6 :
    case 7 :
    case 8 :
    season = "Summer";
   break;
   case 9 :
    case 10 :
    case 11 :
    season = "Autumn";
   break;
    default:
      season = "Invalid month";
  }
 print("The season for month $month is $season.");
}