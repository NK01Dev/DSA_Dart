# Palindrome Number

## 🧠 Problem Description

Given an integer `x`, return `true` if `x` is a **palindrome**, and `false` otherwise.

A palindrome number reads the same **from left to right** and **right to left**.

---

## 📌 Examples

| Input | Output | Explanation |
|------|-------|------------|
| `121` | `true` | Reads the same both ways |
| `-121` | `false` | `121-` is not the same |
| `10` | `false` | Reads as `01` |

---

## 🔒 Constraints

- `-2³¹ <= x <= 2³¹ - 1`

---

## 🚀 Approach (Without Converting to String)

- Negative numbers are **not palindromes**
- Numbers ending with `0` (but not `0` itself) are **not palindromes**
- Reverse **only half** of the number
- Compare the first half with the reversed half

This avoids overflow and extra memory.

---