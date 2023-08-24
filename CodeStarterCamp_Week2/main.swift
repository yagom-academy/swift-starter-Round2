//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]

var makeLottoNumbersSet = Set<Int>()

while makeLottoNumbersSet.count < 6 {
    let makeRandomNumber = Int.random(in: 1...45)
    makeLottoNumbersSet.insert(makeRandomNumber)
}
let sorted: [Int] = makeLottoNumbersSet.sorted()

let intersection = makeLottoNumbersSet.intersection(myLottoNumbers)
let sortedLottoNumbers = intersection.sorted()
let myResult = sortedLottoNumbers.map(String.init).joined(separator: ", ")

if myResult.count == 0 {
    print("아쉽지만 겹치는 번호가 없습니다.")
} else {
    print("축하합니다! 겹치는 번호는 \(myResult) 입니다!")
}
