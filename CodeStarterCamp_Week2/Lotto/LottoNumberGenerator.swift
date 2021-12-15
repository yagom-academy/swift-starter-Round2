//
//  LottoNumberGenerator.swift
//  CodeStarterCamp_Week2
//
//  Created by 조민호 on 2021/12/15.
//

import Foundation

protocol LottoNumberGeneratable {
    func generateLottoNumbers() -> Set<Int>
}

struct LottoNumberGenerator: LottoNumberGeneratable {
    private enum lottoOptions {
        static let randomNumberRange: ClosedRange<Int> = 1 ... 45
        static let lottoNumbersMaxAmount: Int = 6
        static let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
    }
    
    func generateLottoNumbers() -> Set<Int> {
        var lottoNumbers: Set<Int> = []
        
        while lottoNumbers.count != lottoOptions.lottoNumbersMaxAmount {
            lottoNumbers.insert(generateRandomNumbers())
        }
        
        return lottoNumbers
    }
        
    private func generateRandomNumbers() -> Int {
        Int.random(in: lottoOptions.randomNumberRange)
    }
}
