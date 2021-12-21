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

func compareWithWinningNumbers(myLottoNumbers: [Int], with winningNumbers: [Int]) -> [Int] {
    let myLottoNumbersWithOrder: Set<Int> = Set(winningNumbers)
    let winningNumbersWithOrder: Set<Int> = Set(myLottoNumbers)
    let sameNumbers: [Int] = winningNumbersWithOrder.intersection(myLottoNumbersWithOrder).sorted()
    
    return sameNumbers
}

func printWinningNumbers(myLottoNumbers: [Int], with winningNumbers: [Int]) {
    let sameNumbers: [Int] = compareWithWinningNumbers(myLottoNumbers: myLottoNumbers, with: winningNumbers)
    
    if sameNumbers.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        print("축하합니다! 겹치는 번호는 1, 2, 3, 4, 5, 6 입니다!")
    }
}


