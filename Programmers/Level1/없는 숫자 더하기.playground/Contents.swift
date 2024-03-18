import Foundation

func solution(_ numbers:[Int]) -> Int {
    
    let result = (0...9).reduce(0) {$0 + $1} - numbers.reduce(0) {$0 + $1}
    return result
}
