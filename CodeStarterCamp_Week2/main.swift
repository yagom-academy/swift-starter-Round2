//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

//Step 2
func makeLottoNumbers() -> [Int] {
    var lottoNumbers: Set<Int> = []
    while lottoNumbers.count < 6,
          let randomInt: Int = (1...45).randomElement() {
        lottoNumbers.insert(randomInt)
    }
    return Array(lottoNumbers)
}

let myLottoNumbers: [Int] = [6, 11, 17, 32, 41, 44]

var winLottoNumbers = makeLottoNumbers()

let matchLottoNumber = myLottoNumbers.filter {
    winLottoNumbers.contains($0)
}.map {
    String($0)
}.joined(separator: ", ")

if !matchLottoNumber.isEmpty {
    print("축하합니다! 겹치는 번호는 \(matchLottoNumber) 입니다!")
} else {
    print("아쉽지만 겹치는 번호가 없습니다.")
}

