//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]

func printRandomNumber() {
    var randomNumber: Set<Int> = Set<Int>()
    while randomNumber.count < 6 {
        randomNumber.insert(Int.random(in: 1...45))
    }
    print(randomNumber.sorted())
}
