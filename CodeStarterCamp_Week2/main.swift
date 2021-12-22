//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

var randomNumber: Int
var randomNumberArray: Array<Int> = []

while randomNumberArray.count < 6 {
    randomNumber = Int.random(in: 1...45)
    if !randomNumberArray.contains(randomNumber) {
        randomNumberArray.append(randomNumber)
    }
}

print(randomNumberArray)
