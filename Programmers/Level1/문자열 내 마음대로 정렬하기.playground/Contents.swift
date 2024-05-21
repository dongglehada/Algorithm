func solution(_ strings:[String], _ n:Int) -> [String] {
    var result = strings.sorted() {
        let frontStr = $0.map{String($0)}[n]
        let backStr = $1.map{String($0)}[n]
        if frontStr == backStr {
            return $0 < $1
        } else {
            return frontStr < backStr
        }
    }
    return result
}
