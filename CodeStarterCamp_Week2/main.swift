//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

printLotto(sortedIntersection: returnSortedIntersection(lottoNumbers: createLottoNumbers()))

for _ in 1...5 {
    createRoundLottoNumbers()
}

printRoundLottoNumbers(roundNumber: 2)
