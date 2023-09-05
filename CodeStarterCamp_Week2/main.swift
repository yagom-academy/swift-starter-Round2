//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
var generatedNumbers: Set<Int> = Set<Int>()
var correctNumbers = [Int]()

// 번호 생성 함수
func makeNumbers() {
    while generatedNumbers.count < 6 {
        generatedNumbers.insert(Int.random(in: 1...45))
    }
}

// 번호 비교 함수
func checkNumbers() {
    for number in 0...5 {
        if myLottoNumbers.contains(Array(generatedNumbers)[number]) == true {
            correctNumbers.append(Array(generatedNumbers)[number])
        }
    }
    if correctNumbers.isEmpty == true {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        let correctNumbersString = correctNumbers.map { String($0) }.joined(separator: ", ")
        print("축하합니다. 겹치는 번호는 \(correctNumbersString) 입니다!")
    }
}

// 로또 번호 생성
makeNumbers()

// 번호 비교 후 출력
checkNumbers()

