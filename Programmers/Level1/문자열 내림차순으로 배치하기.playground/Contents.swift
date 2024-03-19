func solution(_ s:String) -> String {
    var result = s.map{String($0)}.sorted(by: >).joined()
    return result
}
