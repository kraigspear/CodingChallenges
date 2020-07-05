import UIKit

//: Given a string in English, return a tuple containing the number of vowels and consonants.

let result = "Swift Coding Challenges".vowelsAndConstants()
result.vowels == 6
result.constants == 15

extension String {
    
    func vowelsAndConstants() -> (vowels: Int, constants: Int) {
        
        let vowels = "aeiou"
        let consonants = "bcdfghjklmnpqrstvwxyz"
        
        var vowelsCount = 0
        var consonantsCount = 0
        
        for c in self.lowercased() {
            
            if vowels.contains(c) {
                vowelsCount += 1
            } else if consonants.contains(c) {
                consonantsCount += 1
            }
        }
        
        return (vowelsCount, consonantsCount)
        
    }
    
}
