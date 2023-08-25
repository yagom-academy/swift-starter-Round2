//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

func makeLottoNumbers() -> Set<Int> {
    var lottoNumbers: Set<Int> = []
    
    while lottoNumbers.count < 6 {
          lottoNumbers.insert(Int.random(in: 1...45))
    }

    return lottoNumbers
}

let myLottoNumbers: [Int] = [6, 11, 17, 32, 41, 44]

let winningLottoNumbers = makeLottoNumbers()

let matchingLottoNumber = winningLottoNumbers.intersection(myLottoNumbers)

if !matchingLottoNumber.isEmpty {
    print("축하합니다! 겹치는 번호는 \(matchingLottoNumber) 입니다!")
} else {
    print("아쉽지만 겹치는 번호가 없습니다.")
}

