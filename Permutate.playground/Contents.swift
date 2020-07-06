import UIKit

permutate(string: "ab", current: "")


func permutate(string: String, current: String) {
    
    let length = string.count
    let strArray = Array(string)
    
    print(current)
    
    if length == 0 {
        print("*****")
        return
    }
    
    for i in 0 ..< length {
        
        let left = String(strArray[0 ..< i])
        let right = String(strArray[i+1 ..< length])
        
        let combined = left + right
        let newCurrent = current + String(strArray[i])
            
        permutate(string: combined, current: newCurrent)
    }
}
