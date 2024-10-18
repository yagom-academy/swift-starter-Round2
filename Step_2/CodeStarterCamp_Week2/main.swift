//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

func generateLottoNumbers() -> [Int] {
    var lottoNumbers: Set<Int> = []
    
    while lottoNumbers.count < 6 {
        let randomNum = Int.random(in: 1...45)
        lottoNumbers.insert(randomNum) // Set은 중복을 허용하지 않음
    }
    
    return Array(lottoNumbers)
}

let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]

let winningLottoNumbers = generateLottoNumbers()

func checkMatchingNumbers(myNumbers: [Int], winningNumbers: [Int]) {

    let matchingNumbers = myNumbers.filter { winningNumbers.contains($0) }
    
    if matchingNumbers.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        print("축하합니다! 겹치는 번호는 \(matchingNumbers) 입니다!")
    }
}


checkMatchingNumbers(myNumbers: myLottoNumbers, winningNumbers: winningLottoNumbers)
