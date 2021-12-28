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
var roundOfWinningNumbers: [String: [Int]] = [:]

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

func printWinningNumbers(winningNumbers: Set<Int>, round: Int) {
    let convertedWinningNubmers = convertArrayToString(someArray: winningNumbers)
    print("\(round)회차 당첨 번호 : \(convertedWinningNubmers)")
}

func printSameNumbers(myLottoNumbers: Set<Int>, with winningNumbers: Set<Int>, round: Int) {
    let sameNumbers: Set<Int> = compareMyLottoNumbers(myLottoNumbers: myLottoNumbers, with: winningNumbers)
    
    if sameNumbers.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        let convertedSameNumbersToString = convertArrayToString(someArray: sameNumbers)
        print("축하합니다! 겹치는 번호는 \(convertedSameNumbersToString) 입니다!")
    }
}

func saveWinningNumbers(round: Int) {
    roundOfWinningNumbers["\(round)회차"] = Array(winningNumbers)
    winningNumbers = []
}

func searchRoundOfWinningNumbers(round: Int) {
    if let roundOfWinningNumbers = roundOfWinningNumbers["\(round)회차"] {
        let searchedWinningNumbers = convertArrayToString(someArray: Set(roundOfWinningNumbers))
        print("\(round)회차의 로또 당첨 번호는 \(searchedWinningNumbers) 입니다.")
    }
}

func startLotto(countOfRound: Int) {
    for round in 1...countOfRound {
        winningNumbers = makeDeduplicatedNumbers(winningNumbers: winningNumbers)
        printWinningNumbers(winningNumbers: winningNumbers, round: round)
        printSameNumbers(myLottoNumbers: myLottoNumbers, with: winningNumbers, round: round)
        saveWinningNumbers(round: round)
    }
}

startLotto(countOfRound: 5)
searchRoundOfWinningNumbers(round: 2)
