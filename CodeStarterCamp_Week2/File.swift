//
//  File.swift
//  CodeStarterCamp_Week2
//
//  Created by 조기열 on 2022/07/08.
//

import Foundation

var lottoNumberCollection: [String: Set<Int>] = [:]

func makeLottoNumber() -> Set<Int> {
    var chosenNumber = Set<Int>()
    while chosenNumber.count < 6 {
        chosenNumber.insert(Int.random(in: 1...45))
    }
    return chosenNumber
}

func checkLottoRound() {
    var lottoRound: Int = 1
    while lottoRound < 6 {
        lottoNumberCollection["\(lottoRound)회차"] = makeLottoNumber()
        print("\(lottoRound)회차의 로또 당첨 번호는 \(lottoNumberCollection["\(lottoRound)회차"]!)")
        lottoRound += 1
    }
}

func checkNumberToLotto(lottoNumber: Set<Int>) {
    let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
    if lottoNumber.intersection(myLottoNumbers).count > 0 {
        print("축하합니다! 겹치는 번호는\(lottoNumber.intersection(myLottoNumbers))입니다!")
    } else {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
}
