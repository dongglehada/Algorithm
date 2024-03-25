import Foundation

func solution(_ n:Int) -> Int {
    var reverseNum = String(String(n, radix:3).reversed())
    guard let result = Int(reverseNum, radix:3) else { return 0 }
    return result
}
