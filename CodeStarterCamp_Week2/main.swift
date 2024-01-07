//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//


import Foundation

func lottoNumbers() -> [Int] {
    var lottoNumbers: [Int] = []

    while lottoNumbers.count < 6 {
        let randomNum = Int.random(in: 1...45)
        if !lottoNumbers.contains(randomNum) {
            lottoNumbers.append(randomNum)
        }
    }

    return lottoNumbers
}

let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]

// 로또 당첨 번호 생성
let pickNumbers = lottoNumbers()

// 겹치는 번호를 확인하고 출력
let matchingNumbers = Set(myLottoNumbers).intersection(pickNumbers)

if matchingNumbers.isEmpty {
    print("아쉽지만 겹치는 번호가 없습니다.")
} else {
    print("축하합니다! 겹치는 번호는 \(matchingNumbers.sorted()) 입니다!")
}

