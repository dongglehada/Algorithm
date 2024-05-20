import Foundation

func solution(_ s:String) -> [Int] {
    
    var result: [Int] = []
    var sLocateDict:[ String : Int ] = [ : ]
    
    for (index, str) in s.enumerated() {
        if sLocateDict[String(str)] == nil {
            result.append(-1)
        } else {
            result.append(index - sLocateDict[String(str)]!)
        }
        sLocateDict[String(str)] = index
    }
    return result
}
