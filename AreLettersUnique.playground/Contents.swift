import UIKit


//: # areLettersUnique

//: Sets don't contain duplicates
//:
//: We can compare the count of the set by the count of the orginal string
//: if the count is the same we know we have a unique string

func areLettersUnique(input: String) {
    let characters = input.map { $0 }
    let set = Set(characters)
    let 🤚 = set.count == input.count ? "👍" : "👎"
    print("Unique: \(input) \(🤚)")
}

areLettersUnique(input: "No duplicates")
areLettersUnique(input: "abcdefghijklmnopqrstuvwxyz")
areLettersUnique(input: "AaBbCc")
areLettersUnique(input: "Hello, world")
