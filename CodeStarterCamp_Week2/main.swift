//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

/*
// 내가 찍은 번호
let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
let lottoFactory = LottoFactory()

// 로또 당첨 번호
let winningNumbers: [Int] = lottoFactory.pickWinningNumbers()

let compareResult: [Int]? = lottoFactory.lottoComparor(myLottoNumbers: myLottoNumbers, winningNumbers:  winningNumbers)

// 비교 결과 출력
lottoFactory.printCompareResult(compareResult: compareResult)
*/

// STEP 3
let count: Int = 5
let target: Int = 2

let lottoDictionary: [String : [Int]] = generateLottoDictionary(count: count)
printTargetNumbers(lottoDictionary: lottoDictionary, target: target)
