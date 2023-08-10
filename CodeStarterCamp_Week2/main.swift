//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

func makeLottoNumbers() -> Set<Int> {
    var randomNumbers: Set<Int> = []
    while randomNumbers.count < 6 {
        randomNumbers.insert(Int.random(in: 1...45))
    }
    return randomNumbers
}

var lottoResults: [String: Set<Int>] = [:]

func progressPresentRound() {
    let lottoNumbers = makeLottoNumbers()
    let newRound = lottoResults.count + 1
    lottoResults["\(newRound)회차"] = lottoNumbers
}

func carryOutRound(numberOfRound: Int) {
    for _ in 1...numberOfRound {
        progressPresentRound()
    }
}

carryOutRound(numberOfRound: 5)

func printResult() {
    let sortedResults = lottoResults.sorted(by: { $0.key < $1.key })
    for (round, numbers) in sortedResults {
        let formattedNumbers = numbers.sorted().map(String.init).joined(separator: ", ")
        print("\(round)의 로또 당첨 번호는 \(formattedNumbers) 입니다.")
    }
    print()
}

printResult()

func decideRoundNumber(round: String) {
    if let roundNumbers = lottoResults[round] {
        let numbersString = roundNumbers.sorted().map { String($0) }.joined(separator: ", ")
        print("\(round)의 로또 당첨 번호는 \(numbersString) 입니다.")
    }
}

decideRoundNumber(round: "2회차")
