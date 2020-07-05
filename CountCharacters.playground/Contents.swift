import UIKit

//: Write a function that accepts a string, and returns how many times a specific character appears,
//: taking case into account.

"The rain in Spain".countCharacter("a") == 2
"Mississippi".countCharacter("i") == 4
"Hacking with Swift".countCharacter("i") == 3

extension String {
    func countCharacter(_ character: Character) -> Int {
        
        let characters = map{ $0 }
        
        return characters.reduce(0) {  (total, thisCharcter) -> Int in
            if character == thisCharcter {
                return total + 1
            } else {
                return total
            }
        }
    }
}
 
