//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

var lottoNumbers: Set<Int> = Set<Int>()
var matchedNumbersArray: [Int] = []
var matchedNumbersStringArray: [String] = []
let myLottoNumbers: Set<Int> = [1, 11, 22, 33, 44]

print("My Lotto Numbers : \(myLottoNumbers)")

func createLottoNumbers() {
    while lottoNumbers.count < 6 {
        let randomNumber = Int.random(in: 1...45)
        lottoNumbers.insert(randomNumber)
    }
    print("Lotto Numbers : \(lottoNumbers)")
}

func compareLottoNumbers() {
    var matchedNumbers: Set<Int> = Set<Int>()
    matchedNumbers = myLottoNumbers.intersection(lottoNumbers)
    matchedNumbersArray = Array(matchedNumbers)
}

func changeIntToStringArray() {
    for index in 0..<matchedNumbersArray.count {
        matchedNumbersStringArray.append("\(matchedNumbersArray[index])")
    }
}

func printMatchedNumbers() {
    changeIntToStringArray()
    let arr = matchedNumbersStringArray.joined(separator: ", ")
    print(arr, terminator: " ")
}

func printMessage() {
    compareLottoNumbers()
    if matchedNumbersArray.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        print("축하합니다! 겹치는 번호는", terminator: " ")
        printMatchedNumbers()
        print("입니다!")
    }
}

createLottoNumbers()
printMessage()

