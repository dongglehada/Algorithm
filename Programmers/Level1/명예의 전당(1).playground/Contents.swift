import Foundation

func solution(_ k:Int, _ score:[Int]) -> [Int] {

    var topScore:[Int] = []
    var result:[Int] = []

    for i in score {
        if topScore.count < k {
            topScore.append(i)
        } else {
            var minScore = topScore.min()!
            if minScore < i {
                var targetIndex = topScore.firstIndex(of: minScore)!
                topScore.remove(at: targetIndex)
                topScore.append(i)
            }
        }
        result.append(topScore.min()!)
    }
    return result
}
