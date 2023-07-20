//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

// 로또 번호 생성

func generateUniqueRandomNumbers() -> Set<Int> {
    var uniqueNumbers = Set<Int>()
    
    while uniqueNumbers.count < 6 {
        let randomNumber = Int.random(in: 1...45)
        uniqueNumbers.insert(randomNumber)
    }
    
    return uniqueNumbers
}

// 내가 고른 번호와 생성된 로또 번호 비교

func compareLottoNumbers(_ choiceLottoNumbers: [Int]) {
    if choiceLottoNumbers.count != 6 {
        print("6개의 숫자를 선택해주세요.")
        return
    }
    
    if choiceLottoNumbers.contains(where: { $0 < 1 || $0 > 45 }) {
        print("1부터 45사이의 숫자를 선택해주세요.")
        return
    }
    
    let myLottoNumbers: Set<Int> = Set(choiceLottoNumbers)
    let generateLottoNumbers : Set<Int> = generateUniqueRandomNumbers()
    
    let overrappingNumbers = myLottoNumbers.intersection(generateLottoNumbers)
    
    if overrappingNumbers.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        print("축하합니다! 겹치는 번호는 \(overrappingNumbers.sorted())입니다!")
    }
}

compareLottoNumbers([4, 10, 20, 27, 34, 40])


