//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

var lottoNumber: Set<Int> = []
func winLotto() -> Set<Int> {
    while lottoNumber.count < 6 {
        lottoNumber.insert(Int.random(in: 1...45))
    }
    return lottoNumber
}

let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]

func drawLotto() {
    let sameNumber: Set<Int> = winLotto().intersection(myLottoNumbers)
    let numberString = sameNumber.sorted().map { String($0) }.joined(separator: ", ")

    if sameNumber.count > 0 {
        print("축하합니다! 겹치는 번호는 \(numberString) 입니다!")
    } else {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
}

drawLotto()
