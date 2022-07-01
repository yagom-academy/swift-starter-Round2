//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

//MARK: STEP 2
//let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
//let thisWeekLottoNumbers: Set<Int> = generateLottoNumber()
//commpareLottoNumbers(myNumber: myLottoNumbers, thisWeekNumber: thisWeekLottoNumbers)

//MARK: STEP 3
for _ in 1...5 {
    addLottoNumberToHistory(from: generateLottoNumber())
}
printLottoHistoryWithRound(resultSearch: searchLottoHistory(round: 3))
printLottoHistoryWithRound(resultSearch: searchLottoHistory(round: 9))
