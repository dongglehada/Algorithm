func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    var result: [[Int]] = []
    for (a1, a2) in zip(arr1, arr2) {
        var temp: [Int] = []
        for (b1, b2) in zip(a1, a2) {
            temp.append(b1 + b2)
        }
        result.append(temp)
    }
    return result
}
