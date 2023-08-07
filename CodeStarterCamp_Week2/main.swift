//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

//let winningNumbers = makeLottoNumbers()
//let myLottoNumbers: [Int] = [9, 22, 33, 19, 30, 35]

//checkLottoNumbers(compare: myLottoNumbers, with: winningNumbers)

for _ in 1...5 {
    makeLottoNumbers()
}
readLottoNumbers(from: lottoNumbersDictionary, round: 2)
