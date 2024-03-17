func solution(_ n:Int) -> Int {
    var resultAry: [Int] = []
    
    if n == 0 {
        return 0
    }
    
    for i in (1...n) {
        if n % i == 0 {
            resultAry.append(i)
        }
    }
    return resultAry.reduce(0) {$0 + $1}
}
