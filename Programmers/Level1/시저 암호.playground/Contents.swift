func solution(_ s:String, _ n:Int) -> String {
    
    let alphabetArray = Array("abcdefghijklmnopqrstuvwxyz")

    var intKeyDictionary: [Int: String] = [:]
    var alphabetKeyDictionary: [String: Int] = [:]
    
    for (index, alphabet) in alphabetArray.enumerated() {
        intKeyDictionary[index] = String(alphabet)
        alphabetKeyDictionary[String(alphabet)] = index
    }

    var result = ""
    for alphabet in s {
        guard alphabet != " " else {
            result += " "
            continue
        }
        var alphabetKey = String(alphabet).lowercased()
        var alphabetInt = ((alphabetKeyDictionary[alphabetKey]!) + n) % 26
        var transAlphabet = intKeyDictionary[alphabetInt]!
        if alphabet.isUppercase {
            result += transAlphabet.uppercased()
        } else {
            result += transAlphabet
        }
    }
    return result
}
