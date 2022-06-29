//
//  step2.swift
//  CodeStarterCamp_Week2
//
//  Created by 한서영 on 2022/06/29.
//

import Foundation

var lottoSet: Set<Int> = Set<Int>()
let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]

func returnLotto() -> Set<Int> {
    while lottoSet.count < 6 {
        var lottoNumber: Int = Int.random(in: 1...45)
        
        lottoSet.insert(lottoNumber)
    }
    return lottoSet
}

