//
//  Step3.swift
//  CodeStarterCamp_Week2
//
//  Created by hyogang on 2021/12/24.
//

import Foundation

var historyOfWinningLottoNumbers: Dictionary = [String: Set<Int>]()
var round: Int = 0

func saveWinningLottoNumbers() {
    round += 1
    let winningLottoNumbers = makeWinningLottoNumbers()
    historyOfWinningLottoNumbers["\(round)회차"] = winningLottoNumbers
}

func makeHistoryOfWinningLottoNumbers(round: Int) {
    for _ in 1...round {
        saveWinningLottoNumbers()
    }
}

func showHistoryOfWinningLottoNumbers(round: Int) {
    guard let winningLottoNumbers = historyOfWinningLottoNumbers["\(round)회차"] else { return }
    let result = convertArrayToString(array: winningLottoNumbers)
    print("\(round)회차의 로또 당첨 번호는 \(result) 입니다.")
}
