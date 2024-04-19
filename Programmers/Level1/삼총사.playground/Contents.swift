import Foundation

func solution(_ number: [Int]) -> Int {
    var result = 0
    var lastIndex = number.count - 1
    var arrayLength = 3

    func makeArray(startIndex: Int, array: [Int]) {
        if startIndex > lastIndex { return }
        var temp = array
        temp.append(startIndex)
        if temp.count == arrayLength {
            if temp.map { number[$0] }.reduce(0, +) == 0 {
                result += 1
            }
            return
        }
        for i in startIndex...lastIndex {
            makeArray(startIndex: i + 1, array: temp)
        }
    }
    for i in 0...lastIndex {
        makeArray(startIndex: i, array: [])
    }
    return result
}
