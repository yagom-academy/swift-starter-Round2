//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

printLottoResult(matchLottoNumbers(from: generateLottoNumbers()))

for _ in 1...5 {
    saveLottoResult(from: generateLottoNumbers())
}

printLottoHistory(round: 2)

