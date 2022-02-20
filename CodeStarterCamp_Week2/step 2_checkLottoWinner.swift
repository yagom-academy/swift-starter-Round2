//
//  step 2_checkLottoWinner.swift
//  CodeStarterCamp_Week2
//
//  Created by Minseong Kang on 2022/02/20.
//

import Foundation

func generateLottoNumbers(maxRange: Int, maxNumber: Int) -> Set<Int> {
    var lottoNumberSet: Set<Int> = []
    while lottoNumberSet.count < maxNumber {
        lottoNumberSet.insert(Int.random(in: 1..<maxRange + 1))
    }
    return lottoNumberSet
}
