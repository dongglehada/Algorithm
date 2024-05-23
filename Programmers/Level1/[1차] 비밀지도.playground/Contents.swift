func solution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
    var answer: [String] = []
    for item in zip(arr1, arr2) {
        var map1 = String(item.0, radix: 2)
        var map2 = String(item.1, radix: 2)
        var temp = ""
        while map1.count < n {
            map1 = "0" + map1
        }
        while map2.count < n {
            map2 = "0" + map2
        }
        for map in zip(map1,map2) {
            if map.0 == "1" || map.1 == "1" {
                temp += "#"
            } else {
                temp += " "
            }
        }
        answer.append(temp)
    }
    return answer
}
