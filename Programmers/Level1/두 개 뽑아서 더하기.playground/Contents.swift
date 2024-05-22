import Foundation

func solution(_ numbers:[Int]) -> [Int] {
    
    var result:[Int] = []
    for i in 0..<numbers.count{
        if i + 1 <= numbers.count {
            for k in (i + 1)..<numbers.count {
                var sum = numbers[i] + numbers[k]
                if !result.contains(sum) {
                    result.append(sum)
                }
            }
        }
    }
    
    return result.sorted(by: <)
}

