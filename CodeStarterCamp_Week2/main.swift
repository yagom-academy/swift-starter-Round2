//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

var lottoNumbers = [Int : Set<Int>]()

func makeFiveRoundLottoNumbers() {
    for round in 1...5{
        var winngNumbers = Set<Int>()
        while (winngNumbers.count < 6) {
            winngNumbers.insert(Int.random(in: 1...45))
        }
        lottoNumbers[round] = winngNumbers
    }
}

makeFiveRoundLottoNumbers()
let round = 3
if let lottoNumber = lottoNumbers[round] {
    print("\(round)회차의 로또 당첨 번호는 \(lottoNumber.map{String($0)}.joined(separator:", ")) 입니다.")
} else {
    print("no value")
}