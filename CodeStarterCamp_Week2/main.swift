//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

let myLottoNumbers: [Int] = [1, 10, 20, 30, 40, 45]
var winningNumbers: [Int] = []

func makeDeduplicatedNumbers() -> [Int] {
    var deduplicatedNumbers: Set<Int> = []
    
    while deduplicatedNumbers.count < 6 {
        let deduplicatedNumber = Int.random(in: 1...45)
        deduplicatedNumbers.insert(deduplicatedNumber)
    }
    return Array(deduplicatedNumbers)
}

