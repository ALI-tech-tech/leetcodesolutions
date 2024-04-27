class Solution {
  bool isPalindrome(int x) {
    String reversed=reversint(x);
    if (x.toString()==reversed) {
      return true;
    }
    return false;
  }

    reversint(int num)=>List.generate(num.toString().length, (index) => num.toString()[index]).reversed.join("");

}

void main(List<String> args) {
  Solution so=Solution();
  print(so.isPalindrome(10));
  print(so.isPalindrome(-12));
  print(so.isPalindrome(11));
  print(so.isPalindrome(121));
}