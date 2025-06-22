func mergeAlternately(_ word1: String, _ word2: String) -> String {
    
    // Determine the maximum length of the two input strings
    let maxCount = max(word1.count, word2.count)
    let len1 = word1.count
    let len2 = word2.count

    // Prepare an array to build the merged result efficiently
    var mergedArray: [Character] = []
    mergedArray.reserveCapacity(len1 + len2) // Avoid dynamic resizing
    
    // Iterate up to the length of the longer word
    for index in 0..<maxCount {
        
        // Append character from word1 if available
        if index < len1 {
            let char = word1[word1.index(word1.startIndex, offsetBy: index)]
            mergedArray.append(char)
        }
        
        // Append character from word2 if available
        if index < len2 {
            let char = word2[word2.index(word2.startIndex, offsetBy: index)]
            mergedArray.append(char)
        }
    }
    
    // Convert the character array to a string and return
    return String(mergedArray)
}
