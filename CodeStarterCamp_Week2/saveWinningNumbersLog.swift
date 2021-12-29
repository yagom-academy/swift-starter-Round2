//
//  saveWinningNumbersLog.swift
//  CodeStarterCamp_Week2
//
//  Created by hoon on 2021/12/29.
//

import Foundation

var winningNumbersLog: [String: [Int]] = [:]

func saveWinningNumbers(round: Int) {
    for number in 1...round {
        makeDeduplicatedNumbers()
        winningNumbersLog["\(number)회차"] = Array(winningNumbers)
        winningNumbers = []
    }
}
