import UIKit

//: Write a function that returns a string with any consecutive spaces replaced with a single space.
//: Using replacingOccurrences, we can replace all continuous spaces until we no longer find any continuous spaces

"a   b   c".removeWhiteSpace() == "a b c"

extension String {
    
    func removeWhiteSpace() -> String {
       var beforeUpdate = self
       var nextUpdated = self
       
       repeat {
           beforeUpdate = nextUpdated
           nextUpdated = beforeUpdate.replacingOccurrences(of: "  ", with: " ")
       } while beforeUpdate != nextUpdated
       
       return nextUpdated
   }
    
}
