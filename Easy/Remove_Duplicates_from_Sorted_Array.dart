class Solution {
  int removeDuplicates(List<int> nums) {
     
        int index = 1;
        for(int i=1; i<nums.length; i++){
            if(nums[i] != nums[i-1]){
                nums[index] = nums[i];
                index++;
            }
        }
        return index;
  }
}


void main(List<String> args) {
  Solution so=Solution();
  print(so.removeDuplicates([1,1,2]));
}