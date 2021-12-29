//
//  saveWinningNumbersLog.swift
//  CodeStarterCamp_Week2
//
//  Created by hoon on 2021/12/29.
//

import Foundation

var winningNumbersLog: [String: [Int]] = [:]



func saveWinningNumbers(winningNumbers: Set<Int>, round: Int) {
    var winningNumbers = winningNumbers
    winningNumbersLog["\(round)회차"] = Array(winningNumbers)
    winningNumbers = []
    
    print(winningNumbersLog)
}

