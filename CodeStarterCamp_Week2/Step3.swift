//
//  Step3.swift
//  CodeStarterCamp_Week2
//
//  Created by Channoori Park on 2022/11/11.
//

import Foundation

var lottoWinningNumbers: Dictionary<String, [Int]> = [:]

func storeLottoWinningNumbers(_ winningNumbers: [Int]) {
    let lottoRound = "\(lottoWinningNumbers.count + 1)회차"
    lottoWinningNumbers[lottoRound] = winningNumbers
}

func printRoundWinningNumber(_ round: Int) {
    if let lottoNumbers = lottoWinningNumbers["\(round)회차"] {
        var numberString: String = ""
        for (index, numberValue) in lottoNumbers.enumerated() {
            if index == lottoNumbers.count-1 {
                numberString += "\(numberValue)"
            } else {
                numberString += "\(numberValue),"
            }
            
        }
        print("\(round)회차 로또 당첨 번호는 \(numberString)입니다.")
    } else {
        print("회차가 존재하지 않습니다.")
    }
}
