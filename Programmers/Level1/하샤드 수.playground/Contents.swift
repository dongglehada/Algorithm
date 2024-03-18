func solution(_ x:Int) -> Bool {
    let sumNum = String(x).compactMap{Int(String($0))}.reduce(0) {$0 + $1}
    return x % sumNum == 0 ? true: false
}
