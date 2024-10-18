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
        lottoNumbers.insert(randomNum)
    }
    
    return Array(lottoNumbers)
}

var lottoHistory: [Int: [Int]] = [:]

func saveLottoNumbers(round: Int) {
    let newLottoNumbers = generateLottoNumbers()
    lottoHistory[round] = newLottoNumbers
    print("\(round)회차의 로또 당첨 번호는 \(newLottoNumbers)입니다.")
}

for round in 1...5 {
    saveLottoNumbers(round: round)
}

func checkLottoNumbers(forRound round: Int) {
    // Optional 값 안전하게 추출
    if let lottoNumbers = lottoHistory[round] {
        print("\(round)회차의 로또 당첨 번호는 \(lottoNumbers) 입니다.")
    } else {
        print("\(round)회차의 로또 당첨 번호는 존재하지 않습니다.")
    }
}

// 특정 회차의 로또 번호
checkLottoNumbers(forRound: 2)
