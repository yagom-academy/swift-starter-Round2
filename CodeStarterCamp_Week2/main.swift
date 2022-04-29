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

func checkLotto(lottoNum: Set<Int>, myNum: Set<Int>) {
    let intersection: Set<Int> = lottoNum.intersection(myNum)
    if intersection == [] {
        print("일치하는 번호 없음")
    }
    else {
        print(intersection, "가 일치합니다.")
    }
}

makeLottoSet()
print(lottoSet)
checkLotto(lottoNum: lottoSet, myNum: myLottoNumbers)

