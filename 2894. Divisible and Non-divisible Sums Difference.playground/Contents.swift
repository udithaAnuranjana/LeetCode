
func differenceOfSums(_ n: Int, _ m: Int) -> Int {
    
    var divisibleSum = 0
    var nonDivisibleSum = 0

    for integer in 1...n{
        if integer % m == 0{
            divisibleSum += integer
        }else{
            nonDivisibleSum += integer
        }
    }
    

    return nonDivisibleSum - divisibleSum

    
}

print(differenceOfSums(10, 3))
