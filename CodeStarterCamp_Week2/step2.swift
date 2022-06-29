//
//  step2.swift
//  CodeStarterCamp_Week2
//
//  Created by smfc on 29/6/2022.
//

import Foundation

func generateLottoNumber() -> Set<Int> {
    var generatedNumbers: Set<Int> = Set<Int>()
    while generatedNumbers.count < 6 {
        generatedNumbers.insert(Int.random(in: 1..<46))
    }
    return generatedNumbers
}
