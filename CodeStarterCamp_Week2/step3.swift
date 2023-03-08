//
//  step3.swift
//  CodeStarterCamp_Week2
//
//  Created by Dawn on 2023/03/06.
//

import Foundation

func createLottoNumbers(roundCount: Int) {
    for _ in 1...roundCount {
        var pickedLottoNumbers: Set<Int> = Set<Int>()
        while pickedLottoNumbers.count < 6 {
            pickedLottoNumbers.insert(Int.random(in: 1...45))
        }
        saveLottoNumbers(for: pickedLottoNumbers)
    }
}

func provideHistoryLottoNumbers(lottoRound: Int) {
    if let lottoNumbers = historyLottoNumbers["\(lottoRound)회차"] {
        print("\(lottoRound)회차의 로또 당첨 번호는 \(lottoNumbers.sorted().map { String($0) }.joined(separator:  ", "))입니다.")
    } else {
        print("추첨하지 않은 회차입니다.")
    }
}

func saveLottoNumbers(for pickedLottoNumbers: Set<Int>) {
    historyLottoNumbers["\(lottoRound)회차"] = Array<Int>(pickedLottoNumbers)
    lottoRound += 1
}
