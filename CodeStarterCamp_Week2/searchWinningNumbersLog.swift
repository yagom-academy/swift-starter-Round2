//
//  searchWinningNumbersLog.swift
//  CodeStarterCamp_Week2
//
//  Created by hoon on 2021/12/29.
//

import Foundation

func searchRoundOfWinningNumbers(round: Int) {
    if let roundOfWinningNumbers = roundOfWinningNumbers["\(round)회차"] {
        let searchedWinningNumbers = convertArrayToString(someArray: Set(roundOfWinningNumbers))
        print("\(round)회차의 로또 당첨 번호는 \(searchedWinningNumbers) 입니다.")
    }
}
