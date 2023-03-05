//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

var lottoNumbersPerRound: [String: Array<Int>] = [:]
var lottoRound: Int = 1

func generateLottoNumbers() -> Set<Int> {
    var pickedNumbers: Set<Int> = Set<Int>()
    while pickedNumbers.count < 6 {
        let randomNumber: Int = Int.random(in: 1...45)
        pickedNumbers.insert(randomNumber)
    }
    saveLottoNumbersWithRound(pickedNumbers)
    lottoRound += 1
    return pickedNumbers
}

func saveLottoNumbersWithRound(_ lottoNumbers: Set<Int>) {
    let dictionaryKey: String = "\(lottoRound)회차"
    lottoNumbersPerRound[dictionaryKey] = Array<Int>(lottoNumbers)
}

func checkPastLottoNumbers(of lottoRound: Int) {
    let dictionaryKey: String = "\(lottoRound)회차"
    if let winnerForTheRound = lottoNumbersPerRound[dictionaryKey] {
        let winner: String = winnerForTheRound.map {String($0)}.joined(separator: ", ")
        print("\(dictionaryKey)의 로또 당첨 번호는 \(winner) 입니다.")
    } else {
        print("찾으시는 회차의 로또 당첨 번호가 없습니다")
    }
}

func generateLottoNumbers(by repeatCount: Int) {
    var newLottoNumbers: Set<Int>
    for _ in (1...repeatCount) {
        newLottoNumbers = generateLottoNumbers()
    }
}

generateLottoNumbers(by: 5)
checkPastLottoNumbers(of: 6)

