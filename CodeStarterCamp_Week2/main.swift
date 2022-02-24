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

func checkLottoNumber() {
    let intersection: Set<Int> = lottoNumber.intersection(myLottoNumber)
    if intersection.count > 0 {
        print("축하합니다! 겹치는 번호는 \(intersection) 입니다!")
    }
    else {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
}
