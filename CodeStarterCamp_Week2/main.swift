//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

var previousLottoResults: Dictionary<String, Set<Int>> = Dictionary<String, Set<Int>>()
var presentRound: Int = 0

savePreviousResults(roundsToGenerate: 5)
checkPreviousResults(round: "2회차")
savePreviousResults(roundsToGenerate: 5)
checkPreviousResults(round: "10회차")

func checkPreviousResults(round: String) {
    if let result = previousLottoResults[round] {
        print("\(round)의 로또 당첨 번호는 \(result.sorted().map{ String($0) }.joined(separator: ", ")) 입니다.")
    } else {
        print("해당 회차 로또는 아직 추첨되지 않았습니다.")
    }
}

func savePreviousResults(roundsToGenerate: Int) {
    for _ in 1...roundsToGenerate{
        presentRound += 1
        previousLottoResults["\(presentRound)회차"] = generateLottoNumbers()
    }
}
