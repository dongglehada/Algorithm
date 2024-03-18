func solution(_ arr:[Int]) -> [Int] {
    var temp = arr
    var sortedAry = temp.sorted() { $0 > $1 }
    var result = arr
    
    guard let minNum = sortedAry.popLast(),
          let removeIndex = arr.firstIndex(of: minNum) else { return [] }
    
    result.remove(at: removeIndex)
    return result.isEmpty ? [-1] : result
}
