//
//  345. Reverse Vowels of a String.swift
//  
//
//  Created by uditha anuranjana on 2025-06-22.
//

func reverseVowels(_ s: String) -> String {
    let vowels: Set<Character> = ["a", "e", "i", "o", "u",
                                  "A", "E", "I", "O", "U"]
    
    var chars = Array(s)
    var left = 0
    var right = chars.count - 1

    // Use a manual loop to simulate for-loop style control
    for _ in 0..<chars.count {
        // Move left forward until it finds a vowel
        while left < right && !vowels.contains(chars[left]) {
            left += 1
        }

        // Move right backward until it finds a vowel
        while left < right && !vowels.contains(chars[right]) {
            right -= 1
        }

        // Swap vowels
        if left < right {
            chars.swapAt(left, right)
            left += 1
            right -= 1
        }
    }

    return String(chars)
}

