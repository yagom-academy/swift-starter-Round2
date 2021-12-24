//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

var lottoNumber: Set<Int> = Set<Int>()
var matchedNumbersArray: [Int] = []
var matchedNumbersStringArray: [String] = []
let lottoNumbers: Set<Int> = [1, 22, 25, 39, 44]

func createRandomLottoNumbers() {
    while lottoNumber.count < 6 {
        lottoNumber.insert(Int.random(in: 1...45))
    }
}

func compareLottoNumbers() {
    var matchNumbers: Set<Int> = Set<Int>()
    matchNumbers = lottoNumbers.intersection(lottoNumber)
    matchedNumbersArray = Array(matchNumbers)
}

func changeIntToStringArray() {
    for index in matchedNumbersArray {
        matchedNumbersStringArray.append("\(index)")
    }
}

func printMatchedNumbers() {
    changeIntToStringArray()
    let joinedArray = matchedNumbersStringArray.joined(separator: ", ")
    print(joinedArray, terminator: " ")
}

func printMatchedResultMessage() {
    compareLottoNumbers()
    if matchedNumbersArray.isEmpty {
        print("아쉽지만  겹치는 번호가 없습니다 다음기회에 재시도 해주세요")
    } else {
        print("축하합니다!! 겹치는 번호는", terminator: " ")
        printMatchedNumbers()
        print("입니다!!")
    }
}

createRandomLottoNumbers()
printMatchedResultMessage()
