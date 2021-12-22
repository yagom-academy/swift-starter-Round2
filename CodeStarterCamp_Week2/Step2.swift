//
//  Step2.swift
//  CodeStarterCamp_Week2
//
//  Created by hyogang on 2021/12/23.
//

import Foundation

func makeWinningLottoNumbers() -> Set<Int> {
    var winningLottoNumbers = Set<Int>()
    
    while winningLottoNumbers.count <= 6 {
        let num = Int.random(in: 1...45)
        winningLottoNumbers.insert(num)
    }
    return winningLottoNumbers
}
