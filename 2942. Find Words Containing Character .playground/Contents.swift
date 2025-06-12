import UIKit

func findWordsContaining(_ words: [String], _ x: Character) -> [Int] {
    
    var indexes : [Int] = []
    
    for index in 0...words.count-1 {
        let word = words[index]
        if word.contains(x){
            indexes.append(index)
        }
    }
    return indexes
    
}
