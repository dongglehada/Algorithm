func solution(_ s:String) -> String {
    let strAry = s.map{ String($0) }
    return s.count % 2 == 0 ? strAry[(s.count / 2) - 1]  + strAry[s.count / 2] :  strAry[s.count / 2]
}
