//
//  Step3.swift
//  CodeStarterCamp_Week2
//
//  Created by eve on 2023/03/02.
//

import Foundation

private var winningNumbersList: Dictionary<String, Any> = [:]

/// 로또 당첨 번호를 생성
func makeWinningNumbers(count: Int) {
    for _ in 1...count {
        getWinningLottoNumbers()
    }
}

/// 새로운 회차와 로또 번호를 Dictionary에 저장
func saveWinningNumbers(winningNumbers: Set<Int>) {
    let round = winningNumbersList.count + 1
    winningNumbersList["\(round)회차"] = Array(winningNumbers).sorted()
}

/// 원하는 회차의 로또 당첨 번호를 조회
func getRoundWinningNumber(round: Int) {
    if round < 1 { return }

    if round <= winningNumbersList.count {
        let roundWinningNumber = winningNumbersList["\(round)회차"]
        
        if let winningNumbers = roundWinningNumber as? [Int] {
            let stringNumbers = winningNumbers.map { String($0) }.joined(separator: ", ")
            print("\(round)회차의 로또 당첨 번호는 \(stringNumbers) 입니다.\n")
        }
    } else {
        print("아직 진행되지 않은 회차입니다.\n")
    }
}
