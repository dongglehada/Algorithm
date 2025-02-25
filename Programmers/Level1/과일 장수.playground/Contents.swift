import Foundation

func solution(_ k:Int, _ m:Int, _ score:[Int]) -> Int {
    var scoreDict: [Int: Int] = [:]
    for s in score {
        if scoreDict[s] == nil {
            scoreDict[s] = 1
        } else {
            scoreDict[s]! += 1
        }
    }
    var boxCount = score.count / m
    var totalCount = boxCount * m
    var countTrigger = 0
    var solve: Int = 0
    
    for (value, count) in scoreDict.sorted { $0.key > $1.key } {
        countTrigger += count
        if countTrigger >= m {
            solve += ((countTrigger / m) * value * m)
            countTrigger = countTrigger % m
        }
    }
    return solve
}
