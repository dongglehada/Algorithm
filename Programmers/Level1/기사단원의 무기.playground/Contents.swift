import Foundation

func solution(_ number:Int, _ limit:Int, _ power:Int) -> Int {
    
    var result: Int = 0
    for i in 1...number {
        var partPower = numberOfDivisor(num: i)
        
        if partPower > limit {
            result += power
        } else {
            result += partPower
        }
    }
    
    return result
}

func numberOfDivisor(num: Int) -> Int {
    var result:Int = 0
    var i: Int = 1
    while i * i <= num {
        if i * i == num  {
            result += 1
        } else if num % i == 0 {
            result += 2
        }
        i += 1
    }
    return result
}
