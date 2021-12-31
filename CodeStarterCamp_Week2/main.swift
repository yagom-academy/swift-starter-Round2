//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation


var selectableLottoNumbers = Set<Int>()

func assignSelectableLottoNumbers(range: Int) {
    for count in 1...range {
        selectableLottoNumbers.insert(count)
    }
}

let orderedLottoNumbers = Array(selectableLottoNumbers)

func makeWinningLottoNumbers(count: Int) -> Set<Int> {
    assignSelectableLottoNumbers(range: 45)
    var winningLottoNumbers = Set<Int>()
    for count in 0...count {
        winningLottoNumbers.insert(orderedLottoNumbers[count])
    }
    return winningLottoNumbers
}

