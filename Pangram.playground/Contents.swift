import UIKit

//: Write a function that returns true if it is given a string that is an English pangram, ignoring
//: letter case.

//: 1. Strip out characters that are not between a & z
//: 2. Remove duplicates
//: 3. If the count of characters are the same as # of chars in alphabet we have a Pangram


"The quick brown fox jumps over the lazy dog".isPangram
!"The quick brown fox jumped over the lazy dog".isPangram

extension String {
    
    var isPangram: Bool {
        
        let lcase = self.lowercased().map { $0 }.filter {
            $0 >= "a" && $0 <= "z"
        }
        
        let set = Set(lcase)
        
        let numberOfCharsInAlphabet = 26
        return set.count == numberOfCharsInAlphabet
        
    }
    
}
