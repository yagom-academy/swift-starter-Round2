//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
var lottoInfo: [String: [Int]] = [:]

func addLottoInfo(lottoNumbers: [Int]) {
    let count = lottoInfo.count + 1
    lottoInfo["\(count)회차"] = lottoNumbers
}

@discardableResult
func createLottoNumbers() -> [Int] {
    var lottoNumbers: [Int] = []
    while lottoNumbers.count < 6 {
        let lottoNumber = Int.random(in: 1...45)
        if lottoNumbers.contains(lottoNumber) == false {
            lottoNumbers.append(lottoNumber)
        }
    }
    lottoNumbers = lottoNumbers.sorted()
    addLottoInfo(lottoNumbers: lottoNumbers)
    
    return lottoNumbers
}

func changeNumbersToSentence(from numbers: [Int]) -> String {
    var sentenceNumbers = ""
    for order in 0...(numbers.count - 1) {
        if order == (numbers.count - 1) {
            sentenceNumbers.append("\(numbers[order])")
        } else {
            sentenceNumbers.append("\(numbers[order]), ")
        }
    }
    return sentenceNumbers
}

func checkLottoNumbers(with myNumbers: [Int]) {
    var sameNumbers: [Int] = []
    let lottoNumbers: [Int] = createLottoNumbers()
    
    for myNumber in myNumbers {
        if lottoNumbers.contains(myNumber) {
            sameNumbers.append(myNumber)
        }
    }
    
    if sameNumbers.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        print("축하합니다! 겹치는 번호는 \(changeNumbersToSentence(from: sameNumbers)) 입니다!")
    }
}

func findLottoNumbers(in round: Int) {
    if let foundLottoNumbers = lottoInfo["\(round)회차"] {
        print("\(round)회차의 로또 당첨 번호는 \(changeNumbersToSentence(from: foundLottoNumbers)) 입니다")
    }
}

for _ in 0...4 {
    createLottoNumbers()
}

findLottoNumbers(in: 2)


