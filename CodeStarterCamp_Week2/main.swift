//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

var luckyNumbers: Set<Int> = Set<Int>()
var lottoHistory: [String: Set<Int>] = [:]

func generateLuckyNumbers(_ repeatLotto: Int) {
    for historyNumber in 1...repeatLotto {
        while luckyNumbers.count < 6 {
            luckyNumbers.insert(Int.random(in: 1...45))
        }
        lottoHistory["\(historyNumber)회차"] = luckyNumbers
        luckyNumbers.removeAll()
    }
}

func checkHistory(_ historyNumber: Int) {
    guard let safeHistory: Set<Int> = lottoHistory["\(historyNumber)회차"] else { return print("해당 회차가 없습니다.") }
    var outputHistory = "\(safeHistory.sorted())"
    outputHistory = outputHistory.trimmingCharacters(in: ["[","]"])
    print("2회차의 로또 당첨 번호는 \(outputHistory) 입니다.")
}

generateLuckyNumbers(5)
checkHistory(2)
