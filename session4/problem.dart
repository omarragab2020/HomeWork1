void main () {
   print(duplicate([1, 2, 3, 4])); 
  
}
bool duplicate(List<int> nums) {
  Set<int> appears  = {}; 

  for (int num in nums) {
    if (appears.contains(num)) {
      return true; 
    }
    appears .add(num); 
  }
  
  return false; 
}