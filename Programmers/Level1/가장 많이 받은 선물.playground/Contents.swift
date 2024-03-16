import Foundation

struct User {
    var userName: String
    var giftValue: Int
    var giftLog: [String: Int]
    var giftCount: Int
}

func solution(_ friends:[String], _ gifts:[String]) -> Int {
    
    var users: [String : User] = [:]
    var result = 0
    
    //create users Dictionary
    for friend in friends {
        users[friend] = User(userName:friend, giftValue: 0, giftLog: [:], giftCount: 0)
    }
    
    //Calculate gift Log, gift Value
    for gift in gifts {
        let giftLogAry = gift.components(separatedBy:" ")
        let sendingUserName = giftLogAry[0]
        let receivingUserName = giftLogAry[1]
        
        guard var sendingUser = users[sendingUserName] else { return 0 }
        guard var receivingUser = users[receivingUserName] else { return 0 }
        
        if receivingUser.giftLog[sendingUserName] == nil {
            receivingUser.giftLog[sendingUserName] = -1
        } else {
            receivingUser.giftLog[sendingUserName]? -= 1
        }
        
        if sendingUser.giftLog[receivingUserName] == nil {
            sendingUser.giftLog[receivingUserName] = 1
        } else {
            sendingUser.giftLog[receivingUserName]? += 1
        }
        sendingUser.giftValue += 1
        receivingUser.giftValue -= 1
        users[sendingUserName] = sendingUser
        users[receivingUserName] = receivingUser
    }
    
    //Calculate gift Count
    for (userName, user) in users {
        
        var giftCount = 0
        var targetAry = users.map{$0.key}

        for (name, count) in user.giftLog {
            if count > 0 {
                giftCount += 1
                guard let removeIndex = targetAry.firstIndex(of: name) else { return 0 }
                targetAry.remove(at: removeIndex)
            } else if count < 0 {
                guard let removeIndex = targetAry.firstIndex(of: name) else { return 0 }
                targetAry.remove(at: removeIndex)
            }
        }
        
        for targetName in targetAry {
            if targetName == userName { continue }
            guard let targetGiftValue = users[targetName]?.giftValue else { return 0 }
            if targetGiftValue < user.giftValue {
                giftCount += 1
            }
        }
        
        if result < giftCount {
            result = giftCount
        }
    }
    
    return result
}

