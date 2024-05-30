import Foundation

func solution(_ name:[String], _ yearning:[Int], _ photo:[[String]]) -> [Int] {
    
    var scoreDict:[String: Int] = [:]
    
    for (name, year) in zip(name,yearning) {
        scoreDict[name] = year
    }
    
    return photo.map{$0.compactMap{scoreDict[$0]}.reduce(0,+)}
}
