//
//  lottoNumbers.swift
//  CodeStarterCamp_Week2
//
//  Created by MIJU on 2022/02/23.
//

import Foundation


var lottoDictionary: [Int: Set<Int>] = [Int: Set<Int>]()
var lottoNumbers: Set<String> = Set<String>()
var roundNumber = Int()

func generateLottoNumbers() -> Set<Int> {
    var randomLottoNumbers: Set<Int> = Set<Int>()
    while randomLottoNumbers.count < 6 {
        randomLottoNumbers.insert(Int.random(in: 1...45))
    }
    return randomLottoNumbers
}
