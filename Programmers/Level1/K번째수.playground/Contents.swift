import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {

    var result:[Int] = []
    
    for i in commands {
        var ary = array[i[0] - 1...i[1] - 1].sorted(by: <)
        result.append(ary[i[2] - 1])
    }
    
    return result
}
