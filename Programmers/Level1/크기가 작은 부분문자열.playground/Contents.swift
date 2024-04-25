import Foundation

func solution(_ t:String, _ p:String) -> Int {
    
    var result = 0
    var temp = ""
    guard let pNum = Int(p) else { return 0 }
    
    for i in t {
        temp += String(i)
        if temp.count == p.count {
            guard let tNum = Int(temp) else { return 0 }
            if tNum <= pNum {
                result += 1
            }
            temp.removeFirst()
        }
    }
    
    return result
}
