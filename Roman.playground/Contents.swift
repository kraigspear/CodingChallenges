import UIKit

func toRoman(_ value: Int) -> String {
    
    let values = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]
    let symbols = ["M","CM","D","CD","C","XC","L","XL","X","IX","V","IV","I"]
    
    var num = value
    var roman = ""
    
    
    for i in 0..<values.count {
        while values[i] <= num {
            num -= values[i]
            roman += symbols[i]
            print("num: \(num) roman: \(roman)")
        }
    }
    
    return roman
}

print(toRoman(1984))

