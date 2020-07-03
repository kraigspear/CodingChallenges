import UIKit


func areLettersUnique(input: String) -> Bool {
    let characters = input.map { $0 }
    let set = Set(characters)
    return set.count == input.count
}


assert(areLettersUnique(input: "No duplicates") == true, "Challenge 1 failed")
assert(areLettersUnique(input: "abcdefghijklmnopqrstuvwxyz") == true, "Challenge 1 failed")
assert(areLettersUnique(input: "AaBbCc") == true, "Challenge 1 failed")
assert(areLettersUnique(input: "Hello, world") == false, "Challenge 1 failed")
