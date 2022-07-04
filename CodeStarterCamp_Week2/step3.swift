//
//  step3.swift
//  CodeStarterCamp_Week2
//
//  Created by 한서영 on 2022/07/01.
//

import Foundation

var roundLottoNumbers: Dictionary<String, Array<Int>> = [:]

func createEachRoundLottoNumbers() {
    let previousRoundNumber: Int = roundLottoNumbers.count
    let thisRound: String = "\(previousRoundNumber+1)회차"
    let sortedLottoNumbers: [Int] = returnLottoNumbers().sorted()
    
    roundLottoNumbers[thisRound] = sortedLottoNumbers
}

func printRoundLottoNumbers(Number: Int) {
    if let roundLottoNumbersKey: Array<Int> = roundLottoNumbers["\(Number)회차"] {
        print("\(Number)회차의 로또 당첨 번호는 ", terminator: "")
        for lottoNumber in roundLottoNumbersKey {
            if roundLottoNumbersKey.last == lottoNumber {
                print("\(lottoNumber) 입니다.")
            } else {
                print(lottoNumber, terminator: ", ")
            }
        }
    } else {
        print("해당 회차는 없습니다.")
    }
}

func createRoundLottoNumbers(Number: Int) {
    for _ in 1...Number {
        createEachRoundLottoNumbers()
    }
}
