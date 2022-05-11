//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

func createLottoNumbers() {
    while lottoNumbers.count < 6 {
        lottoNumbers.insert(Int.random(in: 1...45))
    }
}

func lottoSeries() {
    for round in 1...5 {
        lottoDictionary["\(round)회차"] = lottoNumbers
    }
}

func printWinNumbers(round: Int) {
    if let lotto = lottoDictionary["\(round)회차"] {
        print("\(round)회차의 로또 당첨 번호는 \(lottoNumbers) 입니다.")
    } else {
        print("해당 회차의 당첨 번호를 찾을 수 없습니다.")
    }
}

var lottoDictionary: Dictionary<String, Set<Int>> = [String: Set<Int>]()
var lottoNumbers = Set<Int> ()

lottoSeries()
createLottoNumbers()
printWinNumbers(round: 2)
