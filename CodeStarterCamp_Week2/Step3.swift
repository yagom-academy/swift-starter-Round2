//
//  Step3.swift
//  CodeStarterCamp_Week2
//
//  Created by 조성훈 on 2021/12/14.
//

import Foundation

var lottoNumbersArray: [Int] = []
var lottoNumbersDictionary: [String: [Int]] = [:]
var someRoundNumbersArray: [Int] = []
var someRoundNumbersStringArray: [String] = []

func createLottoNumbers(totalRound: Int) {
    for _ in 0..<totalRound {
        var lottoNumbers: Set<Int> = Set<Int>()
        while lottoNumbers.count < 6 {
            lottoNumbers.insert(Int.random(in: 1...45))
        }
        lottoNumbersArray = Array(lottoNumbers)
        saveLottoNumbersToDictionary()
    }
    print(lottoNumbersDictionary)
}

func saveLottoNumbersToDictionary() {
    lottoNumbersDictionary["\(lottoNumbersDictionary.count+1)회차"] = lottoNumbersArray
}

func changeIntToStringArray() {
    for someRoundElement in someRoundNumbersArray {
        someRoundNumbersStringArray.append("\(someRoundElement)")
    }
}

func printMatchedNumbers() {
    changeIntToStringArray()
    let joinedArray = someRoundNumbersStringArray.joined(separator: ", ")
    print(joinedArray, terminator: " ")
}

func checkLottoNumbers(round: Int) {
    if let someValues = lottoNumbersDictionary["\(round)회차"] {
        someRoundNumbersArray = someValues
        print("\(round)회차의 로또 당첨 번호는", terminator: " ")
        printMatchedNumbers()
        print("입니다.")
    } else {
        print("\(round)회차의 로또 번호가 없습니다.")
    }
}

//createLottoNumbers(totalRound: 5)
//checkLottoNumbers(round: 2)

