//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

let myNumbers: Set<Int> = [1, 2, 3, 4, 5, 6]
var historyLotto = [String: Set<Int>]()


func makeLottoNumbers() -> Set<Int> {
    var sixLottoNumbers = Set<Int>()
    
    while sixLottoNumbers.count < 6 {
        sixLottoNumbers.insert(Int.random(in: 1...45))
    }
    var round = historyLotto.count
    round += 1
    historyLotto["\(round)회차"] = sixLottoNumbers
    
    return sixLottoNumbers
}

func resultLottoNumbers(lottoNumbers: Set<Int>) -> Set<Int> {
    var overlapNumbers = Set<Int>()
    overlapNumbers = lottoNumbers.intersection(myNumbers)
    
    return overlapNumbers
}

func showResultLotto(overlapNumbers: Set<Int>) {
    let round = historyLotto.count
    if overlapNumbers.isEmpty {
        print("아쉽지만 \(round)회차에는 겹치는 번호가 없습니다.")
    } else {
        let printedOverlapNumbers = overlapNumbers.map { String($0) }.joined(separator: ", ")
        print("축하합니다! \(round)회차의 겹치는 번호는 \(printedOverlapNumbers) 입니다!")
    }
}

func generateLottoResult() {
    let lottoNumbers = makeLottoNumbers()
    let overlapNumbers = resultLottoNumbers(lottoNumbers: lottoNumbers)
    historyLotto["\(historyLotto.count)회차"] = lottoNumbers
    showResultLotto(overlapNumbers: overlapNumbers)
    
}

func findLottoNumbers(round: Int) {
    if let lottoData = historyLotto["\(round)회차"] {
        let printLottoData = lottoData.map { String($0) }.joined(separator: ", ")
        print("\(round)회차의 로또 당첨 번호는 \(printLottoData) 입니다.")
    } else {
        print("No data")
    }
}

func playLottoGame(quantity: Int) {
    for _ in 1...quantity {
        generateLottoResult()
    }
}

playLottoGame(quantity: 5)
playLottoGame(quantity: 5)
findLottoNumbers(round: 7)
print(historyLotto)
