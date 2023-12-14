//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

func makeLottoNumber() -> Set<Int> {
    var lottoNumber: Set<Int> = Set<Int>()
    while lottoNumber.count < 6 {
        lottoNumber.insert(Int.random(in: 1...45))
    }
    return lottoNumber
}


func compareNumber(lottoNumber: Set<Int>, mylottoNumbers: Array<Int>) {
    var containNumber: Set<Int> = Set<Int>()
    containNumber = lottoNumber.intersection(mylottoNumbers)
    if !(containNumber.isEmpty) {
        print("축하합니다! 겹치는 번호는 \(containNumber.map{String($0)}.joined(separator:", ")) 입니다!")
    } else {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
}

let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
compareNumber(lottoNumber: makeLottoNumber(), mylottoNumbers: myLottoNumbers)
