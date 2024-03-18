import Foundation

func solution(_ n:Int64) -> Int64 {
    let squareRoot = Int(sqrt(Double(n)))
    return Int64(squareRoot * squareRoot == n ? (squareRoot + 1) * (squareRoot + 1) : -1)
}
