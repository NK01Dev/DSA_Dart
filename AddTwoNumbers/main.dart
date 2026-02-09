void main(List<String> args) {
  ListNode l1 = ListNode(9, ListNode(9, ListNode(9, ListNode(9, ListNode(9, ListNode(9, ListNode(9)))))));
  ListNode l2 = ListNode(9, ListNode(9, ListNode(9, ListNode(9))));
  Solution solution = Solution();
  ListNode? result = solution.addTwoNumbers(l1, l2);
  while (result != null) {
    print(result.val);
    result = result.next; }

}
  // Definition for singly-linked list.
   class ListNode {
       int val;
       ListNode? next;
       ListNode([this.val = 0, this.next]);
     }
 
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