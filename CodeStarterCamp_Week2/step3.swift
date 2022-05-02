//
//  step3.swift
//  CodeStarterCamp_Week2
//
//  Created by 수염 on 2022/04/26.
//

import Foundation

func pickLottoNumber() -> Array<Int> {
    var lottoNumber: Set<Int> = Set<Int>()
    while lottoNumber.count < 6 {
            lottoNumber.insert(Int.random(in: 1...6))
    }
    return Array<Int>(lottoNumber)
}

func archiveLottoNumber() -> Dictionary<Int, Array<Int>> {
    var archiveNumber: Dictionary<Int, Array> = [Int: Array<Int>]()
    for lottoRound in 1...5 {
        archiveNumber[lottoRound] = pickLottoNumber()
    }
    return archiveNumber
}

func checkLottoHistory(round: Int) {
    let lottoHistory : Dictionary<Int, Array<Int>> = archiveLottoNumber()
    if let pickLottoNumber = lottoHistory[round] {
        print("\(round)회차의 로또 당첨 번호는 \(pickLottoNumber) 입니다.")
    }
}
