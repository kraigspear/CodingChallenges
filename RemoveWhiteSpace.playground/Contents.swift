import UIKit


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
