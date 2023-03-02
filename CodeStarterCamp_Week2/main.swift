//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

// MARK: - practice
//choose(gender: Gender.man)
//choose(cardinalPoints: .west)
//optionalPractice1()
//optionalPractice2()
//optionalPractice3()

// MARK: - step2
//let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
//compareLotteryNumbers(target: myLottoNumbers, to: generateLotteryNumbers())

// MARK: - step3
var lotteryHistory: [String: Array<Int>] = [:]
for _ in 1...5 {
    generateLotteryNumbers(history: &lotteryHistory)
}
findLotteryNumbers(round: 2, from: lotteryHistory)
