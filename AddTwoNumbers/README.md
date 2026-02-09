# 📘 Add Two Numbers – Linked List Solution in Dart

## 🚀 Overview

This repository provides a **Dart implementation** of the classic **Add Two Numbers** problem using **singly linked lists**.  
It is a **LeetCode Medium** problem and a **common coding interview question** focused on **data structures and algorithms**.

The solution efficiently handles **carry propagation**, works in **linear time**, and follows best practices for **Linked List manipulation in Dart**.

---

## 🧠 Problem Description

You are given two **non-empty linked lists** representing two **non-negative integers**.

- Each node contains a **single digit**
- Digits are stored in **reverse order**
- No leading zeros (except the number `0`)

### 🔢 Example

Input:
l1 = [2,4,3]
l2 = [5,6,4]

Output:
[7,0,8]

Explanation:
342 + 465 = 807

---

## ✅ Solution Approach

### Core Idea
- Traverse both linked lists simultaneously
- Add corresponding digits along with a **carry**
- Store the result in a **new linked list**
- Continue until both lists and carry are exhausted

⚠️ No list reversal is needed since digits are already stored in reverse order.

---

## 🧩 Dart Implementation

```dart
/**
 * Definition for singly-linked list.
 * class ListNode {
 *   int val;
 *   ListNode? next;
 *   ListNode([this.val = 0, this.next]);
 * }
 */
class Solution {
  ListNode? addTwoNumbers(ListNode? l1, ListNode? l2) {
    int carry = 0;
    ListNode? head;
    ListNode? current;

    while (l1 != null || l2 != null || carry != 0) {
      int sum = carry;

      if (l1 != null) {
        sum += l1.val;
        l1 = l1.next;
      }

      if (l2 != null) {
        sum += l2.val;
        l2 = l2.next;
      }

      carry = sum ~/ 10;
      ListNode newNode = ListNode(sum % 10);

      if (head == null) {
        head = newNode;
        current = head;
      } else {
        current!.next = newNode;
        current = current.next;
      }
    }

    return head;
  }
}
🧪 Test Case Example
void main() {
  ListNode l1 = ListNode(9,
      ListNode(9,
      ListNode(9,
      ListNode(9,
      ListNode(9,
      ListNode(9,
      ListNode(9)))))));

  ListNode l2 = ListNode(9,
      ListNode(9,
      ListNode(9,
      ListNode(9))));

  Solution solution = Solution();
  ListNode? result = solution.addTwoNumbers(l1, l2);

  while (result != null) {
    print(result.val);
    result = result.next;
  }
}

✅ Output
8
9
9
9
0
0
0
1
