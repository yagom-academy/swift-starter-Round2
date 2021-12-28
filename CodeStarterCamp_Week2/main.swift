//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

let myLottoNumbers: Set<Int> = [1, 10, 20, 30, 40, 45]
var winningNumbers: Set<Int> = []

func makeDeduplicatedNumbers(winningNumbers: Set<Int>) -> Set<Int> {
    var winningNumbers = winningNumbers
    
    while winningNumbers.count < 6 {
        let deduplicatedNumber = Int.random(in: 1...45)
        winningNumbers.insert(deduplicatedNumber)
    }
    
    return winningNumbers
}

func compareMyLottoNumbers(myLottoNumbers: Set<Int>, with winningNumbers: Set<Int>) -> Set<Int> {
    let sameNumbers: [Int] = winningNumbers.intersection(myLottoNumbers).sorted()
    
    return Set(sameNumbers)
}

func convertArrayToString(someArray: Set<Int>) -> String {
    let convertedArrayToString = someArray.map{ String($0) }.joined(separator: ", ")
    
    return convertedArrayToString
}

func printWinningNumbers(myLottoNumbers: Set<Int>, with winningNumbers: Set<Int>) {
    let sameNumbers: Set<Int> = compareMyLottoNumbers(myLottoNumbers: myLottoNumbers, with: winningNumbers)
    
    if sameNumbers.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        let convertedSameNumbersToString = convertArrayToString(someArray: sameNumbers)
        print("축하합니다! 겹치는 번호는 \(convertedSameNumbersToString) 입니다!")
    }
}

func startLotto() {
    winningNumbers = makeDeduplicatedNumbers(winningNumbers: winningNumbers)
    printWinningNumbers(myLottoNumbers: myLottoNumbers, with: winningNumbers)
}

startLotto()
