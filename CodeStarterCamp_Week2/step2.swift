//
//  step2.swift
//  CodeStarterCamp_Week2
//
//  Created by Jiyoung Lee on 2022/04/23.
//

import Foundation

var lottoNumbers: Set<Int> = Set<Int>()

var i: Int = 1

func createLottoNumbers(i: Int) {
    while i < 46 {
        lottoNumbers.insert(i)
    }
}

var winNumbers: Set<Int> = Set<Int>()

var j: Int = 0
func createWinNumbers(j: Int) {
    while j < 6 {
        winNumbers.insert(lottoNumbers[j])
    }
}
