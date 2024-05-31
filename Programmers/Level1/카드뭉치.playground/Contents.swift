import Foundation

func solution(_ cards1:[String], _ cards2:[String], _ goal:[String]) -> String {
    var cards1Index = 0
    var cards2Index = 0
    var goal = goal
    var result = true
    
    while goal.count > 0 {
        var keyword1 = cards1[cards1Index]
        var keyword2 = cards2[cards2Index]
        var goalKeyword = goal[0]
        
        if goalKeyword == keyword1 {
            if cards1Index < cards1.count - 1 {
                cards1Index += 1
            }
            goal.remove(at: 0)
            continue
        } else if goalKeyword == keyword2 {
            if cards2Index < cards2.count - 1 {
                cards2Index += 1
            }
            goal.remove(at: 0)
        } else {
            result = false
            break
        }
    }
    
    
    return result ? "Yes": "No"
}
