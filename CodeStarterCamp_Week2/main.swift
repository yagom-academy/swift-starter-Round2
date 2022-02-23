//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

// Week 2 Step 2
let generatedNumberSet = generateLottoNumbers(maxRange: 45, maxNumber: 6)
let myLottoNumbers: Set<Int> = [16, 4, 23, 24, 6, 3]

checkLottoWinner(lottoNumberSet: generatedNumberSet, myNumberSet: myLottoNumbers)


// Week 2 Step 3
generateLottoNumbers(maxRange: 45, maxNumber: 6)
generateLottoNumbers(maxRange: 45, maxNumber: 6)
generateLottoNumbers(maxRange: 45, maxNumber: 6)
generateLottoNumbers(maxRange: 45, maxNumber: 6)
generateLottoNumbers(maxRange: 45, maxNumber: 6)

printWinningNumbersByRounds(roundNumber: 1)
printWinningNumbersByRounds(roundNumber: 2)
