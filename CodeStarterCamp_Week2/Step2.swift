//
//  Step2.swift
//  CodeStarterCamp_Week2
//
//  Created by hyogang on 2021/12/23.
//

import Foundation

let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]

func makeWinningLottoNumbers() -> Set<Int> {
    var winningLottoNumbers = Set<Int>()
    
    while winningLottoNumbers.count <= 6 {
        let num = Int.random(in: 1...45)
        winningLottoNumbers.insert(num)
    }
    return winningLottoNumbers
}

func compareMylottoNumbersWithWinningLottoNumbers() -> Set<Int> {
    let winningLottoNumbers = makeWinningLottoNumbers()
    
    let matchNumbers = winningLottoNumbers.filter{myLottoNumbers.contains($0)}
    return matchNumbers
}
