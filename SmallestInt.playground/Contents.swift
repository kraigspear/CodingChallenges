import UIKit

public func smallestPossible(_ A : inout [Int]) -> Int {
    
    var filtered = A.filter { $0 > 0 }
    
    filtered.sort()
    
    for i in 0..<filtered.count {
        
        if i + 1 >= (filtered.count - 1) {
            break
        }
        
        let val = filtered[i]
        let nextVal = filtered[i+1]
        
        print("val: \(val) nextVal: \(nextVal)")
        
        let expectedNextVal = val + 1
        
        if expectedNextVal == nextVal {
            print("continue")
            continue
        }
        
        if expectedNextVal != nextVal {
            print("return nextVal")
            return nextVal
        }
    }
    
    return 1
}

var smallestData = [1,3,6,4,1,2]
let small = smallestPossible(&smallestData)


