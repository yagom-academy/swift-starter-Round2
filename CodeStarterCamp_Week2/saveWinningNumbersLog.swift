//
//  saveWinningNumbersLog.swift
//  CodeStarterCamp_Week2
//
//  Created by hoon on 2021/12/29.
//

import Foundation

var winningNumbersLog: [String: Set<Int>] = [:]

func saveWinningNumbers(round: Int) {
    for number in 0...round {
        makeDeduplicatedNumbers()
        winningNumbersLog["\(number + 1)회차"] = winningNumbers
        winningNumbers = []
    }
}
