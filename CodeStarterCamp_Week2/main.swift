//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

var lottoNumbers: Set<Int> = []

func generateLottoNumbers() {
    while lottoNumbers.count<6 {
        lottoNumbers.insert(Int.random(in: 1...45))
    }
}
