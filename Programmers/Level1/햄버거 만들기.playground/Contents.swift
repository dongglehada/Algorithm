import Foundation
// 빵 야채 고기 빵
// 1 2 3 1
// 1: 빵, 2: 야채, 3:고기
// 반복하면 시간 복잡도 커질듯..?

func solution(_ ingredient:[Int]) -> Int {
    
    var temp: [String] = []
    var result = 0
    
    for i in ingredient {
        temp.append(String(i))
        
        // print(temp.suffix(4))
        if temp.suffix(4).reduce("", +) == "1231" {
            temp.popLast()
            temp.popLast()
            temp.popLast()
            temp.popLast()
            result += 1
        }
    }

    // 최대 시간: 테스트 12 〉    통과 (1114.70ms, 76.4MB)
    return result
}
// 배열간 비교가 더 느림

//func solution(_ ingredient:[Int]) -> Int {
//    
//    var target = "1231"
//    var tempAry: [String] = []
//    var skipCount = 0
//    var result = 0
//    
//    for (index, i) in ingredient.enumerated() {
//
//        if skipCount > 0 {
//            skipCount -= 1
//            // print("스킵", i)
//            continue
//        }
//        if index + 4 < ingredient.count {
//            var skipStr = String(ingredient[index + 1]) +
//            String(ingredient[index + 2]) +
//            String(ingredient[index + 3]) +
//            String(ingredient[index + 4])
//            if skipStr == target {
//                skipCount += 4
//                result += 1
//                // print("스킵+",skipStr)
//            }
//        }
//        
//        tempAry.append(String(i))
//        // print(tempAry)
//        if tempAry.suffix(4).reduce("", +) == target {
//            // print("판별")
//            tempAry.popLast()
//            tempAry.popLast()
//            tempAry.popLast()
//            tempAry.popLast()
//            result += 1
//        }
//    }
//    return result
//}
