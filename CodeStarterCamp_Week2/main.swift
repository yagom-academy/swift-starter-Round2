//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

var lottoNumbers: Set<Int> = []
let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
var matchingNumbers: [Int] = []
var lottoNumbersPerRound: [String: [Int]] = [:]
var round: Int = 0

func generateLottoNumbers() {
    while lottoNumbers.count<6 {
        lottoNumbers.insert(Int.random(in: 1...45))
    }
    recordLottoNumbersPerRound()
}

func recordLottoNumbersPerRound() {
    round += 1
    lottoNumbersPerRound["\(round)"+"회차"] = lottoNumbers.sorted()
}

func findMatchingNumbers() {
    matchingNumbers = lottoNumbers.intersection(myLottoNumbers).sorted()
}

func printMatchingNumbers(where matchingNumbers: inout [Int]) {
    while matchingNumbers.isEmpty == false {
        if matchingNumbers.count == 1 {
            if let matchingNumber = matchingNumbers.first {
                print(matchingNumber, terminator: "")
            }
            matchingNumbers.removeFirst()
        } else {
            if let matchingNumber = matchingNumbers.first {
                print(matchingNumber, terminator: ", ")
            }
            matchingNumbers.removeFirst()
        }
    }
}

func printResult() {
    findMatchingNumbers()
    if matchingNumbers.isEmpty == false {
        print("축하합니다! 겹치는 번호는 ", terminator: "")
        printMatchingNumbers(where: &matchingNumbers)
        print(" 입니다!")
    } else {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
}

func printSecondLottoNumbers() {
    if var secondLottoNumbers: [Int] = lottoNumbersPerRound["2회차"] {
        print("2회차의 로또 당첨 번호는", terminator: " ")
        printMatchingNumbers(where: &secondLottoNumbers)
        print(" 입니다.")
    }
}

for _ in 1...5 {
    generateLottoNumbers()
}
printSecondLottoNumbers()
