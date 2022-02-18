//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

let myNumbers: Set<Int> = [1, 2, 3, 4, 5, 6]
var randomNumbers = Set<Int>()

func makeLottoNumbers() {

    while randomNumbers.count < 6 {
        randomNumbers.insert(Int.random(in: 1...45))
    }
    print(randomNumbers)
}
func resultLottoNumbers() {
    var winnigLottoNumbers = Set<Int>()
    winnigLottoNumbers = randomNumbers.intersection(myNumbers)
    if winnigLottoNumbers.isEmpty {
        print("맞는번호 없음")
    } else {
        print("맞는 번호는 \(winnigLottoNumbers) 입니다")
        }
    }

/* 배열 내의 교집합을 찾는 코드
let testNumbers: Set<Int> = [1, 2, 3, 4, 5, 6]
let testNumbers2: Set<Int> = [4, 5, 6, 7, 8, 9]

var duplicateNumber = Set<Int>()
duplicateNumber = testNumbers.intersection(testNumbers2)

for numbers in duplicateNumber {
    print(numbers)
}
*/
makeLottoNumbers()
resultLottoNumbers()
