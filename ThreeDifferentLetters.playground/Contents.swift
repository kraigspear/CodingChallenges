import UIKit

//: Write a function that accepts two strings, and returns true if they are identical in length but
//: have no more than three different letters, taking case and string order into account.

sameLengthThreeDifferentLetters(input1: "Clamp", input2: "Cramp")
!sameLengthThreeDifferentLetters(input1: "Clamp", input2: "Grans")

func sameLengthThreeDifferentLetters(input1: String, input2: String) -> Bool {
    
    guard input1.count == input2.count else { return false }
    
    let chars1 = Array(input1)
    let chars2 = Array(input2)
    
    let maxDiff = 4
    var diffCount = 0
    
    for count in 0..<chars1.count {
        
        if chars1[count] != chars2[count] {
            diffCount += 1
            
            if diffCount >= maxDiff {
                break
            }
            
        }
    }
    
    return diffCount < maxDiff
}
