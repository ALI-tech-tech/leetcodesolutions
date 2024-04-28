class Solution {
  String longestCommonPrefix(List<String> strs) {
    String longprefix = "";

    for (var i = 0; i < strs[0].length; i++) {
      if (checkletter(strs, strs[0][i], i) == strs[0][i]) {
        longprefix += strs[0][i];
      }
      else break;
    }
    return longprefix;
  }

  checkletter(List<String> strs, String letter, int index) =>
      strs.fold(letter, (previousValue, element) {
        if (element.length-1 >= index) {
          if (previousValue == element[index]) {
            return previousValue;
          }
        }

        return "";
      });
}

void main(List<String> args) {
  Solution so = Solution();
  List<String> strs = ["flower", "flow", "flight"];
  List<String> strs2 = ["dog","racecar","car"];
  print(so.longestCommonPrefix(strs));
  print(so.longestCommonPrefix(strs2));
}
