// 시간 복잡도가 너무 높음
// func solution(_ a:Int, _ b:Int) -> Int64 {
//     let maxNum = max(a, b)
//     let minNum = min(a, b)
//     let result = (minNum...maxNum).map{Int64($0)}.reduce(0) { $0 + $1 }
//     return result
// }

func solution(_ a:Int, _ b:Int) -> Int64 {
    let maxNum = max(a, b)
    let minNum = min(a, b)
    let result = (Double(minNum + maxNum) / 2) * Double(maxNum - minNum + 1)
    return Int64(result)
}
// 1 2 3 4 5 = 15
// 2 3 4 5 = 14
// 1 2 3 4 5 6 7 = 28
// -> (minNum + bigNum / 2) * n
