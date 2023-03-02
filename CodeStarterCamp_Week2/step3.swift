//
//  Step3.swift
//  CodeStarterCamp_Week2
//
//  Created by MARY on 2023/03/01.
//

import Foundation

func generateLotteryNumbers(history: inout [String: Array<Int>]) {
    var winningNumbers: Set<Int> = []

    while winningNumbers.count < 6 {
        winningNumbers.insert(Int.random(in: 1...45))
    }
    addLotteryNumbers(Array(winningNumbers).sorted(), to: &history)
}

func addLotteryNumbers(_ winningNumbers: Array<Int>, to history: inout [String: Array<Int>]) {
    let key: String = "\(history.count + 1)회차"

    history[key] = winningNumbers
}

func findLotteryNumbers(round: Int, from history: [String: Array<Int>]) {
    let key: String = "\(round)회차"
    
    if let numbers = history[key] {
        print("\(key)의 로또 당첨 번호는", terminator: " ")
        printAllElements(of: numbers)
        print("입니다.")
    } else {
        print("\(key)는 아직 진행하지 않았습니다.")
    }
}
