//
//  step3.swift
//  CodeStarterCamp_Week2
//
//  Created by 한서영 on 2022/07/01.
//

import Foundation

var roundLottoNumbers: Dictionary<String, Set<Int>> = [:]

func createRoundLottoNumbers() {
    let previousRoundNumber: Int = roundLottoNumbers.count
    let thisRound: String = "\(previousRoundNumber+1)회차"
    
    roundLottoNumbers[thisRound] = createLottoNumbers()
}
