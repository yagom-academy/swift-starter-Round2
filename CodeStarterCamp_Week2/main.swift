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
var round: Int = historyLotto.count
var roundString = historyLotto["\(round)"]

func makeLottoNumbers() -> Set<Int> {
    var sixLottoNumbers = Set<Int>()
    
    while sixLottoNumbers.count < 6 {
        sixLottoNumbers.insert(Int.random(in: 1...45))
    }
    return sixLottoNumbers
}

func lottoNumberSaved(count: Int) {
    historyLotto["\(count)회차"] = makeLottoNumbers()
}

func quantityOFLotto(quantity: Int) {
    for count in 1...quantity {
        lottoNumberSaved(count: count)
    }
}

func findLottoNumbers(count: Int) {
    if let lottoData = historyLotto["\(count)회차"] {
        let printLottoData = lottoData.map { String($0) }.joined(separator: ", ")
        print("\(count)회차의 로또 당첨 번호는 \(printLottoData) 입니다.")
    } else {
        print("No data")
    }
}

func resultLottoNumbers(lottoNumbers: Set<Int>) -> Set<Int> {
    var overlapNumbers = Set<Int>()
    overlapNumbers = lottoNumbers.intersection(myNumbers)
    
    return overlapNumbers
}

func showResultLotto(overlapNumbers: Set<Int>) {
    if overlapNumbers.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        let printedOverlapNumbers = overlapNumbers.map { String($0) }.joined(separator: ", ")
        print("축하합니다! 겹치는 번호는 \(printedOverlapNumbers) 입니다!")
    }
}

func buyLotto() {
    round += 1
    let lottoNumbers = makeLottoNumbers()
    let overlapNumbers = resultLottoNumbers(lottoNumbers: lottoNumbers)
    historyLotto["\(round)회차"] = lottoNumbers
    showResultLotto(overlapNumbers: overlapNumbers)
    
}

findLottoNumbers(count: 2)
print(historyLotto)
