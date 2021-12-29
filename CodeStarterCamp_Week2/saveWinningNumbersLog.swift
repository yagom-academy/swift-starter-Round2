//
//  saveWinningNumbersLog.swift
//  CodeStarterCamp_Week2
//
//  Created by hoon on 2021/12/29.
//

import Foundation

var roundOfWinningNumbers: [String: [Int]] = [:]

func saveWinningNumbers(round: Int) {
    roundOfWinningNumbers["\(round)회차"] = Array(winningNumbers)
    winningNumbers = []
}
