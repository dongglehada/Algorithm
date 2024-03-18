func solution(_ n:Int64) -> Int64 {
    let sortedN = String(n).compactMap{Int(String($0))}.sorted() { $0 > $1 }
    let strN = sortedN.map{String($0)}.reduce("") {$0 + $1}
    guard let result = Int64(strN) else { return 0 }
    return result
}
