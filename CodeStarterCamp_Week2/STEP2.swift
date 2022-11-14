//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

// Mark:- 로또 번호 생성
func createLottoNumbers() -> Set<Int> {
    var lottoNumbers: Set<Int> = []
    
    while lottoNumbers.count < 6 {
        lottoNumbers.insert((Int.random(in: 1...45)))
    }
    return lottoNumbers
}

// Mark:- 로또번호와 내 번호 비교
func compareLottoNumbers(lottoNumbers: Set<Int>, myLottoNumbers: [Int]) -> [Int] {
    let compareNumbers = lottoNumbers.intersection(myLottoNumbers)

    return Array(compareNumbers).sorted()
}

// Mark:- 출력함수
func printLotto(compareNumbers: [Int]) {
    let stringArray = (compareNumbers.map(String.init).joined(separator: ", "))
    
    if stringArray.isEmpty {
        print("아쉽지만 없어요")
    } else {
        print("축하합니다 겹치는 번호는 \(stringArray) 입니다")
    }
}

let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
let lottoNumbers = createLottoNumbers()
let compareNumbers = compareLottoNumbers(lottoNumbers: lottoNumbers, myLottoNumbers: myLottoNumbers)
printLotto(compareNumbers: compareNumbers)
