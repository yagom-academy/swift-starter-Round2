//
//  File.swift
//  CodeStarterCamp_Week2
//
//  Created by 조용현 on 2022/07/21.
//

import Foundation

func makeWinningNumbers() -> Set<Int>{
    var lottoNumbersSet = Set<Int>()
    while lottoNumbersSet.count < 6 {
        lottoNumbersSet.insert(Int.random(in:1...45))
    }
    return lottoNumbersSet
}

func repeatmakeLottoDictionary(repeatcount: Int) -> [String: Set<Int>] {
    var lottoDictionary = [String: Set<Int>]()
    for i in 0...repeatcount{
        lottoDictionary.updateValue(makeWinningNumbers(), forKey: "\(i + 1)회차")
    }
    return lottoDictionary
}

func printResult(winnerLottoNumbers: [String: Set<Int>], repeatNumber: Int) {
    if let result = winnerLottoNumbers["\(repeatNumber)회차"] {
        print("\(repeatNumber)회차의 로또 당첨 번호는 \(result)입니다.")
    } else {
        print("해당 차수에 로또번호는 생성되지 않았습니다.")
    }
}

func roundLottoNumbers(roundNumber: Int) {
    let roundLottoDictionary = repeatmakeLottoDictionary(repeatcount: 4)
    printResult(winnerLottoNumbers: roundLottoDictionary, repeatNumber: roundNumber)
}
