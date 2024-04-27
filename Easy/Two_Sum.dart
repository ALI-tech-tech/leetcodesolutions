// Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.

// You may assume that each input would have exactly one solution, and you may not use the same element twice.

// You can return the answer in any order.

void main(List<String> args) {
  print(twoSum([2,7,11,15], 9));
  print(twoSum([3,2,3], 6));
  print(twoSum([2,4,11,3], 6));

}

sum(int firstNumber,int secondNumber)=> firstNumber+secondNumber;

 List<int> twoSum(List<int> nums, int target) {
    List<int> result=[];
    for (var i = 0; i < nums.length; i++) {
      for (var k = 0; k < nums.length; k++) {
        if ((sum(nums[i], nums[k])==target) && i!=k) {
        return result= [k,i];
       
      }
      }
      
    }
    return result;
  }