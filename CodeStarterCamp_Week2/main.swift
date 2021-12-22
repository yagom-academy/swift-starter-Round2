//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

let myLottoNumbers: [Int] = [3,5,17,22,32,39]
var lottoNumbers: Set<Int> = []

func makeLottoNumbers() {
    
    while lottoNumbers.count < 6 {
        let randomInt = Int.random(in: 1...45)
        lottoNumbers.insert(randomInt)
    }
    print(lottoNumbers.sorted())
}

func checkLottoNumbers() {

    let matchedNumbers = lottoNumbers.intersection(myLottoNumbers)

    if matchedNumbers.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        print("축하합니다! 겹치는 번호는 \(matchedNumbers)입니다!")
    }
}

makeLottoNumbers()
checkLottoNumbers()
