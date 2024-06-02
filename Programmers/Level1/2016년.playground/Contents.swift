func solution(_ a:Int, _ b:Int) -> String {
    
    var dates = [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    var week = ["FRI", "SAT", "SUN", "MON", "TUE", "WED", "THU",]
    var datesDict: [Int: Int] = [:]
    var totalDate = 0
    
    for (i,date) in dates.enumerated() {
        datesDict[i + 1] = date
    }
    
    if a != 1 {
        for i in 1..<a {
            totalDate += datesDict[i]!
        }
    }
    totalDate += b
    var result = totalDate % 7 == 0 ? 6 : (totalDate % 7) - 1
    return week[result]
}
