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


func printLottoNumbers(lottoNumbers: [Int]) {
    for lottoNumber in lottoNumbers {
        if lottoNumber == lottoNumbers.last {
            print("\(lottoNumber) 입니다.")
        } else {
            print(lottoNumber, terminator: ", ")
        }
    }
}

for _ in 0...4 {
    makeLottoHistory()
}
if let round2LottoNumbers = lottoHistory["2회차"] {
    print("2회차의 로또 당첨 번호는", terminator: " ")
    printLottoNumbers(lottoNumbers: round2LottoNumbers)
} else {
    print("2회차의 로또 당첨 번호가 존재하지않습니다.")
}
