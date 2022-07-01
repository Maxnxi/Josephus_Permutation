import Foundation

func josephusSurvivor(_ n: Int, _ k: Int) -> Int {
    if k == 1 {
        return n
    }
    
    var someArr: [Int] = Array(1...n)
    var counter = k
    
    while someArr.count > 1 {
        
        for i in 0..<someArr.count {
            
            counter -= 1
            
            if counter == 0 {
                someArr[i] = 0
                counter = k
            }
        }
        someArr = someArr.filter { $0 != 0 }
        print("someArr is : ", someArr)
        
    }
    return someArr.first!
}

print(josephusSurvivor(7, 3))
print(josephusSurvivor(11, 19))
print(josephusSurvivor(300, 300)) // :)
