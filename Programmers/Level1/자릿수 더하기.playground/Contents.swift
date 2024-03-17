import Foundation

func solution(_ n:Int) -> Int
{
    var numAry = String(n).compactMap{Int(String($0))}
    return numAry.reduce(0) {$0 + $1}
}
