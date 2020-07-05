import UIKit

//: Write a function that accepts two String parameters,
//: and returns true if they contain the same
//: characters in any order taking into account letter case.
sameCharacters(input1: "abca", input2: "abca")
sameCharacters(input1: "abc", input2: "cba")
sameCharacters(input1: " a1 b2 ", input2: " b1 a2 ")
sameCharacters(input1: "abc", input2: "abca")
sameCharacters(input1: "abc", input2: "Abc")
sameCharacters(input1: "abc", input2: "cbAa")
sameCharacters(input1: "abcc", input2: "abca")


func sameCharacters(input1: String,
                    input2: String) -> Bool {
    input1.sorted() == input2.sorted()
}


