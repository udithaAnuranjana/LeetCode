func removeDuplicates(_ nums: inout [Int]) -> Int {
    
    var count = 1
    
    if nums.count == 1 {
        return count
    }
    
    for index in 1...nums.count-1{
                
        if nums[nums.count - index] == nums[nums.count - index-1]{
            nums.remove(at: nums.count - index)
            nums.append(0)
        }else{
            count += 1
        }
    }
    
    
    return count
    
}

var array = [1,1,2,2]
removeDuplicates(&array)
