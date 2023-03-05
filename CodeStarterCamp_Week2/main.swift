//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

func createLottoNumbers() -> Set<Int> {
    var lottoNumbers: Set<Int> = []
    while lottoNumbers.count < 6 {
        let randomInt = Int.random(in: 1...45)
        lottoNumbers.insert(randomInt)
    }
    return lottoNumbers
}

func changeNumbersToString(from numbers: [Int]) -> String {
    var stringNumbers = ""
    for i in 0...(numbers.count - 1) {
        if i == (numbers.count - 1) {
            stringNumbers.append("\(numbers[i])")
        } else {
            stringNumbers.append("\(numbers[i]), ")
        }
    }
    return stringNumbers
}

let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]

var sameNumbers: [Int] = []

for i in 0...5 {
    if createLottoNumbers().contains(myLottoNumbers[i]) {
        sameNumbers.append(myLottoNumbers[i])
    }
}

if sameNumbers.isEmpty {
    print("아쉽지만 겹치는 번호가 없습니다.")
} else {
    print("축하합니다! 겹치는 번호는 \(changeNumbersToString(from: sameNumbers)) 입니다!")
}

