func kidsWithCandies(_ candies: [Int], _ extraCandies: Int) -> [Bool] {
    
    // Find the maximum number of candies that any kid currently has
    // This helps determine the benchmark to compare against
    let maxCandies = candies.max() ?? 0
    
    // For each kid, check if their candies + extraCandies is at least equal to the max
    // If yes, they can have the greatest number of candies → return true
    // Otherwise → return false
    return candies.map { $0 + extraCandies >= maxCandies }
}
