//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

let myNumbers: Set<Int> = [1, 2, 3, 4, 5, 6]
var sixLottoNumbers = Set<Int>()
var roundLottoNumbers = [String: Set<Int>]()

func makeLottoNumbers() -> Set<Int> {
    while sixLottoNumbers.count < 6 {
        sixLottoNumbers.insert(Int.random(in: 1...45))
    }
    return sixLottoNumbers
}

func lottoNumbersaved(round: Int) {
    let round = round + 1
    roundLottoNumbers["\(round)회차"] = makeLottoNumbers()
}

func countedRoundLottoNumbers() {
    for round in 0...4 {
        lottoNumbersaved(round: round)
    }
}

func showLottoNumberInRound(round: Int) {
    if let lottoData = roundLottoNumbers["\(round)회차"] {
        let printLottoData = lottoData.map { String($0) }.joined(separator: ", ")
        print("\(round)회차의 로또 당첨 번호는 \(printLottoData) 입니다.")
    } else {
        print("No data")
    }
}

func findLottoNumbers(round: Int) {
    countedRoundLottoNumbers()
    showLottoNumberInRound(round: round)
}

func resultLottoNumbers() -> Set<Int> {
    var overlapNumbers = Set<Int>()
    overlapNumbers = sixLottoNumbers.intersection(myNumbers)
    
    return overlapNumbers
}

func showResultLotto(overlapNumbers: Set<Int>) {
    let printedOverlapNumbers = overlapNumbers.map { String($0) }.joined(separator: ", ")
    if overlapNumbers.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        print("축하합니다! 겹치는 번호는 \(printedOverlapNumbers) 입니다!")
    }
}

func buyLotto() {
    makeLottoNumbers()
    let overlapNumbers = resultLottoNumbers()
    showResultLotto(overlapNumbers: overlapNumbers)
}

buyLotto()
findLottoNumbers(round: 2)
