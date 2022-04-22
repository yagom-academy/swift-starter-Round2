//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
var lottoSet: Set<Int> = Set<Int> ()

func lottoGenerator () {
    while lottoSet.count < 6 {
        lottoSet.insert(Int.random(in: 1..<45))
    }
}
