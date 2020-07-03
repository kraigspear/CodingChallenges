import UIKit

//: Is a word spelled the same when reversed?
//: The real test with this is knowing if someone knows
//: the defination of a palindrome.


print("dog".isPalindrome() ? "👍" : "👎")
print("dad".isPalindrome() ? "👍" : "👎")

extension String {
    /**
     Is this string the same when reversed?
     - returns: True if the string is the same reversed
     */
    func isPalindrome() -> Bool {
        let reversed = String(self.reversed())
        return self.caseInsensitiveCompare(reversed) == .orderedSame
    }
}
