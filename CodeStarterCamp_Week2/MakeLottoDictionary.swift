//
//  File.swift
//  CodeStarterCamp_Week2
//
//  Created by 조용현 on 2022/07/21.
//

import Foundation

func makeLottoDictionary(round: Int) -> [String: Set<Int>] {
    var lottoDictionary = [String: Set<Int>]()
    for i in 0...round{
        lottoDictionary.updateValue(makeWinningNumbers(), forKey: "\(i + 1)회차")
    }
    return lottoDictionary
}

func printRoundLottoNumbers(roundLottoNumbers: [String: Set<Int>], roundNumber: Int) {
    if let result = roundLottoNumbers["\(roundNumber)회차"] {
        print("\(roundNumber)회차의 로또 당첨 번호는", terminator: " ")
        var resultString = String()
        for StringArray in result {
            resultString += String(StringArray) + ", "
        }
        resultString.removeLast()
        resultString.removeLast()
        print("\(resultString) 입니다.")
    } else {
        print("해당 차수에 로또번호는 생성되지 않았습니다.")
    }
}

func findRoundLottoDictionary(round: Int) {
    let roundLottoDictionary = makeLottoDictionary(round: 4)
    printRoundLottoNumbers(roundLottoNumbers: roundLottoDictionary, roundNumber: round)
}
