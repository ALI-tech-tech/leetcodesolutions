class ListNode {
    int val;
    ListNode? next;
    ListNode([this.val = 0, this.next]);
  }
 
class Solution {
  ListNode? reverseList(ListNode? head) {
    var prev=null;
    var cur=head;

    while (cur!=null){
      var temp=cur.next;
      cur.next=prev;
      prev=cur;
      cur=prev;
    }
    return prev;
  }
}

void main(List<String> args) {
  
}