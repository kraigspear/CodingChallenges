import UIKit

//: Write a function that accepts a string as its input, and returns the same string just with
//: duplicate letters removed.
//: The trick here is knowing about NSOrderedSet. If the frame of mind is to use the Swift
//: standard library, then this isn't so odvious.


"wombat".duplicatesRemoved() == "wombat"
"hello".duplicatesRemoved() == "helo"
"Mississippi".duplicatesRemoved() == "Misp"


extension String {
    
    func duplicatesRemoved() -> String {
        
        let characters = map { $0 }
        let orderedSet = NSOrderedSet(array: characters)
       
        let duplicatesRemoved = orderedSet.array.map { $0 as! Character }
        
        return String(duplicatesRemoved)
    }
    
}
