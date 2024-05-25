import Foundation

func solution(_ food:[Int]) -> String {
    
    var foodDict:[String: Int] = [:]
    var food = food
    var temp = ""
    for (i, f) in food.enumerated() {
        if i != 0 {
            var count = f / 2
            var str = String(repeating: String(i), count: count)
            temp += str
        }
    }
    var result = temp + "0" + String(temp.reversed())
    return result
}
