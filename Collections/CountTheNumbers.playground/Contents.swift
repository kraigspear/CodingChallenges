import UIKit

//: Write an extension for collections of integers that returns the number of times a specific digit
//: appears in any of its numbers.

[3,3,2,1,5,3].countNumber(3) == 3
[3,3,3,3,3,3].countNumber(3) == 6

extension Collection where Element == Int {

    /**
     The number of times a digit is found in this number
     - paramter: Number to search for
     - Returns: The number of times a digit is found or 0 if number is < 0 > 9
     */
    func countNumber(_ number: Int) -> Int {
        
        if number < 0 || number > 9 {
            return 0
        }
        
        let searchFor = "\(number)".map { $0 }.first
        
        assert(searchFor != nil, "Expected to have one character")
        
        let convertedStr = "\(self)".map { $0 }
        
        
        // A filter could have been used to remove the condition from the reduce, but
        // I don't think it matters. It wouldn't be more efficieant and would require
        // two high order functions.  Nothing to split hairs over.
        return convertedStr.reduce(0) { (total, character) in
            
            if character == searchFor {
                return total + 1
            } else {
                return total
            }
        }
    }
    
}
