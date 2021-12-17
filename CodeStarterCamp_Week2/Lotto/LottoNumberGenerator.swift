//
//  LottoNumberGenerator.swift
//  CodeStarterCamp_Week2
//
//  Created by 조민호 on 2021/12/15.
//

import Foundation

struct LottoNumberGenerator {
    func generateLottoNumbers() -> [Int] {
        var lottoNumbers: Set<Int> = []
        
        while lottoNumbers.count != LottoOptions.lottoNumbersMaxAmount {
            lottoNumbers.insert(generateRandomNumbers())
        }
        
        return lottoNumbers.sorted()
    }
        
    private func generateRandomNumbers() -> Int {
        Int.random(in: LottoOptions.randomNumberRange)
    }
}
