//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

var winnerNumbersStorage: Dictionary<String, Array<Int>> = [:]
let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]


checkLotto(numbers: myLottoNumbers)
print("")
makeWinnerNumbers(time: 5)
checkWinnerNumbers(round: 2)
checkWinnerNumbers(round: 4)
checkWinnerNumbers(round: 7)
