//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

let lottoNumberGenerator = LottoNumberGenerator()
var lottoStore = LottoStore(lottoNumberGenerator: lottoNumberGenerator)
print(lottoStore.lottoWinningNumber)
lottoStore.findOverlapNumbers()
