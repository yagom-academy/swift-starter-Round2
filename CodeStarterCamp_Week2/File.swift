//
//  File.swift
//  CodeStarterCamp_Week2
//
//  Created by 조기열 on 2022/07/08.
//

import Foundation

func makeLottoNumber() -> Set<Int> {
    var chosenNumber = Set<Int>()
    while chosenNumber.count < 6 {
        chosenNumber.insert(Int.random(in: 1...45))
    }
    return chosenNumber
}

func checkNumberToLotto(lottoNumber: Set<Int>) {
    let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
    if lottoNumber.intersection(myLottoNumbers).count > 0 {
        print("축하합니다! 겹치는 번호는\(lottoNumber.intersection(myLottoNumbers))입니다!")
    } else {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
}
