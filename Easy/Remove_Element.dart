
class Solution {
  int removeElement(List<int> nums, int val) {
    int len=nums.length;
    nums=replacewithvale(nums, val);
  print(replacewithvale(nums, val));
    return len-nums.length;
  }
// List<int> replacewithvale(List<int> nums, int val)=> nums.fold([], (previousValue, element) {
  
//   if (element!=val) previousValue.add(element);
//   return previousValue;
// });

List<int> replacewithvale(List<int> nums, int val){
  List<int> newnums=[];
  nums.forEach((element) {
    if (element!=val) {
      newnums.add(element);
    }
  });
  return newnums;
}

}

void main(List<String> args) {
  Solution so=Solution();
  print(so.removeElement([0,1,2,2,3,0,4,2], 2));
  print(so.removeElement([3,2,2,3], 3));
}