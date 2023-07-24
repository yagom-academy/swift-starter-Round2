//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

var lottoNumbersDictionary: [Int: (Set<Int>, String)] = [:]

func generateLottoNumbers() -> Set<Int> {
    return generateUniqueNumbers(count: 6, range: 1...45)
}

func generateUniqueNumbers(count: Int, range: ClosedRange<Int>) -> Set<Int> {
    var uniqueNumbers = Set<Int>()
    
    while uniqueNumbers.count < count {
        let randomNumber = Int.random(in: range)
        uniqueNumbers.insert(randomNumber)
    }
    SaveLottorNumbersForRound(uniqueNumbers)
    return uniqueNumbers
}

func SaveLottorNumbersForRound(_ generatedLottoNumbers: Set<Int>) {
    let roundNumber = lottoNumbersDictionary.count + 1
    let lottoNumberStrings = generatedLottoNumbers.map { String($0) }
    let joinedNumbersString = lottoNumberStrings.joined(separator: ", ")
    let lottoNumberData = (generatedLottoNumbers, joinedNumbersString)
    lottoNumbersDictionary[roundNumber] = lottoNumberData
}

generateLottoNumbers()
generateLottoNumbers()
generateLottoNumbers()
generateLottoNumbers()
generateLottoNumbers()

func printLottoNumbersForRound(_ key: Int) {
    if let lottoNumbers = lottoNumbersDictionary[key] {
        let (_, winningNumber) = lottoNumbers
        print("\(key)회차의 로또 당첨 번호는 \(winningNumber) 입니다.")
    } else {
        print("해당 회차의 로또 당첨 번호가 없습니다.")
    }
}

printLottoNumbersForRound(2)
