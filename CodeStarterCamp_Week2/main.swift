//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//
import Foundation

let myLottoNumbers: Set<Int> = [1, 8, 10, 23, 44, 36]
var lottoNumbers: Set<Int> = []
var winningLottoLog: [String: [Int]] = [:]
var lottoMatchedNumberDictionary: [String: [Int]] = [:]

func createRandomLottoNumbers() {
    var count: Int = 0
    while count < 6 {
        let randomNumer: Int = Int.random(in: 1...45)
        if !lottoNumbers.contains(randomNumer) {
            lottoNumbers.insert(randomNumer)
            count = count + 1
        }
    }
}

func matchingLottoNumbers() -> Array<Int> {
    let matchedNumbers = Array(lottoNumbers.intersection(myLottoNumbers))
    return matchedNumbers
}

func convertArrayToString(lottoSomeArray: Array<Int>) -> String {
    let lottoSomeString = lottoSomeArray.map { String($0) }.joined(separator: ", ")
    return lottoSomeString
}


func playRandomLotto(finalRound: Int) {
    for round in 1...finalRound {
        createRandomLottoNumbers()
        saveMatchedNumber(round: round)
        SaveWinningLottoNumbers(round: round)
    }
}

func SaveWinningLottoNumbers(round: Int) {
    winningLottoLog["\(round)회차"] = Array(lottoNumbers)
    lottoNumbers = []
}

func saveMatchedNumber(round: Int) {
    lottoMatchedNumberDictionary["\(round)회차"] = matchingLottoNumbers()
}

func searchLottoRound(round: Int) {
    if let lottoHistoryLog = winningLottoLog["\(round)회차"] {
        let searchingNumbers = convertArrayToString(lottoSomeArray: lottoHistoryLog)
        print("\(round)회차의 로또 당첨 번호는 \(searchingNumbers) 입니다.")
    }
}

playRandomLotto(finalRound: 5)
searchLottoRound(round: 2)
