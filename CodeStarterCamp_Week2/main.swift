//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

// 로또 번호 생성 함수
func generateRandomNumbers() -> Set<Int> {
    var randomNumbers: Set<Int> = Set<Int>()
    while randomNumbers.count < 6 {
        randomNumbers.insert(Int.random(in: 1...45))
    }
    return randomNumbers
}

// 찍은 번호와 로또 당첨 번호 의 겹치는 숫자를 확인하는 함수
func compareNumbers() {
    let myLottoNumbers: Set<Int> = generateRandomNumbers()
    let winningNumbers: Set<Int> = generateRandomNumbers()
    let sameNumbers = myLottoNumbers.intersection(winningNumbers)
    
    if sameNumbers.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다")
    } else {
        print("축하합니다! 겹치는 번호는 \(sameNumbers)입니다!")
    }
    
}

compareNumbers()


