import Foundation

func solution(_ sizes:[[Int]]) -> Int {
    
    var maxHeight = 0
    var maxWidth = 0
    
    for size in sizes {
        guard var max = size.max(),
              var min = size.min() else{ return 0 }
        if maxHeight < max {
            maxHeight = max
        }
        
        if maxWidth < min {
            maxWidth = min
        }
    }
    return maxHeight * maxWidth
}
