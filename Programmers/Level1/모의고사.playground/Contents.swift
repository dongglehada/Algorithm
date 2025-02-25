import Foundation

func solution(_ answers:[Int]) -> [Int] {
    let case1: [Int] = [1,2,3,4,5]
    let case2: [Int] = [2,1,2,3,2,4,2,5]
    let case3: [Int] = [3,3,1,1,2,2,4,4,5,5]
    
    var case1SolveCount: Int = 0
    var case2SolveCount: Int = 0
    var case3SolveCount: Int = 0
    
    for index in 0...answers.count - 1 {
        let solve = answers[index]
        let solve1 = case1[index % case1.count]
        let solve2 = case2[index % case2.count]
        let solve3 = case3[index % case3.count]
        if solve == solve1 { case1SolveCount += 1}
        if solve == solve2 { case2SolveCount += 1}
        if solve == solve3 { case3SolveCount += 1}
    }
    
    let highScore = max(case1SolveCount, case2SolveCount, case3SolveCount)
    
    var solve: [Int] = []
    if highScore == case1SolveCount {
        solve.append(1)
    }
    
    if highScore == case2SolveCount {
        solve.append(2)
    }
    
    if highScore == case3SolveCount {
        solve.append(3)
    }
    return solve
}
