//
// 605. Can Place Flowers.swift
//  
//
//  Created by uditha anuranjana on 2025-06-22.
//

func canPlaceFlowers(_ flowerbed: [Int], _ n: Int) -> Bool {
    
    // Make a mutable copy of the flowerbed array so we can modify it
    var flowerbed = flowerbed
    var maxCount = 0  // Tracks how many flowers we can plant

    // Iterate through each plot in the flowerbed
    for i in 0..<flowerbed.count {
        
        // Check if the current plot is empty
        let isCurrentElementZero = flowerbed[i] == 0
        
        // Check if the previous plot is empty or it's the first plot
        let isPreviousElementZero = (i == 0 || flowerbed[i - 1] == 0)
        
        // Check if the next plot is empty or it's the last plot
        let isNextElementZero = (i == flowerbed.count - 1 || flowerbed[i + 1] == 0)
        
        // If current, previous, and next plots are empty (or boundaries), we can plant here
        if isCurrentElementZero && isNextElementZero && isPreviousElementZero {
            flowerbed[i] = 1     // Plant a flower
            maxCount += 1        // Increment planted flower count
        }
    }

    // Return true if we can plant at least 'n' flowers
    return n <= maxCount
}

