import UIKit

//: Write a function that accepts two strings, and returns true if one string is rotation of the other,
//: taking letter case into account.


isRotation(input: "abcde", rotated: "eabcd")
isRotation(input: "abcde", rotated: "deabc")
isRotation(input: "abcde", rotated: "cdeab")
isRotation(input: "abcde", rotated: "abced") == false

func isRotation(input: String, rotated: String) -> Bool {
    guard input.count == rotated.count else { return false }
    
    let combined = input + input
    
    print("combined: \(combined) rotated: \(rotated)")
    
    return combined.contains(rotated)
}
