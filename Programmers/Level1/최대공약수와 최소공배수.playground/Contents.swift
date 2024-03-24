func solution(_ n:Int, _ m:Int) -> [Int] {
    let minNum = min(n,m)
    let maxNum = max(n,m)

    var result = [gcd(minNum:minNum, maxNum:maxNum), lcm(minNum:minNum, maxNum:maxNum)]
    return result
}

func gcd(minNum: Int, maxNum: Int) -> Int{
    let temp = maxNum - minNum
    var tempAry:[Int] = []
    for i in 1...temp {
        if temp % i == 0 {
            tempAry.append(i)
        }
    }
    var resultAry:[Int] = []
    for i in tempAry {
        if minNum % i == 0 && maxNum % i == 0 {
            resultAry.append(i)
        }
    }
    guard let result = resultAry.max() else { return 1 }
    return result
}

func lcm(minNum: Int, maxNum: Int) -> Int{
    var result = 1
    for i in (1...maxNum) {
        var temp = minNum * i
        if temp >= maxNum {
            if temp % minNum == 0 && temp % maxNum == 0{
                result = temp
                break
            }
        }
    }
    return result
}
