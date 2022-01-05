//
//  LottoNumberGenerator.swift
//  CodeStarterCamp_Week2
//
//  Created by 유지수 on 2022/01/05.
//

import Foundation

private let maximumCount: Int = 6

func generateLottoNumbers() -> Set<Int> {
    var lottoNumbers: Set<Int> = []

    while lottoNumbers.count < maximumCount {
        let lottoNumber = pickRandomLottoNumber()
        lottoNumbers.insert(lottoNumber)
    }

    return lottoNumbers
}

private func pickRandomLottoNumber() -> Int {
    let randomNumber = Int.random(in: 1...45)
    return randomNumber
}
