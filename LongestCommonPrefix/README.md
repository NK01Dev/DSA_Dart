# 🔠 Longest Common Prefix (LeetCode 14)

![Dart](https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white)
![LeetCode](https://img.shields.io/badge/LeetCode-Easy-orange?style=for-the-badge)
![Algorithms](https://img.shields.io/badge/Algorithms-String_Manipulation-success?style=for-the-badge)

## 🧠 Problem Description

Write a function to find the **longest common prefix** string amongst an array of strings.
If there is no common prefix, return an empty string `""`.

### 📌 Examples

| Input | Output | Explanation |
| :--- | :--- | :--- |
| `["flower","flow","flight"]` | `"fl"` | "fl" is the longest string present at the start of all three words. |
| `["dog","racecar","car"]` | `""` | No common prefix exists. |

---

## 🚀 Approach: Vertical Scanning

This solution uses a **Vertical Scanning** strategy. Instead of comparing strings pair by pair, we iterate through the columns (indices) of the strings.

### Logic
1.  **Reference String:** We take the first string (`strs[0]`) as our reference.
2.  **Column Loop:** We iterate through every character `i` of the reference string.
3.  **Row Loop:** Inside, we iterate through every other string `strs[j]`.
4.  **Exit Conditions:** We return the current result immediately if:
    * We reach the end of string `j` (it is shorter than the reference).
    * The character at `strs[j][i]` does not match the reference character.
5.  **Build Result:** If the inner loop completes without issues, we append the character to our result.

### 💻 Code Snippet

```dart
String longestCommonPrefix(List<String> strs) {
  if (strs.isEmpty) return "";
  
  String res = "";
  // Loop through characters of the first string
  for (int i = 0; i < strs[0].length; i++) {
    // Check this character against all other strings
    for (int j = 1; j < strs.length; j++) {
      // 1. Check if we exceeded the length of strs[j]
      // 2. Check if the character doesn't match
      if (i >= strs[j].length || strs[j][i] != strs[0][i]) {
        return res;
      }
    }
    res += strs[0][i];
  }
  return res;
}