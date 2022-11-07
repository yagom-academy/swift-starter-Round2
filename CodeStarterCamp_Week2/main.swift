//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation


var lottoHistory: [String: Set<Int>] = [:]

func generateLuckyNumbers() -> Set<Int> {
    var luckyNumbers: Set<Int> = Set<Int>()
    while luckyNumbers.count < 6 {
        luckyNumbers.insert(Int.random(in: 1...45))
    }
    return luckyNumbers
}

func generateLuckySet(lotto: Int) {
    for historyNumber in 1...lotto {
        lottoHistory["\(historyNumber)회차"] = generateLuckyNumbers()
    }
}

func checkHistory(lotto: Int) {
    guard let safeHistory: Set<Int> = lottoHistory["\(lotto)회차"] else {
        return print("해당 회차가 없습니다.")
    }
    var outputHistory = "\(safeHistory.sorted())"
    outputHistory = outputHistory.trimmingCharacters(in: ["[","]"])
    print("2회차의 로또 당첨 번호는 \(outputHistory) 입니다.")
}

generateLuckySet(lotto: 5)
checkHistory(lotto: 2)
