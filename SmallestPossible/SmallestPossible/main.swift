//
//  main.swift
//  SmallestPossible
//
//  Created by Kraig Spear on 7/19/20.
//  Copyright © 2020 SpearWare. All rights reserved.
//

import Foundation

public func smallestPossible(_ A : inout [Int]) -> Int {
    
    // Remove duplicates
    
    var input = Array(Set(A.filter { $0 > 0 }))
    input.sort()
    
    if input.count < 1 { return 1 }
    
    let firstVal = input.first!
    
    var expectedArray: [Int] = []
    
    for i in 0..<input.count {
        expectedArray.append(firstVal + i)
    }
    
    for i in 0..<expectedArray.count {
        
        let inputVal = input[i]
        let expectedVal = expectedArray[i]
        
        if expectedVal != inputVal {
           return expectedVal
        }
    }
    
    return expectedArray.last! + 1
    
}


//var smallestData = [1, 2, 3]
//var small = smallestPossible(&smallestData)

//print("small: \(small)")

var smallestData = [1, 3, 6, 4, 1, 2]
let small = smallestPossible(&smallestData)
print("small: \(small)")
