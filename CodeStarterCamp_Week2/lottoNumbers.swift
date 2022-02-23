//
//  lottoNumbers.swift
//  CodeStarterCamp_Week2
//
//  Created by MIJU on 2022/02/23.
//

import Foundation


var randomLottoNumbers: Set<Int> = Set<Int>()
let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]

func generateLottoNumbers() -> Set<Int> {
    while randomLottoNumbers.count<6 {
        let number = Int.random(in: 1...45)
        randomLottoNumbers.insert(number)
    }
    return randomLottoNumbers
}


