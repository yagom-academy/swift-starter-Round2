//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

// STEP - 2
// 당첨번호 생성
//let winningNumbers = makeLottoNumbers()

// 내가 찍은 번호
//let myLottoNumbers: [Int] = [9, 22, 33, 19, 30, 35]

// 로또 번호 비교
//checkLottoNumbers(compare: myLottoNumbers, with: winningNumbers)

for _ in 1...5 {
    makeLottoNumbers()
}

readLottoNumbers(round: 2, from: lottoNumbersDictionary)
