//
//  151. Reverse Words in a String.swift
//  
//
//  Created by uditha anuranjana on 2025-06-22.
//

func reverseWords(_ s: String) -> String {
    
    // Split the input string by spaces into words
    // `split(separator: " ")` automatically removes extra spaces (leading, trailing, and between words)
    let wordsArray = s.split(separator: " ")
    
    // Reverse the array of words and join them back into a single string
    // Words are joined using a single space as the separator
    return wordsArray.reversed().joined(separator: " ")
}

