import Foundation

func solution(_ a:Int, _ b:Int, _ n:Int) -> Int {
    var myCoke = n
    var result = 0
    
    while myCoke >= a {
        var remainCoke = myCoke % a
        var addCoke = (myCoke / a) * b
        result += addCoke
        myCoke = remainCoke + addCoke
    }
    
    return result
}
