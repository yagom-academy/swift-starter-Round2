//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

let myLottoNumbers: Set<Int> =  [1, 2, 3, 4, 5, 6]
var numberfull: [Int] = Array<Int>(1...45)
var lotto: Set<Int> = []

func pickRandomLottoNumber() {
    while lotto.count < 6 {
        lotto.insert(Int.random(in: 1...45))
    }
}

func matchingLotto(myLottoNumbers: Set<Int>, lotto: Set<Int>) {
    let result: Set<Int> = myLottoNumbers.intersection(lotto)
    if result.isEmpty {
        print("아쉽지만 겹치는 번호는 없습니다.")
        return
    }
    print(result.map{String($0)}.joined(separator: ","))
}
pickRandomLottoNumber()
matchingLotto(myLottoNumbers: myLottoNumbers, lotto: lotto)
