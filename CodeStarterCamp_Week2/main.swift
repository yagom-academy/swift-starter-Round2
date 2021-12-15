//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

let lottoNumberGenerator = LottoNumberGenerator()
let lottoStore = LottoStore(lottoNumberGenerator: lottoNumberGenerator)
print(lottoStore.lottoWinningNumber)
print(lottoStore.findOverlapNumbers())
