//
//  LottoNumberGenerator.swift
//  CodeStarterCamp_Week2
//
//  Created by 조민호 on 2021/12/15.
//

import Foundation

protocol LottoNumberGeneratable {

}

struct LottoNumberGenerator {
    private enum lottoOptions {
        static let randomNumberRange: ClosedRange<Int> = 1 ... 45
        static let lottoNumbersMaxAmount: Int = 6
        static let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
    }
        
    private func generateRandomNumbers() -> Int {
        Int.random(in: lottoOptions.randomNumberRange)
    }
}
