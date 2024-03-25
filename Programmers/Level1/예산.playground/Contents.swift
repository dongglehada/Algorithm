import Foundation

func solution(_ d:[Int], _ budget:Int) -> Int {
    var sortedNum = d.sorted(by: <)
    var budget = budget
    var result = 0
    for i in sortedNum {
        if budget >= i{
            budget -= i
            result += 1
        } else {
            break
        }
    }
    return result
}
