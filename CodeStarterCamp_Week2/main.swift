//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

var myLottoNumbers: [Int] = []
var lottoNumbers: [Int] = []

func chooseNumbers() -> Set<Int> {
    var randomSixNumbers: Set<Int> = Set<Int>()
    while randomSixNumbers.count < 6 {
        let randomNumber: Int = Int.random(in: 1...45)
        randomSixNumbers.insert(randomNumber)
    }
    return randomSixNumbers
}

var correctNumbers: Set<Int> = Set<Int>()

func compareNumbers() {
    for index in 0...5 {
        if lottoNumbers.contains(myLottoNumbers[index]) {
            correctNumbers.insert(myLottoNumbers[index])
        }
    }
}

chooseNumbers()
compareNumbers()
switch correctNumbers.count {
case 0:
    print("아쉽지만 겹치는 번호가 없습니다.")
case 1...6:
    print("축하합니다! 겹치는 번호는 \(correctNumbers) 입니다!")
default:
    print("unknown")
}
