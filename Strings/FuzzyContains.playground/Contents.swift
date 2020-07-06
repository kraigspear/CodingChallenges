import UIKit

//: Write your own version of the contains() method on String that ignores letter case, and
//: without using the existing contains() method.

"Hello, world".fuzzyContains("Hello")
"Hello, world".fuzzyContains("WORLD")
!"Hello, world".fuzzyContains("Goodbye")

extension String {
    
    func fuzzyContains(_ input: String) -> Bool {
        lowercased().range(of: input.lowercased()) != nil
    }
    
}
