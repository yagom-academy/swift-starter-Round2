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

func makeWinningLottoNumbers(number: Int) -> Set<Int> {
    assignSelectableLottoNumbers(range: 45)
    let orderedLottoNumbers = Array(selectableLottoNumbers)
    var winningLottoNumbers = Set<Int>()
    for count in 0...number {
        winningLottoNumbers.insert(orderedLottoNumbers[count])
    }
    return winningLottoNumbers
}

