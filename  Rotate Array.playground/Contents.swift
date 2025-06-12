import UIKit

func rotate(_ nums: inout [Int], _ k: Int) {
    
    for rotationIndex in 0..<k {
        if let lastElement = nums.last{
            nums.insert(lastElement, at: 0)
        }
        nums.removeLast()
        
       
    }
}
