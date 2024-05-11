// Definition for singly-linked list.

class ListNode {
  int val;
  ListNode? next;
  ListNode(this.val, [this.next]);
}

class Solution {
  ListNode? addTwoNumbers(ListNode? l1, ListNode? l2) {
    ListNode dummy_head=ListNode(0);
    ListNode l3=dummy_head;

    int carry=0;
    while(l1 !=null || l2 !=null){
      if (l1==null)l1=ListNode(0); 
      if (l2==null)l2=ListNode(0); 
      
   
      int cuurent_sum=l1.val+l2.val+carry;
      carry=cuurent_sum ~/ 10;
      int last_digit=cuurent_sum%10;

      ListNode newNode=ListNode(last_digit);
      l3.next=newNode;
      if (l1!=null) l1=l1.next;
      if (l2!=null) l2=l2.next;
      l3=l3.next!;
    }
    if (carry>0) {
      ListNode newNode=ListNode(carry);
      l3.next=newNode;
      l3=l3.next!;
    }

    return dummy_head.next;
  }


}


