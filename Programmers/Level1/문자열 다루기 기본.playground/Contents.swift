import Foundation

func solution(_ s:String) -> Bool {
    
    return Int(s) != nil ? [4, 6].contains(s.count) ? true : false : false
}
