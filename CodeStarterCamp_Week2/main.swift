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

func generateLottoNumbers(by totalRounds: Int) {
    for _ in 1...totalRounds {
        var pickedNumbers: Set<Int> = Set<Int>()
        while pickedNumbers.count < 6 {
            let randomNumber: Int = Int.random(in: 1...45)
            pickedNumbers.insert(randomNumber)
        }
        saveLottoNumbersWithRound(pickedNumbers)
        lottoRound += 1
    }
}

func saveLottoNumbersWithRound(_ lottoNumbers: Set<Int>) {
    let lottoRoundKey: String = "\(lottoRound)회차"
    lottoNumbersPerRound[lottoRoundKey] = Array<Int>(lottoNumbers)
}

func checkPastLottoNumbers(of lottoRound: Int) {
    let lottoRoundKey: String = "\(lottoRound)회차"
    if let winningNumbers = lottoNumbersPerRound[lottoRoundKey] {
        let winningNumbersResult: String = winningNumbers.map {String($0)}.joined(separator: ", ")
        print("\(lottoRoundKey)의 로또 당첨 번호는 \(winningNumbersResult) 입니다.")
    } else {
        print("찾으시는 회차의 로또 당첨 번호가 없습니다")
    }
}

generateLottoNumbers(by: 5)
checkPastLottoNumbers(of: 5)

