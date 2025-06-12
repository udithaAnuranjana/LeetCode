func maxDifference(_ s: String, _ k: Int) -> Int {
    
    var windowSize = k
    var frequencies : [Character : Int] = [:]
    
    frequencies[s[s.startIndex], default: 0] += 1
    frequencies[s[s.index(s.startIndex, offsetBy: 1)], default: 0] += 1
    frequencies[s[s.index(s.startIndex, offsetBy: 2)], default: 0] += 1
    frequencies[s[s.index(s.startIndex, offsetBy: 3)], default: 0] += 1
    
    for index in 0...s.count-k {
        
        let startIndex = s.index(s.startIndex, offsetBy: index)
        let endIndex = s.index(s.startIndex, offsetBy: index + k)
        
        let subString = s[startIndex..<endIndex]
        
        
    }
    
    
    
    return 0
}

maxDifference("uditha anuranjana", 4)
