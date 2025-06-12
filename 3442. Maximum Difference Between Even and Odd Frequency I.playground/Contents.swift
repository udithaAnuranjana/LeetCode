func maxDifference(_ s: String) -> Int {
    
    // Step 1: Count the frequency of each character in the string
    var frequency: [Character: Int] = [:]
    for char in s {
        frequency[char, default: 0] += 1
    }
    
    // Step 2: Extract and sort the frequency values
    let frequenciesSorted = frequency.values.sorted()
    
    // Step 3: Find the maximum and minimum even frequencies
    // Force unwrapping is safe here because at least one even and one odd frequency must exist for a valid difference
    let maxEven = frequenciesSorted.last { $0 % 2 == 0 }!
    let minEven = frequenciesSorted.first { $0 % 2 == 0 }!

    // Step 4: Find the maximum and minimum odd frequencies
    let maxOdd = frequenciesSorted.last { $0 % 2 != 0 }!
    let minOdd = frequenciesSorted.first { $0 % 2 != 0 }!

    // Step 5: Return the maximum difference between an odd and an even frequency
    return max(minOdd - maxEven, maxOdd - minEven)
}
