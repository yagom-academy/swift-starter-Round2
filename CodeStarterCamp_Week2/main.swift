//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

var lottoNumber: Set<Int> = Set<Int>()

func makeLottoNumber() {
    let random = Int.random(in: 1...45)
    lottoNumber.insert(random)
}

func saveLottoNumber() -> Set<Int> {
    while lottoNumber.count < 6 {
        makeLottoNumber()
    }
    return lottoNumber
}

let myLottoNumber: [Int] = [1, 2, 3, 4, 5, 6]
