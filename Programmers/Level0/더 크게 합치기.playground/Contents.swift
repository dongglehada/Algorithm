import UIKit

func solution(_ a:Int, _ b:Int) -> Int {
    let stringA = String(a)
    let stringB = String(b)
    
    let strSumA = stringA + stringB
    let strSumB = stringB + stringA
    
    guard let intSumA = Int(strSumA) else { return 0 }
    guard let intSumB = Int(strSumB) else { return 0 }
    
    return intSumA > intSumB ? intSumA : intSumB
}
