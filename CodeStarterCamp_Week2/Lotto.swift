//
//  Lotto.swift
//  CodeStarterCamp_Week2
//
//  Created by Kay Ahn on 2022/02/17.
//

import Swift

var lottoNumbersByWeek: Dictionary<Int, Set<Int>> = Dictionary<Int, Set<Int>>()

func generateRandomNumber() -> Set<Int> {
    var randomNumbers: Set<Int> = Set<Int>()
    while randomNumbers.count < 6 {
        randomNumbers.insert(Int.random(in: 1...45))
    }
    return randomNumbers
}

func makeLottoBook() {
    for count in 1...5 {
        lottoNumbersByWeek[count] = generateRandomNumber()
    }
}
