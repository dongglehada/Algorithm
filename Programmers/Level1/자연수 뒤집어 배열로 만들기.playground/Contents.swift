func solution(_ n:Int64) -> [Int] {
    var reverseN = String(n).reversed()
    var intAryN = reverseN.compactMap{Int(String($0))}
    return intAryN
}
