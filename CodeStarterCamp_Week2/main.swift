//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

//Step 2
//let myLottoNumbers: [Int] = [1, 16, 19, 23, 33, 45]
//var lottoWinningNumbers: Set<Int> = Set<Int>()
//
//matchLottoResult(myNumbers: myLottoNumbers, winningNumbers: lottoWinningNumbers)

//Step 3
var lottoWinningNumbers: Set<Int> = Set<Int>()

for _ in 1...5 {
    lottoWinningNumbers = makeLottoNumbers()
}

for round in 1...5 {
    checkPastResults(round: round)
}
