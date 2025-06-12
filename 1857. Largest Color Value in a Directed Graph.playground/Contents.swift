import UIKit

func createGrpah( _ edges: [[Int]]) -> [Int : [Int]] {
    
    var graph : [Int : [Int]] = [:]
    
    for edge in edges{
       
        let startingNode = edge[0]
        let endingNode = edge[1]
        
        graph[startingNode, default: []].append(endingNode)
    }
    
    return graph
}

func getPaths( _ graph: [Int : [Int]], startingNode : Int ) -> [[Int]]{
    
    var paths : [[Int]] = []
    var currentPath : [Int] = []
    
    
    func dfs(_ node : Int){
        
        let neighbours = graph[node] ?? []
        var foundUnvisited = false
        
        for neighbour in neighbours {
            if !currentPath.contains(neighbour){
                explain
            }
        }
    }
    
    
    return paths
}
