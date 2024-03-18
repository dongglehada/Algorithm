import Foundation

func solution(_ s:String) -> Bool
{
    let pCount = s.lowercased().filter{$0 == "p"}.count
    let yCount = s.lowercased().filter{$0 == "y"}.count
    return pCount == yCount ? true : false
}
