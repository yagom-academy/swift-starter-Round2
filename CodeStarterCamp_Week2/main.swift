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
}
func resultLottoNumbers() {
    makeLottoNumbers()
    var winnigLottoNumbers = Set<Int>()
    winnigLottoNumbers = randomNumbers.intersection(myNumbers)
    let overLapNumber = winnigLottoNumbers.map { String($0) }.joined(separator: ", ")
    
    if winnigLottoNumbers.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        print("축하합니다! 겹치는 번호는 \(overLapNumber) 입니다!")
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
resultLottoNumbers()
