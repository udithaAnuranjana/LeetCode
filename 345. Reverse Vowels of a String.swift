//
//  345. Reverse Vowels of a String.swift
//  
//
//  Created by uditha anuranjana on 2025-06-22.
//

func reverseVowels(_ s: String) -> String {
    
    let vowels : [Character] = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]

    var vowelsCharacters : [Character] = []
    
    for character in s {
        if vowels.contains(character) {
            vowelsCharacters.append(character)
        }
    }
    
    var charArray = Array(s)
    
    for (index, character) in charArray.enumerated() {
        
        if vowels.contains(character) {
            charArray[index] = vowelsCharacters.removeLast()
        }
    }
    
    return String(charArray)
}
