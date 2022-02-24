//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

func generateWinningNumbers() -> [Int] {
    let shuffledNumberPool: [Int] = Array(1...45).shuffled()
    var winningNumbers: [Int] = []

    for index in 0...5 {
        winningNumbers.append(shuffledNumberPool[index])
    }
    return winningNumbers
}

func generateLottoHistory(rounds: Int) -> [String: [Int]] {
    var lottoHistory: [String: [Int]] = [:]
    
    for round in 1...rounds {
        let winningNumbers: [Int] = generateWinningNumbers()
        lottoHistory["\(round)회차"] = winningNumbers
    }
    return lottoHistory
}

func showRoundResult(winningNumbers: [Int], round: Int) {
    print("\(round)회차 로또 당첨 번호는 ", terminator: "")
    for index in 0...5 {
        if index == 5 {
            print("\(winningNumbers[index]) 입니다.")
        } else {
            print("\(winningNumbers[index])", terminator: ", ")
        }
    }
}

func showLottoHistory(round: Int) {
    let lottoHistory: [String: [Int]] = generateLottoHistory(rounds: 5)
    let roundResult: [Int]? = lottoHistory["\(round)회차"]
    
    switch roundResult {
    case .none:
            print("\(round)회차에 대한 정보가 없습니다.")
    case .some(let winningNumbers):
        showRoundResult(winningNumbers: winningNumbers, round: round)
    }
}

showLottoHistory(round: 2)

