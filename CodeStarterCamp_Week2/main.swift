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

func printLottoNumbers() {
    var lottoResults: [String: Set<Int>] = [:]
    var presentRound: Int = 0
    
    func progressPresentRound() {
        let lottoNumbers = makeLottoNumbers()
        presentRound += 1
        lottoResults["\(presentRound)회차"] = lottoNumbers
    }
    
    for _ in 1...5 {
        progressPresentRound()
    }
    
    let sortedResults = lottoResults.sorted(by: { $0.key < $1.key })
    for (round, numbers) in sortedResults {
        print("\(round)의 로또 당첨 번호는 \(numbers.sorted()) 입니다.")
    }
    print()
    
    func decideRoundNumber(round: String) {
        if let roundNumbers = lottoResults[round] {
            let numbersString = roundNumbers.sorted().map { String($0) }.joined(separator: ", ")
            print("\(round)의 로또 당첨 번호는 \(numbersString) 입니다.")
        }
    }
    
    decideRoundNumber(round: "2회차")
}

printLottoNumbers()
