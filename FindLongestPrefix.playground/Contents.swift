import UIKit

//: Write a function that accepts a string of words with a similar prefix, separated by spaces, and
//: returns the longest substring that prefixes all words.

findLargestPrefix("swift switch swill swim") == "swi"
findLargestPrefix("flip flap flop") == "fl"

func findLargestPrefix(_ input: String) -> String {
    let words = input.components(separatedBy: " ")
    
    if words.count < 2 { return "" }
    
    let firstWord = words.first!
    
    var currentPrefix = ""
    var bestPrefix = ""
    
    for letter in firstWord {
        
        currentPrefix.append(letter)
        
        for word in words {
            if !word.hasPrefix(currentPrefix) {
                return bestPrefix
            }
        }
        
        bestPrefix = currentPrefix
        print("bestPrefix: \(bestPrefix)")
        
    }
    
    return bestPrefix
}
