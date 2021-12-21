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
    print(Array(deduplicatedNumbers))
    return Array(deduplicatedNumbers)
}

func checkSameNumbers(winningNumbers: [Int], with myLottoNumbers: [Int]) -> [Int] {
    let myLottoNumbersWithOrder: Set<Int> = Set(winningNumbers)
    let winningNumbersWithOrder: Set<Int> = Set(myLottoNumbers)
    let sameNumbers: [Int] = winningNumbersWithOrder.intersection(myLottoNumbersWithOrder).sorted()
    
    return sameNumbers
    
}

