//
//func triangleType(_ nums: [Int]) -> String {
//
//    let side1 = nums[0]
//    let side2 = nums[1]
//    let side3 = nums[2]
//
//    if side1 + side2 > side3, side1 + side3 > side2, side2 + side3 > side1 {
//       if side1 == side2 && side2 == side3 {
//            return "equilateral"
//       }else if side1 != side2 && side2 != side3 && side3 != side1{
//           return "scalene"
//       }else{
//           return "isosceles"
//       }
//    }else{
//        return "none"
//    }
//}

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    
    
    let num1 = getNumber(l1!)
    let num2 = getNumber(l2!)
    
    let num3 = num1 + num2
    
    
    func getListNode( _ val : Int) -> ListNode{
        
        var value = val/10
        var listNode = ListNode(val % 10)
        
        while value >= 10 {
            listNode.next = 
        }
    }

    
    func getNumber(_ node: ListNode) -> Int {
        
        var total = 0
        var exponant = 1
        
        while node.next != nil {
            total += node.val * exponant
            exponant *= 10
        }
        
        return node.val * exponant
    }
    
}
