func gcdOfStrings(_ str1: String, _ str2: String) -> String {
    // Early exit: if str1 + str2 != str2 + str1, there is no common repeating pattern
    // This checks whether both strings are composed of a repeated base substring in the same order
    if str1 + str2 != str2 + str1 {
        return ""
    }
    
    // Recursive helper function to compute the Greatest Common Divisor (GCD) of two integers
    func gcd(_ a: Int, _ b: Int) -> Int {
        if b == 0 {
            return a
        } else {
            return gcd(b, a % b)  // Euclidean algorithm
        }
    }
    
    // Compute GCD of the two string lengths
    // The length of the largest common divisor string must divide both lengths
    let lengthGCD = gcd(str1.count, str2.count)
    
    // Return the prefix of str1 with length equal to the GCD
    // This substring is guaranteed to divide both strings (because of the earlier check)
    return String(str1.prefix(lengthGCD))
}
