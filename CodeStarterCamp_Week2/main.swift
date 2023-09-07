//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//
import Foundation

func generateLottoNumbers() -> [Int] {
    var lottoNumbers = Set<Int>()

    while lottoNumbers.count < 6 {
        let randomNumber = Int.random(in: 1...45)
        lottoNumbers.insert(randomNumber)
    }

    return Array(lottoNumbers).sorted()
}

var lottoResults: [Int: [Int]] = [:]

func generateLottoResults(rounds: Int) {
    for round in 1...rounds {
        let lottoNumbers = generateLottoNumbers()
        lottoResults[round] = lottoNumbers
    }
}

func printLottoNumbersForRound(round: Int) {
    if let numbers = lottoResults[round] {
        let numbersString = numbers.map { String($0) }.joined(separator: ", ")
        print("\(round)회차의 로또 번호는 \(numbersString) 입니다")
    } else {
        print("\(round)회차의 로또 번호가 없습니다.")
    }
}

//로또번호 생성
generateLottoResults(rounds: 5)

//특정회차 출력
printLottoNumbersForRound(round: 2)
