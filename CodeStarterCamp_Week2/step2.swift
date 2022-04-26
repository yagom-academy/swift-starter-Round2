//
//  step2.swift
//  CodeStarterCamp_Week2
//
//  Created by Jiyoung Lee on 2022/04/23.
//

import Foundation

var lottoNumbers: Set<Int> = Set<Int>()


func createLottoNumbers() {
    for i in 1...45 {
        lottoNumbers.insert(i)
    }
}


var winNumbers: Set<Int> = Set<Int>()
//var indices = [lottoNumbers<Int>.Index]()

func createWinNumbers() {
    for j in 0...5 {
        winNumbers.insert(lottoNumbers[lottoNumbers.index(lottoNumbers.startIndex, offsetBy: j)])
    }
}
