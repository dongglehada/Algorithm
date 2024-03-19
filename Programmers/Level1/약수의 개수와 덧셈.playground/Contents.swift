import Foundation

func solution(_ left:Int, _ right:Int) -> Int {
    let numsAry = (left...right).map {$0}
    var result = 0
    for i in numsAry {
        if getMeasureCount(num:i) % 2 == 0 {
            result += i
        } else {
            result -= i
        }
    }
    return result
}

func getMeasureCount(num: Int) -> Int {
    var result:[Int] = []
    for i in (1...num) {
        if num % i == 0 {
            result.append(i)
        }
    }
    return result.count
}
