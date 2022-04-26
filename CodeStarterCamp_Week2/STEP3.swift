//
//  STEP3.swift
//  CodeStarterCamp_Week2
//
//  Created by Minseok on 2022/04/23.
//

import Foundation

func generateLottoArray () -> Array<Int> {
    var lottoSet: Set<Int> = Set<Int> ()
    while lottoSet.count < 6 {
        lottoSet.insert(Int.random(in: 1..<46))
    }
    return Array<Int>(lottoSet)
}
