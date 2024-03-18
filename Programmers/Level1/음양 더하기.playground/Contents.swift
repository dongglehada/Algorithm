import Foundation

func solution(_ absolutes:[Int], _ signs:[Bool]) -> Int {
    var result = 0
    for (num, sign) in zip(absolutes, signs) {
        if sign {
            result += num
        } else {
            result -= num
        }
    }
    return result
}
