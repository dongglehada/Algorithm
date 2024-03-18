func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
    let result = arr.filter{ $0 % divisor == 0 }.sorted{$0 < $1}
    return result.isEmpty ? [-1] : result
}
