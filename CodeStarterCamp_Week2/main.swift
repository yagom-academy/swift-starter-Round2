//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

var lottoHistory: [String: [Int]] = [:]
var lottoRound: Int = 0

func makeLottoNumbers() -> [Int] {
    var totalNumbers: [Int] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45]
    var lottoNumbers: [Int] = []
    for count in 0...5 {
        let pickNumber = totalNumbers.remove(at: Int.random(in: 0...(44 - count)))
        lottoNumbers.append(pickNumber)
    }
    return lottoNumbers
}

func makeLottoHistory() {
    lottoRound += 1
    lottoHistory["\(lottoRound)회차"] = makeLottoNumbers()
}

for _ in 0...4 {
    makeLottoHistory()
}
if let round2LottoNumbers = lottoHistory["2회차"] {
    print("2회차의 로또 당첨 번호는", terminator: " ")
    for round2LottoNumber in round2LottoNumbers {
        if round2LottoNumber == round2LottoNumbers.last {
            print("\(round2LottoNumber) 입니다.")
        } else {
            print(round2LottoNumber, terminator: ", ")
        }
    }
} else {
    print("오류")
}
