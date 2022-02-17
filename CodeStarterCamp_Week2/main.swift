//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

var lottoNumbers: Set<Int> = []
let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
var matchingNumbers: [Int] = []

func generateLottoNumbers() {
    while lottoNumbers.count<6 {
        lottoNumbers.insert(Int.random(in: 1...45))
    }
}

func findMatchingNumbers() {
    matchingNumbers = lottoNumbers.intersection(myLottoNumbers).sorted()
}
