class Solution {
  Map<String, int> roman = {
    "I": 1,
    "V": 5,
    "X": 10,
    "L": 50,
    "C": 100,
    "D": 500,
    "M": 1000
  };
  int romanToInt(String s) {
    int sum=0;
    for (var i = 0; i < s.length; i++) {
      if ((i+1)!=s.length && (roman[s[i]]! < roman[s[i+1]]!) ) {
        sum+=roman[s[i+1]]!-roman[s[i]]!;
        i++;
      }
      else sum+=roman[s[i]]!;
    }
    return sum;
  }
}

void main(List<String> args) {
  Solution so=Solution();
  print(so.romanToInt("LVIII"));
  print(so.romanToInt("MCMXCIV"));
}
