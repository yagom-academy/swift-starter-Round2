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

func printSetToInt() {
    if matchedNumbersArray.count > 1 {
        for index in 0..<matchedNumbersArray.count-1 {
            print(matchedNumbersArray[index], terminator: ", ")
        }
        if let num: Int = matchedNumbersArray.last {
            print(num, terminator: " ")
        }
    } else {
        if let num: Int = matchedNumbersArray.first {
            print(num, terminator: " ")
        }
    }
}

func printComparedNumbers() {
    compareLottoNumbers()
    if matchedNumbersArray.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        print("축하합니다! 겹치는 번호는", terminator: " ")
        printSetToInt()
        print("입니다!")
    }
}

createLottoNumbers()
printComparedNumbers()

