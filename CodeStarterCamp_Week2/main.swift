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

func compareMyLottoNumbers(myLottoNumbers: [Int], with winningNumbers: [Int]) -> [Int] {
    let capturedMyLottoNumberValues: Set<Int> = Set(myLottoNumbers)
    let caputredWinningNumberValues: Set<Int> = Set(winningNumbers)
    let sameNumbers: [Int] = capturedMyLottoNumberValues.intersection(caputredWinningNumberValues).sorted()
    
    return sameNumbers
}

func printWinningNumbers(myLottoNumbers: [Int], with winningNumbers: [Int]) {
    let sameNumbers: [Int] = compareMyLottoNumbers(myLottoNumbers: myLottoNumbers, with: winningNumbers)
    
    if sameNumbers.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        let convertedSameNumbers = sameNumbers.map{ String($0) }.joined(separator: ", ")
        print("축하합니다! 겹치는 번호는 \(convertedSameNumbers) 입니다!")
    }
}

func startLotto() {
    winningNumbers = makeDeduplicatedNumbers()
    printWinningNumbers(myLottoNumbers: myLottoNumbers, with: winningNumbers)
}

startLotto()
