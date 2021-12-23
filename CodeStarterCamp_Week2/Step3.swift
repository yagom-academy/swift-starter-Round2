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

