import UIKit

//: Write a function that accepts a string as input, then returns how often each letter is repeated in
//: a single run, taking case into account.

runLengthEncoding("aabbcc") == "a2b2c2"
runLengthEncoding("aaabaaabaaa") == "a3b1a3b1a3"
runLengthEncoding("aaAAaa") == "a2A2a2"

func runLengthEncoding(_ input: String) -> String {

    let inputArray = Array(input)
    
    guard let first = input.first else { return "" }
    
    var encoded = ""
    
    var count = 1
    var current = first
    
    for index in (1 ..< inputArray.count) {
        
        let char = inputArray[index]
        
        if char == current {
            count += 1
        } else {
            if count >= 1 {
                encoded += "\(current)\(count)"
                current = char
                count = 1
            }
        }
        
    }
    
    encoded += "\(current)\(count)"
    
    print("encoded: \(encoded)")
    return encoded
   
}
