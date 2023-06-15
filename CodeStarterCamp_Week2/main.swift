//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

var lottoNumbers = [Int : Set<Int>]()
func makeLottoNumbers() {
    var winngNumbers = Set<Int>()
    for round in 1...5{
        while (winngNumbers.count < 6) {
            winngNumbers.insert(Int.random(in: 1...45))
        }
        lottoNumbers[round] = winngNumbers
        winngNumbers.removeAll()
    }
}
makeLottoNumbers()
let round = 3
if let ChekingOptional = lottoNumbers[round] {
    print("\(round)회차의 로또 당첨 번호는 \(ChekingOptional.map{String($0)}.joined(separator:", ")) 입니다.")
} else {
    print("no value")
}
