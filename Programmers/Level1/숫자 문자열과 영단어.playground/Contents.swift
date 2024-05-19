import Foundation

func solution(_ s:String) -> Int {
var transDict: [String: String] = [
   "zero" : "0",
    "one" : "1",
    "two" : "2",
    "three" : "3",
    "four" : "4",
    "five" : "5",
    "six" : "6",
    "seven" : "7",
    "eight" : "8",
    "nine" : "9",
    "0" : "0",
    "1" : "1",
    "2" : "2",
    "3" : "3",
    "4" : "4",
    "5" : "5",
    "6" : "6",
    "7" : "7",
    "8" : "8",
    "9" : "9"
]
    var temp = ""
    var result = ""
    for i in s {
        temp += String(i)
        if transDict[String(temp)] != nil {
            result += transDict[String(temp)]!
            temp = ""
        }
    }
    return Int(result)!
}
