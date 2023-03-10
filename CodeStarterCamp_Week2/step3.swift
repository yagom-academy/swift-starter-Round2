//
//  step3.swift
//  CodeStarterCamp_Week2
//
//  Created by Appledayz on 2023/03/07.
//

import Foundation

var lottoNumbersRecord = Dictionary<String, Set<Int>>()
var currentRound = 1

func saveNewLottoNumbers(saveCount: Int) {
    for _ in 1...saveCount {
        let numbers: Set<Int> = createLottoNumbers()
        lottoNumbersRecord["\(currentRound)회차"] = numbers
        currentRound = lottoNumbersRecord.count + 1
    }
}

func getLottoNumbers(round: Int) -> Set<Int>? {
    return lottoNumbersRecord["\(round)회차"]
}

func printLottoNumbers(round: Int) {
    if let numbers = getLottoNumbers(round: round) {
        print(
            "\(round)회차의 로또 당첨 번호는 \(numbers.description.trimmingCharacters(in: ["[", "]"])) 입니다."
        )
    } else {
        print("\(round)회차 기록이 존재하지 않습니다.")
    }    
}
