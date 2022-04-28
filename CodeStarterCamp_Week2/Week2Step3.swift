//
//  Week2Step3.swift
//  CodeStarterCamp_Week2
//
//  Created by mingmac on 2022/04/26.
//

import Foundation

func stackLottoNumbers() -> Array<Int> {
    let newLottoNumbers = Array(1...45).shuffled().prefix(6)
    return Array(newLottoNumbers)
}

func saveRoundLottoNumbers() -> Dictionary<String, Array<Int>> {
    var roundLottoNumbers: Dictionary<String, Array<Int>> = [:]
    for roundString in 1...5 {
        roundLottoNumbers["\(roundString)회차"] = stackLottoNumbers()
    }
    return roundLottoNumbers
}

func printRoundLottoNumbers(round: Int, lottoNumbers: Dictionary<String, Array<Int>>) {
    if let chooseRound = lottoNumbers["\(round)회차"]{
        let printArray = chooseRound.map { String($0) }.joined(separator: ", ")
        print("\(round)회차의 당첨번호는 \(printArray) 입니다!")
    } else {
        print("회차를 확인해주세요!")
    }
}


