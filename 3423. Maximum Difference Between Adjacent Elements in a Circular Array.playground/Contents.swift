func maxAdjacentDistance(_ nums: [Int]) -> Int {
    
    // Step 1: Initialize the maximum difference using the circular pair: first and last element
    var maxDifference = abs(nums.first! - nums.last!)
    
    // Step 2: Loop through the array to check each adjacent pair (excluding the circular one)
    for index in 0..<nums.count - 1 {
        // Step 3: Calculate the absolute difference between current element and the next one
        let difference = abs(nums[index] - nums[index + 1])
        
        // Step 4: Update maxDifference if this pair has a larger difference
        maxDifference = max(maxDifference, difference)
    }
    
    // Step 5: Return the largest absolute difference found among adjacent (including circular) pairs
    return maxDifference
}

/*
💡 Alternative (Cleaner) Trick:
Instead of handling the circular pair separately, you can loop like this:

for i in 0..<nums.count {
    let nextIndex = (i + 1) % nums.count  // Wraps around to the start
    let difference = abs(nums[i] - nums[nextIndex])
    maxDifference = max(maxDifference, difference)
}

This naturally includes the last-to-first (circular) comparison within the loop itself.
*/
