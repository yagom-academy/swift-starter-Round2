//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
var makeLottoNumbersSet: Set<Int> = Set<Int>()

func makeLottoNumbers() {
    while makeLottoNumbersSet.count < 6 {
        makeLottoNumbersSet.insert(Int.random(in: 1...45))
    }
}

func compareNumbers() -> [Int] {
    let overlapNumbers = makeLottoNumbersSet.intersection(myLottoNumbers)
    let sortedOverlapNumbers = overlapNumbers.sorted()
    return sortedOverlapNumbers
}

makeLottoNumbers()

let myResult = compareNumbers().map(String.init).joined(separator: ", ")

if myResult.isEmpty {
    print("아쉽지만 겹치는 번호가 없습니다.")
} else {
    print("축하합니다! 겹치는 번호는 \(myResult) 입니다!")
}
