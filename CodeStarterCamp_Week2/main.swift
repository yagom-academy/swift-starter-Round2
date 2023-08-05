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

var lottoResults: [Int: Set<Int>] = [:]
var presentRound: Int = 0

func progressPresentRound() {
    let lottoNumbers = makeLottoNumbers()
    presentRound += 1
    lottoResults[presentRound] = lottoNumbers
}

for _ in 1...5 {
    progressPresentRound()
}

let sortedResults = lottoResults.sorted(by: { $0.key < $1.key })
for (round, numbers) in sortedResults {
    print("\(round)회차의 로또 당첨 번호는 \(numbers) 입니다.")
}
print()

if let round2Numbers = lottoResults[2] {
    let numbersString = round2Numbers.map { String($0) }.joined(separator: ", ")
    print("2회차의 로또 당첨 번호는 \(numbersString) 입니다.")
}
