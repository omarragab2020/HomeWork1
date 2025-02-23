void main () {
List<int> nums = [1,2,4,8];
  int target = 5;
  print(twoSum(nums, target));  
}
List<int> twoSum(List<int> nums, int target) {
  for (int i = 0; i < nums.length; i++) {
    for (int j = i + 1; j < nums.length; j++) {
      if (nums[i] + nums[j] == target) {
        return [i, j]; 
      }
    }
  }
  return [];  
}