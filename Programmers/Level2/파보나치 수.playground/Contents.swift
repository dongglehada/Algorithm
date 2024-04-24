func solution(_ n:Int) -> Int {

    var num1: Int = 0
    var num2: Int = 1

    for _ in 2...n {
        let sum = (num1 + num2) % 1234567
        num1 = num2
        num2 = sum
    }
    return num2
}
