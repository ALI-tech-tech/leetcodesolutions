
  // Definition for singly-linked list.

class ListNode {
    List<int>? val=[0];
    ListNode? next;
    ListNode( {this.val , this.next});

    reversListNode()=> this.val!.reversed;
    toIntVal()=> int.parse(reversListNode().join(""));
  }
 
class Solution {
  ListNode? addTwoNumbers(ListNode? l1, ListNode? l2) {
    int sum= l1!.toIntVal()+l2!.toIntVal();
    List<int> result=intToList(sum).reversed.toList();
    ListNode? resultNode=ListNode(val:result );
    return resultNode;


  }

 List<int> intToList(int num)=>List.generate(num.toString().length, (index) => int.parse(num.toString()[index]));
  
}

void main(List<String> args) {
  Solution so=Solution();
  ListNode l2=ListNode(val:[5,6,4] );
  ListNode l1=ListNode(val: [2,4,3],next: l2);
  // ListNode l2=ListNode(val:[9,9,9,9] );
  // ListNode l1=ListNode(val: [9,9,9,9,9,9,9],next: l2);
  print(so.addTwoNumbers(l1, l2)!.val);
}