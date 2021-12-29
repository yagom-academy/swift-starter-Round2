//
//  saveWinningNumbersLog.swift
//  CodeStarterCamp_Week2
//
//  Created by hoon on 2021/12/29.
//

import Foundation

var winningNumbersLog: [String: Set<Int>] = [:]

func saveWinningNumbers(round: Int) {
    for number in 1...round {
        winningNumbersLog["\(number)회차"] = winningNumbers
        winningNumbers = []
        makeDeduplicatedNumbers()
    }
}
