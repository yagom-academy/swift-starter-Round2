//
//  File.swift
//  CodeStarterCamp_Week2
//
//  Created by 조기열 on 2022/07/08.
//

import Foundation

var myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]

func makeLottoNumber() -> Set<Int> {
    var chosenNumberSet = Set<Int>()
    while chosenNumberSet.count < 6 {
        chosenNumberSet.insert(Int.random(in: 1...45))
    }
    return chosenNumberSet
}

func checkNumberToLotto(lottoNumber: Set<Int>) {
    if lottoNumber.intersection(myLottoNumbers).count > 0 {
        print("축하합니다! 겹치는 번호는\(lottoNumber.intersection(myLottoNumbers))입니다!")
    } else {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
}
