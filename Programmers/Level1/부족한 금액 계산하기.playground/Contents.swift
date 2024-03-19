import Foundation

func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64{
    let totalPrice = (1...count).map{$0 * price}.reduce(0) {$0 + $1}
    return Int64(totalPrice - money) > 0 ? Int64(totalPrice - money) : 0
}
