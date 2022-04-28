//
//  Week2Step3.swift
//  CodeStarterCamp_Week2
//
//  Created by mingmac on 2022/04/26.
//

import Foundation

func stackLottoNumbers() -> Array<Int> {
    let newLottoNumbers = Array(1...45).shuffled().prefix(6)
    return Array(newLottoNumbers)
}

func saveRoundLottoNumbers() -> Dictionary<String, Array<Int>> {
    var roundLottoNumbers: Dictionary<String, Array<Int>> = [:]
    for roundString in 1...5 {
        roundLottoNumbers["\(roundString)회차"] = stackLottoNumbers()
    }
    return roundLottoNumbers
}


