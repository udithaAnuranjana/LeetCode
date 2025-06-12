import UIKit

func setZeroes(_ matrix: inout [[Int]]) {
    
    for rowIndex in 0...matrix.count - 1{
        if matrix[rowIndex].contains(0){
            matrix[rowIndex] = Array(repeating: 0, count: matrix[rowIndex].count)
        }else{
            
        }
    }
}
