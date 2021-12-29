//
//  searchWinningNumbersLog.swift
//  CodeStarterCamp_Week2
//
//  Created by hoon on 2021/12/29.
//

import Foundation

func searchWinningNumbersLog(round: Int) {
    if let winningNumbersLog = winningNumbersLog["\(round)회차"] {
        let searchedWinningNumbers = convertArrayToString(someArray: winningNumbersLog)
        print("\(round)회차의 로또 당첨 번호는 \(searchedWinningNumbers) 입니다.")
    }
}
