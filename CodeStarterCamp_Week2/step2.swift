//
//  step2.swift
//  CodeStarterCamp_Week2
//
//  Created by Jiyoung Lee on 2022/04/23.
//

import Foundation

var winNumbers: Set<Int> = Set<Int>()

func createWinNumbers() {
    while winNumbers.count < 6 {
        winNumbers.insert(Int.random(in: 1...45))
    }
}

var myLottoNumbers: Set<Int> = Set<Int>()

func createMyLottoNumbers() {
    while myLottoNumbers.count < 6 {
        myLottoNumbers.insert(Int.random(in: 1...45))
    }
}

func checkNumbers() {
    var result: Set<Int> = Set<Int>()
    result = winNumbers.intersection(myLottoNumbers)
    if (result.count == 0) {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        print("축하합니다! 겹치는 번호는 \(result)입니다!")
    }
}
