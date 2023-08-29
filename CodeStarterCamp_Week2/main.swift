//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

// MARK: STEP2
let lotto = Lotto()
let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
lotto.start(with: myLottoNumbers)

// MARK: STEP3
var historyDictionary: [String: [Int]] = [:]
lotto.saveResults(with: [3, 5, 4, 6, 7, 8], history: &historyDictionary)
lotto.saveResults(with: [9, 11, 21, 24, 35, 41], history: &historyDictionary)
print(historyDictionary)
