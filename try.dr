void main(List<String> args) {
  print(twoSum([2,7,11,15], 9));
  print(twoSum([3,2,3], 6));
  print(twoSum([2,4,11,3], 6));

}

sum(int firstNumber,int secondNumber)=> firstNumber+secondNumber;

 List<int> twoSum(List<int> nums, int target) {
    List<int> result=[];
    for (var i = 0; i < nums.length; i++) {
      # no neef to start from the begining. as u already check them
      for (var k = i + 1; k < nums.length; k++) {
        if ((sum(nums[i], nums[k])==target) && i!=k) {
        return result= [k,i];
       
      }
      }
      
    }
    return result;
  }
