//
//  238. Product of Array Except Self.swift
//  
//
//  Created by uditha anuranjana on 2025-06-22.
//

func productExceptSelf(_ nums: [Int]) -> [Int] {
    
    // Initialize the result array with 1s.
    // result[i] will hold the product of all elements except nums[i].
    var result = Array(repeating: 1, count: nums.count)
    
    // First pass: calculate prefix products (left to right)
    // result[i] = product of all elements to the left of index i
    for i in 1..<nums.count {
        result[i] = result[i - 1] * nums[i - 1]
    }
    
    // Second pass: calculate suffix products (right to left)
    // and multiply them into result[i]
    var rightProduct = 1
    for i in (0..<nums.count - 1).reversed() {
        rightProduct *= nums[i + 1]
        result[i] *= rightProduct
    }
    
    return result
}
