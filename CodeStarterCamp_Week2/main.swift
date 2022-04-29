//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
var lottoSet: Set<Int> = Set<Int>()

func makeNumber() -> Int {
    let rand = Int.random(in: 1 ... 45)
    return rand
}

func makeLottoSet() {
    while lottoSet.count < 6 {
        lottoSet.insert(makeNumber())
    }
}

func checkLotto(lottoNum: Set<Int>, myNum: Array<Int>) {
    let intersection: Set<Int> = lottoNum.intersection(myNum)
    if intersection == [] {
        print("아쉽지만 일치하는 번호가 없습니다.")
    }
    else {
        print("축하합니다!", intersection, "가 일치합니다.")
    }
}
makeLottoSet()
checkLotto(lottoNum: lottoSet, myNum: myLottoNumbers)
